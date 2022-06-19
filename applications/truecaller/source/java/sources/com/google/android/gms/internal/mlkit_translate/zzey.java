package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.math.BigInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzey.class */
public final class zzey extends zzea<BigInteger> {
    private static BigInteger zzb(zzfy zzfyVar) throws IOException {
        if (zzfyVar.zzg() == zzga.NULL) {
            zzfyVar.zzk();
            return null;
        }
        try {
            return new BigInteger(zzfyVar.zzi());
        } catch (NumberFormatException e) {
            throw new zzeb(e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ BigInteger zza(zzfy zzfyVar) throws IOException {
        return zzb(zzfyVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, BigInteger bigInteger) throws IOException {
        zzgdVar.zza(bigInteger);
    }
}
