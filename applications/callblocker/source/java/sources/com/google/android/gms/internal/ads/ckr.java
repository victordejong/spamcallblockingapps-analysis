package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ckr.class */
public final class ckr<O> {

    /* renamed from: a */
    final /* synthetic */ ckl f13214a;

    /* renamed from: b */
    private final E f13215b;

    /* renamed from: c */
    private final String f13216c;

    /* renamed from: d */
    private final crt<?> f13217d;

    /* renamed from: e */
    private final List<crt<?>> f13218e;

    /* renamed from: f */
    private final crt<O> f13219f;

    /* JADX INFO: Access modifiers changed from: private */
    public ckr(ckl cklVar, E e, String str, crt<?> crtVar, List<crt<?>> list, crt<O> crtVar2) {
        this.f13214a = cklVar;
        this.f13215b = e;
        this.f13216c = str;
        this.f13217d = crtVar;
        this.f13218e = list;
        this.f13219f = crtVar2;
    }

    /* renamed from: a */
    private final <O2> ckr<O2> m11149a(cqt<O, O2> cqtVar, Executor executor) {
        return new ckr<>(this.f13214a, this.f13215b, this.f13216c, this.f13217d, this.f13218e, crg.m10782a(this.f13219f, cqtVar, executor));
    }

    /* renamed from: a */
    public final cki<E, O> m11153a() {
        ckx ckxVar;
        cki<E, O> ckiVar = new cki<>(this.f13215b, this.f13216c == null ? this.f13214a.mo11138b((ckl) this.f13215b) : this.f13216c, this.f13219f);
        ckxVar = this.f13214a.f13205d;
        ckxVar.mo11142a(ckiVar);
        this.f13217d.mo6734a(new Runnable(this, ckiVar) { // from class: com.google.android.gms.internal.ads.ckv

            /* renamed from: a */
            private final ckr f13224a;

            /* renamed from: b */
            private final cki f13225b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13224a = this;
                this.f13225b = ckiVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ckx ckxVar2;
                ckr ckrVar = this.f13224a;
                cki ckiVar2 = this.f13225b;
                ckxVar2 = ckrVar.f13214a.f13205d;
                ckxVar2.mo11140b(ckiVar2);
            }
        }, C3650yg.f17647f);
        crg.m10781a(ckiVar, new cku(this, ckiVar), C3650yg.f17647f);
        return ckiVar;
    }

    /* renamed from: a */
    public final ckr<O> m11152a(long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService;
        ckl cklVar = this.f13214a;
        E e = this.f13215b;
        String str = this.f13216c;
        crt<?> crtVar = this.f13217d;
        List<crt<?>> list = this.f13218e;
        crt<O> crtVar2 = this.f13219f;
        scheduledExecutorService = this.f13214a.f13204c;
        return new ckr<>(cklVar, e, str, crtVar, list, crg.m10784a(crtVar2, j, timeUnit, scheduledExecutorService));
    }

    /* renamed from: a */
    public final <O2> ckr<O2> m11151a(ckg<O, O2> ckgVar) {
        return m11150a((cqt) new cqt(ckgVar) { // from class: com.google.android.gms.internal.ads.ckq

            /* renamed from: a */
            private final ckg f13213a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13213a = ckgVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return crg.m10778a(this.f13213a.mo11170a(obj));
            }
        });
    }

    /* renamed from: a */
    public final <O2> ckr<O2> m11150a(cqt<O, O2> cqtVar) {
        crs crsVar;
        crsVar = this.f13214a.f13203b;
        return m11149a(cqtVar, crsVar);
    }

    /* renamed from: a */
    public final <O2> ckr<O2> m11148a(crt<O2> crtVar) {
        return m11149a(new cqt(crtVar) { // from class: com.google.android.gms.internal.ads.ckt

            /* renamed from: a */
            private final crt f13221a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13221a = crtVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f13221a;
            }
        }, C3650yg.f17647f);
    }

    /* renamed from: a */
    public final <T extends Throwable> ckr<O> m11147a(Class<T> cls, ckg<T, O> ckgVar) {
        return m11146a(cls, new cqt(ckgVar) { // from class: com.google.android.gms.internal.ads.cks

            /* renamed from: a */
            private final ckg f13220a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13220a = ckgVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return crg.m10778a(this.f13220a.mo11170a((Throwable) obj));
            }
        });
    }

    /* renamed from: a */
    public final <T extends Throwable> ckr<O> m11146a(Class<T> cls, cqt<T, O> cqtVar) {
        crs crsVar;
        ckl cklVar = this.f13214a;
        E e = this.f13215b;
        String str = this.f13216c;
        crt<?> crtVar = this.f13217d;
        List<crt<?>> list = this.f13218e;
        crt<O> crtVar2 = this.f13219f;
        crsVar = this.f13214a.f13203b;
        return new ckr<>(cklVar, e, str, crtVar, list, crg.m10780a(crtVar2, cls, cqtVar, crsVar));
    }

    /* renamed from: a */
    public final ckr<O> m11145a(E e) {
        return this.f13214a.m11162a((ckl) e, (crt) m11153a());
    }

    /* renamed from: a */
    public final ckr<O> m11144a(String str) {
        return new ckr<>(this.f13214a, this.f13215b, str, this.f13217d, this.f13218e, this.f13219f);
    }
}
