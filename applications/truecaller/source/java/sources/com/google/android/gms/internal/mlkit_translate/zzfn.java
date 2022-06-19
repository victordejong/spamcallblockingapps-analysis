package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfn.class */
public final class zzfn extends zzea<Boolean> {
    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ Boolean zza(zzfy zzfyVar) throws IOException {
        zzga zzg = zzfyVar.zzg();
        if (zzg != zzga.NULL) {
            return zzg == zzga.STRING ? Boolean.valueOf(Boolean.parseBoolean(zzfyVar.zzi())) : Boolean.valueOf(zzfyVar.zzj());
        }
        zzfyVar.zzk();
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, Boolean bool) throws IOException {
        zzgdVar.zza(bool);
    }
}
