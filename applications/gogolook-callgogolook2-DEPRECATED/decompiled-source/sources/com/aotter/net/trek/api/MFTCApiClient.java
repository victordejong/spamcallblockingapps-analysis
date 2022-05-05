package com.aotter.net.trek.api;

import android.content.Context;
import android.util.Log;
import androidx.media2.exoplayer.external.audio.Sonic;
import com.aotter.net.trek.global.AotterTrekApplication;
import com.aotter.net.trek.util.CryptLib;
import com.aotter.net.trek.util.TrekLog;
import com.aotter.net.volley.DefaultRetryPolicy;
import com.aotter.net.volley.NetworkResponse;
import com.aotter.net.volley.RequestQueue;
import com.aotter.net.volley.Response;
import com.aotter.net.volley.VolleyError;
import com.aotter.net.volley.toolbox.StringRequest;
import com.aotter.net.volley.toolbox.Volley;
import java.io.UnsupportedEncodingException;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/api/MFTCApiClient.class */
public class MFTCApiClient {
    public static final float DEFAULT_BACKOFF_MULT = 1.0f;
    public static final int DEFAULT_MAX_RETRIES = 1;
    public static final int DEFAULT_TIMEOUT_MS = 2500;

    /* renamed from: a */
    public static Context f1403a;

    /* renamed from: b */
    public static RequestQueue f1404b;

    /* renamed from: c */
    public static CookieManager f1405c;

    /* renamed from: d */
    public static MFTCApiClient f1406d;

    /* renamed from: f */
    public String f1408f;

    /* renamed from: e */
    public String f1407e = "text/plain";

    /* renamed from: g */
    public String f1409g = CryptLib.generateRandomIV(16);

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/api/MFTCApiClient$APICallFinishedListener.class */
    public interface APICallFinishedListener {
        void onError(JSONObject jSONObject);

        void onFail();

        void onSuccess(JSONObject jSONObject);
    }

