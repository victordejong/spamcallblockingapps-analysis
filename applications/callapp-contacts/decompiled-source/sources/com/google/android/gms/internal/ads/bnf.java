package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bnf.class */
public final class bnf implements dsi<dbt<String>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cti> f24749a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f24750b;

    private bnf(dsv<cti> dsvVar, dsv<Context> dsvVar2) {
        this.f24749a = dsvVar;
        this.f24750b = dsvVar2;
    }

    public static bnf a(dsv<cti> dsvVar, dsv<Context> dsvVar2) {
        return new bnf(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        dbs dbsVar;
        cti a2 = this.f24749a.a();
        final CookieManager zzbi = zzr.zzkx().zzbi(this.f24750b.a());
        csx a3 = a2.a((cti) ctj.WEBVIEW_COOKIE);
        Callable bnbVar = new Callable(zzbi) { // from class: com.google.android.gms.internal.ads.bnb

            /* renamed from: a  reason: collision with root package name */
            private final CookieManager f24745a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24745a = zzbi;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                CookieManager cookieManager = this.f24745a;
                if (cookieManager == null) {
                    return "";
                }
                return cookieManager.getCookie((String) ekb.e().a(aq.ax));
            }
        };
        dbsVar = a3.f26355a.f26346b;
        csz a4 = a3.a(bnbVar, dbsVar).a(1L, TimeUnit.SECONDS);
        final css cssVar = bne.f24748a;
        return (dbt) dso.b(a4.a(Exception.class, new daq(cssVar) { // from class: com.google.android.gms.internal.ads.ctf

            /* renamed from: a  reason: collision with root package name */
            private final css f26369a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26369a = cssVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return dbh.a(this.f26369a.a((Throwable) obj));
            }
        }).a());
    }
}
