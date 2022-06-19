package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfd.class */
public final class zzfd extends zzea<StringBuffer> {
    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ StringBuffer zza(zzfy zzfyVar) throws IOException {
        if (zzfyVar.zzg() == zzga.NULL) {
            zzfyVar.zzk();
            return null;
        }
        return new StringBuffer(zzfyVar.zzi());
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, StringBuffer stringBuffer) throws IOException {
        StringBuffer stringBuffer2 = stringBuffer;
        zzgdVar.zzb(stringBuffer2 == null ? null : stringBuffer2.toString());
    }
}
