package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC2734b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bph.class */
public final class bph implements bmy<aym, AbstractC3333mn, bof> {

    /* renamed from: a */
    private final Context f11737a;

    /* renamed from: b */
    private final axo f11738b;

    /* renamed from: c */
    private AbstractC3297le f11739c;

    public bph(Context context, axo axoVar) {
        this.f11737a = context;
        this.f11738b = axoVar;
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: a */
    public final void mo11709a(chd chdVar, cgr cgrVar, bmx<AbstractC3333mn, bof> bmxVar) {
        try {
            bmxVar.f11571b.mo7452a(cgrVar.f12971Q);
            bmxVar.f11571b.mo7448a(cgrVar.f12965K, cgrVar.f12997s.toString(), chdVar.f13034a.f13017a.f13040d, BinderC2734b.m13794a(this.f11737a), new bpj(this, bmxVar), bmxVar.f11572c);
        } catch (RemoteException e) {
            throw new zzdhk(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: b */
    public final /* synthetic */ aym mo11708b(chd chdVar, cgr cgrVar, bmx<AbstractC3333mn, bof> bmxVar) {
        if (!chdVar.f13034a.f13017a.f13043g.contains(Integer.toString(6))) {
            throw new zzcqm("Unified must be used for RTB.", 1);
        }
        ayx m12268a = ayx.m12268a(this.f11739c);
        if (!chdVar.f13034a.f13017a.f13043g.contains(Integer.toString(m12268a.m12283a()))) {
            throw new zzcqm("No corresponding native ad listener", 0);
        }
        ayy mo12346a = this.f11738b.mo12346a(new amy(chdVar, cgrVar, bmxVar.f11570a), new azl(m12268a), new bap(null, null, this.f11739c));
        bmxVar.f11572c.m11742a((AbstractC3286ku) mo12346a.mo12938g());
        return mo12346a.mo12287h();
    }
}
