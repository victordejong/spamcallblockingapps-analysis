package com.telguarder.helpers.backend;

import android.os.SystemClock;
import android.text.TextUtils;
import com.android.volley.AuthFailureError;
import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.toolbox.HttpHeaderParser;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.telguarder.ApplicationConstants;
import com.telguarder.ApplicationObject;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.numberLookup.ActorType;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.log.Logger;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/backend/JsonRequest.class */
public class JsonRequest<T> extends Request<T> {
    private Type classReflectType;
    private Class<T> classType;
    private Gson gson;
    private Response.Listener<T> listener;
    private String mBody;
    private final Map<String, String> mHeaders;
    private Map<String, Object> mParams;
    public String nakedUrl;
    private String siteId;
    private Request.Priority mPriority = super.getPriority();
    public long requestStartTime = 0;
    public long xResponseTime = 0;

    public JsonRequest(String str, Map<String, String> map, Map<String, Object> map2, String str2, int i, Class<T> cls, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        super(i, str, errorListener);
        this.mHeaders = map;
        this.siteId = getSiteId(map);
        this.mParams = map2;
        this.mBody = str2;
        this.classType = cls;
        this.listener = listener;
    }

    public JsonRequest(String str, Map<String, String> map, Map<String, Object> map2, String str2, int i, Type type, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        super(i, str, errorListener);
        this.mHeaders = map;
        this.siteId = getSiteId(map);
        this.mParams = map2;
        this.mBody = str2;
        this.classReflectType = type;
        this.listener = listener;
    }

