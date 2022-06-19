package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgmx.class */
final class zzgmx implements Iterator<Map.Entry> {
    public final /* synthetic */ zzgnb zza;
    private int zzb = -1;
    private boolean zzc;
    private Iterator<Map.Entry> zzd;

    public /* synthetic */ zzgmx(zzgnb zzgnbVar, zzgmw zzgmwVar) {
        this.zza = zzgnbVar;
    }

    private final Iterator<Map.Entry> zza() {
        Map map;
        if (this.zzd == null) {
            map = this.zza.zzc;
            this.zzd = map.entrySet().iterator();
        }
        return this.zzd;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        boolean z = true;
        int i = this.zzb + 1;
        list = this.zza.zzb;
        if (i >= list.size()) {
            map = this.zza.zzc;
            if (map.isEmpty()) {
                z = false;
            } else if (!zza().hasNext()) {
                return false;
            } else {
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Map.Entry next() {
        List list;
        Map.Entry entry;
        List list2;
        this.zzc = true;
        int i = this.zzb + 1;
        this.zzb = i;
        list = this.zza.zzb;
        if (i < list.size()) {
            list2 = this.zza.zzb;
            entry = (Map.Entry) list2.get(this.zzb);
        } else {
            entry = zza().next();
        }
        return entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.zzc) {
            this.zzc = false;
            this.zza.zzn();
            int i = this.zzb;
            list = this.zza.zzb;
            if (i >= list.size()) {
                zza().remove();
                return;
            }
            zzgnb zzgnbVar = this.zza;
            int i2 = this.zzb;
            this.zzb = i2 - 1;
            zzgnbVar.zzl(i2);
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
