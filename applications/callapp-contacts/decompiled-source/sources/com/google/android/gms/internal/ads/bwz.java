package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.d;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwz.class */
public final class bwz implements bss<bhu, cqe, bug> {

    /* renamed from: a  reason: collision with root package name */
    final Executor f25308a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f25309b;

    /* renamed from: c  reason: collision with root package name */
    private final bhx f25310c;

    public bwz(Context context, Executor executor, bhx bhxVar) {
        this.f25309b = context;
        this.f25308a = executor;
        this.f25310c = bhxVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(cpk cpkVar, cov covVar, bsn<cqe, bug> bsnVar) {
        try {
            bsnVar.f25013b.a(cpkVar.f26221a.f26209a.f26227d, covVar.u.toString());
        } catch (Exception e) {
            String valueOf = String.valueOf(bsnVar.f25012a);
            zzd.zzd(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final void a(cpk cpkVar, cov covVar, bsn<cqe, bug> bsnVar) throws zzdpq {
        if (!bsnVar.f25013b.c()) {
            bsnVar.f25014c.a(new bxb(this, cpkVar, covVar, bsnVar));
            cqe cqeVar = bsnVar.f25013b;
            Context context = this.f25309b;
            try {
                cqeVar.f26255a.a(d.a(context), cpkVar.f26221a.f26209a.f26227d, (String) null, bsnVar.f25014c, covVar.u.toString());
            } catch (Throwable th) {
                throw new zzdpq(th);
            }
        } else {
            c(cpkVar, covVar, bsnVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final /* synthetic */ bhu b(cpk cpkVar, cov covVar, final bsn<cqe, bug> bsnVar) throws zzdpq, zzcwo {
        bhw a2 = this.f25310c.a(new aof(cpkVar, covVar, bsnVar.f25012a), new bhv(new bap(bsnVar) { // from class: com.google.android.gms.internal.ads.bxc

            /* renamed from: a  reason: collision with root package name */
            private final bsn f25319a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25319a = bsnVar;
            }

            @Override // com.google.android.gms.internal.ads.bap
            public final void a(boolean z, Context context) {
                bsn bsnVar2 = this.f25319a;
                try {
                    ((cqe) bsnVar2.f25013b).a(z);
                    ((cqe) bsnVar2.f25013b).f26255a.f();
                } catch (zzdpq e) {
                    zzd.zzd("Cannot show rewarded video.", e);
                    throw new zzcbq(e.getCause());
                }
            }
        }));
        a2.a().a(new aji(bsnVar.f25013b), this.f25308a);
        asp b2 = a2.b();
        arj c2 = a2.c();
        bsnVar.f25014c.a((uf) new bxd(this, a2.i(), c2, b2, a2.k()));
        return a2.h();
    }
}
