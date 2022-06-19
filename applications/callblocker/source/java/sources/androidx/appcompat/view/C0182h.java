package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.p026h.AbstractC0611z;
import androidx.core.p026h.C0570aa;
import androidx.core.p026h.C0607y;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.appcompat.view.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/h.class */
public class C0182h {

    /* renamed from: b */
    AbstractC0611z f639b;

    /* renamed from: d */
    private Interpolator f641d;

    /* renamed from: e */
    private boolean f642e;

    /* renamed from: c */
    private long f640c = -1;

    /* renamed from: f */
    private final C0570aa f643f = new C0570aa() { // from class: androidx.appcompat.view.h.1

        /* renamed from: b */
        private boolean f645b = false;

        /* renamed from: c */
        private int f646c = 0;

        /* renamed from: a */
        void m21939a() {
            this.f646c = 0;
            this.f645b = false;
            C0182h.this.m21941b();
        }

        @Override // androidx.core.p026h.C0570aa, androidx.core.p026h.AbstractC0611z
        /* renamed from: a */
        public void mo20245a(View view) {
            if (this.f645b) {
                return;
            }
            this.f645b = true;
            if (C0182h.this.f639b == null) {
                return;
            }
            C0182h.this.f639b.mo20245a(null);
        }

        @Override // androidx.core.p026h.C0570aa, androidx.core.p026h.AbstractC0611z
        /* renamed from: b */
        public void mo20244b(View view) {
            int i = this.f646c + 1;
            this.f646c = i;
            if (i == C0182h.this.f638a.size()) {
                if (C0182h.this.f639b != null) {
                    C0182h.this.f639b.mo20244b(null);
                }
                m21939a();
            }
        }
    };

    /* renamed from: a */
    final ArrayList<C0607y> f638a = new ArrayList<>();

    /* renamed from: a */
    public C0182h m21946a(long j) {
        if (!this.f642e) {
            this.f640c = j;
        }
        return this;
    }

    /* renamed from: a */
    public C0182h m21945a(Interpolator interpolator) {
        if (!this.f642e) {
            this.f641d = interpolator;
        }
        return this;
    }

    /* renamed from: a */
    public C0182h m21944a(C0607y c0607y) {
        if (!this.f642e) {
            this.f638a.add(c0607y);
        }
        return this;
    }

    /* renamed from: a */
    public C0182h m21943a(C0607y c0607y, C0607y c0607y2) {
        this.f638a.add(c0607y);
        c0607y2.m20247b(c0607y.m20256a());
        this.f638a.add(c0607y2);
        return this;
    }

    /* renamed from: a */
    public C0182h m21942a(AbstractC0611z abstractC0611z) {
        if (!this.f642e) {
            this.f639b = abstractC0611z;
        }
        return this;
    }

    /* renamed from: a */
    public void m21947a() {
        if (this.f642e) {
            return;
        }
        Iterator<C0607y> it = this.f638a.iterator();
        while (it.hasNext()) {
            C0607y next = it.next();
            if (this.f640c >= 0) {
                next.m20254a(this.f640c);
            }
            if (this.f641d != null) {
                next.m20252a(this.f641d);
            }
            if (this.f639b != null) {
                next.m20250a(this.f643f);
            }
            next.m20246c();
        }
        this.f642e = true;
    }

    /* renamed from: b */
    void m21941b() {
        this.f642e = false;
    }

    /* renamed from: c */
    public void m21940c() {
        if (!this.f642e) {
            return;
        }
        Iterator<C0607y> it = this.f638a.iterator();
        while (it.hasNext()) {
            it.next().m20249b();
        }
        this.f642e = false;
    }
}
