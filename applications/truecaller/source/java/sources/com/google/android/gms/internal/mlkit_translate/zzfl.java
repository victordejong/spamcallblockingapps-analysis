package com.google.android.gms.internal.mlkit_translate;

import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.util.Locale;
import java.util.StringTokenizer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfl.class */
public final class zzfl extends zzea<Locale> {
    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ Locale zza(zzfy zzfyVar) throws IOException {
        String str = null;
        if (zzfyVar.zzg() == zzga.NULL) {
            zzfyVar.zzk();
            return null;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(zzfyVar.zzi(), AnalyticsConstants.DELIMITER_MAIN);
        String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
        String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
        if (stringTokenizer.hasMoreElements()) {
            str = stringTokenizer.nextToken();
        }
        return (nextToken2 == null && str == null) ? new Locale(nextToken) : str == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, str);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, Locale locale) throws IOException {
        Locale locale2 = locale;
        zzgdVar.zzb(locale2 == null ? null : locale2.toString());
    }
}
