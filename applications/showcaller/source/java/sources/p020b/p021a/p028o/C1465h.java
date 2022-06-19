package p020b.p021a.p028o;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;
import p020b.p041h.p050l.AbstractC1608b0;
import p020b.p041h.p050l.C1601a0;
import p020b.p041h.p050l.C1611c0;
/* renamed from: b.a.o.h */
/* loaded from: classes-dex2jar.jar:b/a/o/h.class */
public class C1465h {

    /* renamed from: c */
    private Interpolator f5897c;

    /* renamed from: d */
    AbstractC1608b0 f5898d;

    /* renamed from: e */
    private boolean f5899e;

    /* renamed from: b */
    private long f5896b = -1;

    /* renamed from: f */
    private final C1611c0 f5900f = new C1466a();

    /* renamed from: a */
    final ArrayList<C1601a0> f5895a = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.a.o.h$a */
    /* loaded from: classes-dex2jar.jar:b/a/o/h$a.class */
    public class C1466a extends C1611c0 {

        /* renamed from: a */
        private boolean f5901a = false;

        /* renamed from: b */
        private int f5902b = 0;

        C1466a() {
            C1465h.this = r4;
        }

        @Override // p020b.p041h.p050l.AbstractC1608b0
        /* renamed from: b */
        public void mo29619b(View view) {
            int i = this.f5902b + 1;
            this.f5902b = i;
            if (i == C1465h.this.f5895a.size()) {
                AbstractC1608b0 abstractC1608b0 = C1465h.this.f5898d;
                if (abstractC1608b0 != null) {
                    abstractC1608b0.mo29619b(null);
                }
                m29996d();
            }
        }

        @Override // p020b.p041h.p050l.C1611c0, p020b.p041h.p050l.AbstractC1608b0
        /* renamed from: c */
        public void mo29608c(View view) {
            if (this.f5901a) {
                return;
            }
            this.f5901a = true;
            AbstractC1608b0 abstractC1608b0 = C1465h.this.f5898d;
            if (abstractC1608b0 == null) {
                return;
            }
            abstractC1608b0.mo29608c(null);
        }

        /* renamed from: d */
        void m29996d() {
            this.f5902b = 0;
            this.f5901a = false;
            C1465h.this.m30003b();
        }
    }

    /* renamed from: a */
    public void m30004a() {
        if (!this.f5899e) {
            return;
        }
        Iterator<C1601a0> it = this.f5895a.iterator();
        while (it.hasNext()) {
            it.next().m29641b();
        }
        this.f5899e = false;
    }

    /* renamed from: b */
    void m30003b() {
        this.f5899e = false;
    }

    /* renamed from: c */
    public C1465h m30002c(C1601a0 c1601a0) {
        if (!this.f5899e) {
            this.f5895a.add(c1601a0);
        }
        return this;
    }

    /* renamed from: d */
    public C1465h m30001d(C1601a0 c1601a0, C1601a0 c1601a02) {
        this.f5895a.add(c1601a0);
        c1601a02.m29635h(c1601a0.m29640c());
        this.f5895a.add(c1601a02);
        return this;
    }

    /* renamed from: e */
    public C1465h m30000e(long j) {
        if (!this.f5899e) {
            this.f5896b = j;
        }
        return this;
    }

    /* renamed from: f */
    public C1465h m29999f(Interpolator interpolator) {
        if (!this.f5899e) {
            this.f5897c = interpolator;
        }
        return this;
    }

    /* renamed from: g */
    public C1465h m29998g(AbstractC1608b0 abstractC1608b0) {
        if (!this.f5899e) {
            this.f5898d = abstractC1608b0;
        }
        return this;
    }

    /* renamed from: h */
    public void m29997h() {
        if (this.f5899e) {
            return;
        }
        Iterator<C1601a0> it = this.f5895a.iterator();
        while (it.hasNext()) {
            C1601a0 next = it.next();
            long j = this.f5896b;
            if (j >= 0) {
                next.m29639d(j);
            }
            Interpolator interpolator = this.f5897c;
            if (interpolator != null) {
                next.m29638e(interpolator);
            }
            if (this.f5898d != null) {
                next.m29637f(this.f5900f);
            }
            next.m29633j();
        }
        this.f5899e = true;
    }
}
