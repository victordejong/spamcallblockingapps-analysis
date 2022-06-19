package com.google.android.gms.internal.mlkit_translate;

import com.google.android.gms.internal.mlkit_translate.zzkc;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzjs.class */
public final class zzjs extends zzjt<zzkc.zzd> {
    @Override // com.google.android.gms.internal.mlkit_translate.zzjt
    public final int zza(Map.Entry<?, ?> entry) {
        zzkc.zzd zzdVar = (zzkc.zzd) entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzjt
    public final zzju<zzkc.zzd> zza(Object obj) {
        return ((zzkc.zze) obj).zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzjt
    public final void zza(zznm zznmVar, Map.Entry<?, ?> entry) throws IOException {
        zzkc.zzd zzdVar = (zzkc.zzd) entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzjt
    public final boolean zza(zzlk zzlkVar) {
        return zzlkVar instanceof zzkc.zze;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzjt
    public final zzju<zzkc.zzd> zzb(Object obj) {
        zzkc.zze zzeVar = (zzkc.zze) obj;
        if (zzeVar.zzc.zzc()) {
            zzeVar.zzc = (zzju) zzeVar.zzc.clone();
        }
        return zzeVar.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzjt
    public final void zzc(Object obj) {
        zza(obj).zzb();
    }
}
