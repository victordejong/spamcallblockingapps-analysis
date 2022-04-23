package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzdgu;
import java.util.concurrent.atomic.AtomicReference;
import p131c.p161d.p170b.p224d.p252g.p253a.C3520et;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddp.class */
public final class zzddp<S extends zzdgu<?>> implements zzdgx<S> {

    /* renamed from: a */
    public final AtomicReference<C3520et<S>> f27173a = new AtomicReference<>();

    /* renamed from: b */
    public final Clock f27174b;

    /* renamed from: c */
    public final zzdgx<S> f27175c;

    /* renamed from: d */
    public final long f27176d;

    public zzddp(zzdgx<S> zzdgxVar, long j, Clock clock) {
        this.f27174b = clock;
        this.f27175c = zzdgxVar;
        this.f27176d = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if (r0.m27024a() != false) goto L_0x0018;
     */
    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzdzc<S> mo13576a() {
        /*
            r7 = this;
            r0 = r7
            java.util.concurrent.atomic.AtomicReference<c.d.b.d.g.a.et<S extends com.google.android.gms.internal.ads.zzdgu<?>>> r0 = r0.f27173a
            java.lang.Object r0 = r0.get()
            c.d.b.d.g.a.et r0 = (p131c.p161d.p170b.p224d.p252g.p253a.C3520et) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0018
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = r0.m27024a()
            if (r0 == 0) goto L_0x0039
        L_0x0018:
            c.d.b.d.g.a.et r0 = new c.d.b.d.g.a.et
            r1 = r0
            r2 = r7
            com.google.android.gms.internal.ads.zzdgx<S extends com.google.android.gms.internal.ads.zzdgu<?>> r2 = r2.f27175c
            com.google.android.gms.internal.ads.zzdzc r2 = r2.mo13576a()
            r3 = r7
            long r3 = r3.f27176d
            r4 = r7
            com.google.android.gms.common.util.Clock r4 = r4.f27174b
            r1.<init>(r2, r3, r4)
            r9 = r0
            r0 = r7
            java.util.concurrent.atomic.AtomicReference<c.d.b.d.g.a.et<S extends com.google.android.gms.internal.ads.zzdgu<?>>> r0 = r0.f27173a
            r1 = r9
            r0.set(r1)
        L_0x0039:
            r0 = r9
            com.google.android.gms.internal.ads.zzdzc<S extends com.google.android.gms.internal.ads.zzdgu<?>> r0 = r0.f12857a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzddp.mo13576a():com.google.android.gms.internal.ads.zzdzc");
    }
}
