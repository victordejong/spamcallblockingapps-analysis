package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqf.class */
public final class zzbqf implements zzbvs, zzqu {

    /* renamed from: a */
    public final zzdnv f25357a;

    /* renamed from: b */
    public final zzbuu f25358b;

    /* renamed from: c */
    public final zzbvw f25359c;

    /* renamed from: d */
    public final AtomicBoolean f25360d = new AtomicBoolean();

    /* renamed from: e */
    public final AtomicBoolean f25361e = new AtomicBoolean();

    public zzbqf(zzdnv zzdnvVar, zzbuu zzbuuVar, zzbvw zzbvwVar) {
        this.f25357a = zzdnvVar;
        this.f25358b = zzbuuVar;
        this.f25359c = zzbvwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    /* renamed from: a */
    public final void mo11534a(zzqr zzqrVar) {
        if (this.f25357a.f27588e == 1 && zzqrVar.f28889j) {
            m15177j();
        }
        if (zzqrVar.f28889j && this.f25361e.compareAndSet(false, true)) {
            this.f25359c.m15011T0();
        }
    }

    /* renamed from: j */
    public final void m15177j() {
        if (this.f25360d.compareAndSet(false, true)) {
            this.f25358b.m15032M();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvs
    /* renamed from: x */
    public final void mo13495x() {
        synchronized (this) {
            if (this.f25357a.f27588e != 1) {
                m15177j();
            }
        }
    }
}
