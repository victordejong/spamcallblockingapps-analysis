package com.google.android.gms.internal.mlkit_translate;

import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.net.URL;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfc.class */
public final class zzfc extends zzea<URL> {
    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ URL zza(zzfy zzfyVar) throws IOException {
        if (zzfyVar.zzg() == zzga.NULL) {
            zzfyVar.zzk();
            return null;
        }
        String zzi = zzfyVar.zzi();
        if (!AnalyticsConstants.NULL.equals(zzi)) {
            return new URL(zzi);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, URL url) throws IOException {
        URL url2 = url;
        zzgdVar.zzb(url2 == null ? null : url2.toExternalForm());
    }
}
