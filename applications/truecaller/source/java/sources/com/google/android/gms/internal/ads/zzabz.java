package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzabz.class */
public final class zzabz extends zzacz {
    private final Activity zzi;
    private final View zzj;

    public zzabz(zzabr zzabrVar, String str, String str2, zzyj zzyjVar, int i, int i2, View view, Activity activity) {
        super(zzabrVar, "h8EVC95dwYnFQkP2MhkDIC/tXo0ux4wCcOlQmWH2MzSwaPfcZ/24kCQO32wp6PV0", "0H2C2EeQe84lGZgr+dAw2Fmmx+KWvzkBWNdP/wQOLp8=", zzyjVar, i, 62);
        this.zzj = view;
        this.zzi = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzacz
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        if (this.zzj == null) {
            return;
        }
        boolean booleanValue = ((Boolean) zzbet.zzc().zzc(zzbjl.zzbJ)).booleanValue();
        Object[] objArr = (Object[]) this.zzf.invoke(null, this.zzj, this.zzi, Boolean.valueOf(booleanValue));
        synchronized (this.zze) {
            this.zze.zzP(((Long) objArr[0]).longValue());
            this.zze.zzQ(((Long) objArr[1]).longValue());
            if (booleanValue) {
                this.zze.zzR((String) objArr[2]);
            }
        }
    }
}
