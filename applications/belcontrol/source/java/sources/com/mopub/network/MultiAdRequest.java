package com.mopub.network;

import android.content.Context;
import com.mopub.common.AdFormat;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.PersonalInfoManager;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.HttpHeaderParser;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/MultiAdRequest.class */
public class MultiAdRequest extends MoPubRequest<MultiAdResponse> {
    public final Listener mListener;

    /* renamed from: u */
    public final AdFormat f5412u;

    /* renamed from: v */
    public final String f5413v;

    /* renamed from: w */
    public final Context f5414w;

    /* renamed from: x */
    public int f5415x = 0;

    /* loaded from: classes3-dex2jar.jar:com/mopub/network/MultiAdRequest$Listener.class */
    public interface Listener extends Response.ErrorListener {
        @Override // com.mopub.volley.Response.ErrorListener
        /* synthetic */ void onErrorResponse(VolleyError volleyError);

        void onSuccessResponse(MultiAdResponse multiAdResponse);
    }

    public MultiAdRequest(String str, AdFormat adFormat, String str2, Context context, Listener listener) {
        super(context, m3205p(str), listener);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(listener);
        this.f5413v = str2;
        this.mListener = listener;
        this.f5412u = adFormat;
        this.f5414w = context.getApplicationContext();
        setRetryPolicy(new DefaultRetryPolicy(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 1, 1.0f));
        setShouldCache(false);
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager != null) {
            personalInformationManager.requestSync(false);
        }
    }

    /* renamed from: p */
    public static String m3205p(String str) {
        if (MoPub.getPersonalInformationManager() == null || !MoPub.isSdkInitialized()) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Make sure to call MoPub#initializeSdk before loading an ad.");
            return "";
        }
        return str;
    }

    @Override // com.mopub.volley.Request
    public void cancel() {
        super.cancel();
    }

    public boolean equals(Object obj) {
        int i;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MultiAdRequest)) {
            return false;
        }
        MultiAdRequest multiAdRequest = (MultiAdRequest) obj;
        String str = this.f5413v;
        if (str != null) {
            String str2 = multiAdRequest.f5413v;
            i = str2 == null ? 1 : str.compareTo(str2);
        } else {
            i = multiAdRequest.f5413v != null ? -1 : 0;
        }
        if (i != 0 || this.f5412u != multiAdRequest.f5412u || getUrl().compareTo(multiAdRequest.getUrl()) != 0) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f5415x == 0) {
            String str = this.f5413v;
            this.f5415x = ((((str == null ? 29 : str.hashCode()) * 31) + this.f5412u.hashCode()) * 31) + getOriginalUrl().hashCode();
        }
        return this.f5415x;
    }

    @Override // com.mopub.volley.Request
    /* renamed from: l */
    public Response<MultiAdResponse> mo3087l(NetworkResponse networkResponse) {
        try {
            return Response.success(new MultiAdResponse(this.f5414w, networkResponse, this.f5412u, this.f5413v), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (Exception e) {
            return e instanceof MoPubNetworkError ? Response.error((MoPubNetworkError) e) : Response.error(new MoPubNetworkError(e, MoPubNetworkError.Reason.UNSPECIFIED));
        }
    }

    /* renamed from: q */
    public void deliverResponse(MultiAdResponse multiAdResponse) {
        if (!isCanceled()) {
            this.mListener.onSuccessResponse(multiAdResponse);
        }
    }
}
