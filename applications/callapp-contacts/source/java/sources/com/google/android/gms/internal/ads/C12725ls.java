package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ls */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ls.class */
public final class C12725ls<I, O> implements AbstractC12713lg<I, O> {

    /* renamed from: a */
    final AbstractC12714lh<O> f49482a;

    /* renamed from: b */
    final AbstractC12717lk<I> f49483b;

    /* renamed from: c */
    final String f49484c;

    /* renamed from: d */
    private final C12684ke f49485d;

    public C12725ls(C12684ke c12684ke, String str, AbstractC12717lk<I> abstractC12717lk, AbstractC12714lh<O> abstractC12714lh) {
        this.f49485d = c12684ke;
        this.f49484c = str;
        this.f49483b = abstractC12717lk;
        this.f49482a = abstractC12714lh;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12713lg
    /* renamed from: a */
    public final dbt<O> mo14522a(I i) {
        C13103zp c13103zp = new C13103zp();
        C12701kv m14556a = this.f49485d.m14556a();
        m14556a.m13896a(new C12724lr(this, m14556a, i, c13103zp), new C12727lu(this, c13103zp, m14556a));
        return c13103zp;
    }

    @Override // com.google.android.gms.internal.ads.daq
    public final dbt<O> zzf(I i) throws Exception {
        return mo14522a(i);
    }
}
