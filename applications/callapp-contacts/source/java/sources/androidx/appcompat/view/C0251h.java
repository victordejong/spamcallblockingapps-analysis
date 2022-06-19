package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.view.AbstractC0944z;
import androidx.core.view.C0887aa;
import androidx.core.view.C0940y;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.appcompat.view.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/h.class */
public final class C0251h {

    /* renamed from: b */
    AbstractC0944z f753b;

    /* renamed from: c */
    boolean f754c;

    /* renamed from: e */
    private Interpolator f756e;

    /* renamed from: d */
    private long f755d = -1;

    /* renamed from: f */
    private final C0887aa f757f = new C0887aa() { // from class: androidx.appcompat.view.h.1

        /* renamed from: b */
        private boolean f759b = false;

        /* renamed from: c */
        private int f760c = 0;

        @Override // androidx.core.view.C0887aa, androidx.core.view.AbstractC0944z
        /* renamed from: a */
        public final void mo44039a(View view) {
            if (this.f759b) {
                return;
            }
            this.f759b = true;
            if (C0251h.this.f753b == null) {
                return;
            }
            C0251h.this.f753b.mo44039a(null);
        }

        @Override // androidx.core.view.C0887aa, androidx.core.view.AbstractC0944z
        /* renamed from: b */
        public final void mo44038b(View view) {
            int i = this.f760c + 1;
            this.f760c = i;
            if (i == C0251h.this.f752a.size()) {
                if (C0251h.this.f753b != null) {
                    C0251h.this.f753b.mo44038b(null);
                }
                this.f760c = 0;
                this.f759b = false;
                C0251h.this.f754c = false;
            }
        }
    };

    /* renamed from: a */
    final ArrayList<C0940y> f752a = new ArrayList<>();

    /* renamed from: a */
    public final C0251h m46139a(Interpolator interpolator) {
        if (!this.f754c) {
            this.f756e = interpolator;
        }
        return this;
    }

    /* renamed from: a */
    public final C0251h m46138a(C0940y c0940y) {
        if (!this.f754c) {
            this.f752a.add(c0940y);
        }
        return this;
    }

    /* renamed from: a */
    public final C0251h m46137a(C0940y c0940y, C0940y c0940y2) {
        this.f752a.add(c0940y);
        c0940y2.m44041b(c0940y.m44050a());
        this.f752a.add(c0940y2);
        return this;
    }

    /* renamed from: a */
    public final C0251h m46136a(AbstractC0944z abstractC0944z) {
        if (!this.f754c) {
            this.f753b = abstractC0944z;
        }
        return this;
    }

    /* renamed from: a */
    public final void m46140a() {
        if (this.f754c) {
            return;
        }
        Iterator<C0940y> it2 = this.f752a.iterator();
        while (it2.hasNext()) {
            C0940y next = it2.next();
            long j = this.f755d;
            if (j >= 0) {
                next.m44048a(j);
            }
            Interpolator interpolator = this.f756e;
            if (interpolator != null) {
                next.m44046a(interpolator);
            }
            if (this.f753b != null) {
                next.m44044a(this.f757f);
            }
            next.m44040c();
        }
        this.f754c = true;
    }

    /* renamed from: b */
    public final void m46135b() {
        if (!this.f754c) {
            return;
        }
        Iterator<C0940y> it2 = this.f752a.iterator();
        while (it2.hasNext()) {
            it2.next().m44043b();
        }
        this.f754c = false;
    }

    /* renamed from: c */
    public final C0251h m46134c() {
        if (!this.f754c) {
            this.f755d = 250L;
        }
        return this;
    }
}
