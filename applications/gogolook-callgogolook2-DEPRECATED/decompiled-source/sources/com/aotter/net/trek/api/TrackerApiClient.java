package com.aotter.net.trek.api;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.aotter.net.trek.global.AotterTrekApplication;
import com.aotter.net.trek.util.CryptLib;
import com.aotter.net.trek.util.TrekLog;
import com.aotter.net.volley.NetworkResponse;
import com.aotter.net.volley.RequestQueue;
import com.aotter.net.volley.Response;
import com.aotter.net.volley.VolleyError;
import com.aotter.net.volley.toolbox.Volley;
import java.io.UnsupportedEncodingException;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/api/TrackerApiClient.class */
public class TrackerApiClient {

    /* renamed from: a */
    public static Context f1432a;

    /* renamed from: b */
    public static RequestQueue f1433b;

    /* renamed from: c */
    public static CookieManager f1434c;

    /* renamed from: d */
    public static TrackerApiClient f1435d;

    /* renamed from: f */
    public String f1437f;

    /* renamed from: e */
    public String f1436e = "text/plain";

    /* renamed from: g */
    public String f1438g = CryptLib.generateRandomIV(16);

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/api/TrackerApiClient$APICallFinishedListener.class */
    public interface APICallFinishedListener {
        void onError(JSONObject jSONObject);

        void onFail();

        void onSuccess(JSONObject jSONObject);
    }

    public TrackerApiClient(Context context) {
        this.f1437f = "";
        f1432a = context;
        f1433b = getRequestQueue();
        f1434c = new CookieManager(null, CookiePolicy.ACCEPT_ALL);
        f1434c.getCookieStore().removeAll();
        CookieHandler.setDefault(f1434c);
        try {
            this.f1437f = CryptLib.SHA256(AotterTrekApplication.mClientSecret, 16);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    private Response.ErrorListener m36415a(final APICallFinishedListener aPICallFinishedListener) {
        return new Response.ErrorListener() { // from class: com.aotter.net.trek.api.TrackerApiClient.11
            @Override // com.aotter.net.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                byte[] bArr;
                if (volleyError != null) {
                    Log.e(TrackerApiClient.class.getSimpleName(), volleyError.toString());
                    NetworkResponse networkResponse = volleyError.networkResponse;
                    if (!(networkResponse == null || (bArr = networkResponse.data) == null)) {
                        TrekLog.m36317e(new String(bArr));
                    }
                }
                aPICallFinishedListener.onFail();
            }
        };
    }

    /* renamed from: a */
    private Response.Listener<String> m36413a(String str, final APICallFinishedListener aPICallFinishedListener) {
        return new Response.Listener<String>() { // from class: com.aotter.net.trek.api.TrackerApiClient.10
            public void onResponse(String str2) {
                if (str2 == null || str2.length() <= 10) {
                    Log.e(AotterTrekApplication.TAG, "Please check Internet");
                } else {
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        if (jSONObject.has(AotterTrekApplication.TAG_API_SUCCESS)) {
                            aPICallFinishedListener.onSuccess(jSONObject);
                        } else if (jSONObject.has(AotterTrekApplication.TAG_API_ERROR)) {
                            aPICallFinishedListener.onError(jSONObject);
                        } else {
                            aPICallFinishedListener.onFail();
                        }
                        return;
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                aPICallFinishedListener.onFail();
            }
        };
    }

    public static TrackerApiClient getSharedInstance(Context context) {
        TrackerApiClient trackerApiClient;
        synchronized (TrackerApiClient.class) {
            try {
                if (f1435d == null) {
                    f1435d = new TrackerApiClient(context);
                }
                trackerApiClient = f1435d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return trackerApiClient;
    }

    public RequestQueue getRequestQueue() {
        if (f1433b == null) {
            f1433b = Volley.newRequestQueue(f1432a);
        }
        return f1433b;
    }

    public void report(final String str) {
        getRequestQueue().add(new TrackerStringRequest(1, "https://tktracker.aotter.net/report", new Response.Listener<String>() { // from class: com.aotter.net.trek.api.TrackerApiClient.1
            public void onResponse(String str2) {
                if (str2 == null) {
                    Log.e(TrackerApiClient.class.getSimpleName(), "Please check Internet");
                }
            }
        }, new Response.ErrorListener() { // from class: com.aotter.net.trek.api.TrackerApiClient.2
            @Override // com.aotter.net.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                if (!TextUtils.isEmpty(volleyError.getMessage())) {
                    String simpleName = TrackerApiClient.class.getSimpleName();
                    Log.e(simpleName, "onErrorResponse= " + volleyError.getMessage());
                }
            }
        }) { // from class: com.aotter.net.trek.api.TrackerApiClient.3
            @Override // com.aotter.net.trek.api.TrackerStringRequest, com.aotter.net.volley.Request
            public byte[] getBody() {
                if (str.isEmpty()) {
                    return super.getBody();
                }
                byte[] bArr = new byte[0];
                try {
                    bArr = new CryptLib().encrypt(str, TrackerApiClient.this.f1437f, TrackerApiClient.this.f1438g).getBytes();
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                } catch (InvalidAlgorithmParameterException e2) {
                    e2.printStackTrace();
                } catch (InvalidKeyException e3) {
                    e3.printStackTrace();
                } catch (NoSuchAlgorithmException e4) {
                    e4.printStackTrace();
                } catch (BadPaddingException e5) {
                    e5.printStackTrace();
                } catch (IllegalBlockSizeException e6) {
                    e6.printStackTrace();
                } catch (NoSuchPaddingException e7) {
                    e7.printStackTrace();
                }
                return bArr;
            }

            @Override // com.aotter.net.volley.Request
            public String getBodyContentType() {
                return TrackerApiClient.this.f1436e;
            }

            @Override // com.aotter.net.trek.api.TrackerStringRequest, com.aotter.net.volley.Request
            public Map<String, String> getHeaders() {
                Map<String, String> headers = super.getHeaders();
                headers.put("x-aotter-iv", TrackerApiClient.this.f1438g);
                return headers;
            }
        });
    }

    public void reportPlace(final String str) {
        getRequestQueue().add(new TrackerStringRequest(1, "https://tktracker.aotter.net/report/place", new Response.Listener<String>() { // from class: com.aotter.net.trek.api.TrackerApiClient.7
            public void onResponse(String str2) {
                if (str2 == null) {
                    Log.e(TrackerApiClient.class.getSimpleName(), "Please check Internet");
                }
            }
        }, new Response.ErrorListener() { // from class: com.aotter.net.trek.api.TrackerApiClient.8
            @Override // com.aotter.net.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                if (!TextUtils.isEmpty(volleyError.getMessage())) {
                    String simpleName = TrackerApiClient.class.getSimpleName();
                    Log.e(simpleName, "onErrorResponse= " + volleyError.getMessage());
                }
            }
        }) { // from class: com.aotter.net.trek.api.TrackerApiClient.9
            @Override // com.aotter.net.trek.api.TrackerStringRequest, com.aotter.net.volley.Request
            public byte[] getBody() {
                if (str.isEmpty()) {
                    return super.getBody();
                }
                byte[] bArr = new byte[0];
                try {
                    bArr = new CryptLib().encrypt(str, TrackerApiClient.this.f1437f, TrackerApiClient.this.f1438g).getBytes();
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                } catch (InvalidAlgorithmParameterException e2) {
                    e2.printStackTrace();
                } catch (InvalidKeyException e3) {
                    e3.printStackTrace();
                } catch (NoSuchAlgorithmException e4) {
                    e4.printStackTrace();
                } catch (BadPaddingException e5) {
                    e5.printStackTrace();
                } catch (IllegalBlockSizeException e6) {
                    e6.printStackTrace();
                } catch (NoSuchPaddingException e7) {
                    e7.printStackTrace();
                }
                return bArr;
            }

            @Override // com.aotter.net.volley.Request
            public String getBodyContentType() {
                return TrackerApiClient.this.f1436e;
            }

            @Override // com.aotter.net.trek.api.TrackerStringRequest, com.aotter.net.volley.Request
            public Map<String, String> getHeaders() {
                Map<String, String> headers = super.getHeaders();
                headers.put("x-aotter-iv", TrackerApiClient.this.f1438g);
                return headers;
            }
        });
    }

