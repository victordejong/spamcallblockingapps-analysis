package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvj.class */
public final class bvj implements bss<bcf, os, buh> {

    /* renamed from: a  reason: collision with root package name */
    nh f25195a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f25196b;

    /* renamed from: c  reason: collision with root package name */
    private final bbe f25197c;

    /* renamed from: d  reason: collision with root package name */
    private final zzbar f25198d;

    public bvj(Context context, bbe bbeVar, zzbar zzbarVar) {
        this.f25196b = context;
        this.f25197c = bbeVar;
        this.f25198d = zzbarVar;
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final void a(cpk cpkVar, cov covVar, bsn<os, buh> bsnVar) throws zzdpq {
        try {
            bsnVar.f25013b.a(covVar.T);
            if (this.f25198d.zzekb < ((Integer) ekb.e().a(aq.be)).intValue()) {
                bsnVar.f25013b.a(covVar.O, covVar.u.toString(), cpkVar.f26221a.f26209a.f26227d, d.a(this.f25196b), new bvl(this, bsnVar), bsnVar.f25014c);
            } else {
                bsnVar.f25013b.a(covVar.O, covVar.u.toString(), cpkVar.f26221a.f26209a.f26227d, d.a(this.f25196b), new bvl(this, bsnVar), bsnVar.f25014c, cpkVar.f26221a.f26209a.i);
            }
        } catch (RemoteException e) {
            throw new zzdpq(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final /* synthetic */ bcf b(cpk cpkVar, cov covVar, bsn<os, buh> bsnVar) throws zzdpq, zzcwo {
        if (cpkVar.f26221a.f26209a.g.contains(Integer.toString(6))) {
            bcr a2 = bcr.a(this.f25195a);
            if (cpkVar.f26221a.f26209a.g.contains(Integer.toString(a2.a()))) {
                bcs a3 = this.f25197c.a(new aof(cpkVar, covVar, bsnVar.f25012a), new bde(a2), new beq(null, null, this.f25195a));
                bsnVar.f25014c.a((ms) a3.g());
                return a3.h();
            }
            throw new zzcwo(cqj.INTERNAL_ERROR, "No corresponding native ad listener");
        }
        throw new zzcwo(cqj.INVALID_REQUEST, "Unified must be used for RTB.");
    }
}
