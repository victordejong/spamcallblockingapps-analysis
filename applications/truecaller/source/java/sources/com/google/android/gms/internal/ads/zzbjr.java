package com.google.android.gms.internal.ads;

import android.text.TextUtils;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjr.class */
public final class zzbjr {
    public static final void zza(zzbjq zzbjqVar, zzbjo zzbjoVar) {
        if (zzbjoVar.zzb() != null) {
            if (TextUtils.isEmpty(zzbjoVar.zzc())) {
                throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
            }
            zzbjqVar.zza(zzbjoVar.zzb(), zzbjoVar.zzc(), zzbjoVar.zza(), zzbjoVar.zzd());
            return;
        }
        throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
    }
}
