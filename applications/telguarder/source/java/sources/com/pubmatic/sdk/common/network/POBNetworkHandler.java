package com.pubmatic.sdk.common.network;

import android.content.Context;
import android.graphics.Bitmap;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.Header;
import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.BaseHttpStack;
import com.android.volley.toolbox.BasicNetwork;
import com.android.volley.toolbox.HttpHeaderParser;
import com.android.volley.toolbox.HurlStack;
import com.android.volley.toolbox.ImageRequest;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.StringRequest;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.network.POBHttpRequest;
import com.pubmatic.sdk.common.utility.POBUtils;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkHandler.class */
public class POBNetworkHandler {

    /* renamed from: a */
    private final POBRequestQueue f525a;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkHandler$POBImageNetworkListener.class */
    public interface POBImageNetworkListener<T> {
        void onFailure(POBError pOBError);

        void onSuccess(Bitmap bitmap);
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener.class */
    public interface POBNetworkListener<T> {
        void onFailure(POBError pOBError);

        void onSuccess(T t);
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener.class */
    public interface POBNetworkResultListener {
        void onResult(POBNetworkResult pOBNetworkResult);
    }

    /* renamed from: com.pubmatic.sdk.common.network.POBNetworkHandler$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkHandler$a.class */
    public static /* synthetic */ class C1869a {

        /* renamed from: a */
        static final /* synthetic */ int[] f526a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[POBHttpRequest.HTTP_METHOD.values().length];
            f526a = iArr;
            try {
                iArr[POBHttpRequest.HTTP_METHOD.POST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f526a[POBHttpRequest.HTTP_METHOD.PUT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f526a[POBHttpRequest.HTTP_METHOD.DELETE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.common.network.POBNetworkHandler$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkHandler$b.class */
    public class C1870b implements Response.Listener<String> {

        /* renamed from: a */
        final /* synthetic */ POBNetworkListener f527a;

        C1870b(POBNetworkHandler pOBNetworkHandler, POBNetworkListener pOBNetworkListener) {
            this.f527a = pOBNetworkListener;
        }

        /* renamed from: a */
        public void onResponse(String str) {
            POBNetworkListener pOBNetworkListener = this.f527a;
            if (pOBNetworkListener != null) {
                pOBNetworkListener.onSuccess(str);
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.common.network.POBNetworkHandler$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkHandler$c.class */
    public class C1871c extends StringRequest {

        /* renamed from: a */
        final /* synthetic */ POBHttpRequest f528a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1871c(POBNetworkHandler pOBNetworkHandler, int i, String str, Response.Listener listener, Response.ErrorListener errorListener, POBHttpRequest pOBHttpRequest) {
            super(i, str, listener, errorListener);
            this.f528a = pOBHttpRequest;
        }

        @Override // com.android.volley.Request
        public byte[] getBody() {
            return this.f528a.getPostData() == null ? null : this.f528a.getPostData().getBytes(StandardCharsets.UTF_8);
        }

        @Override // com.android.volley.Request
        public Map<String, String> getHeaders() {
            return this.f528a.getHeaders();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.common.network.POBNetworkHandler$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkHandler$d.class */
    public class C1872d implements Response.Listener<Bitmap> {

        /* renamed from: a */
        final /* synthetic */ POBImageNetworkListener f529a;

        C1872d(POBNetworkHandler pOBNetworkHandler, POBImageNetworkListener pOBImageNetworkListener) {
            this.f529a = pOBImageNetworkListener;
        }

        /* renamed from: a */
        public void onResponse(Bitmap bitmap) {
            POBImageNetworkListener pOBImageNetworkListener = this.f529a;
            if (pOBImageNetworkListener != null) {
                pOBImageNetworkListener.onSuccess(bitmap);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.common.network.POBNetworkHandler$e */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkHandler$e.class */
    public class C1873e implements Response.ErrorListener {

        /* renamed from: a */
        final /* synthetic */ POBImageNetworkListener f530a;

        C1873e(POBNetworkHandler pOBNetworkHandler, POBImageNetworkListener pOBImageNetworkListener) {
            this.f530a = pOBImageNetworkListener;
        }

        @Override // com.android.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            if (this.f530a != null) {
                this.f530a.onFailure(new POBError(1007, "not able to fetch response"));
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.common.network.POBNetworkHandler$f */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkHandler$f.class */
    public class C1874f implements Response.Listener<JSONObject> {

        /* renamed from: a */
        final /* synthetic */ POBNetworkListener f531a;

        C1874f(POBNetworkHandler pOBNetworkHandler, POBNetworkListener pOBNetworkListener) {
            this.f531a = pOBNetworkListener;
        }

        /* renamed from: a */
        public void onResponse(JSONObject jSONObject) {
            POBNetworkListener pOBNetworkListener = this.f531a;
            if (pOBNetworkListener != null) {
                pOBNetworkListener.onSuccess(jSONObject);
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.common.network.POBNetworkHandler$g */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkHandler$g.class */
    public class C1875g extends JsonObjectRequest {

        /* renamed from: a */
        final /* synthetic */ POBHttpRequest f532a;

        /* renamed from: b */
        final /* synthetic */ POBNetworkResultListener f533b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1875g(POBNetworkHandler pOBNetworkHandler, int i, String str, JSONObject jSONObject, Response.Listener listener, Response.ErrorListener errorListener, POBHttpRequest pOBHttpRequest, POBNetworkResultListener pOBNetworkResultListener) {
            super(i, str, jSONObject, listener, errorListener);
            this.f532a = pOBHttpRequest;
            this.f533b = pOBNetworkResultListener;
        }

        @Override // com.android.volley.toolbox.JsonRequest, com.android.volley.Request
        public byte[] getBody() {
            return this.f532a.getPostData() == null ? null : this.f532a.getPostData().getBytes(StandardCharsets.UTF_8);
        }

        @Override // com.android.volley.Request
        public Map<String, String> getHeaders() {
            return this.f532a.getHeaders();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.volley.toolbox.JsonObjectRequest, com.android.volley.toolbox.JsonRequest, com.android.volley.Request
        public Response<JSONObject> parseNetworkResponse(NetworkResponse networkResponse) {
            try {
                JSONObject jSONObject = new JSONObject(new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers, "utf-8")));
                POBNetworkResultListener pOBNetworkResultListener = this.f533b;
                if (pOBNetworkResultListener != null) {
                    pOBNetworkResultListener.onResult(new POBNetworkResult(networkResponse.headers, networkResponse.networkTimeMs));
                }
                return Response.success(jSONObject, HttpHeaderParser.parseCacheHeaders(networkResponse));
            } catch (UnsupportedEncodingException | JSONException e) {
                return Response.error(new ParseError(networkResponse));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.common.network.POBNetworkHandler$h */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkHandler$h.class */
    public class C1876h implements RequestQueue.RequestFilter {

        /* renamed from: a */
        final /* synthetic */ String f534a;

        C1876h(POBNetworkHandler pOBNetworkHandler, String str) {
            this.f534a = str;
        }

        @Override // com.android.volley.RequestQueue.RequestFilter
        public boolean apply(Request<?> request) {
            if (this.f534a.equals(request.getTag())) {
                PMLog.debug("PMNetworkHandler", "Cancelled volley Ad Request for Tag <" + this.f534a + "> ", new Object[0]);
                return true;
            }
            return false;
        }
    }

    /* renamed from: com.pubmatic.sdk.common.network.POBNetworkHandler$i */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkHandler$i.class */
    public class C1877i implements Response.ErrorListener {

        /* renamed from: a */
        final /* synthetic */ POBNetworkResultListener f535a;

        /* renamed from: b */
        final /* synthetic */ POBHttpRequest f536b;

        /* renamed from: c */
        final /* synthetic */ AbstractC1879k f537c;

        /* renamed from: d */
        final /* synthetic */ POBNetworkListener f538d;

        C1877i(POBNetworkResultListener pOBNetworkResultListener, POBHttpRequest pOBHttpRequest, AbstractC1879k abstractC1879k, POBNetworkListener pOBNetworkListener) {
            POBNetworkHandler.this = r4;
            this.f535a = pOBNetworkResultListener;
            this.f536b = pOBHttpRequest;
            this.f537c = abstractC1879k;
            this.f538d = pOBNetworkListener;
        }

        @Override // com.android.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            if (this.f535a != null) {
                NetworkResponse m1016a = POBNetworkHandler.this.m1016a(volleyError, this.f536b);
                this.f535a.onResult(new POBNetworkResult(m1016a.headers, m1016a.networkTimeMs));
            }
            try {
                POBHttpRequest m1015a = POBNetworkHandler.this.m1015a(volleyError, this.f536b, this.f537c);
                if (m1015a != null) {
                    POBNetworkHandler.this.sendRequest(m1015a, this.f538d);
                    return;
                }
                POBNetworkListener pOBNetworkListener = this.f538d;
                if (pOBNetworkListener == null) {
                    return;
                }
                pOBNetworkListener.onFailure(POBNetworkHandler.this.m1017a(volleyError));
            } catch (VolleyError e) {
                POBNetworkListener pOBNetworkListener2 = this.f538d;
                if (pOBNetworkListener2 == null) {
                    return;
                }
                pOBNetworkListener2.onFailure(POBNetworkHandler.this.m1017a(e));
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.common.network.POBNetworkHandler$j */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkHandler$j.class */
    public class C1878j implements Response.ErrorListener {

        /* renamed from: a */
        final /* synthetic */ POBNetworkResultListener f540a;

        /* renamed from: b */
        final /* synthetic */ POBHttpRequest f541b;

        /* renamed from: c */
        final /* synthetic */ AbstractC1879k f542c;

        /* renamed from: d */
        final /* synthetic */ POBNetworkListener f543d;

        C1878j(POBNetworkResultListener pOBNetworkResultListener, POBHttpRequest pOBHttpRequest, AbstractC1879k abstractC1879k, POBNetworkListener pOBNetworkListener) {
            POBNetworkHandler.this = r4;
            this.f540a = pOBNetworkResultListener;
            this.f541b = pOBHttpRequest;
            this.f542c = abstractC1879k;
            this.f543d = pOBNetworkListener;
        }

        @Override // com.android.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            if (this.f540a != null) {
                NetworkResponse m1016a = POBNetworkHandler.this.m1016a(volleyError, this.f541b);
                this.f540a.onResult(new POBNetworkResult(m1016a.headers, m1016a.networkTimeMs));
            }
            try {
                POBHttpRequest m1015a = POBNetworkHandler.this.m1015a(volleyError, this.f541b, this.f542c);
                if (m1015a != null) {
                    POBNetworkHandler.this.sendJSONRequest(m1015a, this.f543d);
                    return;
                }
                POBNetworkListener pOBNetworkListener = this.f543d;
                if (pOBNetworkListener == null) {
                    return;
                }
                pOBNetworkListener.onFailure(POBNetworkHandler.this.m1017a(volleyError));
            } catch (VolleyError e) {
                POBNetworkListener pOBNetworkListener2 = this.f543d;
                if (pOBNetworkListener2 == null) {
                    return;
                }
                pOBNetworkListener2.onFailure(POBNetworkHandler.this.m1017a(e));
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.common.network.POBNetworkHandler$k */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkHandler$k.class */
    public interface AbstractC1879k {
        /* renamed from: a */
        POBHttpRequest m1002a(POBHttpRequest pOBHttpRequest);
    }

    public POBNetworkHandler(Context context) {
        this(POBVolley.newRequestQueue(context, new BasicNetwork((BaseHttpStack) new HurlStack())));
    }

    POBNetworkHandler(POBRequestQueue pOBRequestQueue) {
        this.f525a = pOBRequestQueue;
    }

    /* renamed from: a */
    private int m1014a(POBHttpRequest.HTTP_METHOD http_method) {
        int i = C1869a.f526a[http_method.ordinal()];
        int i2 = 3;
        if (i == 1) {
            i2 = 1;
        } else if (i == 2) {
            i2 = 2;
        } else if (i != 3) {
            i2 = 0;
        }
        return i2;
    }

    /* renamed from: a */
    public NetworkResponse m1016a(VolleyError volleyError, POBHttpRequest pOBHttpRequest) {
        NetworkResponse networkResponse = volleyError.networkResponse;
        NetworkResponse networkResponse2 = networkResponse;
        if (networkResponse == null) {
            networkResponse2 = new NetworkResponse(0, (byte[]) null, false, volleyError.getNetworkTimeMs(), (List<Header>) new ArrayList());
        }
        NetworkResponse networkResponse3 = networkResponse2;
        if (networkResponse2.networkTimeMs > pOBHttpRequest.getTimeout()) {
            networkResponse3 = new NetworkResponse(networkResponse2.statusCode, networkResponse2.data, networkResponse2.notModified, pOBHttpRequest.getTimeout(), networkResponse2.allHeaders);
        }
        return networkResponse3;
    }

    /* renamed from: a */
    private Response.ErrorListener m1012a(POBHttpRequest pOBHttpRequest, POBNetworkListener<String> pOBNetworkListener, AbstractC1879k abstractC1879k, POBNetworkResultListener pOBNetworkResultListener) {
        return new C1877i(pOBNetworkResultListener, pOBHttpRequest, abstractC1879k, pOBNetworkListener);
    }

    /* renamed from: a */
    public POBError m1017a(VolleyError volleyError) {
        POBError pOBError;
        int i;
        if (volleyError instanceof TimeoutError) {
            pOBError = new POBError(1005, volleyError.getMessage());
        } else if (!(volleyError instanceof ParseError)) {
            NetworkResponse networkResponse = volleyError.networkResponse;
            pOBError = (networkResponse == null || (i = networkResponse.statusCode) < 500 || i >= 600) ? new POBError(1003, volleyError.getMessage()) : new POBError(1004, volleyError.getMessage());
        } else if (volleyError.networkResponse != null) {
            String str = "Parsing error with HTTP status code: " + volleyError.networkResponse.statusCode;
            pOBError = volleyError.networkResponse.statusCode == 204 ? new POBError(1002, str) : new POBError(1007, str);
        } else {
            pOBError = new POBError(1007, volleyError.getMessage());
        }
        return pOBError;
    }

    /* renamed from: a */
    public POBHttpRequest m1015a(VolleyError volleyError, POBHttpRequest pOBHttpRequest, AbstractC1879k abstractC1879k) {
        if (m1008b(volleyError)) {
            String str = volleyError.networkResponse.headers.get("Location");
            if (str == null) {
                throw new VolleyError("Location header does not exists for Redirection");
            }
            try {
                POBHttpRequest clone = pOBHttpRequest.clone();
                clone.setUrl(str);
                POBHttpRequest pOBHttpRequest2 = clone;
                if (abstractC1879k != null) {
                    POBHttpRequest m1002a = abstractC1879k.m1002a(clone);
                    pOBHttpRequest2 = clone;
                    if (m1002a != null) {
                        pOBHttpRequest2 = m1002a;
                    }
                }
                return pOBHttpRequest2;
            } catch (CloneNotSupportedException e) {
                throw new VolleyError(e);
            }
        }
        return null;
    }

    /* renamed from: a */
    private <T> void m1018a(Request<T> request, String str) {
        request.setTag(str);
        this.f525a.add(request);
    }

    /* renamed from: a */
    private void m1013a(POBHttpRequest pOBHttpRequest, Request request) {
        if (pOBHttpRequest.getTimeout() > 0 || pOBHttpRequest.getRetryCount() > 0) {
            request.setRetryPolicy(new DefaultRetryPolicy(pOBHttpRequest.getTimeout(), pOBHttpRequest.getRetryCount(), pOBHttpRequest.getRetryBackoffMultiplier()));
        }
    }

    /* renamed from: b */
    private Response.ErrorListener m1007b(POBHttpRequest pOBHttpRequest, POBNetworkListener<JSONObject> pOBNetworkListener, AbstractC1879k abstractC1879k, POBNetworkResultListener pOBNetworkResultListener) {
        return new C1878j(pOBNetworkResultListener, pOBHttpRequest, abstractC1879k, pOBNetworkListener);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002a, code lost:
        if (r0 == 303) goto L10;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m1008b(com.android.volley.VolleyError r4) {
        /*
            r3 = this;
            r0 = r4
            com.android.volley.NetworkResponse r0 = r0.networkResponse
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L2f
            r0 = r4
            int r0 = r0.statusCode
            r7 = r0
            r0 = 301(0x12d, float:4.22E-43)
            r1 = r7
            if (r0 == r1) goto L2d
            r0 = r7
            r1 = 302(0x12e, float:4.23E-43)
            if (r0 == r1) goto L2d
            r0 = r5
            r6 = r0
            r0 = r7
            r1 = 303(0x12f, float:4.25E-43)
            if (r0 != r1) goto L2f
        L2d:
            r0 = 1
            r6 = r0
        L2f:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pubmatic.sdk.common.network.POBNetworkHandler.m1008b(com.android.volley.VolleyError):boolean");
    }

    /* renamed from: c */
    private void m1006c(POBHttpRequest pOBHttpRequest, POBNetworkListener<JSONObject> pOBNetworkListener, AbstractC1879k abstractC1879k, POBNetworkResultListener pOBNetworkResultListener) {
        String str;
        int m1014a = m1014a(pOBHttpRequest.getRequestMethod());
        if (pOBHttpRequest.getRequestMethod() != POBHttpRequest.HTTP_METHOD.GET || POBUtils.isNullOrEmpty(pOBHttpRequest.getPostData())) {
            str = pOBHttpRequest.getUrl();
        } else {
            str = pOBHttpRequest.getUrl() + pOBHttpRequest.getPostData();
        }
        C1875g c1875g = new C1875g(this, m1014a, str, null, new C1874f(this, pOBNetworkListener), m1007b(pOBHttpRequest, pOBNetworkListener, abstractC1879k, pOBNetworkResultListener), pOBHttpRequest, pOBNetworkResultListener);
        m1013a(pOBHttpRequest, c1875g);
        m1018a(c1875g, pOBHttpRequest.getRequestTag());
    }

    public void cancelRequest(String str) {
        POBRequestQueue pOBRequestQueue = this.f525a;
        if (pOBRequestQueue != null) {
            pOBRequestQueue.cancelAll((RequestQueue.RequestFilter) new C1876h(this, str));
        }
    }

    public void sendImageRequest(POBImageRequest pOBImageRequest, POBImageNetworkListener<String> pOBImageNetworkListener) {
        if (pOBImageRequest == null || pOBImageRequest.getUrl() == null) {
            if (pOBImageNetworkListener == null) {
                return;
            }
            pOBImageNetworkListener.onFailure(new POBError(1001, "Request parameter or URL is null."));
            return;
        }
        ImageRequest imageRequest = new ImageRequest(pOBImageRequest.getUrl(), new C1872d(this, pOBImageNetworkListener), pOBImageRequest.getMaxWidth(), pOBImageRequest.getMaxHeight(), pOBImageRequest.getScaleType(), pOBImageRequest.getDecodeConfig(), new C1873e(this, pOBImageNetworkListener));
        m1013a(pOBImageRequest, imageRequest);
        m1018a(imageRequest, pOBImageRequest.getRequestTag());
    }

    public void sendJSONRequest(POBHttpRequest pOBHttpRequest, POBNetworkListener<JSONObject> pOBNetworkListener) {
        m1006c(pOBHttpRequest, pOBNetworkListener, null, null);
    }

    public void sendJSONRequest(POBHttpRequest pOBHttpRequest, POBNetworkListener<JSONObject> pOBNetworkListener, POBNetworkResultListener pOBNetworkResultListener) {
        m1006c(pOBHttpRequest, pOBNetworkListener, null, pOBNetworkResultListener);
    }

    public void sendRequest(POBHttpRequest pOBHttpRequest, POBNetworkListener<String> pOBNetworkListener) {
        sendRequest(pOBHttpRequest, pOBNetworkListener, (AbstractC1879k) null);
    }

    public void sendRequest(POBHttpRequest pOBHttpRequest, POBNetworkListener<String> pOBNetworkListener, AbstractC1879k abstractC1879k) {
        if (pOBHttpRequest == null || pOBHttpRequest.getUrl() == null || pOBHttpRequest.getRequestMethod() == null) {
            if (pOBNetworkListener == null) {
                return;
            }
            pOBNetworkListener.onFailure(new POBError(1001, "Request parameter or URL is null."));
            return;
        }
        C1871c c1871c = new C1871c(this, m1014a(pOBHttpRequest.getRequestMethod()), pOBHttpRequest.getUrl(), new C1870b(this, pOBNetworkListener), m1012a(pOBHttpRequest, pOBNetworkListener, abstractC1879k, (POBNetworkResultListener) null), pOBHttpRequest);
        m1013a(pOBHttpRequest, c1871c);
        m1018a(c1871c, pOBHttpRequest.getRequestTag());
    }

    public void sendRequest(String str, String str2, POBNetworkListener<String> pOBNetworkListener) {
        sendRequest(str, str2, pOBNetworkListener, null);
    }

    public void sendRequest(String str, String str2, POBNetworkListener<String> pOBNetworkListener, AbstractC1879k abstractC1879k) {
        POBHttpRequest pOBHttpRequest = new POBHttpRequest();
        pOBHttpRequest.setUrl(str);
        pOBHttpRequest.setRequestTag(str2);
        sendRequest(pOBHttpRequest, pOBNetworkListener, abstractC1879k);
    }
}
