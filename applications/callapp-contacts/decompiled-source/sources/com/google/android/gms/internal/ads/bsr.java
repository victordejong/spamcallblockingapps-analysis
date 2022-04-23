package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bsr.class */
public final class bsr implements bsk<all> {

    /* renamed from: a  reason: collision with root package name */
    final alf f25019a;

    /* renamed from: b  reason: collision with root package name */
    final Context f25020b;

    /* renamed from: c  reason: collision with root package name */
    final bif f25021c;

    /* renamed from: d  reason: collision with root package name */
    final cpo f25022d;
    final Executor e;
    final zzbar f;
    final hn g;
    final boolean h = ((Boolean) ekb.e().a(aq.fk)).booleanValue();

    public bsr(alf alfVar, Context context, Executor executor, bif bifVar, cpo cpoVar, zzbar zzbarVar, hn hnVar) {
        this.f25020b = context;
        this.f25019a = alfVar;
        this.e = executor;
        this.f25021c = bifVar;
        this.f25022d = cpoVar;
        this.f = zzbarVar;
        this.g = hnVar;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final boolean a(cpk cpkVar, cov covVar) {
        return (covVar.r == null || covVar.r.f26204a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final dbt<all> b(final cpk cpkVar, final cov covVar) {
        final biv bivVar = new biv();
        dbt<all> a2 = daj.a(dbh.a((Object) null), new daq(this, covVar, cpkVar, bivVar) { // from class: com.google.android.gms.internal.ads.bsu

            /* renamed from: a  reason: collision with root package name */
            private final bsr f25024a;

            /* renamed from: b  reason: collision with root package name */
            private final cov f25025b;

            /* renamed from: c  reason: collision with root package name */
            private final cpk f25026c;

            /* renamed from: d  reason: collision with root package name */
            private final biv f25027d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25024a = this;
                this.f25025b = covVar;
                this.f25026c = cpkVar;
                this.f25027d = bivVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                final bsr bsrVar = this.f25024a;
                final cov covVar2 = this.f25025b;
                cpk cpkVar2 = this.f25026c;
                biv bivVar2 = this.f25027d;
                final adt a3 = bsrVar.f25021c.a(bsrVar.f25022d.e, covVar2, cpkVar2.f26222b.f26217b);
                a3.f(covVar2.Q);
                bivVar2.a(bsrVar.f25020b, a3.s());
                zp zpVar = new zp();
                final ald a4 = bsrVar.f25019a.a(new aof(cpkVar2, covVar2, null), new azj(new bsx(bsrVar.f, zpVar, covVar2, a3, bsrVar.f25022d, bsrVar.h, bsrVar.g), a3), new alc(covVar2.U));
                a4.i().a(a3, false, (hk) (bsrVar.h ? bsrVar.g : null));
                zpVar.set(a4);
                a4.d().a(new ash(a3) { // from class: com.google.android.gms.internal.ads.bsw

                    /* renamed from: a  reason: collision with root package name */
                    private final adt f25032a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25032a = a3;
                    }

                    @Override // com.google.android.gms.internal.ads.ash
                    public final void b() {
                        adt adtVar = this.f25032a;
                        if (adtVar.B() != null) {
                            adtVar.B().g();
                        }
                    }
                }, zd.f);
                a4.i();
                return daj.a(bih.a(a3, covVar2.r.f26205b, covVar2.r.f26204a), new cxu(bsrVar, a3, covVar2, a4) { // from class: com.google.android.gms.internal.ads.bsv

                    /* renamed from: a  reason: collision with root package name */
                    private final bsr f25028a;

                    /* renamed from: b  reason: collision with root package name */
                    private final adt f25029b;

                    /* renamed from: c  reason: collision with root package name */
                    private final cov f25030c;

                    /* renamed from: d  reason: collision with root package name */
                    private final ald f25031d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25028a = bsrVar;
                        this.f25029b = a3;
                        this.f25030c = covVar2;
                        this.f25031d = a4;
                    }

                    @Override // com.google.android.gms.internal.ads.cxu
                    public final Object a(Object obj2) {
                        adt adtVar = this.f25029b;
                        cov covVar3 = this.f25030c;
                        ald aldVar = this.f25031d;
                        if (covVar3.H) {
                            adtVar.P();
                        }
                        adtVar.v();
                        if (((Boolean) ekb.e().a(aq.at)).booleanValue()) {
                            adtVar.onPause();
                        }
                        return aldVar.h();
                    }
                }, bsrVar.e);
            }
        }, this.e);
        a2.addListener(bst.a(bivVar), this.e);
        return a2;
    }
}
