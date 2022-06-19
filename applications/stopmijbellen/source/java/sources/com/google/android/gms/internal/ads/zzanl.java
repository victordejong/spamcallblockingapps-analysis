package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanl.class */
public final class zzanl extends zzaoa {
    private final zzalw zzi;

    public zzanl(zzams zzamsVar, String str, String str2, zzaiz zzaizVar, int i, int i2, zzalw zzalwVar) {
        super(zzamsVar, "pJoEelkZiKPOxk90a9HaLYHjU9iyGURNQtyjZ4Eem1yb/gFTG2yLqZLPefEosnhY", "oU8dxPYnryKlPd91mK89Z7Qor1PaeT+LMYSHnhThZ+4=", zzaizVar, i, 11);
        this.zzi = zzalwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        zzalw zzalwVar = this.zzi;
        if (zzalwVar != null) {
            this.zze.zzv(((Long) this.zzf.invoke(null, zzalwVar.zzb())).longValue());
        }
    }
}
