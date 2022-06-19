package com.google.android.gms.internal.ads;

import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzod.class */
public final class zzod {
    public final zzoh zza;
    public final MediaFormat zzb;
    public final zzab zzc;
    public final Surface zzd;
    public final MediaCrypto zze = null;

    private zzod(zzoh zzohVar, MediaFormat mediaFormat, zzab zzabVar, Surface surface, MediaCrypto mediaCrypto, int i, boolean z) {
        this.zza = zzohVar;
        this.zzb = mediaFormat;
        this.zzc = zzabVar;
        this.zzd = surface;
    }

    public static zzod zza(zzoh zzohVar, MediaFormat mediaFormat, zzab zzabVar, MediaCrypto mediaCrypto) {
        return new zzod(zzohVar, mediaFormat, zzabVar, null, null, 0, false);
    }

    public static zzod zzb(zzoh zzohVar, MediaFormat mediaFormat, zzab zzabVar, Surface surface, MediaCrypto mediaCrypto) {
        return new zzod(zzohVar, mediaFormat, zzabVar, surface, null, 0, false);
    }
}
