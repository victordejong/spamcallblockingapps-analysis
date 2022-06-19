package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.C5667s;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/er1.class */
public final class er1 implements cj3<r03<String>> {

    /* renamed from: a */
    private final pj3<yn2> f22426a;

    /* renamed from: b */
    private final pj3<Context> f22427b;

    public er1(pj3<yn2> pj3Var, pj3<Context> pj3Var2) {
        this.f22426a = pj3Var;
        this.f22427b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        yn2 mo8141b = this.f22426a.mo8141b();
        CookieManager mo18016k = C5667s.m18158f().mo18016k(this.f22427b.mo8141b());
        return kn2.m13843b(new Callable(mo18016k) { // from class: com.google.android.gms.internal.ads.ar1

            /* renamed from: a */
            private final CookieManager f20097a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20097a = mo18016k;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                String str;
                CookieManager cookieManager = this.f20097a;
                if (cookieManager == null) {
                    str = "";
                } else {
                    str = cookieManager.getCookie((String) C7192yr.m8714c().m14263c(C6679kw.f25847z0));
                }
                return str;
            }
        }, zzfem.WEBVIEW_COOKIE, mo8141b).m11834h(1L, TimeUnit.SECONDS).m11836f(Exception.class, br1.f20746a).m11833i();
    }
}
