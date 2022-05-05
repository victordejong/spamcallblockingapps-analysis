package com.flurry.sdk;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.flurry.sdk.dj */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dj.class */
public class C2974dj {

    /* renamed from: a */
    public static final String f4635a = "dj";

    /* renamed from: d */
    public final String f4638d;

    /* renamed from: g */
    public AbstractC3518x f4641g;

    /* renamed from: h */
    public C2853ay f4642h;

    /* renamed from: i */
    public C2792ac f4643i;

    /* renamed from: j */
    public List<C2853ay> f4644j;

    /* renamed from: b */
    public final AbstractC3417kl<C2906cc> f4636b = new C2983dl();

    /* renamed from: c */
    public final AbstractC3417kl<C2907cd> f4637c = new C2985dm();

    /* renamed from: k */
    public final AbstractC3344jl<C3303im> f4645k = new AbstractC3344jl<C3303im>() { // from class: com.flurry.sdk.dj.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo32302a(C3303im imVar) {
            C2974dj.this.m33365f();
        }
    };

    /* renamed from: e */
    public final List<Integer> f4639e = Arrays.asList(0, 1, 2, 3, 4, 5);

    /* renamed from: f */
    public EnumC2981a f4640f = EnumC2981a.NONE;

    /* renamed from: com.flurry.sdk.dj$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dj$a.class */
    public enum EnumC2981a {
        NONE,
        WAIT_FOR_REPORTED_IDS,
        BUILD_REQUEST,
        REQUEST,
        PREPROCESS
    }

    public C2974dj(String str) {
        this.f4638d = str;
        m33381a();
    }

    /* renamed from: a */
    public final void m33381a() {
        synchronized (this) {
            C3323iz.m32690a().m32624a(this);
            m33380a(EnumC2981a.NONE);
            this.f4643i = null;
            this.f4641g = null;
            this.f4642h = null;
            this.f4644j = null;
        }
    }

    /* renamed from: a */
    public final void m33380a(EnumC2981a aVar) {
        synchronized (this) {
            EnumC2981a aVar2 = aVar;
            if (aVar == null) {
                aVar2 = EnumC2981a.NONE;
            }
            String str = f4635a;
            C3356jq.m32615a(3, str, "Setting state from " + this.f4640f + " to " + aVar2);
            if (EnumC2981a.NONE.equals(this.f4640f) && !EnumC2981a.NONE.equals(aVar2)) {
                String str2 = f4635a;
                C3356jq.m32615a(3, str2, "Adding request listeners for adspace: " + this.f4638d);
                C3345jm.m32636a().m32632a("com.flurry.android.sdk.IdProviderFinishedEvent", this.f4645k);
            } else if (EnumC2981a.NONE.equals(aVar2) && !EnumC2981a.NONE.equals(this.f4640f)) {
                String str3 = f4635a;
                C3356jq.m32615a(3, str3, "Removing request listeners for adspace: " + this.f4638d);
                C3345jm.m32636a().m32634a(this.f4645k);
            }
            this.f4640f = aVar2;
        }
    }

    /* renamed from: a */
    public final void m33375a(AbstractC3518x xVar, C2792ac acVar, C2853ay ayVar) {
        synchronized (this) {
            String str = f4635a;
            C3356jq.m32615a(3, str, "requestAd: adSpace = " + this.f4638d);
            if (!EnumC2981a.NONE.equals(this.f4640f)) {
                String str2 = f4635a;
                C3356jq.m32615a(3, str2, "requestAds: request pending " + this.f4640f);
            } else if (!C3310ir.m32715a().f5616b) {
                C3356jq.m32615a(5, f4635a, "There is no network connectivity (requestAds will fail)");
                m33369d();
            } else {
                this.f4641g = xVar;
                this.f4642h = ayVar;
                this.f4643i = acVar;
                C3484p.m32358a().f6005g.m33477a();
                if (C3296il.m32745a().m32742b()) {
                    m33380a(EnumC2981a.BUILD_REQUEST);
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.dj.2
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C2974dj djVar = C2974dj.this;
                            djVar.m33374a(djVar.f4641g, C2974dj.this.f4642h);
                        }
                    });
                    return;
                }
                C3356jq.m32615a(3, f4635a, "No reported ids yet; waiting");
                m33380a(EnumC2981a.WAIT_FOR_REPORTED_IDS);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v182, types: [byte[], RequestObjectType] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33374a(final com.flurry.sdk.AbstractC3518x r7, com.flurry.sdk.C2853ay r8) {
        /*
            Method dump skipped, instructions count: 1608
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C2974dj.m33374a(com.flurry.sdk.x, com.flurry.sdk.ay):void");
    }

    /* renamed from: b */
    public final void m33373b() {
        synchronized (this) {
            m33381a();
        }
    }

    /* renamed from: d */
    public final void m33369d() {
        C2982dk dkVar = new C2982dk();
        dkVar.f4659a = this;
        dkVar.f4660c = this.f4644j;
        C3345jm.m32636a().m32635a(dkVar);
    }

    /* renamed from: e */
    public final void m33367e() {
        int i;
        synchronized (this) {
            if (EnumC2981a.PREPROCESS.equals(this.f4640f)) {
                for (C2853ay ayVar : this.f4644j) {
                    C2909cf cfVar = ayVar.f4111b.f4147b;
                    if (cfVar.f4441g != null) {
                        for (C2916cm cmVar : cfVar.f4441g) {
                            C3484p.m32358a().f6005g.m33475a(new C2877bl(cmVar));
                        }
                    }
                    List<C2904ca> list = cfVar.f4440f;
                    int i2 = 0;
                    while (true) {
                        i = 0;
                        if (i2 >= list.size()) {
                            break;
                        }
                        C2904ca caVar = list.get(i2);
                        if (caVar.f4367b != null && !caVar.f4367b.isEmpty()) {
                            C3021eh a = C3024ej.m33253a(caVar.f4367b);
                            if (a != null) {
                                ayVar.m33537a(i2, a);
                                i = 0;
                                if (a.f4708d) {
                                    break;
                                }
                            } else {
                                continue;
                            }
                        } else if (cfVar.f4435a.equals(EnumC2911ch.NATIVE)) {
                            Iterator<C2921cr> it = cfVar.f4460z.f4513f.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    C2921cr next = it.next();
                                    if (next.f4516b == EnumC2922cs.VAST_VIDEO) {
                                        C3021eh a2 = C3024ej.m33253a(next.f4517c);
                                        if (a2 != null) {
                                            ayVar.m33537a(i2, a2);
                                            boolean z = a2.f4708d;
                                        }
                                    }
                                }
                            }
                        }
                        i2++;
                    }
                    while (i < list.size()) {
                        List<String> a3 = C2810ah.m33628a(ayVar, i);
                        C2861bc bcVar = ayVar.f4111b;
                        if (i >= 0 && i < bcVar.f4148c.size()) {
                            bcVar.f4148c.get(i).f4118d = a3;
                        }
                        i++;
                    }
                }
                C3356jq.m32615a(3, f4635a, "Handling ad response for adSpace: " + this.f4638d + ", size: " + this.f4644j.size());
                if (this.f4644j.size() > 0) {
                    if (this.f4643i != null) {
                        this.f4643i.m33684a(this.f4644j);
                    }
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.dj.4
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C3484p.m32358a().f6006h.m33644a(C2974dj.this.f4644j);
                        }
                    });
                }
                m33369d();
                m33381a();
            }
        }
    }

    /* renamed from: f */
    public final void m33365f() {
        synchronized (this) {
            if (EnumC2981a.WAIT_FOR_REPORTED_IDS.equals(this.f4640f)) {
                C3356jq.m32615a(3, f4635a, "Reported ids retrieved; request may continue");
                m33380a(EnumC2981a.BUILD_REQUEST);
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.dj.5
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C2974dj djVar = C2974dj.this;
                        djVar.m33374a(djVar.f4641g, C2974dj.this.f4642h);
                    }
                });
            }
        }
    }
}
