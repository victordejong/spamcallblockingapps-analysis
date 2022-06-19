package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgbp.class */
final class zzgbp implements zzfys<zzfym, zzfym> {
    private static final Logger zza = Logger.getLogger(zzgbp.class.getName());

    @Override // com.google.android.gms.internal.ads.zzfys
    public final Class<zzfym> zza() {
        return zzfym.class;
    }

    @Override // com.google.android.gms.internal.ads.zzfys
    public final Class<zzfym> zzb() {
        return zzfym.class;
    }

    @Override // com.google.android.gms.internal.ads.zzfys
    public final /* synthetic */ zzfym zzc(zzfyr<zzfym> zzfyrVar) throws GeneralSecurityException {
        return new zzgbo(zzfyrVar, null);
    }
}
