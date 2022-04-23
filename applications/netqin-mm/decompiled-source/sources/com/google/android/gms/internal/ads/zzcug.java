package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzctc;
import com.google.android.gms.internal.ads.zzcug;
import com.google.android.gms.internal.ads.zzyo;
import p131c.p161d.p170b.p224d.p252g.p253a.BinderC4222xo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcug.class */
public final class zzcug implements zzcti<zzboq, zzaph, zzcuu> {

    /* renamed from: a */
    public final Context f26543a;

    /* renamed from: b */
    public final zzbpm f26544b;

    /* renamed from: c */
    public View f26545c;

    public zzcug(Context context, zzbpm zzbpmVar) {
        this.f26543a = context;
        this.f26544b = zzbpmVar;
    }

    /* renamed from: a */
    public static final /* synthetic */ zzyo m13858a(zzctc zzctcVar) throws zzdos {
        try {
            return ((zzaph) zzctcVar.f26497b).getVideoController();
        } catch (RemoteException e) {
            throw new zzdos(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: a */
    public final /* synthetic */ zzboq mo13807a(zzdog zzdogVar, zzdnv zzdnvVar, final zzctc<zzaph, zzcuu> zzctcVar) throws zzdos, zzcwn {
        zzbop a = this.f26544b.mo15206a(new zzbre(zzdogVar, zzdnvVar, zzctcVar.f26496a), new zzbot(this.f26545c, null, new zzbql(zzctcVar) { // from class: c.d.b.d.g.a.wo

            /* renamed from: a */
            public final zzctc f15965a;

            {
                this.f15965a = zzctcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbql
            public final zzyo getVideoController() {
                return zzcug.m13858a(this.f15965a);
            }
        }, zzdnvVar.f27604t.get(0)));
        a.mo15230j().m14866a(this.f26545c);
        zzctcVar.f26498c.m13836a((zzanh) a.mo15157g());
        return a.mo15231i();
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: b */
    public final void mo13806b(zzdog zzdogVar, zzdnv zzdnvVar, zzctc<zzaph, zzcuu> zzctcVar) throws zzdos {
        try {
            zzctcVar.f26497b.mo16465t(zzdnvVar.f27574U);
            zzctcVar.f26497b.mo16476a(zzdnvVar.f27568O, zzdnvVar.f27605u.toString(), zzdogVar.f27633a.f27632a.f27642d, ObjectWrapper.m17020a(this.f26543a), new BinderC4222xo(this, zzctcVar, null), zzctcVar.f26498c, zzdogVar.f27633a.f27632a.f27643e);
        } catch (RemoteException e) {
            throw new zzdos(e);
        }
    }
}
