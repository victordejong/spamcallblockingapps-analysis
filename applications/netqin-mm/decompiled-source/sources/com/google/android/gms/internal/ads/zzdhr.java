package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import com.google.android.gms.internal.ads.zzdhr;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C4117uu;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhr.class */
public final class zzdhr implements zzdgx<zzdho> {

    /* renamed from: a */
    public final zzaxx f27342a;

    /* renamed from: b */
    public final Executor f27343b;

    /* renamed from: c */
    public final String f27344c;

    /* renamed from: d */
    public final PackageInfo f27345d;

    public zzdhr(zzaxx zzaxxVar, Executor executor, String str, PackageInfo packageInfo) {
        this.f27342a = zzaxxVar;
        this.f27343b = executor;
        this.f27344c = str;
        this.f27345d = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdho> mo13576a() {
        return zzdyq.m12990a(zzdyq.m12993a(this.f27342a.mo16200a(this.f27344c, this.f27345d), C4117uu.f15672a, this.f27343b), Throwable.class, new zzdya(this) { // from class: c.d.b.d.g.a.vu

            /* renamed from: a */
            public final zzdhr f15885a;

            {
                this.f15885a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f15885a.m13593a((Throwable) obj);
            }
        }, this.f27343b);
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13593a(Throwable th) throws Exception {
        return zzdyq.m12988a(new zzdho(this.f27344c));
    }
}
