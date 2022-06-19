package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzerx;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoh.class */
public final class zzeoh<S extends zzerx> implements zzery<S> {
    private final AtomicReference<zzeog<S>> zza = new AtomicReference<>();
    private final Clock zzb;
    private final zzery<S> zzc;
    private final long zzd;

    public zzeoh(zzery<S> zzeryVar, long j, Clock clock) {
        this.zzb = clock;
        this.zzc = zzeryVar;
        this.zzd = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if (r0.zza() != false) goto L6;
     */
    @Override // com.google.android.gms.internal.ads.zzery
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzfsm<S> zza() {
        /*
            r7 = this;
            r0 = r7
            java.util.concurrent.atomic.AtomicReference<com.google.android.gms.internal.ads.zzeog<S extends com.google.android.gms.internal.ads.zzerx>> r0 = r0.zza
            java.lang.Object r0 = r0.get()
            com.google.android.gms.internal.ads.zzeog r0 = (com.google.android.gms.internal.ads.zzeog) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L18
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = r0.zza()
            if (r0 == 0) goto L39
        L18:
            com.google.android.gms.internal.ads.zzeog r0 = new com.google.android.gms.internal.ads.zzeog
            r1 = r0
            r2 = r7
            com.google.android.gms.internal.ads.zzery<S extends com.google.android.gms.internal.ads.zzerx> r2 = r2.zzc
            com.google.android.gms.internal.ads.zzfsm r2 = r2.zza()
            r3 = r7
            long r3 = r3.zzd
            r4 = r7
            com.google.android.gms.common.util.Clock r4 = r4.zzb
            r1.<init>(r2, r3, r4)
            r9 = r0
            r0 = r7
            java.util.concurrent.atomic.AtomicReference<com.google.android.gms.internal.ads.zzeog<S extends com.google.android.gms.internal.ads.zzerx>> r0 = r0.zza
            r1 = r9
            r0.set(r1)
        L39:
            r0 = r9
            com.google.android.gms.internal.ads.zzfsm<S extends com.google.android.gms.internal.ads.zzerx<?>> r0 = r0.zza
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeoh.zza():com.google.android.gms.internal.ads.zzfsm");
    }
}