    private byte[] buildBody() {
        JSONObject jSONObject = new JSONObject();
        try {
            Map<String, Object> map = this.mParams;
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    Object value = entry.getValue();
                    Object obj = value;
                    if (value instanceof List) {
                        obj = new JSONArray((Collection) ((List) value));
                    }
                    jSONObject.put(entry.getKey(), obj);
                }
            }
        } catch (Exception e) {
            Logger.error(e.getMessage());
        }
        return jSONObject.toString().getBytes();
    }

    private Gson getGson() {
        if (this.gson == null) {
            GsonBuilder gsonBuilder = new GsonBuilder();
            gsonBuilder.enableComplexMapKeySerialization();
            gsonBuilder.registerTypeAdapter(AdvertNetworkName.class, new TypeAdapter<AdvertNetworkName>() { // from class: com.telguarder.helpers.backend.JsonRequest.2
                @Override // com.google.gson.TypeAdapter
                public AdvertNetworkName read(JsonReader jsonReader) throws IOException {
                    Field[] declaredFields = AdvertNetworkName.class.getDeclaredFields();
                    String nextString = jsonReader.nextString();
                    if (!TextUtils.isEmpty(nextString)) {
                        for (int i = 1; i < declaredFields.length; i++) {
                            SerializedName serializedName = (SerializedName) declaredFields[i].getAnnotation(SerializedName.class);
                            if (serializedName != null && !TextUtils.isEmpty(serializedName.value()) && serializedName.value().equalsIgnoreCase(nextString)) {
                                AdvertNetworkName valueOf = AdvertNetworkName.valueOf(declaredFields[i].getName());
                                if (ApplicationConstants.isAdNetworkEnabled(valueOf)) {
                                    return valueOf;
                                }
                            }
                        }
                        return null;
                    }
                    return null;
                }

                public void write(JsonWriter jsonWriter, AdvertNetworkName advertNetworkName) throws IOException {
                }
            });
            gsonBuilder.registerTypeAdapter(ActorType.class, new TypeAdapter<ActorType>() { // from class: com.telguarder.helpers.backend.JsonRequest.3
                @Override // com.google.gson.TypeAdapter
                public ActorType read(JsonReader jsonReader) throws IOException {
                    Field[] declaredFields = ActorType.class.getDeclaredFields();
                    String nextString = jsonReader.nextString();
                    if (!TextUtils.isEmpty(nextString)) {
                        for (int i = 1; i < declaredFields.length; i++) {
                            SerializedName serializedName = (SerializedName) declaredFields[i].getAnnotation(SerializedName.class);
                            if (serializedName != null && !TextUtils.isEmpty(serializedName.value()) && serializedName.value().equalsIgnoreCase(nextString)) {
                                return ActorType.valueOf(declaredFields[i].getName());
                            }
                        }
                        return null;
                    }
                    return null;
                }

                public void write(JsonWriter jsonWriter, ActorType actorType) throws IOException {
                }
            });
            this.gson = gsonBuilder.create();
        }
        return this.gson;
    }

    private String getSiteId(Map<String, String> map) {
        if (map == null || !map.containsKey("X-SiteId")) {
            return null;
        }
        return map.get("X-SiteId");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private T parseResponse(NetworkResponse networkResponse) throws UnsupportedEncodingException, JsonSyntaxException {
        T t;
        String str = new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers));
        Logger.debug(Logger.LOG_TAG_BACKEND, getUrl() + " response headers -> " + networkResponse.headers.toString());
        int method = getMethod();
        String str2 = method != 0 ? method != 1 ? method != 2 ? method != 3 ? "" : "DELETE " : "PUT " : "POST " : "GET ";
        Logger.debug(Logger.LOG_TAG_BACKEND, str2 + getUrl() + " " + this.mParams + " -> " + str);
        if (this.classType != null) {
            t = getGson().fromJson(str, (Class) this.classType);
        } else if (this.classReflectType == null) {
            throw new UnsupportedEncodingException("Provide a valid Class actorType!");
        } else {
            t = getGson().fromJson(str, this.classReflectType);
        }
        return t;
    }

    private void trackDelayByRegionRedirections(final boolean z, final String str, final Long l) {
        new Thread(new Runnable() { // from class: com.telguarder.helpers.backend.JsonRequest.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    String replaceAll = JsonRequest.this.getUrl().replaceAll("https://api.advista.no/", "").replaceAll("https://tgedgeapi.telguarder.com/", "");
                    String networkClass = NetworkHelper.getNetworkClass(ApplicationObject.getContext());
                    if (z) {
                        AnalyticsManager.getInstance().sendBackendResponseRegionXAction(replaceAll, JsonRequest.this.siteId, str, l, networkClass);
                    } else {
                        AnalyticsManager.getInstance().sendBackendResponseRegionAction(replaceAll, JsonRequest.this.siteId, str, l, networkClass);
                    }
                } catch (Exception e) {
                }
            }
        }).start();
    }

    @Override // com.android.volley.Request
    public void deliverResponse(T t) {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.requestStartTime;
        if (elapsedRealtime > 3000) {
            AnalyticsManager.getInstance().sendBackendSlowResponseAction(this.nakedUrl, this.siteId, elapsedRealtime);
        }
        if (this.xResponseTime >= 500) {
            AnalyticsManager.getInstance().sendBackendXResponseAction(this.nakedUrl, this.siteId, this.xResponseTime);
        }
        this.listener.onResponse(t);
    }

    @Override // com.android.volley.Request
    public byte[] getBody() throws AuthFailureError {
        Map<String, Object> map;
        return !TextUtils.isEmpty(this.mBody) ? this.mBody.getBytes() : (getMethod() != 1 || (map = this.mParams) == null || map.size() <= 0) ? super.getBody() : buildBody();
    }

    @Override // com.android.volley.Request
    public String getBodyContentType() {
        return POBCommonConstants.RESPONSE_HEADER_CONTENT_TYPE_JSON;
    }

    @Override // com.android.volley.Request
    public String getCacheKey() {
        String url = getUrl();
        String str = url;
        if (getMethod() == 1) {
            str = url;
            if (this.mParams != null) {
                str = url + " " + this.mParams.toString();
            }
        }
        return str;
    }

    @Override // com.android.volley.Request
    public Map<String, String> getHeaders() throws AuthFailureError {
        Map<String, String> map = this.mHeaders;
        if (map == null) {
            map = super.getHeaders();
        }
        if (getMethod() == 3 && !map.containsKey("Content-Type")) {
            map.put("Content-Type", "application/json; charset=utf-8");
        }
        return map;
    }

    @Override // com.android.volley.Request
    public Map<String, String> getParams() throws AuthFailureError {
        if (this.mParams == null) {
            return super.getParams();
        }
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, Object> entry : this.mParams.entrySet()) {
            treeMap.put(entry.getKey(), entry.getValue() == null ? null : entry.getValue().toString());
        }
        return treeMap;
    }

    @Override // com.android.volley.Request
    public Request.Priority getPriority() {
        return this.mPriority;
    }

    @Override // com.android.volley.Request
    public Response<T> parseNetworkResponse(NetworkResponse networkResponse) {
        trackDelayByRegionRedirections(false, networkResponse.headers.get("X-Region"), Long.valueOf(SystemClock.elapsedRealtime() - this.requestStartTime));
        try {
            try {
                if (networkResponse.headers.containsKey("X-Response-Time")) {
                    this.xResponseTime = Long.valueOf(networkResponse.headers.get("X-Response-Time")).longValue();
                    trackDelayByRegionRedirections(true, networkResponse.headers.get("X-Region"), Long.valueOf(this.xResponseTime));
                }
            } catch (Exception e) {
                this.xResponseTime = 0L;
            }
            return Response.success(parseResponse(networkResponse), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (Exception e2) {
            return Response.error(new ParseError(e2));
        }
    }

    public void setPriority(Request.Priority priority) {
        this.mPriority = priority;
    }
}
