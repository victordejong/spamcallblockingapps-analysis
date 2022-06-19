package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC2734b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bou.class */
public final class bou implements bmy<avq, AbstractC3333mn, bof> {

    /* renamed from: a */
    private final Context f11706a;

    /* renamed from: b */
    private final awq f11707b;

    public bou(Context context, awq awqVar) {
        this.f11706a = context;
        this.f11707b = awqVar;
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: a */
    public final void mo11709a(chd chdVar, cgr cgrVar, bmx<AbstractC3333mn, bof> bmxVar) {
        try {
            bmxVar.f11571b.mo7452a(cgrVar.f12971Q);
            bmxVar.f11571b.mo7449a(cgrVar.f12965K, cgrVar.f12997s.toString(), chdVar.f13034a.f13017a.f13040d, BinderC2734b.m13794a(this.f11706a), new bow(this, bmxVar), bmxVar.f11572c);
        } catch (RemoteException e) {
            throw new zzdhk(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: b */
    public final /* synthetic */ avq mo11708b(chd chdVar, cgr cgrVar, bmx<AbstractC3333mn, bof> bmxVar) {
        boq boqVar = new boq(cgrVar, bmxVar.f11571b, false);
        avs mo12372a = this.f11707b.mo12372a(new amy(chdVar, cgrVar, bmxVar.f11570a), new avv(boqVar));
        boqVar.m11739a(mo12372a.mo12941d());
        bmxVar.f11572c.m11742a((AbstractC3286ku) mo12372a.mo12938g());
        return mo12372a.mo12403h();
    }
}
