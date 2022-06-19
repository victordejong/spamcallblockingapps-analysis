package com.google.android.gms.internal.ads;

import android.webkit.CookieManager;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qu0.class */
final /* synthetic */ class qu0 implements Callable {

    /* renamed from: a */
    private final CookieManager f8279a;

    qu0(CookieManager cookieManager) {
        this.f8279a = cookieManager;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String str;
        CookieManager cookieManager = this.f8279a;
        if (cookieManager == null) {
            str = "";
        } else {
            str = cookieManager.getCookie((String) C1674c.m7906c().m6878b(C1842m3.f7518v0));
        }
        return str;
    }
}
