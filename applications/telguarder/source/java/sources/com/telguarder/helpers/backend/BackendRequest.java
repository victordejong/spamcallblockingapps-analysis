package com.telguarder.helpers.backend;

import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.android.volley.AuthFailureError;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.NoConnectionError;
import com.android.volley.ParseError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.ServerError;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;
import com.google.gson.Gson;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.errorhandling.NetworkError;
import com.telguarder.helpers.log.Logger;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/backend/BackendRequest.class */
public class BackendRequest {
    private String mBody;
    private Map<String, String> mHeaders;
    private Map<String, Object> mParams;
    private Method mRequestMethod;
    private String mUrl;

    /* renamed from: com.telguarder.helpers.backend.BackendRequest$3 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/backend/BackendRequest$3.class */
    public static /* synthetic */ class C23263 {
        static final /* synthetic */ int[] $SwitchMap$com$telguarder$helpers$backend$BackendRequest$Method;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Method.values().length];
            $SwitchMap$com$telguarder$helpers$backend$BackendRequest$Method = iArr;
            try {
                iArr[Method.POST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$telguarder$helpers$backend$BackendRequest$Method[Method.PUT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$telguarder$helpers$backend$BackendRequest$Method[Method.DELETE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/backend/BackendRequest$Method.class */
    public enum Method {
        POST(ShareTarget.METHOD_POST),
        GET(ShareTarget.METHOD_GET),
        PUT("PUT"),
        DELETE("DELETE");
        
        private String name;

        Method(String str) {
            this.name = str;
        }
    }

    public BackendRequest(String str, Method method) {
        this.mUrl = str;
        this.mRequestMethod = method;
    }

    private void buildUrlWithParamsIfMethodTypeIsGet() {
        Map<String, Object> map;
        if (this.mRequestMethod != Method.GET || (map = this.mParams) == null || map.isEmpty()) {
            return;
        }
        Uri.Builder buildUpon = Uri.parse(this.mUrl).buildUpon();
        for (Map.Entry<String, Object> entry : this.mParams.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue() == null ? null : entry.getValue().toString());
        }
        this.mUrl = buildUpon.build().toString();
    }

    private <T> void executeRequest(Class<T> cls, Type type, final BackendCallbackListener<T> backendCallbackListener, boolean z) {
        final String replaceAll = this.mUrl.replaceAll("https://api.advista.no/", "").replaceAll("https://tgedgeapi.telguarder.com/", "");
        buildUrlWithParamsIfMethodTypeIsGet();
        AnalyticsManager analyticsManager = AnalyticsManager.getInstance();
        analyticsManager.sendApiReqMccAction(replaceAll, "MCC: " + getMCC() + " CountryCode: " + getCountryCode());
        Response.Listener<T> listener = new Response.Listener<T>() { // from class: com.telguarder.helpers.backend.BackendRequest.1
            @Override // com.android.volley.Response.Listener
            public void onResponse(T t) {
                BackendCallbackListener backendCallbackListener2 = backendCallbackListener;
                if (backendCallbackListener2 != null) {
                    backendCallbackListener2.triggerSuccess(t);
                }
            }
        };
        Response.ErrorListener errorListener = new Response.ErrorListener() { // from class: com.telguarder.helpers.backend.BackendRequest.2
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                if (volleyError == null) {
                    AnalyticsManager.getInstance().sendBackendErrorResponseAction(replaceAll, BackendRequest.this.getSiteId(), "unknown_error");
                    Logger.debug(Logger.LOG_TAG_BACKEND, BackendRequest.this.mUrl + " request failed ");
                    BackendCallbackListener backendCallbackListener2 = backendCallbackListener;
                    if (backendCallbackListener2 == null) {
                        return;
                    }
                    backendCallbackListener2.triggerError(new Exception("unknown_error"));
                    return;
                }
                if (volleyError.networkResponse == null || volleyError.networkResponse.statusCode == 0) {
                    AnalyticsManager.getInstance().sendBackendErrorResponseAction(replaceAll, BackendRequest.this.getSiteId(), BackendRequest.this.getVolleyErrorTypeText(volleyError));
                } else {
                    AnalyticsManager.getInstance().sendBackendErrorResponseAction(replaceAll, BackendRequest.this.getSiteId(), volleyError.networkResponse.statusCode);
                }
                Logger.debug(Logger.LOG_TAG_BACKEND, BackendRequest.this.mUrl + " request failed with " + volleyError + ": " + volleyError.getMessage());
                BackendCallbackListener backendCallbackListener3 = backendCallbackListener;
                if (backendCallbackListener3 == null) {
                    return;
                }
                backendCallbackListener3.triggerError(new NetworkError(volleyError, BackendRequest.this.mUrl, BackendRequest.this.mParams, BackendRequest.this.mBody, BackendRequest.this.mHeaders, BackendRequest.this.mRequestMethod));
            }
        };
        JsonRequest jsonRequest = cls != null ? new JsonRequest(this.mUrl, this.mHeaders, this.mParams, this.mBody, getActualMethodType(), (Class) cls, (Response.Listener) listener, errorListener) : new JsonRequest(this.mUrl, this.mHeaders, this.mParams, this.mBody, getActualMethodType(), type, listener, errorListener);
        try {
            Logger.debug(Logger.LOG_TAG_BACKEND, this.mRequestMethod + " " + jsonRequest.getUrl() + " " + jsonRequest.getParams() + " " + jsonRequest.getHeaders() + " body: " + this.mBody);
        } catch (AuthFailureError e) {
            Logger.error(Logger.LOG_TAG_BACKEND, "Failed to read params for URL: " + jsonRequest.getUrl());
        }
        jsonRequest.setPriority(z ? Request.Priority.IMMEDIATE : Request.Priority.NORMAL);
        jsonRequest.setShouldCache(!z);
        jsonRequest.setRetryPolicy(new DefaultRetryPolicy(15000, 1, 1.0f));
        jsonRequest.requestStartTime = SystemClock.elapsedRealtime();
        jsonRequest.nakedUrl = replaceAll;
        RequestQueue requestQueue = VolleyHelper.getRequestQueue();
        if (requestQueue == null) {
            errorListener.onErrorResponse(null);
            return;
        }
        requestQueue.add(jsonRequest);
        if (backendCallbackListener == null) {
            return;
        }
        backendCallbackListener.triggerStart();
    }

    private int getActualMethodType() {
        int i = C23263.$SwitchMap$com$telguarder$helpers$backend$BackendRequest$Method[this.mRequestMethod.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    return 0;
                }
            }
        }
        return i2;
    }

