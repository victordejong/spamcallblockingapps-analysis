package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/buj.class */
public final class buj implements bsk<azi> {

    /* renamed from: a  reason: collision with root package name */
    final Context f25130a;

    /* renamed from: b  reason: collision with root package name */
    final bif f25131b;

    /* renamed from: c  reason: collision with root package name */
    final bai f25132c;

    /* renamed from: d  reason: collision with root package name */
    final cpo f25133d;
    final Executor e;
    final zzbar f;
    final hn g;
    final boolean h = ((Boolean) ekb.e().a(aq.fk)).booleanValue();

    public buj(Context context, zzbar zzbarVar, cpo cpoVar, Executor executor, bai baiVar, bif bifVar, hn hnVar) {
        this.f25130a = context;
        this.f25133d = cpoVar;
        this.f25132c = baiVar;
        this.e = executor;
        this.f = zzbarVar;
        this.f25131b = bifVar;
        this.g = hnVar;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final boolean a(cpk cpkVar, cov covVar) {
        return (covVar.r == null || covVar.r.f26204a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final dbt<azi> b(final cpk cpkVar, final cov covVar) {
        final biv bivVar = new biv();
        dbt<azi> a2 = daj.a(dbh.a((Object) null), new daq(this, covVar, cpkVar, bivVar) { // from class: com.google.android.gms.internal.ads.bui

            /* renamed from: a  reason: collision with root package name */
            private final buj f25126a;

            /* renamed from: b  reason: collision with root package name */
            private final cov f25127b;

            /* renamed from: c  reason: collision with root package name */
            private final cpk f25128c;

            /* renamed from: d  reason: collision with root package name */
            private final biv f25129d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25126a = this;
                this.f25127b = covVar;
                this.f25128c = cpkVar;
                this.f25129d = bivVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                final buj bujVar = this.f25126a;
                final cov covVar2 = this.f25127b;
                cpk cpkVar2 = this.f25128c;
                biv bivVar2 = this.f25129d;
                final adt a3 = bujVar.f25131b.a(bujVar.f25133d.e, covVar2, cpkVar2.f26222b.f26217b);
                a3.f(covVar2.Q);
                bivVar2.a(bujVar.f25130a, a3.s());
                zp zpVar = new zp();
                final azk a4 = bujVar.f25132c.a(new aof(cpkVar2, covVar2, null), new azj(new buq(bujVar.f25130a, bujVar.f, zpVar, covVar2, a3, bujVar.f25133d, bujVar.h, bujVar.g, null), a3));
                zpVar.set(a4);
                a4.d().a(new ash(a3) { // from class: com.google.android.gms.internal.ads.buk

                    /* renamed from: a  reason: collision with root package name */
                    private final adt f25134a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25134a = a3;
                    }

                    @Override // com.google.android.gms.internal.ads.ash
                    public final void b() {
                        adt adtVar = this.f25134a;
                        if (adtVar.B() != null) {
                            adtVar.B().g();
                        }
                    }
                }, zd.f);
                a4.k().a(a3, true, (hk) (bujVar.h ? bujVar.g : null));
                a4.k();
                return daj.a(bih.a(a3, covVar2.r.f26205b, covVar2.r.f26204a), new cxu(bujVar, a3, covVar2, a4) { // from class: com.google.android.gms.internal.ads.buo

                    /* renamed from: a  reason: collision with root package name */
                    private final buj f25140a;

                    /* renamed from: b  reason: collision with root package name */
                    private final adt f25141b;

                    /* renamed from: c  reason: collision with root package name */
                    private final cov f25142c;

                    /* renamed from: d  reason: collision with root package name */
                    private final azk f25143d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25140a = bujVar;
                        this.f25141b = a3;
                        this.f25142c = covVar2;
                        this.f25143d = a4;
                    }

                    @Override // com.google.android.gms.internal.ads.cxu
                    public final Object a(Object obj2) {
                        adt adtVar = this.f25141b;
                        cov covVar3 = this.f25142c;
                        azk azkVar = this.f25143d;
                        if (covVar3.H) {
                            adtVar.P();
                        }
                        adtVar.v();
                        if (((Boolean) ekb.e().a(aq.at)).booleanValue()) {
                            adtVar.onPause();
                        }
                        return azkVar.h();
                    }
                }, bujVar.e);
            }
        }, this.e);
        a2.addListener(bul.a(bivVar), this.e);
        return a2;
    }
}
