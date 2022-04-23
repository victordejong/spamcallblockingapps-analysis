package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.f;
import com.google.android.gms.internal.ads.cgy;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cds.class */
public final class cds<S extends cgy<?>> implements chb<S> {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<cdw<S>> f25651a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final f f25652b;

    /* renamed from: c  reason: collision with root package name */
    private final chb<S> f25653c;

    /* renamed from: d  reason: collision with root package name */
    private final long f25654d;

    public cds(chb<S> chbVar, long j, f fVar) {
        this.f25652b = fVar;
        this.f25653c = chbVar;
        this.f25654d = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if ((r8.f25659b < r8.f25660c.b()) != false) goto L_0x002b;
     */
    @Override // com.google.android.gms.internal.ads.chb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.dbt<S> a() {
        /*
            r7 = this;
            r0 = r7
            java.util.concurrent.atomic.AtomicReference<com.google.android.gms.internal.ads.cdw<S extends com.google.android.gms.internal.ads.cgy<?>>> r0 = r0.f25651a
            java.lang.Object r0 = r0.get()
            com.google.android.gms.internal.ads.cdw r0 = (com.google.android.gms.internal.ads.cdw) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x002b
            r0 = r8
            long r0 = r0.f25659b
            r1 = r8
            com.google.android.gms.common.util.f r1 = r1.f25660c
            long r1 = r1.b()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0025
            r0 = 1
            r9 = r0
            goto L_0x0027
        L_0x0025:
            r0 = 0
            r9 = r0
        L_0x0027:
            r0 = r9
            if (r0 == 0) goto L_0x004c
        L_0x002b:
            com.google.android.gms.internal.ads.cdw r0 = new com.google.android.gms.internal.ads.cdw
            r1 = r0
            r2 = r7
            com.google.android.gms.internal.ads.chb<S extends com.google.android.gms.internal.ads.cgy<?>> r2 = r2.f25653c
            com.google.android.gms.internal.ads.dbt r2 = r2.a()
            r3 = r7
            long r3 = r3.f25654d
            r4 = r7
            com.google.android.gms.common.util.f r4 = r4.f25652b
            r1.<init>(r2, r3, r4)
            r8 = r0
            r0 = r7
            java.util.concurrent.atomic.AtomicReference<com.google.android.gms.internal.ads.cdw<S extends com.google.android.gms.internal.ads.cgy<?>>> r0 = r0.f25651a
            r1 = r8
            r0.set(r1)
        L_0x004c:
            r0 = r8
            com.google.android.gms.internal.ads.dbt<S extends com.google.android.gms.internal.ads.cgy<?>> r0 = r0.f25658a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cds.a():com.google.android.gms.internal.ads.dbt");
    }
}
