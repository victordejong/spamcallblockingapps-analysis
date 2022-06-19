package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfx.class */
public final class zzfx extends zzea<Number> {
    private static Number zzb(zzfy zzfyVar) throws IOException {
        if (zzfyVar.zzg() == zzga.NULL) {
            zzfyVar.zzk();
            return null;
        }
        try {
            return Integer.valueOf(zzfyVar.zzn());
        } catch (NumberFormatException e) {
            throw new zzeb(e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ Number zza(zzfy zzfyVar) throws IOException {
        return zzb(zzfyVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, Number number) throws IOException {
        zzgdVar.zza(number);
    }
}
