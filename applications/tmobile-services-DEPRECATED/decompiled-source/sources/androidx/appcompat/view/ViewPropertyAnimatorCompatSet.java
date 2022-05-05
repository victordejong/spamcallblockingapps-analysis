package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import java.util.ArrayList;
import java.util.Iterator;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/ViewPropertyAnimatorCompatSet.class */
public class ViewPropertyAnimatorCompatSet {

    /* renamed from: c */
    private Interpolator f504c;

    /* renamed from: d */
    ViewPropertyAnimatorListener f505d;

    /* renamed from: e */
    private boolean f506e;

    /* renamed from: b */
    private long f503b = -1;

    /* renamed from: f */
    private final ViewPropertyAnimatorListenerAdapter f507f = new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.view.ViewPropertyAnimatorCompatSet.1

        /* renamed from: a */
        private boolean f508a = false;

        /* renamed from: b */
        private int f509b = 0;

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        /* renamed from: b */
        public void mo19103b(View view) {
            int i = this.f509b + 1;
            this.f509b = i;
            if (i == ViewPropertyAnimatorCompatSet.this.f502a.size()) {
                ViewPropertyAnimatorListener viewPropertyAnimatorListener = ViewPropertyAnimatorCompatSet.this.f505d;
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.mo19103b(null);
                }
                m21936d();
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        /* renamed from: c */
        public void mo19102c(View view) {
            if (!this.f508a) {
                this.f508a = true;
                ViewPropertyAnimatorListener viewPropertyAnimatorListener = ViewPropertyAnimatorCompatSet.this.f505d;
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.mo19102c(null);
                }
            }
        }

        /* renamed from: d */
        void m21936d() {
            this.f509b = 0;
            this.f508a = false;
            ViewPropertyAnimatorCompatSet.this.m21943b();
        }
    };

    /* renamed from: a */
    final ArrayList<ViewPropertyAnimatorCompat> f502a = new ArrayList<>();

    /* renamed from: a */
    public void m21944a() {
        if (this.f506e) {
            Iterator<ViewPropertyAnimatorCompat> it = this.f502a.iterator();
            while (it.hasNext()) {
                it.next().m19114b();
            }
            this.f506e = false;
        }
    }

    /* renamed from: b */
    void m21943b() {
        this.f506e = false;
    }

    /* renamed from: c */
    public ViewPropertyAnimatorCompatSet m21942c(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        if (!this.f506e) {
            this.f502a.add(viewPropertyAnimatorCompat);
        }
        return this;
    }

    /* renamed from: d */
    public ViewPropertyAnimatorCompatSet m21941d(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2) {
        this.f502a.add(viewPropertyAnimatorCompat);
        viewPropertyAnimatorCompat2.m19108h(viewPropertyAnimatorCompat.m19113c());
        this.f502a.add(viewPropertyAnimatorCompat2);
        return this;
    }

    /* renamed from: e */
    public ViewPropertyAnimatorCompatSet m21940e(long j) {
        if (!this.f506e) {
            this.f503b = j;
        }
        return this;
    }

    /* renamed from: f */
    public ViewPropertyAnimatorCompatSet m21939f(Interpolator interpolator) {
        if (!this.f506e) {
            this.f504c = interpolator;
        }
        return this;
    }

    /* renamed from: g */
    public ViewPropertyAnimatorCompatSet m21938g(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (!this.f506e) {
            this.f505d = viewPropertyAnimatorListener;
        }
        return this;
    }

    /* renamed from: h */
    public void m21937h() {
        if (!this.f506e) {
            Iterator<ViewPropertyAnimatorCompat> it = this.f502a.iterator();
            while (it.hasNext()) {
                ViewPropertyAnimatorCompat next = it.next();
                long j = this.f503b;
                if (j >= 0) {
                    next.m19112d(j);
                }
                Interpolator interpolator = this.f504c;
                if (interpolator != null) {
                    next.m19111e(interpolator);
                }
                if (this.f505d != null) {
                    next.m19110f(this.f507f);
                }
                next.m19106j();
            }
            this.f506e = true;
        }
    }
}
