package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bqc.class */
public final class bqc implements bmy<bdr, chs, bof> {

    /* renamed from: a */
    private final Context f11809a;

    /* renamed from: b */
    private final Executor f11810b;

    /* renamed from: c */
    private final bdu f11811c;

    public bqc(Context context, Executor executor, bdu bduVar) {
        this.f11809a = context;
        this.f11810b = executor;
        this.f11811c = bduVar;
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: a */
    public final void mo11709a(chd chdVar, cgr cgrVar, bmx<chs, bof> bmxVar) {
        try {
            chh chhVar = chdVar.f13034a.f13017a;
            if (chhVar.f13050n.f13011a == cgy.f13020c) {
                bmxVar.f11571b.m11277c(this.f11809a, chhVar.f13040d, cgrVar.f12997s.toString(), bmxVar.f11572c);
            } else {
                bmxVar.f11571b.m11279b(this.f11809a, chhVar.f13040d, cgrVar.f12997s.toString(), bmxVar.f11572c);
            }
        } catch (Exception e) {
            String valueOf = String.valueOf(bmxVar.f11570a);
            C3556uu.m6746d(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: b */
    public final /* synthetic */ bdr mo11708b(chd chdVar, cgr cgrVar, bmx<chs, bof> bmxVar) {
        bdt mo12053a = this.f11811c.mo12053a(new amy(chdVar, cgrVar, bmxVar.f11570a), new bds(new awx(bmxVar) { // from class: com.google.android.gms.internal.ads.bqf

            /* renamed from: a */
            private final bmx f11815a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11815a = bmxVar;
            }

            @Override // com.google.android.gms.internal.ads.awx
            /* renamed from: a */
            public final void mo11680a(boolean z, Context context) {
                bmx bmxVar2 = this.f11815a;
                try {
                    ((chs) bmxVar2.f11571b).m11282a(z);
                    ((chs) bmxVar2.f11571b).m11280b(context);
                } catch (zzdhk e) {
                    throw new zzbxy(e.getCause());
                }
            }
        }));
        mo12053a.mo12944a().m12773a((aqk) new aio(bmxVar.f11571b), this.f11810b);
        bmxVar.f11572c.m11742a((AbstractC3286ku) mo12053a.mo12055m());
        return mo12053a.mo12060h();
    }
}
