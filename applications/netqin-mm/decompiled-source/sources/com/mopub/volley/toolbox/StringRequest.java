package com.mopub.volley.toolbox;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import java.io.UnsupportedEncodingException;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/StringRequest.class */
public class StringRequest extends Request<String> {

    /* renamed from: q */
    public final Object f35209q;

    /* renamed from: r */
    public Response.Listener<String> f35210r;

    public StringRequest(int i, String str, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        super(i, str, errorListener);
        this.f35209q = new Object();
        this.f35210r = listener;
    }

    public StringRequest(String str, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        this(0, str, listener, errorListener);
    }

    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public Response<String> mo3669a(NetworkResponse networkResponse) {
        String str;
        try {
            str = new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers));
        } catch (UnsupportedEncodingException e) {
            str = new String(networkResponse.data);
        }
        return Response.success(str, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }

    /* renamed from: c */
    public void deliverResponse(String str) {
        Response.Listener<String> listener;
        synchronized (this.f35209q) {
            listener = this.f35210r;
        }
        if (listener != null) {
            listener.onResponse(str);
        }
    }

    @Override // com.mopub.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f35209q) {
            this.f35210r = null;
        }
    }
}
