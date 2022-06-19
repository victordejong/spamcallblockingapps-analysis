package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgaz.class */
public final class zzgaz implements zzfys<zzfxy, zzfxy> {
    private static final Logger zza = Logger.getLogger(zzgaz.class.getName());

    @Override // com.google.android.gms.internal.ads.zzfys
    public final Class<zzfxy> zza() {
        return zzfxy.class;
    }

    @Override // com.google.android.gms.internal.ads.zzfys
    public final Class<zzfxy> zzb() {
        return zzfxy.class;
    }

    @Override // com.google.android.gms.internal.ads.zzfys
    public final /* synthetic */ zzfxy zzc(zzfyr<zzfxy> zzfyrVar) throws GeneralSecurityException {
        return new zzgay(zzfyrVar);
    }
}
