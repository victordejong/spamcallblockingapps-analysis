package com.google.android.gms.internal.location;
/* renamed from: com.google.android.gms.internal.location.af */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/af.class */
public final class C13318af<E> extends AbstractC13317ae<E> {

    /* renamed from: a */
    static final AbstractC13317ae<Object> f50553a = new C13318af(new Object[0], 0);

    /* renamed from: b */
    final transient Object[] f50554b;

    /* renamed from: c */
    private final transient int f50555c;

    public C13318af(Object[] objArr, int i) {
        this.f50554b = objArr;
        this.f50555c = i;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13317ae, com.google.android.gms.internal.location.AbstractC13314ab
    /* renamed from: a */
    final int mo13342a(Object[] objArr) {
        System.arraycopy(this.f50554b, 0, objArr, 0, this.f50555c);
        return this.f50555c;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13314ab
    /* renamed from: b */
    public final Object[] mo13341b() {
        return this.f50554b;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13314ab
    /* renamed from: c */
    public final int mo13340c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13314ab
    /* renamed from: d */
    final int mo13339d() {
        return this.f50555c;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13314ab
    /* renamed from: f */
    public final boolean mo13338f() {
        return false;
    }

    @Override // java.util.List
    public final E get(int i) {
        C13350y.m13325a(i, this.f50555c);
        return (E) this.f50554b[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f50555c;
    }
}
