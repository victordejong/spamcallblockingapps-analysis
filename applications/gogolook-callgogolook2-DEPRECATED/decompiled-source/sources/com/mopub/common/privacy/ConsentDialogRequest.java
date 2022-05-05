package com.mopub.common.privacy;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.MoPubRequest;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Response;
import com.mopub.volley.toolbox.HttpHeaderParser;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p430l.p431a.p432g.C10691a;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogRequest.class */
public class ConsentDialogRequest extends MoPubRequest<C10691a> {
    @Nullable

    /* renamed from: s */
    public Listener f8236s;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogRequest$Listener.class */
    public interface Listener extends Response.ErrorListener {
        void onSuccess(C10691a aVar);
    }

    public ConsentDialogRequest(@NonNull Context context, @NonNull String str, @Nullable Listener listener) {
        super(context, str, listener);
        this.f8236s = listener;
        setRetryPolicy(new DefaultRetryPolicy(2500, 1, 1.0f));
        setShouldCache(false);
    }

    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public Response<C10691a> mo29871a(NetworkResponse networkResponse) {
        try {
            String string = new JSONObject(m29994b(networkResponse)).getString("dialog_html");
            if (!TextUtils.isEmpty(string)) {
                return Response.success(new C10691a(string), HttpHeaderParser.parseCacheHeaders(networkResponse));
            }
            throw new JSONException("Empty HTML body");
        } catch (JSONException e) {
            return Response.error(new MoPubNetworkError("Unable to parse consent dialog request network response.", MoPubNetworkError.Reason.BAD_BODY, (Integer) null));
        }
    }

    /* renamed from: a */
    public void deliverResponse(C10691a aVar) {
        Listener listener = this.f8236s;
        if (listener != null) {
            listener.onSuccess(aVar);
        }
    }
}
