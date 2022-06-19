package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.util.Currency;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfg.class */
public final class zzfg extends zzea<Currency> {
    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ Currency zza(zzfy zzfyVar) throws IOException {
        return Currency.getInstance(zzfyVar.zzi());
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, Currency currency) throws IOException {
        zzgdVar.zzb(currency.getCurrencyCode());
    }
}
