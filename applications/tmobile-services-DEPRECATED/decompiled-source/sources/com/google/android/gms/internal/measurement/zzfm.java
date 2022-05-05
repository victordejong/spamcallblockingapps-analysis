package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfm.class */
public final class zzfm<E> extends zzfb<E> {

    /* renamed from: j */
    static final zzfb<Object> f8421j = new zzfm(new Object[0], 0);

    /* renamed from: h */
    private final transient Object[] f8422h;

    /* renamed from: i */
    private final transient int f8423i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfm(Object[] objArr, int i) {
        this.f8422h = objArr;
        this.f8423i = i;
    }

    @Override // com.google.android.gms.internal.measurement.zzfb, com.google.android.gms.internal.measurement.zzey
    /* renamed from: c */
    final int mo12675c(Object[] objArr, int i) {
        System.arraycopy(this.f8422h, 0, objArr, i, this.f8423i);
        return i + this.f8423i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: e */
    public final Object[] mo12678e() {
        return this.f8422h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: f */
    public final int mo12677f() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: g */
    final int mo12676g() {
        return this.f8423i;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzeb.m12742a(i, this.f8423i);
        return (E) this.f8422h[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: h */
    public final boolean mo12673h() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8423i;
    }
}
