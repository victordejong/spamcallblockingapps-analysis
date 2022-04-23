package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwo.class */
public class bwo extends bxr {

    /* renamed from: a  reason: collision with root package name */
    private ays f25284a;

    public bwo(arj arjVar, asc ascVar, asp aspVar, ata ataVar, ars arsVar, avz avzVar, ayz ayzVar, atj atjVar, ays aysVar, avr avrVar) {
        super(arjVar, ascVar, aspVar, ataVar, avzVar, atjVar, ayzVar, avrVar, arsVar);
        this.f25284a = aysVar;
    }

    @Override // com.google.android.gms.internal.ads.bxr, com.google.android.gms.internal.ads.ms
    public final void a(ul ulVar) throws RemoteException {
        super.a(ulVar);
        this.f25284a.a(new zzavy(ulVar.a(), ulVar.b()));
    }

    @Override // com.google.android.gms.internal.ads.bxr, com.google.android.gms.internal.ads.ms
    public final void a(zzavy zzavyVar) {
        super.a(zzavyVar);
        this.f25284a.a(zzavyVar);
    }

    @Override // com.google.android.gms.internal.ads.bxr, com.google.android.gms.internal.ads.ms
    public final void g() {
        this.f25284a.b();
    }

    @Override // com.google.android.gms.internal.ads.bxr, com.google.android.gms.internal.ads.ms
    public final void h() {
        this.f25284a.a();
    }

    @Override // com.google.android.gms.internal.ads.bxr, com.google.android.gms.internal.ads.ms
    public final void j() throws RemoteException {
        this.f25284a.b();
    }
}
