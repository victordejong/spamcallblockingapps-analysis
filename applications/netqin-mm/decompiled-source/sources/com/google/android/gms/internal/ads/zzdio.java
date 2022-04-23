package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdio;
import com.google.android.gms.internal.ads.zzdip;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdio.class */
public final class zzdio implements zzdgx<zzdip> {

    /* renamed from: a */
    public zzaan f27383a;

    /* renamed from: b */
    public zzdzb f27384b;

    /* renamed from: c */
    public List<String> f27385c;

    public zzdio(zzaan zzaanVar, zzdzb zzdzbVar, List<String> list) {
        this.f27383a = zzaanVar;
        this.f27384b = zzdzbVar;
        this.f27385c = list;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdip> mo13576a() {
        return this.f27384b.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.fv

            /* renamed from: a */
            public final zzdio f13002a;

            {
                this.f13002a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdio zzdioVar = this.f13002a;
                return new zzdip(zzdioVar.f27383a.mo16943c(zzdioVar.f27385c));
            }
        });
    }
}
