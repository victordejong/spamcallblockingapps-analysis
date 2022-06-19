package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfrl.class */
public class zzfrl extends zzfrj implements List {
    public final /* synthetic */ zzfrm zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfrl(zzfrm zzfrmVar, Object obj, @CheckForNull List list, zzfrj zzfrjVar) {
        super(zzfrmVar, obj, list, zzfrjVar);
        this.zzf = zzfrmVar;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        int i2;
        zzb();
        boolean isEmpty = this.zzb.isEmpty();
        ((List) this.zzb).add(i, obj);
        zzfrm zzfrmVar = this.zzf;
        i2 = zzfrmVar.zzb;
        zzfrmVar.zzb = i2 + 1;
        if (isEmpty) {
            zza();
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
            zzfrm zzfrmVar = this.zzf;
            i2 = zzfrmVar.zzb;
            zzfrmVar.zzb = (size2 - size) + i2;
            z = addAll;
            if (size == 0) {
                zza();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzb();
        return ((List) this.zzb).get(i);
    }

    @Override // java.util.List
    public final int indexOf(@CheckForNull Object obj) {
        zzb();
        return ((List) this.zzb).indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(@CheckForNull Object obj) {
        zzb();
        return ((List) this.zzb).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        zzb();
        return new zzfrk(this);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        zzb();
        return new zzfrk(this, i);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        int i2;
        zzb();
        Object remove = ((List) this.zzb).remove(i);
        zzfrm zzfrmVar = this.zzf;
        i2 = zzfrmVar.zzb;
        zzfrmVar.zzb = i2 - 1;
        zzc();
        return remove;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        zzb();
        return ((List) this.zzb).set(i, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [com.google.android.gms.internal.ads.zzfrj] */
    @Override // java.util.List
    public final List subList(int i, int i2) {
        zzb();
        zzfrm zzfrmVar = this.zzf;
        Object obj = this.zza;
        List subList = ((List) this.zzb).subList(i, i2);
        zzfrl zzfrlVar = this.zzc;
        if (zzfrlVar == null) {
            zzfrlVar = this;
        }
        return zzfrmVar.zzh(obj, subList, zzfrlVar);
    }
}
