package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwp.class */
public final class bwp implements bsk<bhu> {

    /* renamed from: a  reason: collision with root package name */
    final Context f25285a;

    /* renamed from: b  reason: collision with root package name */
    final bif f25286b;

    /* renamed from: c  reason: collision with root package name */
    final bhx f25287c;

    /* renamed from: d  reason: collision with root package name */
    final cpo f25288d;
    final Executor e;
    final zzbar f;
    final hn g;
    final boolean h = ((Boolean) ekb.e().a(aq.fk)).booleanValue();

    public bwp(Context context, zzbar zzbarVar, cpo cpoVar, Executor executor, bhx bhxVar, bif bifVar, hn hnVar) {
        this.f25285a = context;
        this.f25288d = cpoVar;
        this.f25287c = bhxVar;
        this.e = executor;
        this.f = zzbarVar;
        this.f25286b = bifVar;
        this.g = hnVar;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final boolean a(cpk cpkVar, cov covVar) {
        return (covVar.r == null || covVar.r.f26204a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final dbt<bhu> b(final cpk cpkVar, final cov covVar) {
        final biv bivVar = new biv();
        dbt<bhu> a2 = daj.a(dbh.a((Object) null), new daq(this, covVar, cpkVar, bivVar) { // from class: com.google.android.gms.internal.ads.bws

            /* renamed from: a  reason: collision with root package name */
            private final bwp f25292a;

            /* renamed from: b  reason: collision with root package name */
            private final cov f25293b;

            /* renamed from: c  reason: collision with root package name */
            private final cpk f25294c;

            /* renamed from: d  reason: collision with root package name */
            private final biv f25295d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25292a = this;
                this.f25293b = covVar;
                this.f25294c = cpkVar;
                this.f25295d = bivVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                final bwp bwpVar = this.f25292a;
                final cov covVar2 = this.f25293b;
                cpk cpkVar2 = this.f25294c;
                biv bivVar2 = this.f25295d;
                final adt a3 = bwpVar.f25286b.a(bwpVar.f25288d.e, covVar2, cpkVar2.f26222b.f26217b);
                a3.f(covVar2.Q);
                bivVar2.a(bwpVar.f25285a, a3.s());
                zp zpVar = new zp();
                final bhw a4 = bwpVar.f25287c.a(new aof(cpkVar2, covVar2, null), new bhv(new bwv(bwpVar.f25285a, bwpVar.f25286b, bwpVar.f25288d, bwpVar.f, covVar2, zpVar, a3, bwpVar.g, bwpVar.h, null), a3));
                zpVar.set(a4);
                hz.a(a3, a4.k());
                a4.d().a(new ash(a3) { // from class: com.google.android.gms.internal.ads.bwu

                    /* renamed from: a  reason: collision with root package name */
                    private final adt f25300a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25300a = a3;
                    }

                    @Override // com.google.android.gms.internal.ads.ash
                    public final void b() {
                        adt adtVar = this.f25300a;
                        if (adtVar.B() != null) {
                            adtVar.B().g();
                        }
                    }
                }, zd.f);
                a4.l().a(a3, true, (hk) (bwpVar.h ? bwpVar.g : null));
                a4.l();
                return daj.a(bih.a(a3, covVar2.r.f26205b, covVar2.r.f26204a), new cxu(bwpVar, a3, covVar2, a4) { // from class: com.google.android.gms.internal.ads.bwt

                    /* renamed from: a  reason: collision with root package name */
                    private final bwp f25296a;

                    /* renamed from: b  reason: collision with root package name */
                    private final adt f25297b;

                    /* renamed from: c  reason: collision with root package name */
                    private final cov f25298c;

                    /* renamed from: d  reason: collision with root package name */
                    private final bhw f25299d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25296a = bwpVar;
                        this.f25297b = a3;
                        this.f25298c = covVar2;
                        this.f25299d = a4;
                    }

                    @Override // com.google.android.gms.internal.ads.cxu
                    public final Object a(Object obj2) {
                        adt adtVar = this.f25297b;
                        cov covVar3 = this.f25298c;
                        bhw bhwVar = this.f25299d;
                        if (covVar3.H) {
                            adtVar.P();
                        }
                        adtVar.v();
                        if (((Boolean) ekb.e().a(aq.at)).booleanValue()) {
                            adtVar.onPause();
                        }
                        return bhwVar.h();
                    }
                }, bwpVar.e);
            }
        }, this.e);
        a2.addListener(bwr.a(bivVar), this.e);
        return a2;
    }
}
