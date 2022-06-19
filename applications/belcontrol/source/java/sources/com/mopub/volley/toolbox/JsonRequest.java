package com.mopub.volley.toolbox;

import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyLog;
import java.io.UnsupportedEncodingException;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/JsonRequest.class */
public abstract class JsonRequest<T> extends Request<T> {

    /* renamed from: v */
    public static final String f5570v = String.format("application/json; charset=%s", "utf-8");

    /* renamed from: s */
    public final Object f5571s;

    /* renamed from: t */
    public Response.Listener<T> f5572t;

    /* renamed from: u */
    public final String f5573u;

    public JsonRequest(int i, String str, String str2, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        super(i, str, errorListener);
        this.f5571s = new Object();
        this.f5572t = listener;
        this.f5573u = str2;
    }

    @Deprecated
    public JsonRequest(String str, String str2, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        this(-1, str, str2, listener, errorListener);
    }

    @Override // com.mopub.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f5571s) {
            this.f5572t = null;
        }
    }

    @Override // com.mopub.volley.Request
    public void deliverResponse(T t) {
        Response.Listener<T> listener;
        synchronized (this.f5571s) {
            listener = this.f5572t;
        }
        if (listener != null) {
            listener.onResponse(t);
        }
    }

    @Override // com.mopub.volley.Request
    public byte[] getBody() {
        byte[] bArr = null;
        try {
            String str = this.f5573u;
            if (str != null) {
                bArr = str.getBytes("utf-8");
            }
            return bArr;
        } catch (UnsupportedEncodingException e) {
            VolleyLog.wtf("Unsupported Encoding while trying to get the bytes of %s using %s", this.f5573u, "utf-8");
            return null;
        }
    }

    @Override // com.mopub.volley.Request
    public String getBodyContentType() {
        return f5570v;
    }

    @Override // com.mopub.volley.Request
    @Deprecated
    public byte[] getPostBody() {
        return getBody();
    }

    @Override // com.mopub.volley.Request
    @Deprecated
    public String getPostBodyContentType() {
        return getBodyContentType();
    }
}
