package com.mopub.volley.toolbox;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import java.io.UnsupportedEncodingException;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/StringRequest.class */
public class StringRequest extends Request<String> {

    /* renamed from: s */
    public final Object f5590s;

    /* renamed from: t */
    public Response.Listener<String> f5591t;

    public StringRequest(int i, String str, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        super(i, str, errorListener);
        this.f5590s = new Object();
        this.f5591t = listener;
    }

    public StringRequest(String str, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        this(0, str, listener, errorListener);
    }

    @Override // com.mopub.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f5590s) {
            this.f5591t = null;
        }
    }

    @Override // com.mopub.volley.Request
    /* renamed from: l */
    public Response<String> mo3087l(NetworkResponse networkResponse) {
        String str;
        try {
            str = new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers));
        } catch (UnsupportedEncodingException e) {
            str = new String(networkResponse.data);
        }
        return Response.success(str, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }

    /* renamed from: o */
    public void deliverResponse(String str) {
        Response.Listener<String> listener;
        synchronized (this.f5590s) {
            listener = this.f5591t;
        }
        if (listener != null) {
            listener.onResponse(str);
        }
    }
}
