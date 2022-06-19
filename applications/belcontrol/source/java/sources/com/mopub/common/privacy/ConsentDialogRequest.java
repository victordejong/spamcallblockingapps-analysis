package com.mopub.common.privacy;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.MoPubRequest;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.HttpHeaderParser;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogRequest.class */
public class ConsentDialogRequest extends MoPubRequest<cg1> {

    /* renamed from: u */
    public Listener f4419u;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogRequest$Listener.class */
    public interface Listener extends Response.ErrorListener {
        @Override // com.mopub.volley.Response.ErrorListener
        /* synthetic */ void onErrorResponse(VolleyError volleyError);

        void onSuccess(cg1 cg1Var);
    }

    public ConsentDialogRequest(Context context, String str, Listener listener) {
        super(context, str, listener);
        this.f4419u = listener;
        setRetryPolicy(new DefaultRetryPolicy(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 1, 1.0f));
        setShouldCache(false);
    }

    @Override // com.mopub.volley.Request
    /* renamed from: l */
    public Response<cg1> mo3087l(NetworkResponse networkResponse) {
        try {
            String string = new JSONObject(m3210o(networkResponse)).getString("dialog_html");
            if (TextUtils.isEmpty(string)) {
                throw new JSONException("Empty HTML body");
            }
            return Response.success(new cg1(string), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (JSONException e) {
            return Response.error(new MoPubNetworkError("Unable to parse consent dialog request network response.", MoPubNetworkError.Reason.BAD_BODY, (Integer) null));
        }
    }

    /* renamed from: p */
    public void deliverResponse(cg1 cg1Var) {
        Listener listener = this.f4419u;
        if (listener != null) {
            listener.onSuccess(cg1Var);
        }
    }
}
