package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC2734b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bqh.class */
public final class bqh implements bmy<bdr, AbstractC3333mn, bof> {

    /* renamed from: a */
    private final Context f11816a;

    /* renamed from: b */
    private final bdu f11817b;

    public bqh(Context context, bdu bduVar) {
        this.f11816a = context;
        this.f11817b = bduVar;
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: a */
    public final void mo11709a(chd chdVar, cgr cgrVar, bmx<AbstractC3333mn, bof> bmxVar) {
        try {
            bmxVar.f11571b.mo7452a(cgrVar.f12971Q);
            if (chdVar.f13034a.f13017a.f13050n.f13011a == cgy.f13020c) {
                bmxVar.f11571b.mo7441b(cgrVar.f12965K, cgrVar.f12997s.toString(), chdVar.f13034a.f13017a.f13040d, BinderC2734b.m13794a(this.f11816a), new bqj(this, bmxVar), bmxVar.f11572c);
            } else {
                bmxVar.f11571b.mo7447a(cgrVar.f12965K, cgrVar.f12997s.toString(), chdVar.f13034a.f13017a.f13040d, BinderC2734b.m13794a(this.f11816a), new bqj(this, bmxVar), bmxVar.f11572c);
            }
        } catch (RemoteException e) {
            C3556uu.m7051a("Remote exception loading a rewarded RTB ad", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: b */
    public final /* synthetic */ bdr mo11708b(chd chdVar, cgr cgrVar, bmx<AbstractC3333mn, bof> bmxVar) {
        boq boqVar = new boq(cgrVar, bmxVar.f11571b, true);
        bdt mo12053a = this.f11817b.mo12053a(new amy(chdVar, cgrVar, bmxVar.f11570a), new bds(boqVar));
        boqVar.m11739a(mo12053a.mo12941d());
        bmxVar.f11572c.m11742a((AbstractC3286ku) mo12053a.mo12054n());
        return mo12053a.mo12060h();
    }
}
