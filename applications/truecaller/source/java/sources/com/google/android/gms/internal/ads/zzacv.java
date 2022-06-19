package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzacv.class */
public final class zzacv extends zzacz {
    public zzacv(zzabr zzabrVar, String str, String str2, zzyj zzyjVar, int i, int i2) {
        super(zzabrVar, "TDjQ/ClZ1A6U11LRle5Q8IpNZYzzk0FLHirJ3MQW6+Xmi/90o6gFxPcIONwzxlWm", "ZlhR2acRJ5DFhes+PG5pnG7AissVCA1YeE0si8KUOuk=", zzyjVar, i, 48);
    }

    @Override // com.google.android.gms.internal.ads.zzacz
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        this.zze.zzV(3);
        boolean booleanValue = ((Boolean) this.zzf.invoke(null, this.zzb.zzc())).booleanValue();
        synchronized (this.zze) {
            if (booleanValue) {
                this.zze.zzV(2);
            } else {
                this.zze.zzV(1);
            }
        }
    }
}
