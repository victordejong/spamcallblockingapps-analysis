package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzevy.class */
public final class zzevy implements zzevn<zzevw> {
    private final zzfxb zza;
    private final Context zzb;

    public zzevy(zzfxb zzfxbVar, Context context) {
        this.zza = zzfxbVar;
        this.zzb = context;
    }

    public final /* synthetic */ zzevw zza() throws Exception {
        int i;
        boolean z;
        TelephonyManager telephonyManager = (TelephonyManager) this.zzb.getSystemService("phone");
        String networkOperator = telephonyManager.getNetworkOperator();
        int phoneType = telephonyManager.getPhoneType();
        zzt.zzp();
        int i2 = -1;
        if (com.google.android.gms.ads.internal.util.zzt.zzF(this.zzb, "android.permission.ACCESS_NETWORK_STATE")) {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.zzb.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                i = activeNetworkInfo.getType();
                i2 = activeNetworkInfo.getDetailedState().ordinal();
            } else {
                i = -1;
            }
            z = connectivityManager.isActiveNetworkMetered();
        } else {
            i = -2;
            z = false;
            i2 = -1;
        }
        zzt.zzp();
        return new zzevw(networkOperator, i, com.google.android.gms.ads.internal.util.zzt.zzC(this.zzb), phoneType, z, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzevw> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzevx
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzevy.this.zza();
            }
        });
    }
}
