package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzano.class */
public final class zzano extends zzaoa {
    public zzano(zzams zzamsVar, String str, String str2, zzaiz zzaizVar, int i, int i2) {
        super(zzamsVar, "xNZCZdqL8o1jZKUOIQXHHGKMYJmFGBT5z1mMXWF7VHR3erPGPRFl7DocpCFVg9bF", "1GRZIGWaJCWi5hYVyOzM0ARje4NaXoHaW7HEe5QbRxs=", zzaizVar, i, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        zzalz zzalzVar = new zzalz((String) this.zzf.invoke(null, this.zzb.zzb(), Boolean.valueOf(((Boolean) zzbgq.zzc().zzb(zzblj.zzbS)).booleanValue())));
        synchronized (this.zze) {
            this.zze.zzh(zzalzVar.zza);
            this.zze.zzy(zzalzVar.zzb);
        }
    }
}
