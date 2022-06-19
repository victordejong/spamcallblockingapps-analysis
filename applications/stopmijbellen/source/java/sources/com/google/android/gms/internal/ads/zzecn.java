package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzecn.class */
public final class zzecn implements zzgpr<zzfxa<String>> {
    private final zzgqe<zzfie> zza;
    private final zzgqe<Context> zzb;

    public zzecn(zzgqe<zzfie> zzgqeVar, zzgqe<Context> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfie zzb = this.zza.zzb();
        final CookieManager zzl = zzt.zzq().zzl(this.zzb.zzb());
        zzfhv zzi = zzfho.zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeck
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String str;
                CookieManager cookieManager = zzl;
                if (cookieManager == null) {
                    str = "";
                } else {
                    str = cookieManager.getCookie((String) zzbgq.zzc().zzb(zzblj.zzaC));
                }
                return str;
            }
        }, zzfhy.WEBVIEW_COOKIE, zzb).zzi(1L, TimeUnit.SECONDS);
        final zzecj zzecjVar = zzecj.zza;
        return zzi.zzc(Exception.class, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzfhq
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                Exception exc = (Exception) ((Throwable) obj);
                return zzfwq.zzi("");
            }
        }).zza();
    }
}
