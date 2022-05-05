package com.mopub.network;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
    @NonNull
    public final Listener mListener;
    @NonNull

    /* renamed from: s */
    public final AdFormat f9441s;
    @Nullable

    /* renamed from: t */
    public final String f9442t;
    @NonNull

    /* renamed from: u */
    public final Context f9443u;

    /* renamed from: v */
    public int f9444v = 0;

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/MultiAdRequest$Listener.class */
    public interface Listener extends Response.ErrorListener {
        void onSuccessResponse(MultiAdResponse multiAdResponse);
    }

    public MultiAdRequest(@NonNull String str, @NonNull AdFormat adFormat, @Nullable String str2, @NonNull Context context, @NonNull Listener listener) {
        super(context, m29988c(str), listener);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(listener);
        this.f9442t = str2;
        this.mListener = listener;
        this.f9441s = adFormat;
        this.f9443u = context.getApplicationContext();
        setRetryPolicy(new DefaultRetryPolicy(2500, 1, 1.0f));
        setShouldCache(false);
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager != null) {
            personalInformationManager.requestSync(false);
        }
    }

    @NonNull
    /* renamed from: c */
    public static String m29988c(@NonNull String str) {
        if (MoPub.getPersonalInformationManager() != null && MoPub.isSdkInitialized()) {
            return str;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Make sure to call MoPub#initializeSdk before loading an ad.");
        return "";
    }

    @Override // com.mopub.volley.Request
    @Nullable
    /* renamed from: a */
    public Response<MultiAdResponse> mo29871a(NetworkResponse networkResponse) {
        try {
            return Response.success(new MultiAdResponse(this.f9443u, networkResponse, this.f9441s, this.f9442t), HttpHeaderParser.parseCacheHeaders(networkResponse));
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
        String str = this.f9442t;
        if (str != null) {
            String str2 = multiAdRequest.f9442t;
            i = str2 == null ? 1 : str.compareTo(str2);
        } else {
            i = multiAdRequest.f9442t != null ? -1 : 0;
        }
        if (!(i == 0 && this.f9441s == multiAdRequest.f9441s && getUrl().compareTo(multiAdRequest.getUrl()) == 0)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f9444v == 0) {
            String str = this.f9442t;
            this.f9444v = ((((str == null ? 29 : str.hashCode()) * 31) + this.f9441s.hashCode()) * 31) + getOriginalUrl().hashCode();
        }
        return this.f9444v;
    }
}
