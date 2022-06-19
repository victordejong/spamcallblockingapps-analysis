package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.C2341q;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bje.class */
public final class bje implements dht<crt<String>> {

    /* renamed from: a */
    private final dig<ckz> f11380a;

    /* renamed from: b */
    private final dig<Context> f11381b;

    private bje(dig<ckz> digVar, dig<Context> digVar2) {
        this.f11380a = digVar;
        this.f11381b = digVar2;
    }

    /* renamed from: a */
    public static bje m11861a(dig<ckz> digVar, dig<Context> digVar2) {
        return new bje(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (crt) dhz.m9438a(this.f11380a.mo9430a().m11163a((ckz) ckw.WEBVIEW_COOKIE).m11155a(new Callable(this.f11381b.mo9430a()) { // from class: com.google.android.gms.internal.ads.bja

            /* renamed from: a */
            private final Context f11376a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11376a = mo9430a2;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                String str = "";
                CookieManager mo6927c = C2341q.m14742e().mo6927c(this.f11376a);
                if (mo6927c != null) {
                    str = mo6927c.getCookie("googleads.g.doubleclick.net");
                }
                return str;
            }
        }).m11152a(1L, TimeUnit.SECONDS).m11147a(Exception.class, bjd.f11379a).m11153a(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
