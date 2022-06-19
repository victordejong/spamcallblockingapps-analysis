package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqi.class */
public final class zzfqi<E> extends zzfot<E> {

    /* renamed from: f */
    final transient E f34102f;

    /* renamed from: g */
    private transient int f34103g;

    public zzfqi(E e) {
        Objects.requireNonNull(e);
        this.f34102f = e;
    }

    public zzfqi(E e, int i) {
        this.f34102f = e;
        this.f34103g = i;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f34102f.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfot, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f34103g;
        int i2 = i;
        if (i == 0) {
            i2 = this.f34102f.hashCode();
            this.f34103g = i2;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzfot, com.google.android.gms.internal.ads.zzfoe, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return new hx2(this.f34102f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.f34102f.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfot, com.google.android.gms.internal.ads.zzfoe
    public final jy2<E> zza() {
        return new hx2(this.f34102f);
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final boolean zzf() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final int zzg(Object[] objArr, int i) {
        objArr[i] = this.f34102f;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzfot
    final boolean zzm() {
        return this.f34103g != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfot
    final zzfoj<E> zzn() {
        return zzfoj.zzj(this.f34102f);
    }
}
