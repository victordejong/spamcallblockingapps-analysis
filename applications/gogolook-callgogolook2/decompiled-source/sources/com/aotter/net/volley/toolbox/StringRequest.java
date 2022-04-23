package com.aotter.net.volley.toolbox;

import com.aotter.net.volley.NetworkResponse;
import com.aotter.net.volley.Request;
import com.aotter.net.volley.Response;
import java.io.UnsupportedEncodingException;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/toolbox/StringRequest.class */
public class StringRequest extends Request<String> {
    public final Response.Listener<String> mListener;

    public StringRequest(int i, String str, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        super(i, str, errorListener);
        this.mListener = listener;
    }

    public StringRequest(String str, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        this(0, str, listener, errorListener);
    }

    public void deliverResponse(String str) {
        this.mListener.onResponse(str);
    }

    @Override // com.aotter.net.volley.Request
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
