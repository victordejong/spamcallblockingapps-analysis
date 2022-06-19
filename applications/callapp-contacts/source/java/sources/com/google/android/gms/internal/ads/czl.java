package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czl.class */
public final class czl<E> extends cyz<E> {

    /* renamed from: a */
    static final cyz<Object> f46801a = new czl(new Object[0], 0);

    /* renamed from: b */
    private final transient Object[] f46802b;

    /* renamed from: c */
    private final transient int f46803c;

    public czl(Object[] objArr, int i) {
        this.f46802b = objArr;
        this.f46803c = i;
    }

    @Override // com.google.android.gms.internal.ads.cyz, com.google.android.gms.internal.ads.cyt
    /* renamed from: a */
    public final int mo16996a(Object[] objArr, int i) {
        System.arraycopy(this.f46802b, 0, objArr, i, this.f46803c);
        return i + this.f46803c;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: b */
    public final Object[] mo17001b() {
        return this.f46802b;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: c */
    public final int mo17000c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: d */
    final int mo16999d() {
        return this.f46803c;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: f */
    public final boolean mo16995f() {
        return false;
    }

    @Override // java.util.List
    public final E get(int i) {
        cyg.m17063a(i, this.f46803c);
        return (E) this.f46802b[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f46803c;
    }
}
