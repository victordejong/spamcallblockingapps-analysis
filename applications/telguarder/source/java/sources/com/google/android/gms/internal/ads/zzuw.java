package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzug;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzuw.class */
final class zzuw implements zzelj<Integer, zzug.zzc.zza> {
    @Override // com.google.android.gms.internal.ads.zzelj
    public final /* synthetic */ zzug.zzc.zza convert(Integer num) {
        zzug.zzc.zza zzcb = zzug.zzc.zza.zzcb(num.intValue());
        zzug.zzc.zza zzaVar = zzcb;
        if (zzcb == null) {
            zzaVar = zzug.zzc.zza.AD_FORMAT_TYPE_UNSPECIFIED;
        }
        return zzaVar;
    }
}
