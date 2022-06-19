package com.google.android.gms.internal.mlkit_common;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzia.class */
public final class zzia implements Iterator<Map.Entry<K, V>> {
    private int zza;
    private boolean zzb;
    private Iterator<Map.Entry<K, V>> zzc;
    private final /* synthetic */ zzhs zzd;

    private zzia(zzhs zzhsVar) {
        this.zzd = zzhsVar;
        this.zza = -1;
    }

    public /* synthetic */ zzia(zzhs zzhsVar, zzhv zzhvVar) {
        this(zzhsVar);
    }

    private final Iterator<Map.Entry<K, V>> zza() {
        Map map;
        if (this.zzc == null) {
            map = this.zzd.zzc;
            this.zzc = map.entrySet().iterator();
        }
        return this.zzc;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.zza + 1;
        list = this.zzd.zzb;
        if (i >= list.size()) {
            map = this.zzd.zzc;
            return !map.isEmpty() && zza().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.zzb = true;
        int i = this.zza + 1;
        this.zza = i;
        list = this.zzd.zzb;
        if (i < list.size()) {
            list2 = this.zzd.zzb;
            return (Map.Entry) list2.get(this.zza);
        }
        return (Map.Entry) zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.zzb) {
            this.zzb = false;
            this.zzd.zzf();
            int i = this.zza;
            list = this.zzd.zzb;
            if (i >= list.size()) {
                zza().remove();
                return;
            }
            zzhs zzhsVar = this.zzd;
            int i2 = this.zza;
            this.zza = i2 - 1;
            zzhsVar.zzc(i2);
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
