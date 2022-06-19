package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfka.class */
public abstract class zzfka {
    public static zzfka zza(zzfkb zzfkbVar, zzfkc zzfkcVar) {
        if (zzfjy.zzb()) {
            return new zzfke(zzfkbVar, zzfkcVar);
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    public abstract void zzb(View view, zzfkg zzfkgVar, String str);

    public abstract void zzc();

    public abstract void zzd(View view);

    public abstract void zze();
}
