package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czo.class */
final class czo extends cyz<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final transient Object[] f26613a;

    /* renamed from: b  reason: collision with root package name */
    private final transient int f26614b;

    /* renamed from: c  reason: collision with root package name */
    private final transient int f26615c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public czo(Object[] objArr, int i, int i2) {
        this.f26613a = objArr;
        this.f26614b = i;
        this.f26615c = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final boolean f() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        cyg.a(i, this.f26615c);
        return this.f26613a[(i * 2) + this.f26614b];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f26615c;
    }
}
