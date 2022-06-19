package p193e.p1451f.p1452a.p1476r.p1477k;

import android.content.Context;
import android.graphics.Point;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* renamed from: e.f.a.r.k.d$a */
/* loaded from: classes-dex2jar.jar:e/f/a/r/k/d$a.class */
public final class d$a {

    /* renamed from: d */
    public static Integer f62603d;

    /* renamed from: a */
    public final View f62604a;

    /* renamed from: b */
    public final List<AbstractC22597j> f62605b = new ArrayList();

    /* renamed from: c */
    public ViewTreeObserver$OnPreDrawListenerC22595a f62606c;

    /* renamed from: e.f.a.r.k.d$a$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/r/k/d$a$a.class */
    public static final class ViewTreeObserver$OnPreDrawListenerC22595a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        public final WeakReference<d$a> f62607a;

        public ViewTreeObserver$OnPreDrawListenerC22595a(d$a d_a) {
            this.f62607a = new WeakReference<>(d_a);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (Log.isLoggable("CustomViewTarget", 2)) {
                String str = "OnGlobalLayoutListener called attachStateListener=" + this;
            }
            d$a d_a = this.f62607a.get();
            if (d_a == null || d_a.f62605b.isEmpty()) {
                return true;
            }
            int m8056d = d_a.m8056d();
            int m8057c = d_a.m8057c();
            if (!d_a.m8055e(m8056d, m8057c)) {
                return true;
            }
            Iterator it = new ArrayList(d_a.f62605b).iterator();
            while (it.hasNext()) {
                ((AbstractC22597j) it.next()).mo8054a(m8056d, m8057c);
            }
            d_a.m8059a();
            return true;
        }
    }

    public d$a(View view) {
        this.f62604a = view;
    }

    /* renamed from: a */
    public void m8059a() {
        ViewTreeObserver viewTreeObserver = this.f62604a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f62606c);
        }
        this.f62606c = null;
        this.f62605b.clear();
    }

    /* renamed from: b */
    public final int m8058b(int i, int i2, int i3) {
        int i4 = i2 - i3;
        if (i4 > 0) {
            return i4;
        }
        int i5 = i - i3;
        if (i5 > 0) {
            return i5;
        }
        if (this.f62604a.isLayoutRequested() || i2 != -2) {
            return 0;
        }
        Log.isLoggable("CustomViewTarget", 4);
        Context context = this.f62604a.getContext();
        if (f62603d == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            Objects.requireNonNull(windowManager, "Argument must not be null");
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            f62603d = Integer.valueOf(Math.max(point.x, point.y));
        }
        return f62603d.intValue();
    }

    /* renamed from: c */
    public final int m8057c() {
        int paddingTop = this.f62604a.getPaddingTop();
        int paddingBottom = this.f62604a.getPaddingBottom();
        ViewGroup.LayoutParams layoutParams = this.f62604a.getLayoutParams();
        return m8058b(this.f62604a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingBottom + paddingTop);
    }

    /* renamed from: d */
    public final int m8056d() {
        int paddingLeft = this.f62604a.getPaddingLeft();
        int paddingRight = this.f62604a.getPaddingRight();
        ViewGroup.LayoutParams layoutParams = this.f62604a.getLayoutParams();
        return m8058b(this.f62604a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight + paddingLeft);
    }

    /* renamed from: e */
    public final boolean m8055e(int i, int i2) {
        boolean z = false;
        if (i > 0 || i == Integer.MIN_VALUE) {
            z = false;
            if (i2 > 0 || i2 == Integer.MIN_VALUE) {
                z = true;
            }
        }
        return z;
    }
}
