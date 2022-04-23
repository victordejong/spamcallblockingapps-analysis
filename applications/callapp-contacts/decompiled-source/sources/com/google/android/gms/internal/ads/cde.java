package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cde.class */
public final class cde implements chb<Object> {
    static final Object f = new Object();

    /* renamed from: a  reason: collision with root package name */
    final String f25621a;

    /* renamed from: b  reason: collision with root package name */
    final String f25622b;

    /* renamed from: c  reason: collision with root package name */
    final apf f25623c;

    /* renamed from: d  reason: collision with root package name */
    final cqm f25624d;
    final cpo e;
    final zzf g = zzr.zzkz().d();

    public cde(String str, String str2, apf apfVar, cqm cqmVar, cpo cpoVar) {
        this.f25621a = str;
        this.f25622b = str2;
        this.f25623c = apfVar;
        this.f25624d = cqmVar;
        this.e = cpoVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<Object> a() {
        final Bundle bundle = new Bundle();
        if (((Boolean) ekb.e().a(aq.dk)).booleanValue()) {
            this.f25623c.a(this.e.f26227d);
            bundle.putAll(this.f25624d.a());
        }
        return dbh.a(new cgy(this, bundle) { // from class: com.google.android.gms.internal.ads.cdh

            /* renamed from: a  reason: collision with root package name */
            private final cde f25631a;

            /* renamed from: b  reason: collision with root package name */
            private final Bundle f25632b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25631a = this;
                this.f25632b = bundle;
            }

            @Override // com.google.android.gms.internal.ads.cgy
            public final void a(Object obj) {
                cde cdeVar = this.f25631a;
                Bundle bundle2 = this.f25632b;
                Bundle bundle3 = (Bundle) obj;
                if (((Boolean) ekb.e().a(aq.dk)).booleanValue()) {
                    bundle3.putBundle("quality_signals", bundle2);
                } else {
                    if (((Boolean) ekb.e().a(aq.dj)).booleanValue()) {
                        synchronized (cde.f) {
                            cdeVar.f25623c.a(cdeVar.e.f26227d);
                            bundle3.putBundle("quality_signals", cdeVar.f25624d.a());
                        }
                    } else {
                        cdeVar.f25623c.a(cdeVar.e.f26227d);
                        bundle3.putBundle("quality_signals", cdeVar.f25624d.a());
                    }
                }
                bundle3.putString("seq_num", cdeVar.f25621a);
                bundle3.putString("session_id", cdeVar.g.zzzn() ? "" : cdeVar.f25622b);
            }
        });
    }
}
