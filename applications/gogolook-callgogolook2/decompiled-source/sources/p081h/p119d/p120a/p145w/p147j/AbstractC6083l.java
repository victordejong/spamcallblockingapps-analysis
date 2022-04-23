package p081h.p119d.p120a.p145w.p147j;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import p081h.p119d.p120a.p145w.AbstractC6053c;
/* renamed from: h.d.a.w.j.l */
/* loaded from: classes-dex2jar.jar:h/d/a/w/j/l.class */
public abstract class AbstractC6083l<T extends View, Z> extends AbstractC6071a<Z> {

    /* renamed from: d */
    public static Integer f15129d;

    /* renamed from: b */
    public final T f15130b;

    /* renamed from: c */
    public final C6084a f15131c;

    /* renamed from: h.d.a.w.j.l$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/w/j/l$a.class */
    public static class C6084a {

        /* renamed from: a */
        public final View f15132a;

        /* renamed from: b */
        public final List<AbstractC6079i> f15133b = new ArrayList();

        /* renamed from: c */
        public ViewTreeObserver$OnPreDrawListenerC6085a f15134c;

        /* renamed from: d */
        public Point f15135d;

        /* renamed from: h.d.a.w.j.l$a$a */
        /* loaded from: classes-dex2jar.jar:h/d/a/w/j/l$a$a.class */
        public static class ViewTreeObserver$OnPreDrawListenerC6085a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a */
            public final WeakReference<C6084a> f15136a;

            public ViewTreeObserver$OnPreDrawListenerC6085a(C6084a aVar) {
                this.f15136a = new WeakReference<>(aVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    String str = "OnGlobalLayoutListener called listener=" + this;
                }
                C6084a aVar = this.f15136a.get();
                if (aVar == null) {
                    return true;
                }
                aVar.m23901a();
                return true;
            }
        }

        public C6084a(View view) {
            this.f15132a = view;
        }

        /* renamed from: a */
        public final int m23898a(int i, boolean z) {
            int i2 = i;
            if (i == -2) {
                Point b = m23895b();
                i2 = z ? b.y : b.x;
            }
            return i2;
        }

        /* renamed from: a */
        public final void m23901a() {
            if (!this.f15133b.isEmpty()) {
                int d = m23893d();
                int c = m23894c();
                if (m23900a(d) && m23900a(c)) {
                    m23899a(d, c);
                    ViewTreeObserver viewTreeObserver = this.f15132a.getViewTreeObserver();
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.removeOnPreDrawListener(this.f15134c);
                    }
                    this.f15134c = null;
                }
            }
        }

        /* renamed from: a */
        public final void m23899a(int i, int i2) {
            for (AbstractC6079i iVar : this.f15133b) {
                iVar.mo23913a(i, i2);
            }
            this.f15133b.clear();
        }

        /* renamed from: a */
        public void m23897a(AbstractC6079i iVar) {
            int d = m23893d();
            int c = m23894c();
            if (!m23900a(d) || !m23900a(c)) {
                if (!this.f15133b.contains(iVar)) {
                    this.f15133b.add(iVar);
                }
                if (this.f15134c == null) {
                    ViewTreeObserver viewTreeObserver = this.f15132a.getViewTreeObserver();
                    this.f15134c = new ViewTreeObserver$OnPreDrawListenerC6085a(this);
                    viewTreeObserver.addOnPreDrawListener(this.f15134c);
                    return;
                }
                return;
            }
            iVar.mo23913a(d, c);
        }

        /* renamed from: a */
        public final boolean m23900a(int i) {
            return i > 0 || i == -2;
        }

        @TargetApi(13)
        /* renamed from: b */
        public final Point m23895b() {
            Point point = this.f15135d;
            if (point != null) {
                return point;
            }
            Display defaultDisplay = ((WindowManager) this.f15132a.getContext().getSystemService("window")).getDefaultDisplay();
            if (Build.VERSION.SDK_INT >= 13) {
                this.f15135d = new Point();
                defaultDisplay.getSize(this.f15135d);
            } else {
                this.f15135d = new Point(defaultDisplay.getWidth(), defaultDisplay.getHeight());
            }
            return this.f15135d;
        }

        /* renamed from: c */
        public final int m23894c() {
            ViewGroup.LayoutParams layoutParams = this.f15132a.getLayoutParams();
            if (m23900a(this.f15132a.getHeight())) {
                return this.f15132a.getHeight();
            }
            if (layoutParams != null) {
                return m23898a(layoutParams.height, true);
            }
            return 0;
        }

        /* renamed from: d */
        public final int m23893d() {
            ViewGroup.LayoutParams layoutParams = this.f15132a.getLayoutParams();
            if (m23900a(this.f15132a.getWidth())) {
                return this.f15132a.getWidth();
            }
            if (layoutParams != null) {
                return m23898a(layoutParams.width, false);
            }
            return 0;
        }
    }

    public AbstractC6083l(T t) {
        if (t != null) {
            this.f15130b = t;
            this.f15131c = new C6084a(t);
            return;
        }
        throw new NullPointerException("View must not be null!");
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6071a, p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: a */
    public AbstractC6053c mo23907a() {
        AbstractC6053c cVar;
        Object b = m23903b();
        if (b == null) {
            cVar = null;
        } else if (b instanceof AbstractC6053c) {
            cVar = (AbstractC6053c) b;
        } else {
            throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
        }
        return cVar;
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6071a, p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: a */
    public void mo23906a(AbstractC6053c cVar) {
        m23904a((Object) cVar);
    }

    @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
    /* renamed from: a */
    public void mo23905a(AbstractC6079i iVar) {
        this.f15131c.m23897a(iVar);
    }

    /* renamed from: a */
    public final void m23904a(Object obj) {
        Integer num = f15129d;
        if (num == null) {
            this.f15130b.setTag(obj);
        } else {
            this.f15130b.setTag(num.intValue(), obj);
        }
    }

    /* renamed from: b */
    public final Object m23903b() {
        Integer num = f15129d;
        return num == null ? this.f15130b.getTag() : this.f15130b.getTag(num.intValue());
    }

    /* renamed from: d */
    public T m23902d() {
        return this.f15130b;
    }

    public String toString() {
        return "Target for: " + this.f15130b;
    }
}
