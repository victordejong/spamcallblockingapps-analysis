package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czl.class */
public final class czl<E> extends cyz<E> {

    /* renamed from: a  reason: collision with root package name */
    static final cyz<Object> f26605a = new czl(new Object[0], 0);

    /* renamed from: b  reason: collision with root package name */
    private final transient Object[] f26606b;

    /* renamed from: c  reason: collision with root package name */
    private final transient int f26607c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public czl(Object[] objArr, int i) {
        this.f26606b = objArr;
        this.f26607c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyz, com.google.android.gms.internal.ads.cyt
    public final int a(Object[] objArr, int i) {
        System.arraycopy(this.f26606b, 0, objArr, i, this.f26607c);
        return i + this.f26607c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final Object[] b() {
        return this.f26606b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final int c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    final int d() {
        return this.f26607c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final boolean f() {
        return false;
    }

    @Override // java.util.List
    public final E get(int i) {
        cyg.a(i, this.f26607c);
        return (E) this.f26606b[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f26607c;
    }
}
