package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdtt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdtw.class */
final class zzdtw implements zzelj<Integer, zzdtt.zza> {
    @Override // com.google.android.gms.internal.ads.zzelj
    public final /* synthetic */ zzdtt.zza convert(Integer num) {
        zzdtt.zza zzeh = zzdtt.zza.zzeh(num.intValue());
        zzdtt.zza zzaVar = zzeh;
        if (zzeh == null) {
            zzaVar = zzdtt.zza.BLOCKED_REASON_UNKNOWN;
        }
        return zzaVar;
    }
}
