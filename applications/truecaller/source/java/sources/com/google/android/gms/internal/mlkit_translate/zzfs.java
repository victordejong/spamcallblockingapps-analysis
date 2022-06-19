package com.google.android.gms.internal.mlkit_translate;

import com.razorpay.AnalyticsConstants;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfs.class */
public final class zzfs extends zzea<Boolean> {
    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ Boolean zza(zzfy zzfyVar) throws IOException {
        if (zzfyVar.zzg() == zzga.NULL) {
            zzfyVar.zzk();
            return null;
        }
        return Boolean.valueOf(zzfyVar.zzi());
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, Boolean bool) throws IOException {
        Boolean bool2 = bool;
        zzgdVar.zzb(bool2 == null ? AnalyticsConstants.NULL : bool2.toString());
    }
}