    private String getCountryCode() {
        Map<String, String> map = this.mHeaders;
        return (map == null || !map.containsKey("X-Country-Code")) ? "null" : this.mHeaders.get("X-Country-Code");
    }

    private String getMCC() {
        Map<String, String> map = this.mHeaders;
        return (map == null || !map.containsKey("X-MCC")) ? "null" : this.mHeaders.get("X-MCC");
    }

    public String getSiteId() {
        Map<String, String> map = this.mHeaders;
        if (map == null || !map.containsKey("X-SiteId")) {
            return null;
        }
        return this.mHeaders.get("X-SiteId");
    }

    public String getVolleyErrorTypeText(VolleyError volleyError) {
        if (volleyError == null) {
            return "unknown_error";
        }
        if (volleyError instanceof TimeoutError) {
            return "timeout_error";
        }
        if (volleyError instanceof NoConnectionError) {
            return "no_connection_error";
        }
        if (volleyError instanceof AuthFailureError) {
            return "auth_failure_error";
        }
        if (volleyError instanceof ServerError) {
            return "server_error";
        }
        if (volleyError instanceof NetworkError) {
            return "network_error";
        }
        if (volleyError instanceof ParseError) {
            return "parse_error";
        }
        String message = volleyError.getMessage();
        if (TextUtils.isEmpty(message)) {
            message = "unknown_error";
        }
        return message;
    }

    private void putObjectParam(String str, Object obj) {
        if (this.mParams == null) {
            this.mParams = new TreeMap();
        }
        this.mParams.put(str, obj);
    }

    public <T> void execute(Class<T> cls, BackendCallbackListener<T> backendCallbackListener) {
        executeRequest(cls, null, backendCallbackListener, false);
    }

    public <T> void execute(Type type, BackendCallbackListener<T> backendCallbackListener) {
        executeRequest(null, type, backendCallbackListener, false);
    }

    public <T> void executeImmediate(Class<T> cls, BackendCallbackListener<T> backendCallbackListener) {
        executeRequest(cls, null, backendCallbackListener, true);
    }

    public void putAuthorizationToken(String str) {
        putHeader("Authorization", "Bearer " + str);
    }

    public void putHeader(String str, String str2) {
        if (this.mHeaders == null) {
            this.mHeaders = new HashMap();
        }
        this.mHeaders.put(str, str2);
    }

    public void putParam(String str, Number number) {
        putObjectParam(str, number);
    }

    public void putParam(String str, String str2) {
        putObjectParam(str, str2);
    }

    public void putParam(String str, List list) {
        putObjectParam(str, list);
    }

    public void putParam(String str, boolean z) {
        putObjectParam(str, Boolean.valueOf(z));
    }

    public void setBody(Object obj) {
        this.mBody = new Gson().toJson(obj);
    }
}
