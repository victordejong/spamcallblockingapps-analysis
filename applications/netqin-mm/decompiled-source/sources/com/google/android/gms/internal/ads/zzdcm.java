package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdcm;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcm.class */
public final class zzdcm implements zzdgx<zzdcn> {

    /* renamed from: a */
    public final zzdzb f27122a;

    /* renamed from: b */
    public final zzdok f27123b;

    /* renamed from: c */
    public final zzbbx f27124c;

    public zzdcm(zzdzb zzdzbVar, zzdok zzdokVar, zzbbx zzbbxVar) {
        this.f27122a = zzdzbVar;
        this.f27123b = zzdokVar;
        this.f27124c = zzbbxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdcn> mo13576a() {
        return this.f27122a.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.ts

            /* renamed from: a */
            public final zzdcm f15424a;

            {
                this.f15424a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f15424a.m13653b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ zzdcn m13653b() throws Exception {
        return new zzdcn(this.f27123b.f27648j, this.f27124c);
    }
}
