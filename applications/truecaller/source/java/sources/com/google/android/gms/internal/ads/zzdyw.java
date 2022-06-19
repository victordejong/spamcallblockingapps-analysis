package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyw.class */
public final class zzdyw implements zzgla<zzfsm<String>> {
    private final zzgln<zzfes> zza;
    private final zzgln<Context> zzb;

    public zzdyw(zzgln<zzfes> zzglnVar, zzgln<Context> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfes zzb = this.zza.zzb();
        CookieManager zzk = zzt.zze().zzk(this.zzb.zzb());
        return zzfed.zzb(new Callable(zzk) { // from class: com.google.android.gms.internal.ads.zzdys
            private final CookieManager zza;

            {
                this.zza = zzk;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                String str;
                CookieManager cookieManager = this.zza;
                if (cookieManager == null) {
                    str = "";
                } else {
                    str = cookieManager.getCookie((String) zzbet.zzc().zzc(zzbjl.zzaz));
                }
                return str;
            }
        }, zzfem.WEBVIEW_COOKIE, zzb).zzh(1L, TimeUnit.SECONDS).zzf(Exception.class, zzdyt.zza).zzi();
    }
}
