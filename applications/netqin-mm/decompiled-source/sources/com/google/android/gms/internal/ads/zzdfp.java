package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzdfp;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfp.class */
public final class zzdfp implements zzdgx<zzdfm> {

    /* renamed from: a */
    public final zzdzb f27245a;

    /* renamed from: b */
    public final Bundle f27246b;

    public zzdfp(zzdzb zzdzbVar, Bundle bundle) {
        this.f27245a = zzdzbVar;
        this.f27246b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdfm> mo13576a() {
        return this.f27245a.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.yt

            /* renamed from: a */
            public final zzdfp f16234a;

            {
                this.f16234a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16234a.m13621b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ zzdfm m13621b() throws Exception {
        return new zzdfm(this.f27246b);
    }
}
