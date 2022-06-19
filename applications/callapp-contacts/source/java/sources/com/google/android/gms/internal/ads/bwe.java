package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwe.class */
public final class bwe implements bss<bhu, cqe, buh> {

    /* renamed from: a */
    private final Context f44933a;

    /* renamed from: b */
    private final Executor f44934b;

    /* renamed from: c */
    private final bhx f44935c;

    public bwe(Context context, Executor executor, bhx bhxVar) {
        this.f44933a = context;
        this.f44934b = executor;
        this.f44935c = bhxVar;
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: a */
    public final void mo17593a(cpk cpkVar, cov covVar, bsn<cqe, buh> bsnVar) throws zzdpq {
        try {
            cpo cpoVar = cpkVar.f46318a.f46306a;
            if (cpoVar.f46335o.f46299a == cpg.f46309c) {
                bsnVar.f44640b.f46377a.mo14349c(BinderC12129d.m18979a(this.f44933a), cpoVar.f46324d, covVar.f46274u.toString(), bsnVar.f44641c);
                return;
            }
            bsnVar.f44640b.f46377a.mo14353b(BinderC12129d.m18979a(this.f44933a), cpoVar.f46324d, covVar.f46274u.toString(), bsnVar.f44641c);
        } catch (Exception e) {
            String valueOf = String.valueOf(bsnVar.f44639a);
            zzd.zzd(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: b */
    public final /* synthetic */ bhu mo17592b(cpk cpkVar, cov covVar, bsn<cqe, buh> bsnVar) throws zzdpq, zzcwo {
        bhw mo17840a = this.f44935c.mo17840a(new aof(cpkVar, covVar, bsnVar.f44639a), new bhv(new bap(bsnVar) { // from class: com.google.android.gms.internal.ads.bwh

            /* renamed from: a */
            private final bsn f44939a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44939a = bsnVar;
            }

            @Override // com.google.android.gms.internal.ads.bap
            /* renamed from: a */
            public final void mo17566a(boolean z, Context context) {
                bsn bsnVar2 = this.f44939a;
                try {
                    ((cqe) bsnVar2.f44640b).m17334a(z);
                    ((cqe) bsnVar2.f44640b).f46377a.mo14354b(BinderC12129d.m18979a(context));
                } catch (zzdpq e) {
                    throw new zzcbq(e.getCause());
                }
            }
        }));
        mo17840a.mo18528a().m18372a(new aji(bsnVar.f44640b), this.f44934b);
        bsnVar.f44641c.m17606a((AbstractC12752ms) mo17840a.mo17842m());
        return mo17840a.mo17847h();
    }
}
