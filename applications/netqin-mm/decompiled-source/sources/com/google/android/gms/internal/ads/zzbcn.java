package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
import p131c.p161d.p170b.p224d.p252g.p253a.C4130v6;
import p131c.p161d.p170b.p224d.p252g.p253a.C4167w6;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbcn.class */
public class zzbcn<T> {

    /* renamed from: a */
    public final zzbcg<T> f24772a = new zzbcg<>();

    /* renamed from: b */
    public final AtomicInteger f24773b = new AtomicInteger(0);

    public zzbcn() {
        zzdyq.m12991a(this.f24772a, new C4130v6(this), zzbbz.f24769f);
    }

    @Deprecated
    /* renamed from: a */
    public final int m15829a() {
        return this.f24773b.get();
    }

    @Deprecated
    /* renamed from: a */
    public final void m15828a(zzbck<T> zzbckVar, zzbci zzbciVar) {
        zzdyq.m12991a(this.f24772a, new C4167w6(this, zzbckVar, zzbciVar), zzbbz.f24769f);
    }

    @Deprecated
    /* renamed from: a */
    public final void m15826a(T t) {
        this.f24772a.m15835a((zzbcg<T>) t);
    }

    @Deprecated
    /* renamed from: b */
    public final void m15825b() {
        this.f24772a.m15834a((Throwable) new Exception());
    }
}
