package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjy.class */
public final class zzjy implements Runnable {

    /* renamed from: f */
    long f9633f;

    /* renamed from: g */
    long f9634g;

    /* renamed from: h */
    final /* synthetic */ zzjz f9635h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjy(zzjz zzjzVar, long j, long j2) {
        this.f9635h = zzjzVar;
        this.f9633f = j;
        this.f9634g = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9635h.f9637b.mo11083b().m11409x(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.zzkb

            /* renamed from: f */
            private final zzjy f9644f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9644f = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzjy zzjyVar = this.f9644f;
                zzjz zzjzVar = zzjyVar.f9635h;
                long j = zzjyVar.f9633f;
                long j2 = zzjyVar.f9634g;
                zzjzVar.f9637b.mo11316e();
                zzjzVar.f9637b.mo11081c().m11553K().m11540a("Application going to the background");
                boolean z = true;
                if (zzjzVar.f9637b.m11311l().m10880r(zzat.f8971v0)) {
                    zzjzVar.f9637b.m11312k().f9204w.m11439a(true);
                }
                Bundle bundle = new Bundle();
                if (!zzjzVar.f9637b.m11311l().m10896G().booleanValue()) {
                    zzjzVar.f9637b.f9627e.m11129f(j2);
                    if (zzjzVar.f9637b.m11311l().m10880r(zzat.f8953m0)) {
                        bundle.putLong("_et", zzjzVar.f9637b.m11149A(j2));
                        zzij.m11221K(zzjzVar.f9637b.m11597r().m11229C(true), bundle, true);
                    } else {
                        z = false;
                    }
                    zzjzVar.f9637b.m11146D(false, z, j2);
                }
                zzjzVar.f9637b.m11600o().m11276U("auto", "_ab", j, bundle);
            }
        });
    }
}
