package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.aqz;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/brh.class */
public final class brh<AdT, AdapterT, ListenerT extends aqz> implements bmv<AdT> {

    /* renamed from: a */
    private final bmw<AdapterT, ListenerT> f11891a;

    /* renamed from: b */
    private final bmy<AdT, AdapterT, ListenerT> f11892b;

    /* renamed from: c */
    private final ckz f11893c;

    /* renamed from: d */
    private final crs f11894d;

    public brh(ckz ckzVar, crs crsVar, bmw<AdapterT, ListenerT> bmwVar, bmy<AdT, AdapterT, ListenerT> bmyVar) {
        this.f11893c = ckzVar;
        this.f11894d = crsVar;
        this.f11892b = bmyVar;
        this.f11891a = bmwVar;
    }

    /* renamed from: a */
    public final /* synthetic */ Object m11701a(chd chdVar, cgr cgrVar, bmx bmxVar, Void r9) {
        return this.f11892b.mo11708b(chdVar, cgrVar, bmxVar);
    }

    /* renamed from: a */
    public final /* synthetic */ void m11702a(chd chdVar, cgr cgrVar, bmx bmxVar) {
        this.f11892b.mo11709a(chdVar, cgrVar, bmxVar);
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: a */
    public final boolean mo11690a(chd chdVar, cgr cgrVar) {
        return !cgrVar.f12995q.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [com.google.android.gms.internal.ads.crt] */
    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: b */
    public final crt<AdT> mo11688b(chd chdVar, cgr cgrVar) {
        bmx<AdapterT, ListenerT> bmxVar;
        cki m11153a;
        Iterator<String> it = cgrVar.f12995q.iterator();
        while (true) {
            bmxVar = null;
            if (!it.hasNext()) {
                break;
            }
            try {
                bmxVar = this.f11891a.mo11704a(it.next(), cgrVar.f12997s);
                break;
            } catch (zzdhk e) {
            }
        }
        if (bmxVar == null) {
            m11153a = crg.m10777a((Throwable) new zzcpy("unable to instantiate mediation adapter class"));
        } else {
            C3658yo c3658yo = new C3658yo();
            bmxVar.f11572c.mo11743a(new brm(this, c3658yo));
            if (cgrVar.f12959E) {
                Bundle bundle = chdVar.f13034a.f13017a.f13040d.f16079m;
                Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
                Bundle bundle3 = bundle2;
                if (bundle2 == null) {
                    bundle3 = new Bundle();
                    bundle.putBundle(AdMobAdapter.class.getName(), bundle3);
                }
                bundle3.putBoolean("render_test_ad_label", true);
            }
            m11153a = this.f11893c.m11163a((ckz) ckw.ADAPTER_LOAD_AD_SYN).m11157a(new ckj(this, chdVar, cgrVar, bmxVar) { // from class: com.google.android.gms.internal.ads.brk

                /* renamed from: a */
                private final brh f11900a;

                /* renamed from: b */
                private final chd f11901b;

                /* renamed from: c */
                private final cgr f11902c;

                /* renamed from: d */
                private final bmx f11903d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11900a = this;
                    this.f11901b = chdVar;
                    this.f11902c = cgrVar;
                    this.f11903d = bmxVar;
                }

                @Override // com.google.android.gms.internal.ads.ckj
                /* renamed from: a */
                public final void mo11166a() {
                    this.f11900a.m11702a(this.f11901b, this.f11902c, this.f11903d);
                }
            }, this.f11894d).m11145a((ckr<?>) ckw.ADAPTER_LOAD_AD_ACK).m11148a((crt) c3658yo).m11145a((ckr) ckw.ADAPTER_WRAP_ADAPTER).m11151a(new ckg(this, chdVar, cgrVar, bmxVar) { // from class: com.google.android.gms.internal.ads.brj

                /* renamed from: a */
                private final brh f11896a;

                /* renamed from: b */
                private final chd f11897b;

                /* renamed from: c */
                private final cgr f11898c;

                /* renamed from: d */
                private final bmx f11899d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11896a = this;
                    this.f11897b = chdVar;
                    this.f11898c = cgrVar;
                    this.f11899d = bmxVar;
                }

                @Override // com.google.android.gms.internal.ads.ckg
                /* renamed from: a */
                public final Object mo11170a(Object obj) {
                    return this.f11896a.m11701a(this.f11897b, this.f11898c, this.f11899d, (Void) obj);
                }
            }).m11153a();
        }
        return m11153a;
    }
}
