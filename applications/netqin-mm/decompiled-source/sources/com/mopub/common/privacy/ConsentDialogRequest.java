package com.mopub.common.privacy;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.MoPubRequest;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Response;
import com.mopub.volley.toolbox.HttpHeaderParser;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p421j.p422a.p423g.C6640a;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogRequest.class */
public class ConsentDialogRequest extends MoPubRequest<C6640a> {

    /* renamed from: s */
    public Listener f33856s;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogRequest$Listener.class */
    public interface Listener extends Response.ErrorListener {
        void onSuccess(C6640a aVar);
    }

    public ConsentDialogRequest(Context context, String str, Listener listener) {
        super(context, str, listener);
        this.f33856s = listener;
        setRetryPolicy(new DefaultRetryPolicy(2500, 1, 1.0f));
        setShouldCache(false);
    }

    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public Response<C6640a> mo3669a(NetworkResponse networkResponse) {
        try {
            String string = new JSONObject(m3792b(networkResponse)).getString("dialog_html");
            if (!TextUtils.isEmpty(string)) {
                return Response.success(new C6640a(string), HttpHeaderParser.parseCacheHeaders(networkResponse));
            }
            throw new JSONException("Empty HTML body");
        } catch (JSONException e) {
            return Response.error(new MoPubNetworkError("Unable to parse consent dialog request network response.", MoPubNetworkError.Reason.BAD_BODY, (Integer) null));
        }
    }

    /* renamed from: a */
    public void deliverResponse(C6640a aVar) {
        Listener listener = this.f33856s;
        if (listener != null) {
            listener.onSuccess(aVar);
        }
    }
}
