package com.google.android.gms.internal.mlkit_translate;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzen.class */
public abstract class zzen<T> implements Iterator<T> {
    private zzem<K, V> zza;
    private zzem<K, V> zzb = null;
    private int zzc;
    private final /* synthetic */ zzeh zzd;

    public zzen(zzeh zzehVar) {
        this.zzd = zzehVar;
        this.zza = zzehVar.zzc.zzd;
        this.zzc = zzehVar.zzb;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza != this.zzd.zzc;
    }

    @Override // java.util.Iterator
    public final void remove() {
        Map.Entry entry = this.zzb;
        if (entry != null) {
            this.zzd.zza((zzem) entry, true);
            this.zzb = null;
            this.zzc = this.zzd.zzb;
            return;
        }
        throw new IllegalStateException();
    }

    public final zzem<K, V> zza() {
        zzem<K, V> zzemVar = this.zza;
        zzeh zzehVar = this.zzd;
        if (zzemVar != zzehVar.zzc) {
            if (zzehVar.zzb != this.zzc) {
                throw new ConcurrentModificationException();
            }
            this.zza = zzemVar.zzd;
            this.zzb = zzemVar;
            return zzemVar;
        }
        throw new NoSuchElementException();
    }
}
