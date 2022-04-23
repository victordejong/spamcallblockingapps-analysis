package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.dynamic.d;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvh.class */
public final class bvh implements bss<bcf, cqe, buh> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f25188a;

    /* renamed from: b  reason: collision with root package name */
    private final bbe f25189b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f25190c;

    public bvh(Context context, bbe bbeVar, Executor executor) {
        this.f25188a = context;
        this.f25189b = bbeVar;
        this.f25190c = executor;
    }

    private static boolean a(cpk cpkVar, int i) {
        return cpkVar.f26221a.f26209a.g.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final void a(cpk cpkVar, cov covVar, bsn<cqe, buh> bsnVar) throws zzdpq {
        cqe cqeVar = bsnVar.f25013b;
        Context context = this.f25188a;
        try {
            cqeVar.f26255a.a(d.a(context), cpkVar.f26221a.f26209a.f26227d, covVar.u.toString(), zzbh.zza(covVar.r), bsnVar.f25014c, cpkVar.f26221a.f26209a.i, cpkVar.f26221a.f26209a.g);
        } catch (Throwable th) {
            throw new zzdpq(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final /* synthetic */ bcf b(cpk cpkVar, cov covVar, bsn<cqe, buh> bsnVar) throws zzdpq, zzcwo {
        bcr bcrVar;
        nb d2 = bsnVar.f25013b.d();
        nc e = bsnVar.f25013b.e();
        nh h = bsnVar.f25013b.h();
        if (h != null && a(cpkVar, 6)) {
            bcrVar = bcr.a(h);
        } else if (d2 != null && a(cpkVar, 6)) {
            bcrVar = bcr.b(d2);
        } else if (d2 != null && a(cpkVar, 2)) {
            bcrVar = bcr.a(d2);
        } else if (e != null && a(cpkVar, 6)) {
            bcrVar = bcr.b(e);
        } else if (e == null || !a(cpkVar, 1)) {
            throw new zzcwo(cqj.INTERNAL_ERROR, "No native ad mappers");
        } else {
            bcrVar = bcr.a(e);
        }
        if (cpkVar.f26221a.f26209a.g.contains(Integer.toString(bcrVar.a()))) {
            bcs a2 = this.f25189b.a(new aof(cpkVar, covVar, bsnVar.f25012a), new bde(bcrVar), new beq(e, d2, h));
            bsnVar.f25014c.a((ms) a2.f());
            a2.a().a(new aji(bsnVar.f25013b), this.f25190c);
            return a2.h();
        }
        throw new zzcwo(cqj.INTERNAL_ERROR, "No corresponding native ad listener");
    }
}
