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
/* renamed from: e.f.a.r.k.l$a */
/* loaded from: classes-dex2jar.jar:e/f/a/r/k/l$a.class */
public final class l$a {

    /* renamed from: d */
    public static Integer f62608d;

    /* renamed from: a */
    public final View f62609a;

    /* renamed from: b */
    public final List<AbstractC22597j> f62610b = new ArrayList();

    /* renamed from: c */
    public ViewTreeObserver$OnPreDrawListenerC22599a f62611c;

    /* renamed from: e.f.a.r.k.l$a$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/r/k/l$a$a.class */
    public static final class ViewTreeObserver$OnPreDrawListenerC22599a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        public final WeakReference<l$a> f62612a;

        public ViewTreeObserver$OnPreDrawListenerC22599a(l$a l_a) {
            this.f62612a = new WeakReference<>(l_a);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (Log.isLoggable("ViewTarget", 2)) {
                String str = "OnGlobalLayoutListener called attachStateListener=" + this;
            }
            l$a l_a = this.f62612a.get();
            if (l_a == null || l_a.f62610b.isEmpty()) {
                return true;
            }
            int m8042d = l_a.m8042d();
            int m8043c = l_a.m8043c();
            if (!l_a.m8041e(m8042d, m8043c)) {
                return true;
            }
            Iterator it = new ArrayList(l_a.f62610b).iterator();
            while (it.hasNext()) {
                ((AbstractC22597j) it.next()).mo8054a(m8042d, m8043c);
            }
            l_a.m8045a();
            return true;
        }
    }

    public l$a(View view) {
        this.f62609a = view;
    }

    /* renamed from: a */
    public void m8045a() {
        ViewTreeObserver viewTreeObserver = this.f62609a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f62611c);
        }
        this.f62611c = null;
        this.f62610b.clear();
    }

    /* renamed from: b */
    public final int m8044b(int i, int i2, int i3) {
        int i4 = i2 - i3;
        if (i4 > 0) {
            return i4;
        }
        int i5 = i - i3;
        if (i5 > 0) {
            return i5;
        }
        if (this.f62609a.isLayoutRequested() || i2 != -2) {
            return 0;
        }
        Log.isLoggable("ViewTarget", 4);
        Context context = this.f62609a.getContext();
        if (f62608d == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            Objects.requireNonNull(windowManager, "Argument must not be null");
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            f62608d = Integer.valueOf(Math.max(point.x, point.y));
        }
        return f62608d.intValue();
    }

    /* renamed from: c */
    public final int m8043c() {
        int paddingTop = this.f62609a.getPaddingTop();
        int paddingBottom = this.f62609a.getPaddingBottom();
        ViewGroup.LayoutParams layoutParams = this.f62609a.getLayoutParams();
        return m8044b(this.f62609a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingBottom + paddingTop);
    }

    /* renamed from: d */
    public final int m8042d() {
        int paddingLeft = this.f62609a.getPaddingLeft();
        int paddingRight = this.f62609a.getPaddingRight();
        ViewGroup.LayoutParams layoutParams = this.f62609a.getLayoutParams();
        return m8044b(this.f62609a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight + paddingLeft);
    }

    /* renamed from: e */
    public final boolean m8041e(int i, int i2) {
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
