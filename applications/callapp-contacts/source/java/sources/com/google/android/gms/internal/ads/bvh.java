package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvh.class */
public final class bvh implements bss<bcf, cqe, buh> {

    /* renamed from: a */
    private final Context f44844a;

    /* renamed from: b */
    private final bbe f44845b;

    /* renamed from: c */
    private final Executor f44846c;

    public bvh(Context context, bbe bbeVar, Executor executor) {
        this.f44844a = context;
        this.f44845b = bbeVar;
        this.f44846c = executor;
    }

    /* renamed from: a */
    private static boolean m17603a(cpk cpkVar, int i) {
        return cpkVar.f46318a.f46306a.f46327g.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: a */
    public final void mo17593a(cpk cpkVar, cov covVar, bsn<cqe, buh> bsnVar) throws zzdpq {
        cqe cqeVar = bsnVar.f44640b;
        Context context = this.f44844a;
        try {
            cqeVar.f46377a.mo14363a(BinderC12129d.m18979a(context), cpkVar.f46318a.f46306a.f46324d, covVar.f46274u.toString(), zzbh.zza(covVar.f46271r), bsnVar.f44641c, cpkVar.f46318a.f46306a.f46329i, cpkVar.f46318a.f46306a.f46327g);
        } catch (Throwable th) {
            throw new zzdpq(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: b */
    public final /* synthetic */ bcf mo17592b(cpk cpkVar, cov covVar, bsn<cqe, buh> bsnVar) throws zzdpq, zzcwo {
        bcr bcrVar;
        AbstractC12763nb m17331d = bsnVar.f44640b.m17331d();
        AbstractC12764nc m17330e = bsnVar.f44640b.m17330e();
        AbstractC12769nh m17327h = bsnVar.f44640b.m17327h();
        if (m17327h != null && m17603a(cpkVar, 6)) {
            bcrVar = bcr.m18183a(m17327h);
        } else if (m17331d != null && m17603a(cpkVar, 6)) {
            bcrVar = bcr.m18174b(m17331d);
        } else if (m17331d != null && m17603a(cpkVar, 2)) {
            bcrVar = bcr.m18185a(m17331d);
        } else if (m17330e != null && m17603a(cpkVar, 6)) {
            bcrVar = bcr.m18173b(m17330e);
        } else if (m17330e == null || !m17603a(cpkVar, 1)) {
            throw new zzcwo(cqj.INTERNAL_ERROR, "No native ad mappers");
        } else {
            bcrVar = bcr.m18184a(m17330e);
        }
        if (cpkVar.f46318a.f46306a.f46327g.contains(Integer.toString(bcrVar.m18198a()))) {
            bcs mo18252a = this.f44845b.mo18252a(new aof(cpkVar, covVar, bsnVar.f44639a), new bde(bcrVar), new beq(m17330e, m17331d, m17327h));
            bsnVar.f44641c.m17606a((AbstractC12752ms) mo18252a.mo18523f());
            mo18252a.mo18528a().m18372a(new aji(bsnVar.f44640b), this.f44846c);
            return mo18252a.mo18202h();
        }
        throw new zzcwo(cqj.INTERNAL_ERROR, "No corresponding native ad listener");
    }
}
