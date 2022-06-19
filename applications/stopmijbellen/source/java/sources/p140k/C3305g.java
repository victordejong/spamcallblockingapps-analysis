package p140k;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;
import p134j4.C3260w0;
import p163m0.AbstractC3614z;
import p163m0.C3611y;
/* renamed from: k.g */
/* loaded from: classes-dex2jar.jar:k/g.class */
public class C3305g {

    /* renamed from: c */
    public Interpolator f11208c;

    /* renamed from: d */
    public AbstractC3614z f11209d;

    /* renamed from: e */
    public boolean f11210e;

    /* renamed from: b */
    public long f11207b = -1;

    /* renamed from: f */
    public final C3260w0 f11211f = new C3306a();

    /* renamed from: a */
    public final ArrayList<C3611y> f11206a = new ArrayList<>();

    /* renamed from: k.g$a */
    /* loaded from: classes-dex2jar.jar:k/g$a.class */
    public class C3306a extends C3260w0 {

        /* renamed from: N */
        public boolean f11212N = false;

        /* renamed from: O */
        public int f11213O = 0;

        public C3306a() {
            C3305g.this = r4;
        }

        @Override // p163m0.AbstractC3614z
        /* renamed from: c */
        public void mo1976c(View view) {
            int i = this.f11213O + 1;
            this.f11213O = i;
            if (i == C3305g.this.f11206a.size()) {
                AbstractC3614z abstractC3614z = C3305g.this.f11209d;
                if (abstractC3614z != null) {
                    abstractC3614z.mo1976c(null);
                }
                this.f11213O = 0;
                this.f11212N = false;
                C3305g.this.f11210e = false;
            }
        }

        @Override // p134j4.C3260w0, p163m0.AbstractC3614z
        /* renamed from: d */
        public void mo1975d(View view) {
            if (this.f11212N) {
                return;
            }
            this.f11212N = true;
            AbstractC3614z abstractC3614z = C3305g.this.f11209d;
            if (abstractC3614z == null) {
                return;
            }
            abstractC3614z.mo1975d(null);
        }
    }

    /* renamed from: a */
    public void m2397a() {
        if (!this.f11210e) {
            return;
        }
        Iterator<C3611y> it2 = this.f11206a.iterator();
        while (it2.hasNext()) {
            it2.next().m1983b();
        }
        this.f11210e = false;
    }

    /* renamed from: b */
    public void m2396b() {
        View view;
        if (this.f11210e) {
            return;
        }
        Iterator<C3611y> it2 = this.f11206a.iterator();
        while (it2.hasNext()) {
            C3611y next = it2.next();
            long j = this.f11207b;
            if (j >= 0) {
                next.m1982c(j);
            }
            Interpolator interpolator = this.f11208c;
            if (interpolator != null && (view = next.f11802a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.f11209d != null) {
                next.m1981d(this.f11211f);
            }
            View view2 = next.f11802a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f11210e = true;
    }
}
