package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czo.class */
final class czo extends cyz<Object> {

    /* renamed from: a */
    private final transient Object[] f46809a;

    /* renamed from: b */
    private final transient int f46810b;

    /* renamed from: c */
    private final transient int f46811c;

    public czo(Object[] objArr, int i, int i2) {
        this.f46809a = objArr;
        this.f46810b = i;
        this.f46811c = i2;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: f */
    public final boolean mo16995f() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        cyg.m17063a(i, this.f46811c);
        return this.f46809a[(i * 2) + this.f46810b];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f46811c;
    }
}
