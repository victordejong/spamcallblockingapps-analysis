package com.bumptech.glide.request.p031h;

import android.content.Context;
import android.graphics.Point;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.bumptech.glide.p029o.C0856j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.request.h.j$a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/h/j$a.class */
public final class j$a {

    /* renamed from: e */
    static Integer f3872e;

    /* renamed from: a */
    private final View f3873a;

    /* renamed from: b */
    private final List<AbstractC0871h> f3874b = new ArrayList();

    /* renamed from: c */
    boolean f3875c;

    /* renamed from: d */
    private ViewTreeObserver$OnPreDrawListenerC0872a f3876d;

    /* renamed from: com.bumptech.glide.request.h.j$a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/h/j$a$a.class */
    public static final class ViewTreeObserver$OnPreDrawListenerC0872a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: b */
        private final WeakReference<j$a> f3877b;

        ViewTreeObserver$OnPreDrawListenerC0872a(j$a j_a) {
            this.f3877b = new WeakReference<>(j_a);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (Log.isLoggable("ViewTarget", 2)) {
                Log.v("ViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
            }
            j$a j_a = this.f3877b.get();
            if (j_a != null) {
                j_a.m10642a();
                return true;
            }
            return true;
        }
    }

    j$a(View view) {
        this.f3873a = view;
    }

    /* renamed from: c */
    private static int m10640c(Context context) {
        if (f3872e == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            C0856j.m10759d(windowManager);
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            f3872e = Integer.valueOf(Math.max(point.x, point.y));
        }
        return f3872e.intValue();
    }

    /* renamed from: e */
    private int m10638e(int i, int i2, int i3) {
        int i4 = i2 - i3;
        if (i4 > 0) {
            return i4;
        }
        if (this.f3875c && this.f3873a.isLayoutRequested()) {
            return 0;
        }
        int i5 = i - i3;
        if (i5 > 0) {
            return i5;
        }
        if (this.f3873a.isLayoutRequested() || i2 != -2) {
            return 0;
        }
        if (Log.isLoggable("ViewTarget", 4)) {
            Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
        }
        return m10640c(this.f3873a.getContext());
    }

    /* renamed from: f */
    private int m10637f() {
        int paddingTop = this.f3873a.getPaddingTop();
        int paddingBottom = this.f3873a.getPaddingBottom();
        ViewGroup.LayoutParams layoutParams = this.f3873a.getLayoutParams();
        return m10638e(this.f3873a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop + paddingBottom);
    }

    /* renamed from: g */
    private int m10636g() {
        int paddingLeft = this.f3873a.getPaddingLeft();
        int paddingRight = this.f3873a.getPaddingRight();
        ViewGroup.LayoutParams layoutParams = this.f3873a.getLayoutParams();
        return m10638e(this.f3873a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft + paddingRight);
    }

    /* renamed from: h */
    private boolean m10635h(int i) {
        return i > 0 || i == Integer.MIN_VALUE;
    }

    /* renamed from: i */
    private boolean m10634i(int i, int i2) {
        return m10635h(i) && m10635h(i2);
    }

    /* renamed from: j */
    private void m10633j(int i, int i2) {
        Iterator it = new ArrayList(this.f3874b).iterator();
        while (it.hasNext()) {
            ((AbstractC0871h) it.next()).m10643g(i, i2);
        }
    }

    /* renamed from: a */
    void m10642a() {
        if (this.f3874b.isEmpty()) {
            return;
        }
        int m10636g = m10636g();
        int m10637f = m10637f();
        if (!m10634i(m10636g, m10637f)) {
            return;
        }
        m10633j(m10636g, m10637f);
        m10641b();
    }

    /* renamed from: b */
    void m10641b() {
        ViewTreeObserver viewTreeObserver = this.f3873a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f3876d);
        }
        this.f3876d = null;
        this.f3874b.clear();
    }

    /* renamed from: d */
    void m10639d(AbstractC0871h abstractC0871h) {
        int m10636g = m10636g();
        int m10637f = m10637f();
        if (m10634i(m10636g, m10637f)) {
            abstractC0871h.m10643g(m10636g, m10637f);
            return;
        }
        if (!this.f3874b.contains(abstractC0871h)) {
            this.f3874b.add(abstractC0871h);
        }
        if (this.f3876d != null) {
            return;
        }
        ViewTreeObserver viewTreeObserver = this.f3873a.getViewTreeObserver();
        ViewTreeObserver$OnPreDrawListenerC0872a viewTreeObserver$OnPreDrawListenerC0872a = new ViewTreeObserver$OnPreDrawListenerC0872a(this);
        this.f3876d = viewTreeObserver$OnPreDrawListenerC0872a;
        viewTreeObserver.addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC0872a);
    }

    /* renamed from: k */
    void m10632k(AbstractC0871h abstractC0871h) {
        this.f3874b.remove(abstractC0871h);
    }
}
