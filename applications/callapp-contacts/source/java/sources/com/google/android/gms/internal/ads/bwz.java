package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwz.class */
public final class bwz implements bss<bhu, cqe, bug> {

    /* renamed from: a */
    final Executor f44993a;

    /* renamed from: b */
    private final Context f44994b;

    /* renamed from: c */
    private final bhx f44995c;

    public bwz(Context context, Executor executor, bhx bhxVar) {
        this.f44994b = context;
        this.f44993a = executor;
        this.f44995c = bhxVar;
    }

    /* renamed from: c */
    public static void m17591c(cpk cpkVar, cov covVar, bsn<cqe, bug> bsnVar) {
        try {
            bsnVar.f44640b.m17335a(cpkVar.f46318a.f46306a.f46324d, covVar.f46274u.toString());
        } catch (Exception e) {
            String valueOf = String.valueOf(bsnVar.f44639a);
            zzd.zzd(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: a */
    public final void mo17593a(cpk cpkVar, cov covVar, bsn<cqe, bug> bsnVar) throws zzdpq {
        if (bsnVar.f44640b.m17332c()) {
            m17591c(cpkVar, covVar, bsnVar);
            return;
        }
        bsnVar.f44641c.m17609a(new bxb(this, cpkVar, covVar, bsnVar));
        cqe cqeVar = bsnVar.f44640b;
        Context context = this.f44994b;
        try {
            cqeVar.f46377a.mo14365a(BinderC12129d.m18979a(context), cpkVar.f46318a.f46306a.f46324d, (String) null, bsnVar.f44641c, covVar.f46274u.toString());
        } catch (Throwable th) {
            throw new zzdpq(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: b */
    public final /* synthetic */ bhu mo17592b(cpk cpkVar, cov covVar, bsn<cqe, bug> bsnVar) throws zzdpq, zzcwo {
        bhw mo17840a = this.f44995c.mo17840a(new aof(cpkVar, covVar, bsnVar.f44639a), new bhv(new bap(bsnVar) { // from class: com.google.android.gms.internal.ads.bxc

            /* renamed from: a */
            private final bsn f45007a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45007a = bsnVar;
            }

            @Override // com.google.android.gms.internal.ads.bap
            /* renamed from: a */
            public final void mo17566a(boolean z, Context context) {
                bsn bsnVar2 = this.f45007a;
                try {
                    ((cqe) bsnVar2.f44640b).m17334a(z);
                    ((cqe) bsnVar2.f44640b).f46377a.mo14346f();
                } catch (zzdpq e) {
                    zzd.zzd("Cannot show rewarded video.", e);
                    throw new zzcbq(e.getCause());
                }
            }
        }));
        mo17840a.mo18528a().m18372a(new aji(bsnVar.f44640b), this.f44993a);
        asp mo18527b = mo17840a.mo18527b();
        arj mo18526c = mo17840a.mo18526c();
        bsnVar.f44641c.m17608a((AbstractC12956uf) new bxd(this, mo17840a.mo17846i(), mo18526c, mo18527b, mo17840a.mo17844k()));
        return mo17840a.mo17847h();
    }
}
