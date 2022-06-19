package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bqx.class */
public final class bqx implements bmy<bdr, chs, boe> {

    /* renamed from: a */
    private final Context f11860a;

    /* renamed from: b */
    private final Executor f11861b;

    /* renamed from: c */
    private final bdu f11862c;

    public bqx(Context context, Executor executor, bdu bduVar) {
        this.f11860a = context;
        this.f11861b = executor;
        this.f11862c = bduVar;
    }

    /* renamed from: c */
    public static void m11707c(chd chdVar, cgr cgrVar, bmx<chs, boe> bmxVar) {
        try {
            bmxVar.f11571b.m11283a(chdVar.f13034a.f13017a.f13040d, cgrVar.f12997s.toString());
        } catch (Exception e) {
            String valueOf = String.valueOf(bmxVar.f11570a);
            C3556uu.m6746d(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: a */
    public final void mo11709a(chd chdVar, cgr cgrVar, bmx<chs, boe> bmxVar) {
        if (bmxVar.f11571b.m11273g()) {
            m11707c(chdVar, cgrVar, bmxVar);
            return;
        }
        bmxVar.f11572c.m11745a(new bqz(this, chdVar, cgrVar, bmxVar));
        bmxVar.f11571b.m11290a(this.f11860a, chdVar.f13034a.f13017a.f13040d, (String) null, bmxVar.f11572c, cgrVar.f12997s.toString());
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: b */
    public final /* synthetic */ bdr mo11708b(chd chdVar, cgr cgrVar, bmx<chs, boe> bmxVar) {
        bdt mo12053a = this.f11862c.mo12053a(new amy(chdVar, cgrVar, bmxVar.f11570a), new bds(new awx(bmxVar) { // from class: com.google.android.gms.internal.ads.bra

            /* renamed from: a */
            private final bmx f11876a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11876a = bmxVar;
            }

            @Override // com.google.android.gms.internal.ads.awx
            /* renamed from: a */
            public final void mo11680a(boolean z, Context context) {
                bmx bmxVar2 = this.f11876a;
                try {
                    ((chs) bmxVar2.f11571b).m11282a(z);
                    ((chs) bmxVar2.f11571b).m11274f();
                } catch (zzdhk e) {
                    C3556uu.m6746d("Cannot show rewarded video.", e);
                    throw new zzbxy(e.getCause());
                }
            }
        }));
        mo12053a.mo12944a().m12773a((aqk) new aio(bmxVar.f11571b), this.f11861b);
        aqq mo12943b = mo12053a.mo12943b();
        apo mo12942c = mo12053a.mo12942c();
        bmxVar.f11572c.m11744a((AbstractC3467rm) new brb(this, mo12053a.mo12059i(), mo12942c, mo12943b, mo12053a.mo12057k()));
        return mo12053a.mo12060h();
    }
}
