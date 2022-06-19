package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmb.class */
final class zzmb implements Iterator<Map.Entry> {
    public final /* synthetic */ zzmd zza;
    private int zzb = -1;
    private boolean zzc;
    private Iterator<Map.Entry> zzd;

    public /* synthetic */ zzmb(zzmd zzmdVar, zzlw zzlwVar) {
        this.zza = zzmdVar;
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
            this.zza.zzm();
            int i = this.zzb;
            list = this.zza.zzb;
            if (i >= list.size()) {
                zza().remove();
                return;
            }
            zzmd zzmdVar = this.zza;
            int i2 = this.zzb;
            this.zzb = i2 - 1;
            zzmdVar.zzk(i2);
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
