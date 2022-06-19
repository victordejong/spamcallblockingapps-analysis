package com.mopub.network;

import android.content.Context;
import com.mopub.common.AdFormat;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Response;
import com.mopub.volley.toolbox.HttpHeaderParser;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/MultiAdRequest.class */
public class MultiAdRequest extends MoPubRequest<MultiAdResponse> {

    /* renamed from: a */
    final AdFormat f60312a;

    /* renamed from: b */
    final String f60313b;

    /* renamed from: c */
    private final Context f60314c;

    /* renamed from: d */
    private int f60315d;
    public final Listener mListener;

    /* loaded from: classes4-dex2jar.jar:com/mopub/network/MultiAdRequest$Listener.class */
    public interface Listener extends Response.ErrorListener {
        void onSuccessResponse(MultiAdResponse multiAdResponse);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MultiAdRequest(java.lang.String r8, com.mopub.common.AdFormat r9, java.lang.String r10, android.content.Context r11, com.mopub.network.MultiAdRequest.Listener r12) {
        /*
            r7 = this;
            com.mopub.common.privacy.PersonalInfoManager r0 = com.mopub.common.MoPub.getPersonalInformationManager()
            if (r0 == 0) goto L15
            boolean r0 = com.mopub.common.MoPub.isSdkInitialized()
            if (r0 != 0) goto Lf
            goto L15
        Lf:
            r0 = r8
            r13 = r0
            goto L28
        L15:
            com.mopub.common.logging.MoPubLog$AdLogEvent r0 = com.mopub.common.logging.MoPubLog.AdLogEvent.CUSTOM
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "Make sure to call MoPub#initializeSdk before loading an ad."
            r2[r3] = r4
            com.mopub.common.logging.MoPubLog.log(r0, r1)
            java.lang.String r0 = ""
            r13 = r0
        L28:
            r0 = r7
            r1 = r11
            r2 = r13
            r3 = r12
            r0.<init>(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.f60315d = r1
            r0 = r8
            com.mopub.common.Preconditions.checkNotNull(r0)
            r0 = r9
            com.mopub.common.Preconditions.checkNotNull(r0)
            r0 = r11
            com.mopub.common.Preconditions.checkNotNull(r0)
            r0 = r12
            com.mopub.common.Preconditions.checkNotNull(r0)
            r0 = r7
            r1 = r10
            r0.f60313b = r1
            r0 = r7
            r1 = r12
            r0.mListener = r1
            r0 = r7
            r1 = r9
            r0.f60312a = r1
            r0 = r7
            r1 = r11
            android.content.Context r1 = r1.getApplicationContext()
            r0.f60314c = r1
            r0 = r7
            com.mopub.volley.DefaultRetryPolicy r1 = new com.mopub.volley.DefaultRetryPolicy
            r2 = r1
            r3 = 2500(0x9c4, float:3.503E-42)
            r4 = 1
            r5 = 1065353216(0x3f800000, float:1.0)
            r2.<init>(r3, r4, r5)
            com.mopub.volley.Request r0 = r0.setRetryPolicy(r1)
            r0 = r7
            r1 = 0
            com.mopub.volley.Request r0 = r0.setShouldCache(r1)
            com.mopub.common.privacy.PersonalInfoManager r0 = com.mopub.common.MoPub.getPersonalInformationManager()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L86
            r0 = r8
            r1 = 0
            r0.requestSync(r1)
        L86:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.network.MultiAdRequest.<init>(java.lang.String, com.mopub.common.AdFormat, java.lang.String, android.content.Context, com.mopub.network.MultiAdRequest$Listener):void");
    }

    @Override // com.mopub.volley.Request
    public void cancel() {
        super.cancel();
    }

    @Override // com.mopub.volley.Request
    public /* synthetic */ void deliverResponse(Object obj) {
        MultiAdResponse multiAdResponse = (MultiAdResponse) obj;
        if (!isCanceled()) {
            this.mListener.onSuccessResponse(multiAdResponse);
        }
    }

    public boolean equals(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MultiAdRequest)) {
            return false;
        }
        MultiAdRequest multiAdRequest = (MultiAdRequest) obj;
        String str = this.f60313b;
        if (str != null) {
            String str2 = multiAdRequest.f60313b;
            i = str2 == null ? 1 : str.compareTo(str2);
        } else {
            i = multiAdRequest.f60313b != null ? -1 : 0;
        }
        return i == 0 && this.f60312a == multiAdRequest.f60312a && getUrl().compareTo(multiAdRequest.getUrl()) == 0;
    }

    public int hashCode() {
        if (this.f60315d == 0) {
            String str = this.f60313b;
            this.f60315d = ((((str == null ? 29 : str.hashCode()) * 31) + this.f60312a.hashCode()) * 31) + getOriginalUrl().hashCode();
        }
        return this.f60315d;
    }

    @Override // com.mopub.volley.Request
    public Response<MultiAdResponse> parseNetworkResponse(NetworkResponse networkResponse) {
        try {
            return Response.success(new MultiAdResponse(this.f60314c, networkResponse, this.f60312a, this.f60313b), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (Exception e) {
            return e instanceof MoPubNetworkError ? Response.error((MoPubNetworkError) e) : Response.error(new MoPubNetworkError(e, MoPubNetworkError.Reason.UNSPECIFIED));
        }
    }
}
