package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzex.class */
public final class zzex extends zzea<Character> {
    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ Character zza(zzfy zzfyVar) throws IOException {
        if (zzfyVar.zzg() == zzga.NULL) {
            zzfyVar.zzk();
            return null;
        }
        String zzi = zzfyVar.zzi();
        if (zzi.length() == 1) {
            return Character.valueOf(zzi.charAt(0));
        }
        throw new zzeb("Expecting character, got: " + zzi);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, Character ch) throws IOException {
        Character ch2 = ch;
        zzgdVar.zzb(ch2 == null ? null : String.valueOf(ch2));
    }
}
