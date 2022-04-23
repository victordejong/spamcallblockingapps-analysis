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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogRequest.class */
public final class ConsentDialogRequest extends MoPubRequest<a> {

    /* renamed from: a  reason: collision with root package name */
    private Listener f33947a;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogRequest$Listener.class */
    public interface Listener extends Response.ErrorListener {
        void onSuccess(a aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConsentDialogRequest(Context context, String str, Listener listener) {
        super(context, str, listener);
        this.f33947a = listener;
        setRetryPolicy(new DefaultRetryPolicy(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 1, 1.0f));
        setShouldCache(false);
    }

    @Override // com.mopub.volley.Request
    public final /* synthetic */ void deliverResponse(Object obj) {
        a aVar = (a) obj;
        Listener listener = this.f33947a;
        if (listener != null) {
            listener.onSuccess(aVar);
        }
    }

    @Override // com.mopub.volley.Request
    public final Response<a> parseNetworkResponse(NetworkResponse networkResponse) {
        try {
            String string = new JSONObject(a(networkResponse)).getString("dialog_html");
            if (!TextUtils.isEmpty(string)) {
                return Response.success(new a(string), HttpHeaderParser.parseCacheHeaders(networkResponse));
            }
            throw new JSONException("Empty HTML body");
        } catch (JSONException e) {
            return Response.error(new MoPubNetworkError("Unable to parse consent dialog request network response.", MoPubNetworkError.Reason.BAD_BODY, (Integer) null));
        }
    }
}