    public MFTCApiClient(Context context) {
        this.f1408f = "";
        f1403a = context;
        f1404b = getRequestQueue();
        f1405c = new CookieManager(null, CookiePolicy.ACCEPT_ALL);
        f1405c.getCookieStore().removeAll();
        CookieHandler.setDefault(f1405c);
        try {
            this.f1408f = CryptLib.SHA256(AotterTrekApplication.mClientSecret, 16);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    private Response.ErrorListener m36421a(final APICallFinishedListener aPICallFinishedListener) {
        return new Response.ErrorListener() { // from class: com.aotter.net.trek.api.MFTCApiClient.16
            @Override // com.aotter.net.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                byte[] bArr;
                if (volleyError != null) {
                    Log.e(MFTCApiClient.class.getSimpleName(), volleyError.toString());
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
    private Response.Listener<String> m36419a(String str, final APICallFinishedListener aPICallFinishedListener) {
        return new Response.Listener<String>() { // from class: com.aotter.net.trek.api.MFTCApiClient.14
            public void onResponse(String str2) {
                if (str2 == null || str2.length() <= 10) {
                    Log.e(MFTCApiClient.class.getSimpleName(), "Please check Internet");
                } else {
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        JSONObject jSONObject2 = jSONObject.getJSONObject(AotterTrekApplication.TAG_API_SUCCESS);
                        if (jSONObject.has(AotterTrekApplication.TAG_API_SUCCESS)) {
                            aPICallFinishedListener.onSuccess(jSONObject2);
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

    /* renamed from: b */
    private Response.Listener<String> m36417b(String str, final APICallFinishedListener aPICallFinishedListener) {
        return new Response.Listener<String>() { // from class: com.aotter.net.trek.api.MFTCApiClient.15
            public void onResponse(String str2) {
                if (str2 == null || str2.length() <= 10) {
                    Log.e(MFTCApiClient.class.getSimpleName(), "Please check Internet");
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

    public static MFTCApiClient getSharedInstance(Context context) {
        MFTCApiClient mFTCApiClient;
        synchronized (MFTCApiClient.class) {
            try {
                if (f1406d == null) {
                    f1406d = new MFTCApiClient(context);
                }
                mFTCApiClient = f1406d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mFTCApiClient;
    }

    public static void longLog(String str) {
        if (str.length() > 4000) {
            str.substring(0, Sonic.AMDF_FREQUENCY);
            longLog(str.substring(Sonic.AMDF_FREQUENCY));
        }
    }

    public void activeAd(String str, APICallFinishedListener aPICallFinishedListener) {
        getRequestQueue().add(new MFTCStringRequest(0, "https://tkmftc.aotter.net/active/" + str, m36419a("activeAd", aPICallFinishedListener), m36421a(aPICallFinishedListener)));
    }

    public void activeHouseAd(String str, APICallFinishedListener aPICallFinishedListener) {
        getRequestQueue().add(new MFTCStringRequest(0, "https://tkmftc.aotter.net/house/active/" + str, m36419a("activeAd", aPICallFinishedListener), m36421a(aPICallFinishedListener)));
    }

    public void getMFTCAd(final String str, APICallFinishedListener aPICallFinishedListener) {
        getRequestQueue().add(new MFTCStringRequest(1, "https://tkmftc.aotter.net/fetch", m36417b("getMFTCAd", aPICallFinishedListener), m36421a(aPICallFinishedListener)) { // from class: com.aotter.net.trek.api.MFTCApiClient.3
            @Override // com.aotter.net.trek.api.MFTCStringRequest, com.aotter.net.volley.Request
            public byte[] getBody() {
                if (str.isEmpty()) {
                    return super.getBody();
                }
                byte[] bArr = new byte[0];
                try {
                    bArr = new CryptLib().encrypt(str, MFTCApiClient.this.f1408f, MFTCApiClient.this.f1409g).getBytes();
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
                return MFTCApiClient.this.f1407e;
            }

            @Override // com.aotter.net.trek.api.MFTCStringRequest, com.aotter.net.volley.Request
            public Map<String, String> getHeaders() {
                Map<String, String> headers = super.getHeaders();
                headers.put("x-aotter-iv", MFTCApiClient.this.f1409g);
                return headers;
            }
        });
    }

    public void getMFTCHouseAd(final String str, APICallFinishedListener aPICallFinishedListener) {
        getRequestQueue().add(new MFTCStringRequest(1, "https://tkmftc.aotter.net/house/fetch", m36417b("getMFTCHouseAd", aPICallFinishedListener), m36421a(aPICallFinishedListener)) { // from class: com.aotter.net.trek.api.MFTCApiClient.4
            @Override // com.aotter.net.trek.api.MFTCStringRequest, com.aotter.net.volley.Request
            public byte[] getBody() {
                if (str.isEmpty()) {
                    return super.getBody();
                }
                byte[] bArr = new byte[0];
                try {
                    bArr = new CryptLib().encrypt(str, MFTCApiClient.this.f1408f, MFTCApiClient.this.f1409g).getBytes();
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
                return MFTCApiClient.this.f1407e;
            }

            @Override // com.aotter.net.trek.api.MFTCStringRequest, com.aotter.net.volley.Request
            public Map<String, String> getHeaders() {
                Map<String, String> headers = super.getHeaders();
                headers.put("x-aotter-iv", MFTCApiClient.this.f1409g);
                return headers;
            }
        });
    }

    public RequestQueue getRequestQueue() {
        if (f1404b == null) {
            f1404b = Volley.newRequestQueue(f1403a);
        }
        return f1404b;
    }

    public void sendGetUrl(String str) {
        getRequestQueue().add(new StringRequest(0, str, new Response.Listener<String>() { // from class: com.aotter.net.trek.api.MFTCApiClient.1
            public void onResponse(String str2) {
                if (str2 == null) {
                    Log.e(MFTCApiClient.class.getSimpleName(), "Please check Internet");
                }
            }
        }, new Response.ErrorListener() { // from class: com.aotter.net.trek.api.MFTCApiClient.2
            @Override // com.aotter.net.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
            }
        }));
    }

    public void sendImp(String str) {
        getRequestQueue().add(new MFTCStringRequest(1, str, new Response.Listener<String>() { // from class: com.aotter.net.trek.api.MFTCApiClient.8
            public void onResponse(String str2) {
                if (str2 == null) {
                    Log.e(MFTCApiClient.class.getSimpleName(), "Please check Internet");
                }
            }
        }, new Response.ErrorListener() { // from class: com.aotter.net.trek.api.MFTCApiClient.9
            @Override // com.aotter.net.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
            }
        }));
    }

    public void sendPOPURL(String str) {
        getRequestQueue().add(new MFTCStringRequest(1, str, new Response.Listener<String>() { // from class: com.aotter.net.trek.api.MFTCApiClient.12
            public void onResponse(String str2) {
                if (str2 == null) {
                    Log.e(MFTCApiClient.class.getSimpleName(), "Please check Internet");
                }
            }
        }, new Response.ErrorListener() { // from class: com.aotter.net.trek.api.MFTCApiClient.13
            @Override // com.aotter.net.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
            }
        }));
    }

    public void sendURL(String str) {
        MFTCStringRequest mFTCStringRequest = new MFTCStringRequest(1, str, new Response.Listener<String>() { // from class: com.aotter.net.trek.api.MFTCApiClient.10
            public void onResponse(String str2) {
                if (str2 == null) {
                    Log.e(MFTCApiClient.class.getSimpleName(), "Please check Internet");
                }
            }
        }, new Response.ErrorListener() { // from class: com.aotter.net.trek.api.MFTCApiClient.11
            @Override // com.aotter.net.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
            }
        });
        mFTCStringRequest.setRetryPolicy(new DefaultRetryPolicy((int) TimeUnit.SECONDS.toMillis(20L), 1, 1.0f));
        getRequestQueue().add(mFTCStringRequest);
    }

    public void sendVideoSession(final String str, String str2) {
        getRequestQueue().add(new MFTCStringRequest(1, str2, new Response.Listener<String>() { // from class: com.aotter.net.trek.api.MFTCApiClient.5
            public void onResponse(String str3) {
                if (str3 == null) {
                    Log.e(MFTCApiClient.class.getSimpleName(), "Please check Internet");
                }
            }
        }, new Response.ErrorListener() { // from class: com.aotter.net.trek.api.MFTCApiClient.6
            @Override // com.aotter.net.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
            }
        }) { // from class: com.aotter.net.trek.api.MFTCApiClient.7
            @Override // com.aotter.net.trek.api.MFTCStringRequest, com.aotter.net.volley.Request
            public byte[] getBody() {
                if (str.isEmpty()) {
                    return super.getBody();
                }
                byte[] bArr = new byte[0];
                try {
                    bArr = new CryptLib().encrypt(str, MFTCApiClient.this.f1408f, MFTCApiClient.this.f1409g).getBytes();
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
                return MFTCApiClient.this.f1407e;
            }

            @Override // com.aotter.net.trek.api.MFTCStringRequest, com.aotter.net.volley.Request
            public Map<String, String> getHeaders() {
                Map<String, String> headers = super.getHeaders();
                headers.put("x-aotter-iv", MFTCApiClient.this.f1409g);
                return headers;
            }
        });
    }
}