    public void reportRead(final String str) {
        getRequestQueue().add(new TrackerStringRequest(1, "https://tktracker.aotter.net/report/read", new Response.Listener<String>() { // from class: com.aotter.net.trek.api.TrackerApiClient.4
            public void onResponse(String str2) {
                if (str2 == null) {
                    Log.e(TrackerApiClient.class.getSimpleName(), "Please check Internet");
                }
            }
        }, new Response.ErrorListener() { // from class: com.aotter.net.trek.api.TrackerApiClient.5
            @Override // com.aotter.net.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                if (!TextUtils.isEmpty(volleyError.getMessage())) {
                    String simpleName = TrackerApiClient.class.getSimpleName();
                    Log.e(simpleName, "onErrorResponse= " + volleyError.getMessage());
                }
            }
        }) { // from class: com.aotter.net.trek.api.TrackerApiClient.6
            @Override // com.aotter.net.trek.api.TrackerStringRequest, com.aotter.net.volley.Request
            public byte[] getBody() {
                if (str.isEmpty()) {
                    return super.getBody();
                }
                byte[] bArr = new byte[0];
                try {
                    bArr = new CryptLib().encrypt(str, TrackerApiClient.this.f1437f, TrackerApiClient.this.f1438g).getBytes();
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                } catch (InvalidAlgorithmParameterException e2) {
                    e2.printStackTrace();
                } catch (InvalidKeyException e3) {
                    e3.printStackTrace();
                } catch (NoSuchAlgorithmException e4) {
                    e4.printStackTrace();
                } catch (BadPaddingException e5) {
                    e5.printStackTrace();
                } catch (IllegalBlockSizeException e6) {
                    e6.printStackTrace();
                } catch (NoSuchPaddingException e7) {
                    e7.printStackTrace();
                }
                return bArr;
            }

            @Override // com.aotter.net.volley.Request
            public String getBodyContentType() {
                return TrackerApiClient.this.f1436e;
            }

            @Override // com.aotter.net.trek.api.TrackerStringRequest, com.aotter.net.volley.Request
            public Map<String, String> getHeaders() {
                Map<String, String> headers = super.getHeaders();
                headers.put("x-aotter-iv", TrackerApiClient.this.f1438g);
                return headers;
            }
        });
    }
}
