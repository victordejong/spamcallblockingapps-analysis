package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfgc.class */
public abstract class zzfgc {
    public static zzfgc zze(zzfgd zzfgdVar, zzfge zzfgeVar) {
        if (zzfga.zzb()) {
            return new zzfgg(zzfgdVar, zzfgeVar);
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    public abstract void zza();

    public abstract void zzb(View view);

    public abstract void zzc();

    public abstract void zzd(View view, zzfgi zzfgiVar, String str);
}
