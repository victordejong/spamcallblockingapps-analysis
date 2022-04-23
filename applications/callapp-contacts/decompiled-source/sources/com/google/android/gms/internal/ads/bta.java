package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bta.class */
public final class bta implements bsk<alb> {

    /* renamed from: a  reason: collision with root package name */
    final akt f25044a;

    /* renamed from: b  reason: collision with root package name */
    final Context f25045b;

    /* renamed from: c  reason: collision with root package name */
    final bif f25046c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f25047d;

    public bta(akt aktVar, Context context, Executor executor, bif bifVar) {
        this.f25045b = context;
        this.f25044a = aktVar;
        this.f25047d = executor;
        this.f25046c = bifVar;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final boolean a(cpk cpkVar, cov covVar) {
        return (covVar.r == null || covVar.r.f26204a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final dbt<alb> b(final cpk cpkVar, final cov covVar) {
        return daj.a(dbh.a((Object) null), new daq(this, cpkVar, covVar) { // from class: com.google.android.gms.internal.ads.bsz

            /* renamed from: a  reason: collision with root package name */
            private final bta f25041a;

            /* renamed from: b  reason: collision with root package name */
            private final cpk f25042b;

            /* renamed from: c  reason: collision with root package name */
            private final cov f25043c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25041a = this;
                this.f25042b = cpkVar;
                this.f25043c = covVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                bta btaVar = this.f25041a;
                cpk cpkVar2 = this.f25042b;
                cov covVar2 = this.f25043c;
                zzvt a2 = cps.a(btaVar.f25045b, covVar2.t);
                final adt a3 = btaVar.f25046c.a(a2, covVar2, cpkVar2.f26222b.f26217b);
                final akk a4 = btaVar.f25044a.a(new aof(cpkVar2, covVar2, null), new ako(a3.s(), a3, cps.a(a2), covVar2.U, covVar2.Y, covVar2.J));
                a4.i().a(a3, false, (hk) null);
                a4.d().a(new ash(a3) { // from class: com.google.android.gms.internal.ads.btc

                    /* renamed from: a  reason: collision with root package name */
                    private final adt f25049a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25049a = a3;
                    }

                    @Override // com.google.android.gms.internal.ads.ash
                    public final void b() {
                        adt adtVar = this.f25049a;
                        if (adtVar.B() != null) {
                            adtVar.B().g();
                        }
                    }
                }, zd.f);
                a4.i();
                return daj.a(bih.a(a3, covVar2.r.f26205b, covVar2.r.f26204a), new cxu(a4) { // from class: com.google.android.gms.internal.ads.btb

                    /* renamed from: a  reason: collision with root package name */
                    private final akk f25048a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25048a = a4;
                    }

                    @Override // com.google.android.gms.internal.ads.cxu
                    public final Object a(Object obj2) {
                        return this.f25048a.h();
                    }
                }, zd.f);
            }
        }, this.f25047d);
    }
}
