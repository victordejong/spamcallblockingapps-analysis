package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.ListIterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfnb.class */
public final class zzfnb extends zzfmz implements ListIterator {
    public final /* synthetic */ zzfnc zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfnb(zzfnc zzfncVar) {
        super(zzfncVar);
        this.zzd = zzfncVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfnb(zzfnc zzfncVar, int i) {
        super(zzfncVar, ((List) zzfncVar.zzb).listIterator(i));
        this.zzd = zzfncVar;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        int i;
        boolean isEmpty = this.zzd.isEmpty();
        zza();
        ((ListIterator) this.zza).add(obj);
        zzfnd zzfndVar = this.zzd.zzf;
        i = zzfndVar.zzb;
        zzfndVar.zzb = i + 1;
        if (isEmpty) {
            this.zzd.zzc();
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
