package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.math.BigDecimal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzez.class */
public final class zzez extends zzea<BigDecimal> {
    private static BigDecimal zzb(zzfy zzfyVar) throws IOException {
        if (zzfyVar.zzg() == zzga.NULL) {
            zzfyVar.zzk();
            return null;
        }
        try {
            return new BigDecimal(zzfyVar.zzi());
        } catch (NumberFormatException e) {
            throw new zzeb(e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ BigDecimal zza(zzfy zzfyVar) throws IOException {
        return zzb(zzfyVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, BigDecimal bigDecimal) throws IOException {
        zzgdVar.zza(bigDecimal);
    }
}
