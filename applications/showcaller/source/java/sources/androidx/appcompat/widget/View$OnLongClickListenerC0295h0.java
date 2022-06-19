package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.C1693x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.h0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h0.class */
public class View$OnLongClickListenerC0295h0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: d */
    private static View$OnLongClickListenerC0295h0 f1291d;

    /* renamed from: e */
    private static View$OnLongClickListenerC0295h0 f1292e;

    /* renamed from: f */
    private final View f1293f;

    /* renamed from: g */
    private final CharSequence f1294g;

    /* renamed from: h */
    private final int f1295h;

    /* renamed from: i */
    private final Runnable f1296i = new RunnableC0296a();

    /* renamed from: j */
    private final Runnable f1297j = new RunnableC0297b();

    /* renamed from: k */
    private int f1298k;

    /* renamed from: l */
    private int f1299l;

    /* renamed from: m */
    private C0299i0 f1300m;

    /* renamed from: n */
    private boolean f1301n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.h0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h0$a.class */
    public class RunnableC0296a implements Runnable {
        RunnableC0296a() {
            View$OnLongClickListenerC0295h0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnLongClickListenerC0295h0.this.m34896g(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.h0$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h0$b.class */
    public class RunnableC0297b implements Runnable {
        RunnableC0297b() {
            View$OnLongClickListenerC0295h0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnLongClickListenerC0295h0.this.m34900c();
        }
    }

    private View$OnLongClickListenerC0295h0(View view, CharSequence charSequence) {
        this.f1293f = view;
        this.f1294g = charSequence;
        this.f1295h = C1693x.m29217c(ViewConfiguration.get(view.getContext()));
        m34901b();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    /* renamed from: a */
    private void m34902a() {
        this.f1293f.removeCallbacks(this.f1296i);
    }

    /* renamed from: b */
    private void m34901b() {
        this.f1298k = Integer.MAX_VALUE;
        this.f1299l = Integer.MAX_VALUE;
    }

    /* renamed from: d */
    private void m34899d() {
        this.f1293f.postDelayed(this.f1296i, ViewConfiguration.getLongPressTimeout());
    }

    /* renamed from: e */
    private static void m34898e(View$OnLongClickListenerC0295h0 view$OnLongClickListenerC0295h0) {
        View$OnLongClickListenerC0295h0 view$OnLongClickListenerC0295h02 = f1291d;
        if (view$OnLongClickListenerC0295h02 != null) {
            view$OnLongClickListenerC0295h02.m34902a();
        }
        f1291d = view$OnLongClickListenerC0295h0;
        if (view$OnLongClickListenerC0295h0 != null) {
            view$OnLongClickListenerC0295h0.m34899d();
        }
    }

    /* renamed from: f */
    public static void m34897f(View view, CharSequence charSequence) {
        View$OnLongClickListenerC0295h0 view$OnLongClickListenerC0295h0 = f1291d;
        if (view$OnLongClickListenerC0295h0 != null && view$OnLongClickListenerC0295h0.f1293f == view) {
            m34898e(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new View$OnLongClickListenerC0295h0(view, charSequence);
            return;
        }
        View$OnLongClickListenerC0295h0 view$OnLongClickListenerC0295h02 = f1292e;
        if (view$OnLongClickListenerC0295h02 != null && view$OnLongClickListenerC0295h02.f1293f == view) {
            view$OnLongClickListenerC0295h02.m34900c();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    /* renamed from: h */
    private boolean m34895h(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f1298k) > this.f1295h || Math.abs(y - this.f1299l) > this.f1295h) {
            this.f1298k = x;
            this.f1299l = y;
            return true;
        }
        return false;
    }

    /* renamed from: c */
    void m34900c() {
        if (f1292e == this) {
            f1292e = null;
            C0299i0 c0299i0 = this.f1300m;
            if (c0299i0 != null) {
                c0299i0.m34888c();
                this.f1300m = null;
                m34901b();
                this.f1293f.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f1291d == this) {
            m34898e(null);
        }
        this.f1293f.removeCallbacks(this.f1297j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r2v5, types: [long] */
    /* renamed from: g */
    void m34896g(boolean z) {
        ?? r10;
        int i;
        ?? r102;
        if (!C1679w.m29314U(this.f1293f)) {
            return;
        }
        m34898e(null);
        View$OnLongClickListenerC0295h0 view$OnLongClickListenerC0295h0 = f1292e;
        if (view$OnLongClickListenerC0295h0 != null) {
            view$OnLongClickListenerC0295h0.m34900c();
        }
        f1292e = this;
        this.f1301n = z;
        C0299i0 c0299i0 = new C0299i0(this.f1293f.getContext());
        this.f1300m = c0299i0;
        c0299i0.m34886e(this.f1293f, this.f1298k, this.f1299l, this.f1301n, this.f1294g);
        this.f1293f.addOnAttachStateChangeListener(this);
        if (this.f1301n) {
            r10 = 2500;
        } else {
            if ((C1679w.m29322O(this.f1293f) & 1) == 1) {
                r102 = true;
                i = ViewConfiguration.getLongPressTimeout();
            } else {
                r102 = true;
                i = ViewConfiguration.getLongPressTimeout();
            }
            r10 = (r102 == true ? 1L : 0L) - i;
        }
        this.f1293f.removeCallbacks(this.f1297j);
        this.f1293f.postDelayed(this.f1297j, r10);
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f1300m == null || !this.f1301n) {
            AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1293f.getContext().getSystemService("accessibility");
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
                return false;
            }
            int action = motionEvent.getAction();
            if (action != 7) {
                if (action != 10) {
                    return false;
                }
                m34901b();
                m34900c();
                return false;
            } else if (!this.f1293f.isEnabled() || this.f1300m != null || !m34895h(motionEvent)) {
                return false;
            } else {
                m34898e(this);
                return false;
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f1298k = view.getWidth() / 2;
        this.f1299l = view.getHeight() / 2;
        m34896g(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m34900c();
    }
}
