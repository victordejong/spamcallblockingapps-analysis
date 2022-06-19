package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzans.class */
public final class zzans extends zzaoa {
    private final StackTraceElement[] zzi;

    public zzans(zzams zzamsVar, String str, String str2, zzaiz zzaizVar, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(zzamsVar, "xd283h5qAcacM5zVZnbCaCYEYmyBvCzSWmcoDFc838gJ/DBCdoedE0EgOC5ZJs5s", "KFN28huBDzw/UNPPRO5YgG4GEIzzfegN1j75wmksmGk=", zzaizVar, i, 45);
        this.zzi = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        StackTraceElement[] stackTraceElementArr = this.zzi;
        if (stackTraceElementArr != null) {
            int i = 1;
            zzamk zzamkVar = new zzamk((String) this.zzf.invoke(null, stackTraceElementArr));
            synchronized (this.zze) {
                this.zze.zzB(zzamkVar.zza.longValue());
                if (zzamkVar.zzb.booleanValue()) {
                    zzaiz zzaizVar = this.zze;
                    if (true != zzamkVar.zzc.booleanValue()) {
                        i = 2;
                    }
                    zzaizVar.zzX(i);
                } else {
                    this.zze.zzX(3);
                }
            }
        }
    }
}
