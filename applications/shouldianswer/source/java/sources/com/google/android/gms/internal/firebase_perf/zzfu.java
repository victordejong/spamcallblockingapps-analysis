package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzdy;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase-perf.zzgw;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzfu.class */
final class zzfu<T> implements zzge<T> {
    private final zzfr zzsm;
    private final zzgw<?, ?> zzsn;
    private final boolean zzso;
    private final zzdy<?> zzsp;

    private zzfu(zzgw<?, ?> zzgwVar, zzdy<?> zzdyVar, zzfr zzfrVar) {
        this.zzsn = zzgwVar;
        this.zzso = zzdyVar.zze(zzfrVar);
        this.zzsp = zzdyVar;
        this.zzsm = zzfrVar;
    }

    public static <T> zzfu<T> zza(zzgw<?, ?> zzgwVar, zzdy<?> zzdyVar, zzfr zzfrVar) {
        return new zzfu<>(zzgwVar, zzdyVar, zzfrVar);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzge
    public final boolean equals(T t, T t2) {
        if (!this.zzsn.zzn(t).equals(this.zzsn.zzn(t2))) {
            return false;
        }
        if (!this.zzso) {
            return true;
        }
        return this.zzsp.zzb(t).equals(this.zzsp.zzb(t2));
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzge
    public final int hashCode(T t) {
        int hashCode = this.zzsn.zzn(t).hashCode();
        int i = hashCode;
        if (this.zzso) {
            i = (hashCode * 53) + this.zzsp.zzb(t).hashCode();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzge
    public final void zza(T t, zzhq zzhqVar) {
        Iterator<Map.Entry<?, Object>> it = this.zzsp.zzb(t).iterator();
        while (it.hasNext()) {
            Map.Entry<?, Object> next = it.next();
            zzeb zzebVar = (zzeb) next.getKey();
            if (zzebVar.zzge() != zzhr.zzwj || zzebVar.zzgf() || zzebVar.zzgg()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (next instanceof zzeu) {
                zzhqVar.zza(zzebVar.zzcq(), (Object) ((zzeu) next).zzgx().zzfe());
            } else {
                zzhqVar.zza(zzebVar.zzcq(), next.getValue());
            }
        }
        zzgw<?, ?> zzgwVar = this.zzsn;
        zzgwVar.zzc(zzgwVar.zzn(t), zzhqVar);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzge
    public final void zzd(T t) {
        this.zzsn.zzd(t);
        this.zzsp.zzd(t);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzge
    public final void zze(T t, T t2) {
        zzgg.zza((zzgw) this.zzsn, (Object) t, (Object) t2);
        if (this.zzso) {
            zzgg.zza((zzdy) this.zzsp, (Object) t, (Object) t2);
        }
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzge
    public final boolean zzk(T t) {
        return this.zzsp.zzb(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzge
    public final int zzl(T t) {
        zzgw<?, ?> zzgwVar = this.zzsn;
        int zzo = zzgwVar.zzo(zzgwVar.zzn(t)) + 0;
        int i = zzo;
        if (this.zzso) {
            i = zzo + this.zzsp.zzb(t).zzfz();
        }
        return i;
    }
}
