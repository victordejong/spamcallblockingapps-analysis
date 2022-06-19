package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgd.class */
public final class zzgd extends zzgn {
    private List<Long> zzabf = null;

    public zzgd(zzfc zzfcVar, String str, String str2, zzcf.zza.zzb zzbVar, int i, int i2) {
        super(zzfcVar, str, str2, zzbVar, i, 31);
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    protected final void zzcw() throws IllegalAccessException, InvocationTargetException {
        this.zzabb.zzax(-1L);
        this.zzabb.zzay(-1L);
        if (this.zzabf == null) {
            this.zzabf = (List) this.zzabl.invoke(null, this.zzwc.getContext());
        }
        List<Long> list = this.zzabf;
        if (list == null || list.size() != 2) {
            return;
        }
        synchronized (this.zzabb) {
            this.zzabb.zzax(this.zzabf.get(0).longValue());
            this.zzabb.zzay(this.zzabf.get(1).longValue());
        }
    }
}
