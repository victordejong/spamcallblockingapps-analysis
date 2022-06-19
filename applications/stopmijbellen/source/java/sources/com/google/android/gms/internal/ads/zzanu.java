package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanu.class */
public final class zzanu extends zzaoa {
    private final zzamz zzi;
    private long zzj;

    public zzanu(zzams zzamsVar, String str, String str2, zzaiz zzaizVar, int i, int i2, zzamz zzamzVar) {
        super(zzamsVar, "e3op4R4hYomHt8fD4e46pNuu/60OumzY4fWht1zvNw/PVRGde3uP5Y0px+X+3p+E", "jLlOehpoNgAQzvuHrTyBcudcfwOhFguv/E47mcpJrto=", zzaizVar, i, 53);
        this.zzi = zzamzVar;
        if (zzamzVar != null) {
            this.zzj = zzamzVar.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        if (this.zzi != null) {
            this.zze.zzL(((Long) this.zzf.invoke(null, Long.valueOf(this.zzj))).longValue());
        }
    }
}
