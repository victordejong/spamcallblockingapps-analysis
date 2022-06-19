package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfb.class */
public final class zzfb extends zzea<StringBuilder> {
    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ StringBuilder zza(zzfy zzfyVar) throws IOException {
        if (zzfyVar.zzg() == zzga.NULL) {
            zzfyVar.zzk();
            return null;
        }
        return new StringBuilder(zzfyVar.zzi());
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, StringBuilder sb) throws IOException {
        StringBuilder sb2 = sb;
        zzgdVar.zzb(sb2 == null ? null : sb2.toString());
    }
}
