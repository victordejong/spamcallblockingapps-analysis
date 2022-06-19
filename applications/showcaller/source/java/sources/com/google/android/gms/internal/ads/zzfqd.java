package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqd.class */
public final class zzfqd<E> extends zzfot<E> {

    /* renamed from: f */
    private static final Object[] f34094f;

    /* renamed from: g */
    static final zzfqd<Object> f34095g;

    /* renamed from: h */
    final transient Object[] f34096h;

    /* renamed from: i */
    private final transient int f34097i;

    /* renamed from: j */
    final transient Object[] f34098j;

    /* renamed from: k */
    private final transient int f34099k;

    /* renamed from: l */
    private final transient int f34100l;

    static {
        Object[] objArr = new Object[0];
        f34094f = objArr;
        f34095g = new zzfqd<>(objArr, 0, objArr, 0, 0);
    }

    public zzfqd(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f34096h = objArr;
        this.f34097i = i;
        this.f34098j = objArr2;
        this.f34099k = i2;
        this.f34100l = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        Object[] objArr = this.f34098j;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int m9029b = xw2.m9029b(obj);
        while (true) {
            int i = m9029b & this.f34099k;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            m9029b = i + 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfot, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f34097i;
    }

    @Override // com.google.android.gms.internal.ads.zzfot, com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return zze().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f34100l;
    }

    @Override // com.google.android.gms.internal.ads.zzfot, com.google.android.gms.internal.ads.zzfoe
    public final jy2<E> zza() {
        return zze().listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final Object[] zzb() {
        return this.f34096h;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    final int zzd() {
        return this.f34100l;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final boolean zzf() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final int zzg(Object[] objArr, int i) {
        System.arraycopy(this.f34096h, 0, objArr, i, this.f34100l);
        return i + this.f34100l;
    }

    @Override // com.google.android.gms.internal.ads.zzfot
    final boolean zzm() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfot
    final zzfoj<E> zzn() {
        return zzfoj.zzs(this.f34096h, this.f34100l);
    }
}
