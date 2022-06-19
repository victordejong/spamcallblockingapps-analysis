package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzeu.class */
public final class zzeu extends zzea<Number> {
    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ Number zza(zzfy zzfyVar) throws IOException {
        zzga zzg = zzfyVar.zzg();
        int i = zzft.zza[zzg.ordinal()];
        if (i == 1 || i == 3) {
            return new zzee(zzfyVar.zzi());
        }
        if (i == 4) {
            zzfyVar.zzk();
            return null;
        }
        throw new zzeb("Expecting number, got: " + zzg);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, Number number) throws IOException {
        zzgdVar.zza(number);
    }
}
