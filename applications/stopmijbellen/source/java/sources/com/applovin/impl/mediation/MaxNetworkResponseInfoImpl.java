package com.applovin.impl.mediation;

import android.os.Bundle;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxMediatedNetworkInfo;
import com.applovin.mediation.MaxNetworkResponseInfo;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MaxNetworkResponseInfoImpl.class */
public class MaxNetworkResponseInfoImpl implements MaxNetworkResponseInfo {

    /* renamed from: a */
    private final MaxNetworkResponseInfo.AdLoadState f3755a;

    /* renamed from: b */
    private final MaxMediatedNetworkInfo f3756b;

    /* renamed from: c */
    private final Bundle f3757c;

    /* renamed from: d */
    private final long f3758d;

    /* renamed from: e */
    private final MaxError f3759e;

    /* renamed from: com.applovin.impl.mediation.MaxNetworkResponseInfoImpl$1 */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MaxNetworkResponseInfoImpl$1.class */
    public static /* synthetic */ class C10351 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3760a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[MaxNetworkResponseInfo.AdLoadState.values().length];
            f3760a = iArr;
            try {
                iArr[MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3760a[MaxNetworkResponseInfo.AdLoadState.AD_LOADED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public MaxNetworkResponseInfoImpl(MaxNetworkResponseInfo.AdLoadState adLoadState, Bundle bundle, MaxMediatedNetworkInfo maxMediatedNetworkInfo, long j, MaxError maxError) {
        this.f3755a = adLoadState;
        this.f3756b = maxMediatedNetworkInfo;
        this.f3757c = bundle;
        this.f3758d = j;
        this.f3759e = maxError;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    public MaxNetworkResponseInfo.AdLoadState getAdLoadState() {
        return this.f3755a;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    public Bundle getCredentials() {
        return this.f3757c;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    public MaxError getError() {
        return this.f3759e;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    public long getLatencyMillis() {
        return this.f3758d;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    public MaxMediatedNetworkInfo getMediatedNetwork() {
        return this.f3756b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x004e, code lost:
        if (r0 != 2) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r4 = this;
            java.lang.String r0 = "MaxResponseInfo{adLoadState="
            java.lang.StringBuilder r0 = android.support.p012v4.media.C0082b.m8752j(r0)
            r5 = r0
            r0 = r5
            r1 = r4
            com.applovin.mediation.MaxNetworkResponseInfo$AdLoadState r1 = r1.f3755a
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = ", mediatedNetwork="
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r4
            com.applovin.mediation.MaxMediatedNetworkInfo r1 = r1.f3756b
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = ", credentials="
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r4
            android.os.Bundle r1 = r1.f3757c
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r5
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            r5 = r0
            int[] r0 = com.applovin.impl.mediation.MaxNetworkResponseInfoImpl.C10351.f3760a
            r1 = r4
            com.applovin.mediation.MaxNetworkResponseInfo$AdLoadState r1 = r1.f3755a
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r6 = r0
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L54
            r0 = r6
            r1 = 2
            if (r0 == r1) goto L6c
            goto L84
        L54:
            java.lang.String r0 = ", error="
            java.lang.StringBuilder r0 = android.support.p012v4.media.C0082b.m8752j(r0)
            r7 = r0
            r0 = r7
            r1 = r4
            com.applovin.mediation.MaxError r1 = r1.f3759e
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r7
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r0 = r0.append(r1)
        L6c:
            java.lang.String r0 = ", latencyMillis="
            java.lang.StringBuilder r0 = android.support.p012v4.media.C0082b.m8752j(r0)
            r7 = r0
            r0 = r7
            r1 = r4
            long r1 = r1.f3758d
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r7
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r0 = r0.append(r1)
        L84:
            r0 = r5
            java.lang.String r1 = "]"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.MaxNetworkResponseInfoImpl.toString():java.lang.String");
    }
}
