package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfnm.class */
public final class zzfnm extends AbstractSet<Map.Entry> {
    public final /* synthetic */ zzfns zza;

    public zzfnm(zzfns zzfnsVar) {
        this.zza = zzfnsVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int zzy;
        Map zzg = this.zza.zzg();
        if (zzg != null) {
            return zzg.entrySet().contains(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        zzy = this.zza.zzy(entry.getKey());
        return zzy != -1 && zzflt.zza(zzfns.zzt(this.zza, zzy), entry.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry> iterator() {
        zzfns zzfnsVar = this.zza;
        Map zzg = zzfnsVar.zzg();
        return zzg != null ? zzg.entrySet().iterator() : new zzfnk(zzfnsVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int zzw;
        int[] zzA;
        Object[] zzB;
        Object[] zzC;
        int i;
        Map zzg = this.zza.zzg();
        if (zzg != null) {
            return zzg.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (this.zza.zzf()) {
            return false;
        }
        zzw = this.zza.zzw();
        Object key = entry.getKey();
        Object value = entry.getValue();
        Object zzo = zzfns.zzo(this.zza);
        zzA = this.zza.zzA();
        zzB = this.zza.zzB();
        zzC = this.zza.zzC();
        int zze = zzfnt.zze(key, value, zzw, zzo, zzA, zzB, zzC);
        if (zze == -1) {
            return false;
        }
        this.zza.zzl(zze, zzw);
        zzfns zzfnsVar = this.zza;
        i = zzfnsVar.zzg;
        zzfnsVar.zzg = i - 1;
        this.zza.zzi();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
