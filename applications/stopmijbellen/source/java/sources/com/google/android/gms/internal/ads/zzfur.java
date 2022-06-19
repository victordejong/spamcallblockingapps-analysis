package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Objects;
import javax.annotation.CheckForNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfur.class */
public final class zzfur<E> extends zzftc<E> {
    public final transient E zza;

    public zzfur(E e) {
        Objects.requireNonNull(e);
        this.zza = e;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzftc, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzftc, com.google.android.gms.internal.ads.zzfsn, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzftd(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.zza.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final int zza(Object[] objArr, int i) {
        objArr[i] = this.zza;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzftc, com.google.android.gms.internal.ads.zzfsn
    public final zzfss<E> zzd() {
        return zzfss.zzp(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzftc, com.google.android.gms.internal.ads.zzfsn
    public final zzfuu<E> zze() {
        return new zzftd(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final boolean zzf() {
        throw null;
    }
}
