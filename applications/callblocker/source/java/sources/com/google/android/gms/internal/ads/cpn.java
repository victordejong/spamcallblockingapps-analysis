package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpn.class */
public final class cpn<E> extends cpc<E> {

    /* renamed from: a */
    static final cpc<Object> f13504a = new cpn(new Object[0], 0);

    /* renamed from: b */
    private final transient Object[] f13505b;

    /* renamed from: c */
    private final transient int f13506c;

    public cpn(Object[] objArr, int i) {
        this.f13505b = objArr;
        this.f13506c = i;
    }

    @Override // com.google.android.gms.internal.ads.cpc, com.google.android.gms.internal.ads.cpb
    /* renamed from: a */
    public final int mo10863a(Object[] objArr, int i) {
        System.arraycopy(this.f13505b, 0, objArr, i, this.f13506c);
        return this.f13506c + i;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: b */
    public final Object[] mo10867b() {
        return this.f13505b;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: c */
    public final int mo10866c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: d */
    final int mo10865d() {
        return this.f13506c;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: f */
    public final boolean mo10862f() {
        return false;
    }

    @Override // java.util.List
    public final E get(int i) {
        cor.m10939a(i, this.f13506c);
        return (E) this.f13505b[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f13506c;
    }
}
