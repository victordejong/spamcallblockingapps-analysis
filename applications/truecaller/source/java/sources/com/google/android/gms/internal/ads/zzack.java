package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzack.class */
public final class zzack extends zzacz {
    private final zzaav zzi;

    public zzack(zzabr zzabrVar, String str, String str2, zzyj zzyjVar, int i, int i2, zzaav zzaavVar) {
        super(zzabrVar, "E20AdmxNj0iK7Vx72nHXXjWnsmv4FUkyxC/Oztwx6eZIzlENIrQYdkN17JfC0Q1q", "rY9DNDEvlJE2YV76YVSJLP4cBUy/u1xcBXUcMxb1h8o=", zzyjVar, i, 11);
        this.zzi = zzaavVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacz
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        zzaav zzaavVar = this.zzi;
        if (zzaavVar != null) {
            this.zze.zzf(((Long) this.zzf.invoke(null, zzaavVar.zzc())).longValue());
        }
    }
}
