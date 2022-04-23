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
import com.mopub.volley.toolbox.HttpHeaderParser;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/MultiAdRequest.class */
public class MultiAdRequest extends MoPubRequest<MultiAdResponse> {
    public final Listener mListener;

    /* renamed from: s */
    public final AdFormat f35037s;

    /* renamed from: t */
    public final String f35038t;

    /* renamed from: u */
    public final Context f35039u;

    /* renamed from: v */
    public int f35040v = 0;

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/MultiAdRequest$Listener.class */
    public interface Listener extends Response.ErrorListener {
        void onSuccessResponse(MultiAdResponse multiAdResponse);
    }

    public MultiAdRequest(String str, AdFormat adFormat, String str2, Context context, Listener listener) {
        super(context, m3786c(str), listener);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(listener);
        this.f35038t = str2;
        this.mListener = listener;
        this.f35037s = adFormat;
        this.f35039u = context.getApplicationContext();
        setRetryPolicy(new DefaultRetryPolicy(2500, 1, 1.0f));
        setShouldCache(false);
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager != null) {
            personalInformationManager.requestSync(false);
        }
    }

    /* renamed from: c */
    public static String m3786c(String str) {
        if (MoPub.getPersonalInformationManager() != null && MoPub.isSdkInitialized()) {
            return str;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Make sure to call MoPub#initializeSdk before loading an ad.");
        return "";
    }

    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public Response<MultiAdResponse> mo3669a(NetworkResponse networkResponse) {
        try {
            return Response.success(new MultiAdResponse(this.f35039u, networkResponse, this.f35037s, this.f35038t), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (Exception e) {
            return e instanceof MoPubNetworkError ? Response.error((MoPubNetworkError) e) : Response.error(new MoPubNetworkError(e, MoPubNetworkError.Reason.UNSPECIFIED));
        }
    }

    /* renamed from: a */
    public void deliverResponse(MultiAdResponse multiAdResponse) {
        if (!isCanceled()) {
            this.mListener.onSuccessResponse(multiAdResponse);
        }
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
        String str = this.f35038t;
        if (str != null) {
            String str2 = multiAdRequest.f35038t;
            i = str2 == null ? 1 : str.compareTo(str2);
        } else {
            i = multiAdRequest.f35038t != null ? -1 : 0;
        }
        if (!(i == 0 && this.f35037s == multiAdRequest.f35037s && getUrl().compareTo(multiAdRequest.getUrl()) == 0)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f35040v == 0) {
            String str = this.f35038t;
            this.f35040v = ((((str == null ? 29 : str.hashCode()) * 31) + this.f35037s.hashCode()) * 31) + getOriginalUrl().hashCode();
        }
        return this.f35040v;
    }
}
