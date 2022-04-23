package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C3816ms;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbx.class */
public final class zzdbx implements zzdgx<Object> {

    /* renamed from: a */
    public final zzdzc<String> f26897a;

    /* renamed from: b */
    public final Executor f26898b;

    public zzdbx(zzdzc<String> zzdzcVar, Executor executor) {
        this.f26897a = zzdzcVar;
        this.f26898b = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<Object> mo13576a() {
        return zzdyq.m12992a(this.f26897a, C3816ms.f14197a, this.f26898b);
    }
}
