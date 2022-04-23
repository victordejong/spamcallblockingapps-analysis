package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.view.aa;
import androidx.core.view.y;
import androidx.core.view.z;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/h.class */
public final class h {

    /* renamed from: b  reason: collision with root package name */
    z f756b;

    /* renamed from: c  reason: collision with root package name */
    boolean f757c;
    private Interpolator e;

    /* renamed from: d  reason: collision with root package name */
    private long f758d = -1;
    private final aa f = new aa() { // from class: androidx.appcompat.view.h.1

        /* renamed from: b  reason: collision with root package name */
        private boolean f760b = false;

        /* renamed from: c  reason: collision with root package name */
        private int f761c = 0;

        @Override // androidx.core.view.aa, androidx.core.view.z
        public final void a(View view) {
            if (!this.f760b) {
                this.f760b = true;
                if (h.this.f756b != null) {
                    h.this.f756b.a(null);
                }
            }
        }

        @Override // androidx.core.view.aa, androidx.core.view.z
        public final void b(View view) {
            int i = this.f761c + 1;
            this.f761c = i;
            if (i == h.this.f755a.size()) {
                if (h.this.f756b != null) {
                    h.this.f756b.b(null);
                }
                this.f761c = 0;
                this.f760b = false;
                h.this.f757c = false;
            }
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<y> f755a = new ArrayList<>();

    public final h a(Interpolator interpolator) {
        if (!this.f757c) {
            this.e = interpolator;
        }
        return this;
    }

    public final h a(y yVar) {
        if (!this.f757c) {
            this.f755a.add(yVar);
        }
        return this;
    }

    public final h a(y yVar, y yVar2) {
        this.f755a.add(yVar);
        yVar2.b(yVar.a());
        this.f755a.add(yVar2);
        return this;
    }

    public final h a(z zVar) {
        if (!this.f757c) {
            this.f756b = zVar;
        }
        return this;
    }

    public final void a() {
        if (!this.f757c) {
            Iterator<y> it2 = this.f755a.iterator();
            while (it2.hasNext()) {
                y next = it2.next();
                long j = this.f758d;
                if (j >= 0) {
                    next.a(j);
                }
                Interpolator interpolator = this.e;
                if (interpolator != null) {
                    next.a(interpolator);
                }
                if (this.f756b != null) {
                    next.a(this.f);
                }
                next.c();
            }
            this.f757c = true;
        }
    }

    public final void b() {
        if (this.f757c) {
            Iterator<y> it2 = this.f755a.iterator();
            while (it2.hasNext()) {
                it2.next().b();
            }
            this.f757c = false;
        }
    }

    public final h c() {
        if (!this.f757c) {
            this.f758d = 250L;
        }
        return this;
    }
}
