package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfo.class */
public final class zzfo extends zzgn {
    private final Activity zzaas;
    private final View zzaat;

    public zzfo(zzfc zzfcVar, String str, String str2, zzcf.zza.zzb zzbVar, int i, int i2, View view, Activity activity) {
        super(zzfcVar, str, str2, zzbVar, i, 62);
        this.zzaat = view;
        this.zzaas = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    protected final void zzcw() throws IllegalAccessException, InvocationTargetException {
        if (this.zzaat == null) {
            return;
        }
        boolean booleanValue = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcsa)).booleanValue();
        Object[] objArr = (Object[]) this.zzabl.invoke(null, this.zzaat, this.zzaas, Boolean.valueOf(booleanValue));
        synchronized (this.zzabb) {
            this.zzabb.zzbp(((Long) objArr[0]).longValue());
            this.zzabb.zzbq(((Long) objArr[1]).longValue());
            if (booleanValue) {
                this.zzabb.zzaj((String) objArr[2]);
            }
        }
    }
}
