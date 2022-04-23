package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgh.class */
public final class cgh implements chb<cgi> {

    /* renamed from: a  reason: collision with root package name */
    final wo f25781a;

    /* renamed from: b  reason: collision with root package name */
    final Context f25782b;

    /* renamed from: c  reason: collision with root package name */
    private final dbs f25783c;

    public cgh(wo woVar, dbs dbsVar, Context context) {
        this.f25781a = woVar;
        this.f25783c = dbsVar;
        this.f25782b = context;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cgi> a() {
        return this.f25783c.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cgk

            /* renamed from: a  reason: collision with root package name */
            private final cgh f25791a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25791a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Long l;
                cgh cghVar = this.f25791a;
                if (!cghVar.f25781a.a(cghVar.f25782b)) {
                    return new cgi(null, null, null, null, null);
                }
                String d2 = cghVar.f25781a.d(cghVar.f25782b);
                if (d2 == null) {
                    d2 = "";
                }
                String e = cghVar.f25781a.e(cghVar.f25782b);
                if (e == null) {
                    e = "";
                }
                String f = cghVar.f25781a.f(cghVar.f25782b);
                if (f == null) {
                    f = "";
                }
                String g = cghVar.f25781a.g(cghVar.f25782b);
                if (g == null) {
                    g = "";
                }
                if ("TIME_OUT".equals(e)) {
                    l = (Long) ekb.e().a(aq.Y);
                } else {
                    l = null;
                }
                return new cgi(d2, e, f, g, l);
            }
        });
    }
}
