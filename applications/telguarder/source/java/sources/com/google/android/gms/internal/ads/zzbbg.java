package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbg.class */
public final class zzbbg extends zzbay {
    @Override // com.google.android.gms.internal.ads.zzbay
    public final zzbav zza(Context context, zzbbo zzbboVar, int i, boolean z, zzacc zzaccVar, zzbbl zzbblVar) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (!(applicationInfo == null || applicationInfo.targetSdkVersion >= 11)) {
            return null;
        }
        return i == 2 ? new zzbbr(context, new zzbbn(context, zzbboVar.zzabj(), zzbboVar.getRequestId(), zzaccVar, zzbboVar.zzabd()), zzbboVar, z, zzb(zzbboVar), zzbblVar) : new zzbam(context, zzbboVar, z, zzb(zzbboVar), zzbblVar, new zzbbn(context, zzbboVar.zzabj(), zzbboVar.getRequestId(), zzaccVar, zzbboVar.zzabd()));
    }
}
