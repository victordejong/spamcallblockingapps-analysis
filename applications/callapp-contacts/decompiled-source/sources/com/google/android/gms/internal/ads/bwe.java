package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.d;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwe.class */
public final class bwe implements bss<bhu, cqe, buh> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f25264a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f25265b;

    /* renamed from: c  reason: collision with root package name */
    private final bhx f25266c;

    public bwe(Context context, Executor executor, bhx bhxVar) {
        this.f25264a = context;
        this.f25265b = executor;
        this.f25266c = bhxVar;
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final void a(cpk cpkVar, cov covVar, bsn<cqe, buh> bsnVar) throws zzdpq {
        try {
            cpo cpoVar = cpkVar.f26221a.f26209a;
            if (cpoVar.o.f26202a == cpg.f26212c) {
                bsnVar.f25013b.f26255a.c(d.a(this.f25264a), cpoVar.f26227d, covVar.u.toString(), bsnVar.f25014c);
                return;
            }
            bsnVar.f25013b.f26255a.b(d.a(this.f25264a), cpoVar.f26227d, covVar.u.toString(), bsnVar.f25014c);
        } catch (Exception e) {
            String valueOf = String.valueOf(bsnVar.f25012a);
            zzd.zzd(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final /* synthetic */ bhu b(cpk cpkVar, cov covVar, final bsn<cqe, buh> bsnVar) throws zzdpq, zzcwo {
        bhw a2 = this.f25266c.a(new aof(cpkVar, covVar, bsnVar.f25012a), new bhv(new bap(bsnVar) { // from class: com.google.android.gms.internal.ads.bwh

            /* renamed from: a  reason: collision with root package name */
            private final bsn f25270a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25270a = bsnVar;
            }

            @Override // com.google.android.gms.internal.ads.bap
            public final void a(boolean z, Context context) {
                bsn bsnVar2 = this.f25270a;
                try {
                    ((cqe) bsnVar2.f25013b).a(z);
                    ((cqe) bsnVar2.f25013b).f26255a.b(d.a(context));
                } catch (zzdpq e) {
                    throw new zzcbq(e.getCause());
                }
            }
        }));
        a2.a().a(new aji(bsnVar.f25013b), this.f25265b);
        bsnVar.f25014c.a((ms) a2.m());
        return a2.h();
    }
}
