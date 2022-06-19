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
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogRequest.class */
public final class ConsentDialogRequest extends MoPubRequest<C16743a> {

    /* renamed from: a */
    private Listener f58896a;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogRequest$Listener.class */
    public interface Listener extends Response.ErrorListener {
        void onSuccess(C16743a c16743a);
    }

    public ConsentDialogRequest(Context context, String str, Listener listener) {
        super(context, str, listener);
        this.f58896a = listener;
        setRetryPolicy(new DefaultRetryPolicy(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 1, 1.0f));
        setShouldCache(false);
    }

    @Override // com.mopub.volley.Request
    public final /* synthetic */ void deliverResponse(Object obj) {
        C16743a c16743a = (C16743a) obj;
        Listener listener = this.f58896a;
        if (listener != null) {
            listener.onSuccess(c16743a);
        }
    }

    @Override // com.mopub.volley.Request
    public final Response<C16743a> parseNetworkResponse(NetworkResponse networkResponse) {
        try {
            String string = new JSONObject(m6048a(networkResponse)).getString("dialog_html");
            if (TextUtils.isEmpty(string)) {
                throw new JSONException("Empty HTML body");
            }
            return Response.success(new C16743a(string), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (JSONException e) {
            return Response.error(new MoPubNetworkError("Unable to parse consent dialog request network response.", MoPubNetworkError.Reason.BAD_BODY, (Integer) null));
        }
    }
}
