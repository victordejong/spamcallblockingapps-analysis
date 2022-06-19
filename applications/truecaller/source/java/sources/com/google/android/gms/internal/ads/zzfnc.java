package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfnc.class */
public class zzfnc extends zzfna implements List {
    public final /* synthetic */ zzfnd zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfnc(zzfnd zzfndVar, Object obj, List list, zzfna zzfnaVar) {
        super(zzfndVar, obj, list, zzfnaVar);
        this.zzf = zzfndVar;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        int i2;
        zza();
        boolean isEmpty = this.zzb.isEmpty();
        ((List) this.zzb).add(i, obj);
        zzfnd zzfndVar = this.zzf;
        i2 = zzfndVar.zzb;
        zzfndVar.zzb = i2 + 1;
        if (isEmpty) {
            zzc();
        }
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        int i2;
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean addAll = ((List) this.zzb).addAll(i, collection);
        boolean z = addAll;
        if (addAll) {
            int size2 = this.zzb.size();
            zzfnd zzfndVar = this.zzf;
            i2 = zzfndVar.zzb;
            zzfndVar.zzb = (size2 - size) + i2;
            z = addAll;
            if (size == 0) {
                zzc();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zza();
        return ((List) this.zzb).get(i);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        zza();
        return ((List) this.zzb).indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        zza();
        return ((List) this.zzb).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        zza();
        return new zzfnb(this);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        zza();
        return new zzfnb(this, i);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        int i2;
        zza();
        Object remove = ((List) this.zzb).remove(i);
        zzfnd zzfndVar = this.zzf;
        i2 = zzfndVar.zzb;
        zzfndVar.zzb = i2 - 1;
        zzb();
        return remove;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        zza();
        return ((List) this.zzb).set(i, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [com.google.android.gms.internal.ads.zzfna] */
    @Override // java.util.List
    public final List subList(int i, int i2) {
        zza();
        zzfnd zzfndVar = this.zzf;
        Object obj = this.zza;
        List subList = ((List) this.zzb).subList(i, i2);
        zzfnc zzfncVar = this.zzc;
        if (zzfncVar == null) {
            zzfncVar = this;
        }
        return zzfndVar.zzj(obj, subList, zzfncVar);
    }
}
