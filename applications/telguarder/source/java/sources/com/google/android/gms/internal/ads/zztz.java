package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztz.class */
public final class zztz {
    zzhb zzbyg;
    boolean zzbyh;

    public zztz() {
    }

    public zztz(Context context) {
        zzabp.initialize(context);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvg)).booleanValue()) {
            try {
                this.zzbyg = (zzhb) zzazj.zza(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", zzub.zzbyi);
                ObjectWrapper.wrap(context);
                this.zzbyg.zza(ObjectWrapper.wrap(context), "GMA_SDK");
                this.zzbyh = true;
            } catch (RemoteException | zzazl | NullPointerException e) {
                zzazk.zzdy("Cannot dynamite load clearcut");
            }
        }
    }

    public zztz(Context context, String str, String str2) {
        zzabp.initialize(context);
        try {
            this.zzbyg = (zzhb) zzazj.zza(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", zzuc.zzbyi);
            ObjectWrapper.wrap(context);
            this.zzbyg.zza(ObjectWrapper.wrap(context), str, null);
            this.zzbyh = true;
        } catch (RemoteException | zzazl | NullPointerException e) {
            zzazk.zzdy("Cannot dynamite load clearcut");
        }
    }

    public final zzud zzf(byte[] bArr) {
        return new zzud(this, bArr);
    }
}
