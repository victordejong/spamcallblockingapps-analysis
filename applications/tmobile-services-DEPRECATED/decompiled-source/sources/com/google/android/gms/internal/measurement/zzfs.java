package com.google.android.gms.internal.measurement;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfs.class */
public final class zzfs<E> extends zzfg<E> {

    /* renamed from: m */
    static final zzfs<Object> f8434m = new zzfs<>(new Object[0], 0, null, 0, 0);

    /* renamed from: h */
    private final transient Object[] f8435h;

    /* renamed from: i */
    private final transient Object[] f8436i;

    /* renamed from: j */
    private final transient int f8437j;

    /* renamed from: k */
    private final transient int f8438k;

    /* renamed from: l */
    private final transient int f8439l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfs(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f8435h = objArr;
        this.f8436i = objArr2;
        this.f8437j = i2;
        this.f8438k = i;
        this.f8439l = i3;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: c */
    final int mo12675c(Object[] objArr, int i) {
        System.arraycopy(this.f8435h, 0, objArr, i, this.f8439l);
        return i + this.f8439l;
    }

    @Override // com.google.android.gms.internal.measurement.zzey, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@NullableDecl Object obj) {
        Object[] objArr = this.f8436i;
        if (obj == null || objArr == null) {
            return false;
        }
        int b = zzez.m12697b(obj);
        while (true) {
            int i = b & this.f8437j;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            b = i + 1;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: d */
    public final zzfx<E> iterator() {
        return (zzfx) mo12679k().iterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: e */
    public final Object[] mo12678e() {
        return this.f8435h;
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
        return this.f8439l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: h */
    public final boolean mo12673h() {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzfg, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f8438k;
    }

    @Override // com.google.android.gms.internal.measurement.zzfg
    /* renamed from: n */
    final boolean mo12672n() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzfg
    /* renamed from: p */
    final zzfb<E> mo12671p() {
        return zzfb.m12693p(this.f8435h, this.f8439l);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f8439l;
    }
}
