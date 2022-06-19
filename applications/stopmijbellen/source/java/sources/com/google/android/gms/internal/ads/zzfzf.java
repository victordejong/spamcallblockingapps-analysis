package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfzf.class */
public final class zzfzf implements zzfys<zzfxu, zzfxu> {
    private static final Logger zza = Logger.getLogger(zzfzf.class.getName());

    @Override // com.google.android.gms.internal.ads.zzfys
    public final Class<zzfxu> zza() {
        return zzfxu.class;
    }

    @Override // com.google.android.gms.internal.ads.zzfys
    public final Class<zzfxu> zzb() {
        return zzfxu.class;
    }

    @Override // com.google.android.gms.internal.ads.zzfys
    public final /* synthetic */ zzfxu zzc(zzfyr<zzfxu> zzfyrVar) throws GeneralSecurityException {
        return new zzfze(zzfyrVar, null);
    }
}
