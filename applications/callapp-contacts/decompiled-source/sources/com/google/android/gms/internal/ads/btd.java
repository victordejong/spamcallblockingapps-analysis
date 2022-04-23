package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzad;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/btd.class */
public final class btd implements bsk<alq> {

    /* renamed from: a  reason: collision with root package name */
    final amn f25050a;

    /* renamed from: b  reason: collision with root package name */
    final Context f25051b;

    /* renamed from: c  reason: collision with root package name */
    final bif f25052c;

    /* renamed from: d  reason: collision with root package name */
    final cpo f25053d;
    final Executor e;
    final cxu<cov, zzad> f;

    public btd(amn amnVar, Context context, Executor executor, bif bifVar, cpo cpoVar, cxu<cov, zzad> cxuVar) {
        this.f25051b = context;
        this.f25050a = amnVar;
        this.e = executor;
        this.f25052c = bifVar;
        this.f25053d = cpoVar;
        this.f = cxuVar;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final boolean a(cpk cpkVar, cov covVar) {
        return (covVar.r == null || covVar.r.f26204a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final dbt<alq> b(final cpk cpkVar, final cov covVar) {
        return daj.a(dbh.a((Object) null), new daq(this, cpkVar, covVar) { // from class: com.google.android.gms.internal.ads.btg

            /* renamed from: a  reason: collision with root package name */
            private final btd f25059a;

            /* renamed from: b  reason: collision with root package name */
            private final cpk f25060b;

            /* renamed from: c  reason: collision with root package name */
            private final cov f25061c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25059a = this;
                this.f25060b = cpkVar;
                this.f25061c = covVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                final btd btdVar = this.f25059a;
                cpk cpkVar2 = this.f25060b;
                cov covVar2 = this.f25061c;
                zzvt a2 = cps.a(btdVar.f25051b, covVar2.t);
                final adt a3 = btdVar.f25052c.a(a2, covVar2, cpkVar2.f26222b.f26217b);
                a3.f(covVar2.Q);
                View zzcjrVar = (!((Boolean) ekb.e().a(aq.ey)).booleanValue() || !covVar2.ab) ? new zzcjr(btdVar.f25051b, a3.s(), btdVar.f.a(covVar2)) : zzbos.a(btdVar.f25051b, a3.s(), covVar2);
                amn amnVar = btdVar.f25050a;
                aof aofVar = new aof(cpkVar2, covVar2, null);
                a3.getClass();
                final alt a4 = amnVar.a(aofVar, new alx(zzcjrVar, a3, new anq(a3) { // from class: com.google.android.gms.internal.ads.btf

                    /* renamed from: a  reason: collision with root package name */
                    private final adt f25058a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25058a = a3;
                    }

                    @Override // com.google.android.gms.internal.ads.anq
                    public final emk a() {
                        return this.f25058a.b();
                    }
                }, cps.a(a2)));
                a4.i().a(a3, false, (hk) null);
                a4.d().a(new ash(a3) { // from class: com.google.android.gms.internal.ads.bti

                    /* renamed from: a  reason: collision with root package name */
                    private final adt f25063a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25063a = a3;
                    }

                    @Override // com.google.android.gms.internal.ads.ash
                    public final void b() {
                        adt adtVar = this.f25063a;
                        if (adtVar.B() != null) {
                            adtVar.B().g();
                        }
                    }
                }, zd.f);
                a4.i();
                dbt<?> a5 = bih.a(a3, covVar2.r.f26205b, covVar2.r.f26204a);
                if (covVar2.H) {
                    a3.getClass();
                    a5.addListener(bth.a(a3), btdVar.e);
                }
                a5.addListener(new Runnable(btdVar, a3) { // from class: com.google.android.gms.internal.ads.btk

                    /* renamed from: a  reason: collision with root package name */
                    private final btd f25065a;

                    /* renamed from: b  reason: collision with root package name */
                    private final adt f25066b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25065a = btdVar;
                        this.f25066b = a3;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        btd btdVar2 = this.f25065a;
                        adt adtVar = this.f25066b;
                        adtVar.v();
                        aem b2 = adtVar.b();
                        if (btdVar2.f25053d.f26225b != null && b2 != null) {
                            b2.a(btdVar2.f25053d.f26225b);
                        }
                    }
                }, btdVar.e);
                return daj.a(a5, new cxu(a4) { // from class: com.google.android.gms.internal.ads.btj

                    /* renamed from: a  reason: collision with root package name */
                    private final alt f25064a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25064a = a4;
                    }

                    @Override // com.google.android.gms.internal.ads.cxu
                    public final Object a(Object obj2) {
                        return this.f25064a.h();
                    }
                }, zd.f);
            }
        }, this.e);
    }
}
