package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvj.class */
public final class bvj implements bss<bcf, AbstractC12807os, buh> {

    /* renamed from: a */
    AbstractC12769nh f44851a;

    /* renamed from: b */
    private final Context f44852b;

    /* renamed from: c */
    private final bbe f44853c;

    /* renamed from: d */
    private final zzbar f44854d;

    public bvj(Context context, bbe bbeVar, zzbar zzbarVar) {
        this.f44852b = context;
        this.f44853c = bbeVar;
        this.f44854d = zzbarVar;
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: a */
    public final void mo17593a(cpk cpkVar, cov covVar, bsn<AbstractC12807os, buh> bsnVar) throws zzdpq {
        try {
            bsnVar.f44640b.mo14277a(covVar.f46240T);
            if (this.f44854d.zzekb < ((Integer) ekb.m14831e().m18571a(C12187aq.f42721be)).intValue()) {
                bsnVar.f44640b.mo14273a(covVar.f46235O, covVar.f46274u.toString(), cpkVar.f46318a.f46306a.f46324d, BinderC12129d.m18979a(this.f44852b), new bvl(this, bsnVar), bsnVar.f44641c);
            } else {
                bsnVar.f44640b.mo14272a(covVar.f46235O, covVar.f46274u.toString(), cpkVar.f46318a.f46306a.f46324d, BinderC12129d.m18979a(this.f44852b), new bvl(this, bsnVar), bsnVar.f44641c, cpkVar.f46318a.f46306a.f46329i);
            }
        } catch (RemoteException e) {
            throw new zzdpq(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: b */
    public final /* synthetic */ bcf mo17592b(cpk cpkVar, cov covVar, bsn<AbstractC12807os, buh> bsnVar) throws zzdpq, zzcwo {
        if (cpkVar.f46318a.f46306a.f46327g.contains(Integer.toString(6))) {
            bcr m18183a = bcr.m18183a(this.f44851a);
            if (!cpkVar.f46318a.f46306a.f46327g.contains(Integer.toString(m18183a.m18198a()))) {
                throw new zzcwo(cqj.INTERNAL_ERROR, "No corresponding native ad listener");
            }
            bcs mo18252a = this.f44853c.mo18252a(new aof(cpkVar, covVar, bsnVar.f44639a), new bde(m18183a), new beq(null, null, this.f44851a));
            bsnVar.f44641c.m17606a((AbstractC12752ms) mo18252a.mo18522g());
            return mo18252a.mo18202h();
        }
        throw new zzcwo(cqj.INVALID_REQUEST, "Unified must be used for RTB.");
    }
}
