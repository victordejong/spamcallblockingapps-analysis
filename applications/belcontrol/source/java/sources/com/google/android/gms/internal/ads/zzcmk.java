package com.google.android.gms.internal.ads;

import android.webkit.CookieManager;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmk.class */
public final /* synthetic */ class zzcmk implements Callable {
    private final CookieManager zzgny;

    public zzcmk(CookieManager cookieManager) {
        this.zzgny = cookieManager;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        CookieManager cookieManager = this.zzgny;
        if (cookieManager == null) {
            return "";
        }
        return cookieManager.getCookie((String) zzwr.zzqr().zzd(zzabp.zzcpf));
    }
}
