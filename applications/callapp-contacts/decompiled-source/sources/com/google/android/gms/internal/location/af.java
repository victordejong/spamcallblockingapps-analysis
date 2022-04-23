package com.google.android.gms.internal.location;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/af.class */
public final class af<E> extends ae<E> {

    /* renamed from: a  reason: collision with root package name */
    static final ae<Object> f28893a = new af(new Object[0], 0);

    /* renamed from: b  reason: collision with root package name */
    final transient Object[] f28894b;

    /* renamed from: c  reason: collision with root package name */
    private final transient int f28895c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(Object[] objArr, int i) {
        this.f28894b = objArr;
        this.f28895c = i;
    }

    @Override // com.google.android.gms.internal.location.ae, com.google.android.gms.internal.location.ab
    final int a(Object[] objArr) {
        System.arraycopy(this.f28894b, 0, objArr, 0, this.f28895c);
        return this.f28895c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.location.ab
    public final Object[] b() {
        return this.f28894b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.location.ab
    public final int c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.location.ab
    final int d() {
        return this.f28895c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.location.ab
    public final boolean f() {
        return false;
    }

    @Override // java.util.List
    public final E get(int i) {
        y.a(i, this.f28895c);
        return (E) this.f28894b[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f28895c;
    }
}
