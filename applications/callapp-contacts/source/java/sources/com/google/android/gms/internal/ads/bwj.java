package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwj.class */
public final class bwj implements bss<bhu, AbstractC12807os, buh> {

    /* renamed from: a */
    private final Context f44940a;

    /* renamed from: b */
    private final bhx f44941b;

    public bwj(Context context, bhx bhxVar) {
        this.f44940a = context;
        this.f44941b = bhxVar;
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: a */
    public final void mo17593a(cpk cpkVar, cov covVar, bsn<AbstractC12807os, buh> bsnVar) throws zzdpq {
        try {
            bsnVar.f44640b.mo14277a(covVar.f46240T);
            if (cpkVar.f46318a.f46306a.f46335o.f46299a == cpg.f46309c) {
                bsnVar.f44640b.mo14264b(covVar.f46235O, covVar.f46274u.toString(), cpkVar.f46318a.f46306a.f46324d, BinderC12129d.m18979a(this.f44940a), new bwl(this, bsnVar), bsnVar.f44641c);
            } else {
                bsnVar.f44640b.mo14271a(covVar.f46235O, covVar.f46274u.toString(), cpkVar.f46318a.f46306a.f46324d, BinderC12129d.m18979a(this.f44940a), new bwl(this, bsnVar), bsnVar.f44641c);
            }
        } catch (RemoteException e) {
            zzd.zza("Remote exception loading a rewarded RTB ad", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: b */
    public final /* synthetic */ bhu mo17592b(cpk cpkVar, cov covVar, bsn<AbstractC12807os, buh> bsnVar) throws zzdpq, zzcwo {
        C12254bus c12254bus = new C12254bus(covVar, bsnVar.f44640b, true);
        bhw mo17840a = this.f44941b.mo17840a(new aof(cpkVar, covVar, bsnVar.f44639a), new bhv(c12254bus));
        c12254bus.f44810a = mo17840a.mo18525d();
        bsnVar.f44641c.m17606a((AbstractC12752ms) mo17840a.mo17841n());
        return mo17840a.mo17847h();
    }
}
