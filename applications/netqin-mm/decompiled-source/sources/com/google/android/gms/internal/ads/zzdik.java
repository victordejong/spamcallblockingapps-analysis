package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdil;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdik.class */
public final class zzdik implements zzdgx<zzdil> {

    /* renamed from: a */
    public zzaxt f27376a;

    /* renamed from: b */
    public String f27377b;

    public zzdik(zzaxt zzaxtVar, zzdzb zzdzbVar, String str) {
        this.f27376a = zzaxtVar;
        this.f27377b = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdil> mo13576a() {
        new zzbcg();
        final zzdzc<String> a = zzdyq.m12988a((Object) null);
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23736R2)).booleanValue()) {
            a = this.f27376a.mo16212b(this.f27377b);
        }
        final zzdzc<String> a2 = this.f27376a.mo16213a(this.f27377b);
        return zzdyq.m12982b(a, a2).m12979a(new Callable(a, a2) { // from class: c.d.b.d.g.a.ev

            /* renamed from: a */
            public final zzdzc f12861a;

            /* renamed from: b */
            public final zzdzc f12862b;

            {
                this.f12861a = a;
                this.f12862b = a2;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzdil((String) this.f12861a.get(), (String) this.f12862b.get());
            }
        }, zzbbz.f24764a);
    }
}
