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
    private final cty g;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicReference<eki> f25439c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference<ele> f25440d = new AtomicReference<>();
    private final AtomicReference<emd> e = new AtomicReference<>();

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<ekj> f25437a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<elm> f25438b = new AtomicReference<>();
    private final AtomicBoolean f = new AtomicBoolean(true);
    private final BlockingQueue<Pair<String, String>> h = new ArrayBlockingQueue(((Integer) ekb.e().a(aq.fi)).intValue());

    public bza(cty ctyVar) {
        this.g = ctyVar;
    }

    @Override // com.google.android.gms.internal.ads.atb
    public final void a() {
        synchronized (this) {
            clw.a(this.f25439c, bzq.f25460a);
            clw.a(this.f25437a, bzt.f25463a);
            Iterator it2 = this.h.iterator();
            while (it2.hasNext()) {
                final Pair pair = (Pair) it2.next();
                clw.a(this.f25440d, new cma(pair) { // from class: com.google.android.gms.internal.ads.bzl

                    /* renamed from: a  reason: collision with root package name */
                    private final Pair f25452a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25452a = pair;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        Pair pair2 = this.f25452a;
                        ((ele) obj).a((String) pair2.first, (String) pair2.second);
                    }
                });
            }
            this.h.clear();
            this.f.set(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(cpk cpkVar) {
        this.f.set(true);
    }

    public final void a(eki ekiVar) {
        this.f25439c.set(ekiVar);
    }

    public final void a(ele eleVar) {
        this.f25440d.set(eleVar);
    }

    public final void a(emd emdVar) {
        this.e.set(emdVar);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void a(tp tpVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(zzauj zzaujVar) {
    }

    @Override // com.google.android.gms.internal.ads.arp
    public final void a(final zzvh zzvhVar) {
        clw.a(this.f25439c, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.bzk

            /* renamed from: a  reason: collision with root package name */
            private final zzvh f25451a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25451a = zzvhVar;
            }

            @Override // com.google.android.gms.internal.ads.cma
            public final void a(Object obj) {
                ((eki) obj).a(this.f25451a);
            }
        });
        clw.a(this.f25439c, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.bzn

            /* renamed from: a  reason: collision with root package name */
            private final zzvh f25454a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25454a = zzvhVar;
            }

            @Override // com.google.android.gms.internal.ads.cma
            public final void a(Object obj) {
                ((eki) obj).a(this.f25454a.errorCode);
            }
        });
        clw.a(this.f25437a, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.bzm

            /* renamed from: a  reason: collision with root package name */
            private final zzvh f25453a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25453a = zzvhVar;
            }

            @Override // com.google.android.gms.internal.ads.cma
            public final void a(Object obj) {
                ((ekj) obj).a(this.f25453a);
            }
        });
        this.f.set(false);
        this.h.clear();
    }

    @Override // com.google.android.gms.internal.ads.atu
    public final void a(final zzvv zzvvVar) {
        clw.a(this.e, new cma(zzvvVar) { // from class: com.google.android.gms.internal.ads.bzg

            /* renamed from: a  reason: collision with root package name */
            private final zzvv f25446a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25446a = zzvvVar;
            }

            @Override // com.google.android.gms.internal.ads.cma
            public final void a(Object obj) {
                ((emd) obj).a(this.f25446a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.asd
    public final void a_(final zzvh zzvhVar) {
        clw.a(this.f25438b, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.bzi

            /* renamed from: a  reason: collision with root package name */
            private final zzvh f25448a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25448a = zzvhVar;
            }

            @Override // com.google.android.gms.internal.ads.cma
            public final void a(Object obj) {
                ((elm) obj).a(this.f25448a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ash
    public final void b() {
        clw.a(this.f25439c, bzh.f25447a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void c() {
        clw.a(this.f25439c, bzs.f25462a);
        clw.a(this.f25438b, bzv.f25465a);
        clw.a(this.f25438b, bzf.f25445a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void d() {
        clw.a(this.f25439c, bzd.f25443a);
        clw.a(this.f25438b, bzc.f25442a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void e() {
        clw.a(this.f25439c, bzr.f25461a);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void f() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void g() {
    }

    public final eki h() {
        eki ekiVar;
        synchronized (this) {
            ekiVar = this.f25439c.get();
        }
        return ekiVar;
    }

    public final ele i() {
        ele eleVar;
        synchronized (this) {
            eleVar = this.f25440d.get();
        }
        return eleVar;
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        clw.a(this.f25439c, bze.f25444a);
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final void onAppEvent(final String str, final String str2) {
        synchronized (this) {
            if (this.f.get()) {
                if (!this.h.offer(new Pair<>(str, str2))) {
                    zzd.zzdz("The queue for app events is full, dropping the new event.");
                    cty ctyVar = this.g;
                    if (ctyVar != null) {
                        ctyVar.a(ctz.a("dae_action").a("dae_name", str).a("dae_data", str2));
                    }
                }
                return;
            }
            clw.a(this.f25440d, new cma(str, str2) { // from class: com.google.android.gms.internal.ads.bzj

                /* renamed from: a  reason: collision with root package name */
                private final String f25449a;

                /* renamed from: b  reason: collision with root package name */
                private final String f25450b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f25449a = str;
                    this.f25450b = str2;
                }

                @Override // com.google.android.gms.internal.ads.cma
                public final void a(Object obj) {
                    ((ele) obj).a(this.f25449a, this.f25450b);
                }
            });
        }
    }
}
