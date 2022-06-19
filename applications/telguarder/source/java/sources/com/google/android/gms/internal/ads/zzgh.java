package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgh.class */
public final class zzgh extends zzgn {
    private long zzaam;
    private final zzfj zzxj;

    public zzgh(zzfc zzfcVar, String str, String str2, zzcf.zza.zzb zzbVar, int i, int i2, zzfj zzfjVar) {
        super(zzfcVar, str, str2, zzbVar, i, 53);
        this.zzxj = zzfjVar;
        if (zzfjVar != null) {
            this.zzaam = zzfjVar.zzcu();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    protected final void zzcw() throws IllegalAccessException, InvocationTargetException {
        if (this.zzxj != null) {
            this.zzabb.zzbl(((Long) this.zzabl.invoke(null, Long.valueOf(this.zzaam))).longValue());
        }
    }
}
