package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bnf.class */
public final class bnf implements dsi<dbt<String>> {

    /* renamed from: a */
    private final dsv<cti> f44331a;

    /* renamed from: b */
    private final dsv<Context> f44332b;

    private bnf(dsv<cti> dsvVar, dsv<Context> dsvVar2) {
        this.f44331a = dsvVar;
        this.f44332b = dsvVar2;
    }

    /* renamed from: a */
    public static bnf m17728a(dsv<cti> dsvVar, dsv<Context> dsvVar2) {
        return new bnf(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        dbs dbsVar;
        cti mo14005a = this.f44331a.mo14005a();
        CookieManager zzbi = zzr.zzkx().zzbi(this.f44332b.mo14005a());
        csx m17260a = mo14005a.m17260a((cti) ctj.WEBVIEW_COOKIE);
        Callable callable = new Callable(zzbi) { // from class: com.google.android.gms.internal.ads.bnb

            /* renamed from: a */
            private final CookieManager f44327a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44327a = zzbi;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                CookieManager cookieManager = this.f44327a;
                if (cookieManager == null) {
                    return "";
                }
                return cookieManager.getCookie((String) ekb.m14831e().m18571a(C12187aq.f42687ax));
            }
        };
        dbsVar = m17260a.f46499a.f46490b;
        return (dbt) dso.m15764b(m17260a.m17252a(callable, dbsVar).m17250a(1L, TimeUnit.SECONDS).m17245a(Exception.class, new daq(bne.f44330a) { // from class: com.google.android.gms.internal.ads.ctf

            /* renamed from: a */
            private final css f46515a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46515a = cssVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return dbh.m16899a(this.f46515a.mo17263a((Throwable) obj));
            }
        }).m17251a());
    }
}
