package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.internal.ads.csa;
import com.google.android.gms.internal.ads.cuy;
import com.google.android.gms.internal.ads.zzbar;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/zzh.class */
public final class zzh implements Runnable {
    private final /* synthetic */ boolean zzbpm;
    private final /* synthetic */ zzf zzbpn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(zzf zzfVar, boolean z) {
        this.zzbpn = zzfVar;
        this.zzbpm = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cuy cuyVar;
        zzbar zzbarVar;
        Context context;
        Context zze;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            zzbarVar = this.zzbpn.zzbpk;
            String str = zzbarVar.zzbrz;
            context = this.zzbpn.zzbpi;
            zze = zzf.zze(context);
            csa.a(str, zze, this.zzbpm).c();
        } catch (NullPointerException e) {
            cuyVar = this.zzbpn.zzxh;
            cuyVar.a(2027, System.currentTimeMillis() - currentTimeMillis, e);
        }
    }
}
