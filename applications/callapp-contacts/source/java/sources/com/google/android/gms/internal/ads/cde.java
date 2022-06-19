package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cde.class */
public final class cde implements chb<Object> {

    /* renamed from: f */
    static final Object f45548f = new Object();

    /* renamed from: a */
    final String f45549a;

    /* renamed from: b */
    final String f45550b;

    /* renamed from: c */
    final apf f45551c;

    /* renamed from: d */
    final cqm f45552d;

    /* renamed from: e */
    final cpo f45553e;

    /* renamed from: g */
    final zzf f45554g = zzr.zzkz().m13975d();

    public cde(String str, String str2, apf apfVar, cqm cqmVar, cpo cpoVar) {
        this.f45549a = str;
        this.f45550b = str2;
        this.f45551c = apfVar;
        this.f45552d = cqmVar;
        this.f45553e = cpoVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<Object> mo17449a() {
        Bundle bundle = new Bundle();
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42833dk)).booleanValue()) {
            this.f45551c.m18494a(this.f45553e.f46324d);
            bundle.putAll(this.f45552d.m17320a());
        }
        return dbh.m16899a(new cgy(this, bundle) { // from class: com.google.android.gms.internal.ads.cdh

            /* renamed from: a */
            private final cde f45562a;

            /* renamed from: b */
            private final Bundle f45563b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45562a = this;
                this.f45563b = bundle;
            }

            @Override // com.google.android.gms.internal.ads.cgy
            /* renamed from: a */
            public final void mo17450a(Object obj) {
                cde cdeVar = this.f45562a;
                Bundle bundle2 = this.f45563b;
                Bundle bundle3 = (Bundle) obj;
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42833dk)).booleanValue()) {
                    bundle3.putBundle("quality_signals", bundle2);
                } else {
                    if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42832dj)).booleanValue()) {
                        synchronized (cde.f45548f) {
                            cdeVar.f45551c.m18494a(cdeVar.f45553e.f46324d);
                            bundle3.putBundle("quality_signals", cdeVar.f45552d.m17320a());
                        }
                    } else {
                        cdeVar.f45551c.m18494a(cdeVar.f45553e.f46324d);
                        bundle3.putBundle("quality_signals", cdeVar.f45552d.m17320a());
                    }
                }
                bundle3.putString("seq_num", cdeVar.f45549a);
                bundle3.putString("session_id", cdeVar.f45554g.zzzn() ? "" : cdeVar.f45550b);
            }
        });
    }
}
