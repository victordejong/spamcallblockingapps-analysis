package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanf.class */
public final class zzanf extends zzaoa {
    private static volatile Long zzi;
    private static final Object zzj = new Object();

    public zzanf(zzams zzamsVar, String str, String str2, zzaiz zzaizVar, int i, int i2) {
        super(zzamsVar, "9GRJeHWq4dh2BvJK4ycB7gT7rSPz0ZkF1/0dgXOpChUtvNoPNNrpav7wZxlsKwP4", "wAGvvwsR6C1vDVsIyeUg+KWcunmHMDzvTAjP5mYaviw=", zzaizVar, i, 44);
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        if (zzi == null) {
            synchronized (zzj) {
                if (zzi == null) {
                    zzi = (Long) this.zzf.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zze) {
            this.zze.zzm(zzi.longValue());
        }
    }
}
