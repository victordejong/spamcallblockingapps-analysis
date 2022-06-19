package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfv.class */
public final class zzfv implements Callable {
    private final zzcf.zza.zzb zzabb;
    private final zzfc zzwc;

    public zzfv(zzfc zzfcVar, zzcf.zza.zzb zzbVar) {
        this.zzwc = zzfcVar;
        this.zzabb = zzbVar;
    }

    /* renamed from: zzcy */
    public final Void call() throws Exception {
        if (this.zzwc.zzcp() != null) {
            this.zzwc.zzcp().get();
        }
        zzcf.zza zzco = this.zzwc.zzco();
        if (zzco != null) {
            try {
                synchronized (this.zzabb) {
                    zzcf.zza.zzb zzbVar = this.zzabb;
                    byte[] byteArray = zzco.toByteArray();
                    zzbVar.zza(byteArray, 0, byteArray.length, zzeko.zzbhw());
                }
                return null;
            } catch (zzelo | NullPointerException e) {
                return null;
            }
        }
        return null;
    }
}
