package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzlr.class */
public final class zzlr<T> implements zzma<T> {
    private final zzlk zza;
    private final zzms<?, ?> zzb;
    private final boolean zzc;
    private final zzjt<?> zzd;

    private zzlr(zzms<?, ?> zzmsVar, zzjt<?> zzjtVar, zzlk zzlkVar) {
        this.zzb = zzmsVar;
        this.zzc = zzjtVar.zza(zzlkVar);
        this.zzd = zzjtVar;
        this.zza = zzlkVar;
    }

    public static <T> zzlr<T> zza(zzms<?, ?> zzmsVar, zzjt<?> zzjtVar, zzlk zzlkVar) {
        return new zzlr<>(zzmsVar, zzjtVar, zzlkVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzma
    public final int zza(T t) {
        int hashCode = this.zzb.zza(t).hashCode();
        int i = hashCode;
        if (this.zzc) {
            i = (hashCode * 53) + this.zzd.zza(t).hashCode();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzma
    public final void zza(T t, zznm zznmVar) throws IOException {
        Iterator<Map.Entry<?, Object>> zzd = this.zzd.zza(t).zzd();
        while (zzd.hasNext()) {
            Map.Entry<?, Object> next = zzd.next();
            zzjw zzjwVar = (zzjw) next.getKey();
            if (zzjwVar.zzc() != zznn.MESSAGE || zzjwVar.zzd() || zzjwVar.zze()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (next instanceof zzkr) {
                zznmVar.zza(zzjwVar.zza(), (Object) ((zzkr) next).zza().zzc());
            } else {
                zznmVar.zza(zzjwVar.zza(), next.getValue());
            }
        }
        zzms<?, ?> zzmsVar = this.zzb;
        zzmsVar.zzb((zzms<?, ?>) zzmsVar.zza(t), zznmVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzma
    public final boolean zza(T t, T t2) {
        if (!this.zzb.zza(t).equals(this.zzb.zza(t2))) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        return this.zzd.zza(t).equals(this.zzd.zza(t2));
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzma
    public final int zzb(T t) {
        zzms<?, ?> zzmsVar = this.zzb;
        int zzc = zzmsVar.zzc(zzmsVar.zza(t)) + 0;
        int i = zzc;
        if (this.zzc) {
            i = zzc + this.zzd.zza(t).zzg();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzma
    public final void zzb(T t, T t2) {
        zzmc.zza(this.zzb, t, t2);
        if (this.zzc) {
            zzmc.zza(this.zzd, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzma
    public final void zzc(T t) {
        this.zzb.zzb(t);
        this.zzd.zzc(t);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzma
    public final boolean zzd(T t) {
        return this.zzd.zza(t).zzf();
    }
}
