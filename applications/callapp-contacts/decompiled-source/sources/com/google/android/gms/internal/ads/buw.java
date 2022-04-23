package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/buw.class */
public final class buw implements bss<azi, os, buh> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f25166a;

    /* renamed from: b  reason: collision with root package name */
    private final bai f25167b;

    public buw(Context context, bai baiVar) {
        this.f25166a = context;
        this.f25167b = baiVar;
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final void a(cpk cpkVar, cov covVar, bsn<os, buh> bsnVar) throws zzdpq {
        try {
            bsnVar.f25013b.a(covVar.T);
            bsnVar.f25013b.a(covVar.O, covVar.u.toString(), cpkVar.f26221a.f26209a.f26227d, d.a(this.f25166a), new buy(this, bsnVar), bsnVar.f25014c);
        } catch (RemoteException e) {
            throw new zzdpq(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final /* synthetic */ azi b(cpk cpkVar, cov covVar, bsn<os, buh> bsnVar) throws zzdpq, zzcwo {
        bus busVar = new bus(covVar, bsnVar.f25013b, false);
        azk a2 = this.f25167b.a(new aof(cpkVar, covVar, bsnVar.f25012a), new azj(busVar));
        busVar.f25156a = a2.d();
        bsnVar.f25014c.a((ms) a2.g());
        return a2.h();
    }
}
