package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpu.class */
final class cpu extends cpc<Object> {

    /* renamed from: a */
    private final transient Object[] f13524a;

    /* renamed from: b */
    private final transient int f13525b;

    /* renamed from: c */
    private final transient int f13526c;

    public cpu(Object[] objArr, int i, int i2) {
        this.f13524a = objArr;
        this.f13525b = i;
        this.f13526c = i2;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: f */
    public final boolean mo10862f() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        cor.m10939a(i, this.f13526c);
        return this.f13524a[(i * 2) + this.f13525b];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f13526c;
    }
}
