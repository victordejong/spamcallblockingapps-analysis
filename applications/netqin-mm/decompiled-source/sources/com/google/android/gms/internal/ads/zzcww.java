package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import p131c.p161d.p170b.p224d.p252g.p253a.BinderC4298zp;
import p131c.p161d.p170b.p224d.p252g.p253a.C3739kp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcww.class */
public final class zzcww implements zzcti<zzcjg, zzaph, zzcuu> {

    /* renamed from: a */
    public final Context f26683a;

    /* renamed from: b */
    public final zzcjj f26684b;

    public zzcww(Context context, zzcjj zzcjjVar) {
        this.f26683a = context;
        this.f26684b = zzcjjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: a */
    public final /* synthetic */ zzcjg mo13807a(zzdog zzdogVar, zzdnv zzdnvVar, zzctc<zzaph, zzcuu> zzctcVar) throws zzdos, zzcwn {
        C3739kp kpVar = new C3739kp(zzdnvVar, zzctcVar.f26497b, true);
        zzcji a = this.f26684b.mo14139a(new zzbre(zzdogVar, zzdnvVar, zzctcVar.f26496a), new zzcjh(kpVar));
        kpVar.m26708a(a.mo15160d());
        zzctcVar.f26498c.m13836a((zzanh) a.mo14141n());
        return a.mo14144k();
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: b */
    public final void mo13806b(zzdog zzdogVar, zzdnv zzdnvVar, zzctc<zzaph, zzcuu> zzctcVar) throws zzdos {
        try {
            zzctcVar.f26497b.mo16465t(zzdnvVar.f27574U);
            if (zzdogVar.f27633a.f27632a.f27652n.f27623a == zzdoc.f27626c) {
                zzctcVar.f26497b.mo16471b(zzdnvVar.f27568O, zzdnvVar.f27605u.toString(), zzdogVar.f27633a.f27632a.f27642d, ObjectWrapper.m17020a(this.f26683a), new BinderC4298zp(this, zzctcVar), zzctcVar.f26498c);
            } else {
                zzctcVar.f26497b.mo16473a(zzdnvVar.f27568O, zzdnvVar.f27605u.toString(), zzdogVar.f27633a.f27632a.f27642d, ObjectWrapper.m17020a(this.f26683a), new BinderC4298zp(this, zzctcVar), zzctcVar.f26498c);
            }
        } catch (RemoteException e) {
            zzayp.m16154e("Remote exception loading a rewarded RTB ad", e);
        }
    }
}
