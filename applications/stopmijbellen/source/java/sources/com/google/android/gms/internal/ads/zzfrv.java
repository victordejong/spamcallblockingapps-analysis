package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfrv.class */
final class zzfrv extends AbstractSet<Map.Entry> {
    public final /* synthetic */ zzfsb zza;

    public zzfrv(zzfsb zzfsbVar) {
        this.zza = zzfsbVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        int zzw;
        Map zzl = this.zza.zzl();
        if (zzl != null) {
            return zzl.entrySet().contains(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        zzw = this.zza.zzw(entry.getKey());
        return zzw != -1 && zzfqc.zza(zzfsb.zzj(this.zza, zzw), entry.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry> iterator() {
        zzfsb zzfsbVar = this.zza;
        Map zzl = zzfsbVar.zzl();
        return zzl != null ? zzl.entrySet().iterator() : new zzfrt(zzfsbVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        int zzv;
        int[] zzA;
        Object[] zzB;
        Object[] zzC;
        int i;
        Map zzl = this.zza.zzl();
        if (zzl != null) {
            return zzl.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (this.zza.zzr()) {
            return false;
        }
        zzv = this.zza.zzv();
        Object key = entry.getKey();
        Object value = entry.getValue();
        Object zzi = zzfsb.zzi(this.zza);
        zzA = this.zza.zzA();
        zzB = this.zza.zzB();
        zzC = this.zza.zzC();
        int zzb = zzfsc.zzb(key, value, zzv, zzi, zzA, zzB, zzC);
        if (zzb == -1) {
            return false;
        }
        this.zza.zzq(zzb, zzv);
        zzfsb zzfsbVar = this.zza;
        i = zzfsbVar.zzg;
        zzfsbVar.zzg = i - 1;
        this.zza.zzo();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
