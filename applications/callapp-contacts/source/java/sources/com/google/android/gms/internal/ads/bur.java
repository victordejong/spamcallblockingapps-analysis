package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bur.class */
public final class bur implements bss<azi, cqe, buh> {

    /* renamed from: a */
    final zzbar f44806a;

    /* renamed from: b */
    private final Context f44807b;

    /* renamed from: c */
    private final bai f44808c;

    /* renamed from: d */
    private final Executor f44809d;

    public bur(Context context, zzbar zzbarVar, bai baiVar, Executor executor) {
        this.f44807b = context;
        this.f44806a = zzbarVar;
        this.f44808c = baiVar;
        this.f44809d = executor;
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: a */
    public final void mo17593a(cpk cpkVar, cov covVar, bsn<cqe, buh> bsnVar) throws zzdpq {
        cqe cqeVar = bsnVar.f44640b;
        Context context = this.f44807b;
        try {
            cqeVar.f46377a.mo14364a(BinderC12129d.m18979a(context), cpkVar.f46318a.f46306a.f46324d, covVar.f46274u.toString(), zzbh.zza(covVar.f46271r), bsnVar.f44641c);
        } catch (Throwable th) {
            throw new zzdpq(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    /* renamed from: b */
    public final /* synthetic */ azi mo17592b(cpk cpkVar, cov covVar, bsn<cqe, buh> bsnVar) throws zzdpq, zzcwo {
        azk mo18274a = this.f44808c.mo18274a(new aof(cpkVar, covVar, bsnVar.f44639a), new azj(new bap(this, bsnVar) { // from class: com.google.android.gms.internal.ads.buu

            /* renamed from: a */
            private final bur f44818a;

            /* renamed from: b */
            private final bsn f44819b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44818a = this;
                this.f44819b = bsnVar;
            }

            @Override // com.google.android.gms.internal.ads.bap
            /* renamed from: a */
            public final void mo17566a(boolean z, Context context) {
                bur burVar = this.f44818a;
                bsn bsnVar2 = this.f44819b;
                try {
                    ((cqe) bsnVar2.f44640b).m17334a(z);
                    if (burVar.f44806a.zzekb < ((Integer) ekb.m14831e().m18571a(C12187aq.f42681ar)).intValue()) {
                        ((cqe) bsnVar2.f44640b).f46377a.mo14355b();
                    } else {
                        ((cqe) bsnVar2.f44640b).f46377a.mo14350c(BinderC12129d.m18979a(context));
                    }
                } catch (zzdpq e) {
                    zzd.zzey("Cannot show interstitial.");
                    throw new zzcbq(e.getCause());
                }
            }
        }));
        mo18274a.mo18528a().m18372a(new aji(bsnVar.f44640b), this.f44809d);
        bsnVar.f44641c.m17606a((AbstractC12752ms) mo18274a.mo18523f());
        return mo18274a.mo18308h();
    }
}
