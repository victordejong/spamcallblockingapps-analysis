package com.aotter.net.volley.toolbox;

import com.aotter.net.volley.NetworkResponse;
import com.aotter.net.volley.Request;
import com.aotter.net.volley.Response;
import com.aotter.net.volley.VolleyLog;
import java.io.UnsupportedEncodingException;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/toolbox/JsonRequest.class */
public abstract class JsonRequest<T> extends Request<T> {
    public static final String PROTOCOL_CHARSET = "utf-8";
    public static final String PROTOCOL_CONTENT_TYPE = String.format("application/json; charset=%s", PROTOCOL_CHARSET);
    public final Response.Listener<T> mListener;
    public final String mRequestBody;

    public JsonRequest(int i, String str, String str2, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        super(i, str, errorListener);
        this.mListener = listener;
        this.mRequestBody = str2;
    }

    public JsonRequest(String str, String str2, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        this(-1, str, str2, listener, errorListener);
    }

    @Override // com.aotter.net.volley.Request
    public void deliverResponse(T t) {
        this.mListener.onResponse(t);
    }

    @Override // com.aotter.net.volley.Request
    public byte[] getBody() {
        byte[] bArr = null;
        try {
            if (this.mRequestBody != null) {
                bArr = this.mRequestBody.getBytes(PROTOCOL_CHARSET);
            }
            return bArr;
        } catch (UnsupportedEncodingException e) {
            VolleyLog.wtf("Unsupported Encoding while trying to get the bytes of %s using %s", this.mRequestBody, PROTOCOL_CHARSET);
            return null;
        }
    }

    @Override // com.aotter.net.volley.Request
    public String getBodyContentType() {
        return PROTOCOL_CONTENT_TYPE;
    }

    @Override // com.aotter.net.volley.Request
    public byte[] getPostBody() {
        return getBody();
    }

    @Override // com.aotter.net.volley.Request
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    @Override // com.aotter.net.volley.Request
    public abstract Response<T> parseNetworkResponse(NetworkResponse networkResponse);
}
