package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzew.class */
public final class zzew extends zzea<String> {
    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ String zza(zzfy zzfyVar) throws IOException {
        zzga zzg = zzfyVar.zzg();
        if (zzg != zzga.NULL) {
            return zzg == zzga.BOOLEAN ? Boolean.toString(zzfyVar.zzj()) : zzfyVar.zzi();
        }
        zzfyVar.zzk();
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, String str) throws IOException {
        zzgdVar.zzb(str);
    }
}
