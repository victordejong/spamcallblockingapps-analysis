package com.mopub.volley.toolbox;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import java.io.UnsupportedEncodingException;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/StringRequest.class */
public class StringRequest extends Request<String> {

    /* renamed from: a */
    private final Object f60475a;

    /* renamed from: b */
    private Response.Listener<String> f60476b;

    public StringRequest(int i, String str, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        super(i, str, errorListener);
        this.f60475a = new Object();
        this.f60476b = listener;
    }

    public StringRequest(String str, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        this(0, str, listener, errorListener);
    }

    @Override // com.mopub.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f60475a) {
            this.f60476b = null;
        }
    }

    @Override // com.mopub.volley.Request
    public /* synthetic */ void deliverResponse(String str) {
        Response.Listener<String> listener;
        String str2 = str;
        synchronized (this.f60475a) {
            listener = this.f60476b;
        }
        if (listener != null) {
            listener.onResponse(str2);
        }
    }

    @Override // com.mopub.volley.Request
    public Response<String> parseNetworkResponse(NetworkResponse networkResponse) {
        String str;
        try {
            str = new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers));
        } catch (UnsupportedEncodingException e) {
            str = new String(networkResponse.data);
        }
        return Response.success(str, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }
}
