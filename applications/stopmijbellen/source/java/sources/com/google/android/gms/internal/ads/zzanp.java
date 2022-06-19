package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanp.class */
public final class zzanp extends zzaoa {
    public zzanp(zzams zzamsVar, String str, String str2, zzaiz zzaizVar, int i, int i2) {
        super(zzamsVar, "nKg4HNqb3w+l+hWBt0181NzZuRHIlhptjDdMcQ5dE3JWGvySjoPYfybKeplgFTfD", "XexrqxQZ83Dsows1I9oUUMC34QJd/x5AyWUFr5Va7Yc=", zzaizVar, i, 73);
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        try {
            int i = 1;
            boolean booleanValue = ((Boolean) this.zzf.invoke(null, this.zzb.zzb())).booleanValue();
            zzaiz zzaizVar = this.zze;
            if (true == booleanValue) {
                i = 2;
            }
            zzaizVar.zzZ(i);
        } catch (InvocationTargetException e) {
            this.zze.zzZ(3);
        }
    }
}
