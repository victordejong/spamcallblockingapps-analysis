package com.mopub.volley.toolbox;

import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyLog;
import java.io.UnsupportedEncodingException;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/JsonRequest.class */
public abstract class JsonRequest<T> extends Request<T> {

    /* renamed from: t */
    public static final String f35189t = String.format("application/json; charset=%s", com.android.volley.toolbox.JsonRequest.PROTOCOL_CHARSET);

    /* renamed from: q */
    public final Object f35190q;

    /* renamed from: r */
    public Response.Listener<T> f35191r;

    /* renamed from: s */
    public final String f35192s;

    public JsonRequest(int i, String str, String str2, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        super(i, str, errorListener);
        this.f35190q = new Object();
        this.f35191r = listener;
        this.f35192s = str2;
    }

    @Deprecated
    public JsonRequest(String str, String str2, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        this(-1, str, str2, listener, errorListener);
    }

    @Override // com.mopub.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f35190q) {
            this.f35191r = null;
        }
    }

    @Override // com.mopub.volley.Request
    public void deliverResponse(T t) {
        Response.Listener<T> listener;
        synchronized (this.f35190q) {
            listener = this.f35191r;
        }
        if (listener != null) {
            listener.onResponse(t);
        }
    }

    @Override // com.mopub.volley.Request
    public byte[] getBody() {
        byte[] bArr = null;
        try {
            if (this.f35192s != null) {
                bArr = this.f35192s.getBytes(com.android.volley.toolbox.JsonRequest.PROTOCOL_CHARSET);
            }
            return bArr;
        } catch (UnsupportedEncodingException e) {
            VolleyLog.wtf("Unsupported Encoding while trying to get the bytes of %s using %s", this.f35192s, com.android.volley.toolbox.JsonRequest.PROTOCOL_CHARSET);
            return null;
        }
    }

    @Override // com.mopub.volley.Request
    public String getBodyContentType() {
        return f35189t;
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
