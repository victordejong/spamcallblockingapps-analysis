package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfu.class */
public final class zzfu<E> extends zzfg<E> {

    /* renamed from: h */
    private final transient E f8443h;

    /* renamed from: i */
    private transient int f8444i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfu(E e) {
        zzeb.m12741b(e);
        this.f8443h = e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfu(E e, int i) {
        this.f8443h = e;
        this.f8444i = i;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: c */
    final int mo12675c(Object[] objArr, int i) {
        objArr[i] = this.f8443h;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.measurement.zzey, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f8443h.equals(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: d */
    public final zzfx<E> iterator() {
        return new zzfl(this.f8443h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: h */
    public final boolean mo12673h() {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzfg, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f8444i;
        int i2 = i;
        if (i == 0) {
            i2 = this.f8443h.hashCode();
            this.f8444i = i2;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzfg
    /* renamed from: n */
    final boolean mo12672n() {
        return this.f8444i != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzfg
    /* renamed from: p */
    final zzfb<E> mo12671p() {
        return zzfb.m12695k(this.f8443h);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.f8443h.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }
}
