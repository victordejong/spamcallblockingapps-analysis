package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bza.class */
public final class bza implements AppEventListener, aro, arp, asd, ash, atb, atu, auf, eir {

    /* renamed from: g */
    private final cty f45147g;

    /* renamed from: c */
    private final AtomicReference<eki> f45143c = new AtomicReference<>();

    /* renamed from: d */
    private final AtomicReference<ele> f45144d = new AtomicReference<>();

    /* renamed from: e */
    private final AtomicReference<emd> f45145e = new AtomicReference<>();

    /* renamed from: a */
    final AtomicReference<ekj> f45141a = new AtomicReference<>();

    /* renamed from: b */
    final AtomicReference<elm> f45142b = new AtomicReference<>();

    /* renamed from: f */
    private final AtomicBoolean f45146f = new AtomicBoolean(true);

    /* renamed from: h */
    private final BlockingQueue<Pair<String, String>> f45148h = new ArrayBlockingQueue(((Integer) ekb.m14831e().m18571a(C12187aq.f42937fi)).intValue());

    public bza(cty ctyVar) {
        this.f45147g = ctyVar;
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: a */
    public final void mo17408a() {
        synchronized (this) {
            clw.m17416a(this.f45143c, bzq.f45169a);
            clw.m17416a(this.f45141a, bzt.f45172a);
            Iterator it2 = this.f45148h.iterator();
            while (it2.hasNext()) {
                clw.m17416a(this.f45144d, new cma((Pair) it2.next()) { // from class: com.google.android.gms.internal.ads.bzl

                    /* renamed from: a */
                    private final Pair f45160a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f45160a = pair;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        Pair pair2 = this.f45160a;
                        ((ele) obj).mo14809a((String) pair2.first, (String) pair2.second);
                    }
                });
            }
            this.f45148h.clear();
            this.f45146f.set(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17552a(cpk cpkVar) {
        this.f45146f.set(true);
    }

    /* renamed from: a */
    public final void m17551a(eki ekiVar) {
        this.f45143c.set(ekiVar);
    }

    /* renamed from: a */
    public final void m17550a(ele eleVar) {
        this.f45144d.set(eleVar);
    }

    /* renamed from: a */
    public final void m17549a(emd emdVar) {
        this.f45145e.set(emdVar);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: a */
    public final void mo17405a(AbstractC12939tp abstractC12939tp, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17548a(zzauj zzaujVar) {
    }

    @Override // com.google.android.gms.internal.ads.arp
    /* renamed from: a */
    public final void mo17319a(zzvh zzvhVar) {
        clw.m17416a(this.f45143c, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.bzk

            /* renamed from: a */
            private final zzvh f45159a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45159a = zzvhVar;
            }

            @Override // com.google.android.gms.internal.ads.cma
            /* renamed from: a */
            public final void mo17391a(Object obj) {
                ((eki) obj).mo14822a(this.f45159a);
            }
        });
        clw.m17416a(this.f45143c, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.bzn

            /* renamed from: a */
            private final zzvh f45162a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45162a = zzvhVar;
            }

            @Override // com.google.android.gms.internal.ads.cma
            /* renamed from: a */
            public final void mo17391a(Object obj) {
                ((eki) obj).mo14823a(this.f45162a.errorCode);
            }
        });
        clw.m17416a(this.f45141a, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.bzm

            /* renamed from: a */
            private final zzvh f45161a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45161a = zzvhVar;
            }

            @Override // com.google.android.gms.internal.ads.cma
            /* renamed from: a */
            public final void mo17391a(Object obj) {
                ((ekj) obj).mo14815a(this.f45161a);
            }
        });
        this.f45146f.set(false);
        this.f45148h.clear();
    }

    @Override // com.google.android.gms.internal.ads.atu
    /* renamed from: a */
    public final void mo17403a(zzvv zzvvVar) {
        clw.m17416a(this.f45145e, new cma(zzvvVar) { // from class: com.google.android.gms.internal.ads.bzg

            /* renamed from: a */
            private final zzvv f45154a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45154a = zzvvVar;
            }

            @Override // com.google.android.gms.internal.ads.cma
            /* renamed from: a */
            public final void mo17391a(Object obj) {
                ((emd) obj).mo14203a(this.f45154a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.asd
    /* renamed from: a_ */
    public final void mo17402a_(zzvh zzvhVar) {
        clw.m17416a(this.f45142b, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.bzi

            /* renamed from: a */
            private final zzvh f45156a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45156a = zzvhVar;
            }

            @Override // com.google.android.gms.internal.ads.cma
            /* renamed from: a */
            public final void mo17391a(Object obj) {
                ((elm) obj).mo14807a(this.f45156a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: b */
    public final void mo17547b() {
        clw.m17416a(this.f45143c, bzh.f45155a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: c */
    public final void mo17401c() {
        clw.m17416a(this.f45143c, bzs.f45171a);
        clw.m17416a(this.f45142b, bzv.f45174a);
        clw.m17416a(this.f45142b, bzf.f45153a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: d */
    public final void mo17400d() {
        clw.m17416a(this.f45143c, bzd.f45151a);
        clw.m17416a(this.f45142b, bzc.f45150a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: e */
    public final void mo17399e() {
        clw.m17416a(this.f45143c, bzr.f45170a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: f */
    public final void mo17398f() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: g */
    public final void mo17397g() {
    }

    /* renamed from: h */
    public final eki m17546h() {
        eki ekiVar;
        synchronized (this) {
            ekiVar = this.f45143c.get();
        }
        return ekiVar;
    }

    /* renamed from: i */
    public final ele m17545i() {
        ele eleVar;
        synchronized (this) {
            eleVar = this.f45144d.get();
        }
        return eleVar;
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        clw.m17416a(this.f45143c, bze.f45152a);
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final void onAppEvent(String str, String str2) {
        synchronized (this) {
            if (!this.f45146f.get()) {
                clw.m17416a(this.f45144d, new cma(str, str2) { // from class: com.google.android.gms.internal.ads.bzj

                    /* renamed from: a */
                    private final String f45157a;

                    /* renamed from: b */
                    private final String f45158b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f45157a = str;
                        this.f45158b = str2;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        ((ele) obj).mo14809a(this.f45157a, this.f45158b);
                    }
                });
                return;
            }
            if (!this.f45148h.offer(new Pair<>(str, str2))) {
                zzd.zzdz("The queue for app events is full, dropping the new event.");
                cty ctyVar = this.f45147g;
                if (ctyVar != null) {
                    ctyVar.mo17215a(ctz.m17226a("dae_action").m17225a("dae_name", str).m17225a("dae_data", str2));
                }
            }
        }
    }
}
