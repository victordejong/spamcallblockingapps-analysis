package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgf.class */
public final class zzgf extends zzgn {
    private final StackTraceElement[] zzabg;

    public zzgf(zzfc zzfcVar, String str, String str2, zzcf.zza.zzb zzbVar, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(zzfcVar, str, str2, zzbVar, i, 45);
        this.zzabg = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    protected final void zzcw() throws IllegalAccessException, InvocationTargetException {
        if (this.zzabg != null) {
            zzey zzeyVar = new zzey((String) this.zzabl.invoke(null, this.zzabg));
            synchronized (this.zzabb) {
                this.zzabb.zzbi(zzeyVar.zzyq.longValue());
                if (zzeyVar.zzyr.booleanValue()) {
                    this.zzabb.zzh(zzeyVar.zzys.booleanValue() ? zzcq.ENUM_FALSE : zzcq.ENUM_TRUE);
                } else {
                    this.zzabb.zzh(zzcq.ENUM_FAILURE);
                }
            }
        }
    }
}
