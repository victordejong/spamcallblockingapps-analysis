package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfry.class */
final class zzfry extends AbstractSet {
    public final /* synthetic */ zzfsb zza;

    public zzfry(zzfsb zzfsbVar) {
        this.zza = zzfsbVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzfsb zzfsbVar = this.zza;
        Map zzl = zzfsbVar.zzl();
        return zzl != null ? zzl.keySet().iterator() : new zzfrs(zzfsbVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        boolean z;
        Object zzy;
        Object obj2;
        Map zzl = this.zza.zzl();
        if (zzl != null) {
            z = zzl.keySet().remove(obj);
        } else {
            zzy = this.zza.zzy(obj);
            obj2 = zzfsb.zzd;
            if (zzy != obj2) {
                return true;
            }
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
