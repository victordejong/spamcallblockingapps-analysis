package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import d.h.m.t;
import d.h.m.u;
/* renamed from: androidx.appcompat.widget.g0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/g0.class */
class View$OnLongClickListenerC0132g0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: k */
    private static View$OnLongClickListenerC0132g0 f607k;

    /* renamed from: l */
    private static View$OnLongClickListenerC0132g0 f608l;

    /* renamed from: b */
    private final View f609b;

    /* renamed from: c */
    private final CharSequence f610c;

    /* renamed from: d */
    private final int f611d;

    /* renamed from: e */
    private final Runnable f612e = new RunnableC0133a();

    /* renamed from: f */
    private final Runnable f613f = new RunnableC0134b();

    /* renamed from: g */
    private int f614g;

    /* renamed from: h */
    private int f615h;

    /* renamed from: i */
    private C0136h0 f616i;

    /* renamed from: j */
    private boolean f617j;

    /* renamed from: androidx.appcompat.widget.g0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/g0$a.class */
    class RunnableC0133a implements Runnable {
        RunnableC0133a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnLongClickListenerC0132g0.this.m14591g(false);
        }
    }

    /* renamed from: androidx.appcompat.widget.g0$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/g0$b.class */
    class RunnableC0134b implements Runnable {
        RunnableC0134b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnLongClickListenerC0132g0.this.m14595c();
        }
    }

    private View$OnLongClickListenerC0132g0(View view, CharSequence charSequence) {
        this.f609b = view;
        this.f610c = charSequence;
        this.f611d = u.c(ViewConfiguration.get(view.getContext()));
        m14596b();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    /* renamed from: a */
    private void m14597a() {
        this.f609b.removeCallbacks(this.f612e);
    }

    /* renamed from: b */
    private void m14596b() {
        this.f614g = Integer.MAX_VALUE;
        this.f615h = Integer.MAX_VALUE;
    }

    /* renamed from: d */
    private void m14594d() {
        this.f609b.postDelayed(this.f612e, ViewConfiguration.getLongPressTimeout());
    }

    /* renamed from: e */
    private static void m14593e(View$OnLongClickListenerC0132g0 g0Var) {
        View$OnLongClickListenerC0132g0 g0Var2 = f607k;
        if (g0Var2 != null) {
            g0Var2.m14597a();
        }
        f607k = g0Var;
        if (g0Var != null) {
            g0Var.m14594d();
        }
    }

    /* renamed from: f */
    public static void m14592f(View view, CharSequence charSequence) {
        View$OnLongClickListenerC0132g0 g0Var = f607k;
        if (g0Var != null && g0Var.f609b == view) {
            m14593e(null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            View$OnLongClickListenerC0132g0 g0Var2 = f608l;
            if (g0Var2 != null && g0Var2.f609b == view) {
                g0Var2.m14595c();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new View$OnLongClickListenerC0132g0(view, charSequence);
    }

    /* renamed from: h */
    private boolean m14590h(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f614g) <= this.f611d && Math.abs(y - this.f615h) <= this.f611d) {
            return false;
        }
        this.f614g = x;
        this.f615h = y;
        return true;
    }

    /* renamed from: c */
    void m14595c() {
        if (f608l == this) {
            f608l = null;
            C0136h0 h0Var = this.f616i;
            if (h0Var != null) {
                h0Var.m14577c();
                this.f616i = null;
                m14596b();
                this.f609b.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f607k == this) {
            m14593e(null);
        }
        this.f609b.removeCallbacks(this.f613f);
    }

    /* renamed from: g */
    void m14591g(boolean z) {
        long j;
        if (t.R(this.f609b)) {
            m14593e(null);
            View$OnLongClickListenerC0132g0 g0Var = f608l;
            if (g0Var != null) {
                g0Var.m14595c();
            }
            f608l = this;
            this.f617j = z;
            C0136h0 h0Var = new C0136h0(this.f609b.getContext());
            this.f616i = h0Var;
            h0Var.m14575e(this.f609b, this.f614g, this.f615h, this.f617j, this.f610c);
            this.f609b.addOnAttachStateChangeListener(this);
            if (this.f617j) {
                j = 2500;
            } else {
                j = ((t.L(this.f609b) & 1) == 1 ? 3000L : 15000L) - ViewConfiguration.getLongPressTimeout();
            }
            this.f609b.removeCallbacks(this.f613f);
            this.f609b.postDelayed(this.f613f, j);
        }
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f616i != null && this.f617j) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f609b.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action != 10) {
                return false;
            }
            m14596b();
            m14595c();
            return false;
        } else if (!this.f609b.isEnabled() || this.f616i != null || !m14590h(motionEvent)) {
            return false;
        } else {
            m14593e(this);
            return false;
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f614g = view.getWidth() / 2;
        this.f615h = view.getHeight() / 2;
        m14591g(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m14595c();
    }
}
