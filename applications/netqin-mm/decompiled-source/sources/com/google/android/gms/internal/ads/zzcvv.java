package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import p131c.p161d.p170b.p224d.p252g.p253a.BinderC4075tp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvv.class */
public final class zzcvv implements zzcti<zzcdx, zzaph, zzcuu> {

    /* renamed from: a */
    public final Context f26607a;

    /* renamed from: b */
    public final zzcda f26608b;

    /* renamed from: c */
    public zzanu f26609c;

    public zzcvv(Context context, zzcda zzcdaVar) {
        this.f26607a = context;
        this.f26608b = zzcdaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: a */
    public final /* synthetic */ zzcdx mo13807a(zzdog zzdogVar, zzdnv zzdnvVar, zzctc<zzaph, zzcuu> zzctcVar) throws zzdos, zzcwn {
        if (zzdogVar.f27633a.f27632a.f27645g.contains(Integer.toString(6))) {
            zzcei a = zzcei.m14713a(this.f26609c);
            if (zzdogVar.f27633a.f27632a.f27645g.contains(Integer.toString(a.m14682o()))) {
                zzcej a2 = this.f26608b.mo14790a(new zzbre(zzdogVar, zzdnvVar, zzctcVar.f26496a), new zzceu(a), new zzcgf(null, null, this.f26609c));
                zzctcVar.f26498c.m13836a((zzanh) a2.mo15157g());
                return a2.mo14727h();
            }
            throw new zzcwn(zzdpg.INTERNAL_ERROR, "No corresponding native ad listener");
        }
        throw new zzcwn(zzdpg.INVALID_REQUEST, "Unified must be used for RTB.");
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: b */
    public final void mo13806b(zzdog zzdogVar, zzdnv zzdnvVar, zzctc<zzaph, zzcuu> zzctcVar) throws zzdos {
        try {
            zzctcVar.f26497b.mo16465t(zzdnvVar.f27574U);
            zzctcVar.f26497b.mo16474a(zzdnvVar.f27568O, zzdnvVar.f27605u.toString(), zzdogVar.f27633a.f27632a.f27642d, ObjectWrapper.m17020a(this.f26607a), new BinderC4075tp(this, zzctcVar, null), zzctcVar.f26498c);
        } catch (RemoteException e) {
            throw new zzdos(e);
        }
    }
}
