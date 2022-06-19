package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaco.class */
public final class zzaco extends zzacz {
    public zzaco(zzabr zzabrVar, String str, String str2, zzyj zzyjVar, int i, int i2) {
        super(zzabrVar, "Md0NasjzX5Dv6RV9gbRrdbbQw799E9EBpEgmAwiNqi/RiG7V51y0yTZI5hLTRiUF", "4FqMwpBmkecZ5KuntXganMUU8jtWDsP5C5fiOE4sCtY=", zzyjVar, i, 73);
    }

    @Override // com.google.android.gms.internal.ads.zzacz
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        try {
            int i = 1;
            boolean booleanValue = ((Boolean) this.zzf.invoke(null, this.zzb.zzc())).booleanValue();
            zzyj zzyjVar = this.zze;
            if (true == booleanValue) {
                i = 2;
            }
            zzyjVar.zzY(i);
        } catch (InvocationTargetException e) {
            this.zze.zzY(3);
        }
    }
}
