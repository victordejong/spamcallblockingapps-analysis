package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.ListIterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfrk.class */
final class zzfrk extends zzfri implements ListIterator {
    public final /* synthetic */ zzfrl zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfrk(zzfrl zzfrlVar) {
        super(zzfrlVar);
        this.zzd = zzfrlVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfrk(zzfrl zzfrlVar, int i) {
        super(zzfrlVar, ((List) zzfrlVar.zzb).listIterator(i));
        this.zzd = zzfrlVar;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        int i;
        boolean isEmpty = this.zzd.isEmpty();
        zza();
        ((ListIterator) this.zza).add(obj);
        zzfrm zzfrmVar = this.zzd.zzf;
        i = zzfrmVar.zzb;
        zzfrmVar.zzb = i + 1;
        if (isEmpty) {
            this.zzd.zza();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        zza();
        return ((ListIterator) this.zza).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        zza();
        return ((ListIterator) this.zza).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        zza();
        return ((ListIterator) this.zza).previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        zza();
        return ((ListIterator) this.zza).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        zza();
        ((ListIterator) this.zza).set(obj);
    }
}
