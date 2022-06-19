package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgj.class */
public final class zzgj extends zzgn {
    public zzgj(zzfc zzfcVar, String str, String str2, zzcf.zza.zzb zzbVar, int i, int i2) {
        super(zzfcVar, str, str2, zzbVar, i, 48);
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    protected final void zzcw() throws IllegalAccessException, InvocationTargetException {
        this.zzabb.zzf(zzcq.ENUM_FAILURE);
        boolean booleanValue = ((Boolean) this.zzabl.invoke(null, this.zzwc.getContext())).booleanValue();
        synchronized (this.zzabb) {
            if (booleanValue) {
                this.zzabb.zzf(zzcq.ENUM_TRUE);
            } else {
                this.zzabb.zzf(zzcq.ENUM_FALSE);
            }
        }
    }
}
