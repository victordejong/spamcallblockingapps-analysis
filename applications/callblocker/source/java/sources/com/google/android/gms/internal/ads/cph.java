package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cph.class */
public final class cph extends cpc<E> {

    /* renamed from: a */
    private final transient int f13492a;

    /* renamed from: b */
    private final transient int f13493b;

    /* renamed from: c */
    private final /* synthetic */ cpc f13494c;

    public cph(cpc cpcVar, int i, int i2) {
        this.f13494c = cpcVar;
        this.f13492a = i;
        this.f13493b = i2;
    }

    @Override // com.google.android.gms.internal.ads.cpc
    /* renamed from: a */
    public final cpc<E> mo10891a(int i, int i2) {
        cor.m10938a(i, i2, this.f13493b);
        return (cpc) this.f13494c.subList(this.f13492a + i, this.f13492a + i2);
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: b */
    public final Object[] mo10867b() {
        return this.f13494c.mo10867b();
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: c */
    public final int mo10866c() {
        return this.f13494c.mo10866c() + this.f13492a;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: d */
    final int mo10865d() {
        return this.f13494c.mo10866c() + this.f13492a + this.f13493b;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: f */
    public final boolean mo10862f() {
        return true;
    }

    @Override // java.util.List
    public final E get(int i) {
        cor.m10939a(i, this.f13493b);
        return this.f13494c.get(this.f13492a + i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f13493b;
    }

    @Override // com.google.android.gms.internal.ads.cpc, java.util.List
    public final /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }
}
