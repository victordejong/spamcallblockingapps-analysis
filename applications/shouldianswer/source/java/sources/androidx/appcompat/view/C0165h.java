package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.p023g.AbstractC0568z;
import androidx.core.p023g.C0527aa;
import androidx.core.p023g.C0564y;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.appcompat.view.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/h.class */
public class C0165h {

    /* renamed from: b */
    AbstractC0568z f587b;

    /* renamed from: d */
    private Interpolator f589d;

    /* renamed from: e */
    private boolean f590e;

    /* renamed from: c */
    private long f588c = -1;

    /* renamed from: f */
    private final C0527aa f591f = new C0527aa() { // from class: androidx.appcompat.view.h.1

        /* renamed from: b */
        private boolean f593b = false;

        /* renamed from: c */
        private int f594c = 0;

        /* renamed from: a */
        void m7608a() {
            this.f594c = 0;
            this.f593b = false;
            C0165h.this.m7610b();
        }

        @Override // androidx.core.p023g.C0527aa, androidx.core.p023g.AbstractC0568z
        /* renamed from: a */
        public void mo3963a(View view) {
            if (this.f593b) {
                return;
            }
            this.f593b = true;
            if (C0165h.this.f587b == null) {
                return;
            }
            C0165h.this.f587b.mo3963a(null);
        }

        @Override // androidx.core.p023g.C0527aa, androidx.core.p023g.AbstractC0568z
        /* renamed from: b */
        public void mo3962b(View view) {
            int i = this.f594c + 1;
            this.f594c = i;
            if (i == C0165h.this.f586a.size()) {
                if (C0165h.this.f587b != null) {
                    C0165h.this.f587b.mo3962b(null);
                }
                m7608a();
            }
        }
    };

    /* renamed from: a */
    final ArrayList<C0564y> f586a = new ArrayList<>();

    /* renamed from: a */
    public C0165h m7615a(long j) {
        if (!this.f590e) {
            this.f588c = j;
        }
        return this;
    }

    /* renamed from: a */
    public C0165h m7614a(Interpolator interpolator) {
        if (!this.f590e) {
            this.f589d = interpolator;
        }
        return this;
    }

    /* renamed from: a */
    public C0165h m7613a(C0564y c0564y) {
        if (!this.f590e) {
            this.f586a.add(c0564y);
        }
        return this;
    }

    /* renamed from: a */
    public C0165h m7612a(C0564y c0564y, C0564y c0564y2) {
        this.f586a.add(c0564y);
        c0564y2.m6180b(c0564y.m6189a());
        this.f586a.add(c0564y2);
        return this;
    }

    /* renamed from: a */
    public C0165h m7611a(AbstractC0568z abstractC0568z) {
        if (!this.f590e) {
            this.f587b = abstractC0568z;
        }
        return this;
    }

    /* renamed from: a */
    public void m7616a() {
        if (this.f590e) {
            return;
        }
        Iterator<C0564y> it = this.f586a.iterator();
        while (it.hasNext()) {
            C0564y next = it.next();
            long j = this.f588c;
            if (j >= 0) {
                next.m6187a(j);
            }
            Interpolator interpolator = this.f589d;
            if (interpolator != null) {
                next.m6185a(interpolator);
            }
            if (this.f587b != null) {
                next.m6183a(this.f591f);
            }
            next.m6179c();
        }
        this.f590e = true;
    }

    /* renamed from: b */
    void m7610b() {
        this.f590e = false;
    }

    /* renamed from: c */
    public void m7609c() {
        if (!this.f590e) {
            return;
        }
        Iterator<C0564y> it = this.f586a.iterator();
        while (it.hasNext()) {
            it.next().m6182b();
        }
        this.f590e = false;
    }
}
