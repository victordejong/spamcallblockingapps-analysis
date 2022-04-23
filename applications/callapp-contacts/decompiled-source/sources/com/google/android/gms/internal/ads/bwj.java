package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwj.class */
public final class bwj implements bss<bhu, os, buh> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f25271a;

    /* renamed from: b  reason: collision with root package name */
    private final bhx f25272b;

    public bwj(Context context, bhx bhxVar) {
        this.f25271a = context;
        this.f25272b = bhxVar;
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final void a(cpk cpkVar, cov covVar, bsn<os, buh> bsnVar) throws zzdpq {
        try {
            bsnVar.f25013b.a(covVar.T);
            if (cpkVar.f26221a.f26209a.o.f26202a == cpg.f26212c) {
                bsnVar.f25013b.b(covVar.O, covVar.u.toString(), cpkVar.f26221a.f26209a.f26227d, d.a(this.f25271a), new bwl(this, bsnVar), bsnVar.f25014c);
            } else {
                bsnVar.f25013b.a(covVar.O, covVar.u.toString(), cpkVar.f26221a.f26209a.f26227d, d.a(this.f25271a), new bwl(this, bsnVar), bsnVar.f25014c);
            }
        } catch (RemoteException e) {
            zzd.zza("Remote exception loading a rewarded RTB ad", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final /* synthetic */ bhu b(cpk cpkVar, cov covVar, bsn<os, buh> bsnVar) throws zzdpq, zzcwo {
        bus busVar = new bus(covVar, bsnVar.f25013b, true);
        bhw a2 = this.f25272b.a(new aof(cpkVar, covVar, bsnVar.f25012a), new bhv(busVar));
        busVar.f25156a = a2.d();
        bsnVar.f25014c.a((ms) a2.n());
        return a2.h();
    }
}
