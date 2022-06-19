package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzdfj;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdch.class */
public final class zzdch<S extends zzdfj<?>> implements zzdfi<S> {
    private final Clock zzbqg;
    private final AtomicReference<zzdcg<S>> zzhbn = new AtomicReference<>();
    private final zzdfi<S> zzhbo;
    private final long zzhbp;

    public zzdch(zzdfi<S> zzdfiVar, long j, Clock clock) {
        this.zzbqg = clock;
        this.zzhbo = zzdfiVar;
        this.zzhbp = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if (r0.hasExpired() != false) goto L6;
     */
    @Override // com.google.android.gms.internal.ads.zzdfi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzdzw<S> zzasy() {
        /*
            r7 = this;
            r0 = r7
            java.util.concurrent.atomic.AtomicReference<com.google.android.gms.internal.ads.zzdcg<S extends com.google.android.gms.internal.ads.zzdfj<?>>> r0 = r0.zzhbn
            java.lang.Object r0 = r0.get()
            com.google.android.gms.internal.ads.zzdcg r0 = (com.google.android.gms.internal.ads.zzdcg) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L18
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = r0.hasExpired()
            if (r0 == 0) goto L39
        L18:
            com.google.android.gms.internal.ads.zzdcg r0 = new com.google.android.gms.internal.ads.zzdcg
            r1 = r0
            r2 = r7
            com.google.android.gms.internal.ads.zzdfi<S extends com.google.android.gms.internal.ads.zzdfj<?>> r2 = r2.zzhbo
            com.google.android.gms.internal.ads.zzdzw r2 = r2.zzasy()
            r3 = r7
            long r3 = r3.zzhbp
            r4 = r7
            com.google.android.gms.common.util.Clock r4 = r4.zzbqg
            r1.<init>(r2, r3, r4)
            r9 = r0
            r0 = r7
            java.util.concurrent.atomic.AtomicReference<com.google.android.gms.internal.ads.zzdcg<S extends com.google.android.gms.internal.ads.zzdfj<?>>> r0 = r0.zzhbn
            r1 = r9
            r0.set(r1)
        L39:
            r0 = r9
            com.google.android.gms.internal.ads.zzdzw<S extends com.google.android.gms.internal.ads.zzdfj<?>> r0 = r0.zzhbl
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdch.zzasy():com.google.android.gms.internal.ads.zzdzw");
    }
}
