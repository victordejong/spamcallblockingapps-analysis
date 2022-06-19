package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgh.class */
public final class cgh implements chb<cgi> {

    /* renamed from: a */
    final C13019wo f45723a;

    /* renamed from: b */
    final Context f45724b;

    /* renamed from: c */
    private final dbs f45725c;

    public cgh(C13019wo c13019wo, dbs dbsVar, Context context) {
        this.f45723a = c13019wo;
        this.f45725c = dbsVar;
        this.f45724b = context;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cgi> mo17449a() {
        return this.f45725c.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cgk

            /* renamed from: a */
            private final cgh f45734a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45734a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Long l;
                cgh cghVar = this.f45734a;
                if (!cghVar.f45723a.m14044a(cghVar.f45724b)) {
                    return new cgi(null, null, null, null, null);
                }
                String m14028d = cghVar.f45723a.m14028d(cghVar.f45724b);
                if (m14028d == null) {
                    m14028d = "";
                }
                String m14026e = cghVar.f45723a.m14026e(cghVar.f45724b);
                if (m14026e == null) {
                    m14026e = "";
                }
                String m14024f = cghVar.f45723a.m14024f(cghVar.f45724b);
                if (m14024f == null) {
                    m14024f = "";
                }
                String m14023g = cghVar.f45723a.m14023g(cghVar.f45724b);
                if (m14023g == null) {
                    m14023g = "";
                }
                if ("TIME_OUT".equals(m14026e)) {
                    l = (Long) ekb.m14831e().m18571a(C12187aq.f42635Y);
                } else {
                    l = null;
                }
                return new cgi(m14028d, m14026e, m14024f, m14023g, l);
            }
        });
    }
}
