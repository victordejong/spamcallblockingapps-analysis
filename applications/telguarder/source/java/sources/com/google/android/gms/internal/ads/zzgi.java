package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgi.class */
public final class zzgi extends zzgn {
    public zzgi(zzfc zzfcVar, String str, String str2, zzcf.zza.zzb zzbVar, int i, int i2) {
        super(zzfcVar, str, str2, zzbVar, i, 51);
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    protected final void zzcw() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.zzabb) {
            zzez zzezVar = new zzez((String) this.zzabl.invoke(null, new Object[0]));
            this.zzabb.zzbj(zzezVar.zzyt.longValue());
            this.zzabb.zzbk(zzezVar.zzyu.longValue());
        }
    }
}
