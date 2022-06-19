package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwo.class */
public class bwo extends bxr {

    /* renamed from: a */
    private ays f44960a;

    public bwo(arj arjVar, asc ascVar, asp aspVar, ata ataVar, ars arsVar, avz avzVar, ayz ayzVar, atj atjVar, ays aysVar, avr avrVar) {
        super(arjVar, ascVar, aspVar, ataVar, avzVar, atjVar, ayzVar, avrVar, arsVar);
        this.f44960a = aysVar;
    }

    @Override // com.google.android.gms.internal.ads.bxr, com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14429a(AbstractC12962ul abstractC12962ul) throws RemoteException {
        super.mo14429a(abstractC12962ul);
        this.f44960a.mo14603a(new zzavy(abstractC12962ul.mo14076a(), abstractC12962ul.mo14075b()));
    }

    @Override // com.google.android.gms.internal.ads.bxr, com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14428a(zzavy zzavyVar) {
        super.mo14428a(zzavyVar);
        this.f44960a.mo14603a(zzavyVar);
    }

    @Override // com.google.android.gms.internal.ads.bxr, com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: g */
    public final void mo14416g() {
        this.f44960a.mo14602b();
    }

    @Override // com.google.android.gms.internal.ads.bxr, com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: h */
    public final void mo14415h() {
        this.f44960a.mo14604a();
    }

    @Override // com.google.android.gms.internal.ads.bxr, com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: j */
    public final void mo14413j() throws RemoteException {
        this.f44960a.mo14602b();
    }
}
