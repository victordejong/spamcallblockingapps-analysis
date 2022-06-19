package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/buw.class */
public final class buw implements bss<azi, AbstractC12807os, buh> {

    /* renamed from: a */
    private final Context f44820a;

    /* renamed from: b */
    private final bai f44821b;

    public buw(Context context, bai baiVar) {
        this.f44820a = context;
        this.f44821b = baiVar;
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: a */
    public final void mo17593a(cpk cpkVar, cov covVar, bsn<AbstractC12807os, buh> bsnVar) throws zzdpq {
        try {
            bsnVar.f44640b.mo14277a(covVar.f46240T);
            bsnVar.f44640b.mo14274a(covVar.f46235O, covVar.f46274u.toString(), cpkVar.f46318a.f46306a.f46324d, BinderC12129d.m18979a(this.f44820a), new buy(this, bsnVar), bsnVar.f44641c);
        } catch (RemoteException e) {
            throw new zzdpq(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: b */
    public final /* synthetic */ azi mo17592b(cpk cpkVar, cov covVar, bsn<AbstractC12807os, buh> bsnVar) throws zzdpq, zzcwo {
        C12254bus c12254bus = new C12254bus(covVar, bsnVar.f44640b, false);
        azk mo18274a = this.f44821b.mo18274a(new aof(cpkVar, covVar, bsnVar.f44639a), new azj(c12254bus));
        c12254bus.f44810a = mo18274a.mo18525d();
        bsnVar.f44641c.m17606a((AbstractC12752ms) mo18274a.mo18522g());
        return mo18274a.mo18308h();
    }
}
