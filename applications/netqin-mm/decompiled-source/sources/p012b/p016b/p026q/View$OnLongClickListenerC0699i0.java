package p012b.p016b.p026q;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p054p.C1014v;
/* renamed from: b.b.q.i0 */
/* loaded from: classes-dex2jar.jar:b/b/q/i0.class */
public class View$OnLongClickListenerC0699i0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: j */
    public static View$OnLongClickListenerC0699i0 f3443j;

    /* renamed from: k */
    public static View$OnLongClickListenerC0699i0 f3444k;

    /* renamed from: a */
    public final View f3445a;

    /* renamed from: b */
    public final CharSequence f3446b;

    /* renamed from: c */
    public final int f3447c;

    /* renamed from: d */
    public final Runnable f3448d = new RunnableC0700a();

    /* renamed from: e */
    public final Runnable f3449e = new RunnableC0701b();

    /* renamed from: f */
    public int f3450f;

    /* renamed from: g */
    public int f3451g;

    /* renamed from: h */
    public C0703j0 f3452h;

    /* renamed from: i */
    public boolean f3453i;

    /* renamed from: b.b.q.i0$a */
    /* loaded from: classes-dex2jar.jar:b/b/q/i0$a.class */
    public class RunnableC0700a implements Runnable {
        public RunnableC0700a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnLongClickListenerC0699i0.this.m36367a(false);
        }
    }

    /* renamed from: b.b.q.i0$b */
    /* loaded from: classes-dex2jar.jar:b/b/q/i0$b.class */
    public class RunnableC0701b implements Runnable {
        public RunnableC0701b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnLongClickListenerC0699i0.this.m36365c();
        }
    }

    public View$OnLongClickListenerC0699i0(View view, CharSequence charSequence) {
        this.f3445a = view;
        this.f3446b = charSequence;
        this.f3447c = C1014v.m35178a(ViewConfiguration.get(view.getContext()));
        m36366b();
        this.f3445a.setOnLongClickListener(this);
        this.f3445a.setOnHoverListener(this);
    }

    /* renamed from: a */
    public static void m36369a(View view, CharSequence charSequence) {
        View$OnLongClickListenerC0699i0 i0Var = f3443j;
        if (i0Var != null && i0Var.f3445a == view) {
            m36368a((View$OnLongClickListenerC0699i0) null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            View$OnLongClickListenerC0699i0 i0Var2 = f3444k;
            if (i0Var2 != null && i0Var2.f3445a == view) {
                i0Var2.m36365c();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new View$OnLongClickListenerC0699i0(view, charSequence);
    }

    /* renamed from: a */
    public static void m36368a(View$OnLongClickListenerC0699i0 i0Var) {
        View$OnLongClickListenerC0699i0 i0Var2 = f3443j;
        if (i0Var2 != null) {
            i0Var2.m36371a();
        }
        f3443j = i0Var;
        if (i0Var != null) {
            i0Var.m36364d();
        }
    }

    /* renamed from: a */
    public final void m36371a() {
        this.f3445a.removeCallbacks(this.f3448d);
    }

    /* renamed from: a */
    public void m36367a(boolean z) {
        long j;
        int i;
        long j2;
        if (C1002u.m35197y(this.f3445a)) {
            m36368a((View$OnLongClickListenerC0699i0) null);
            View$OnLongClickListenerC0699i0 i0Var = f3444k;
            if (i0Var != null) {
                i0Var.m36365c();
            }
            f3444k = this;
            this.f3453i = z;
            C0703j0 j0Var = new C0703j0(this.f3445a.getContext());
            this.f3452h = j0Var;
            j0Var.m36354a(this.f3445a, this.f3450f, this.f3451g, this.f3453i, this.f3446b);
            this.f3445a.addOnAttachStateChangeListener(this);
            if (this.f3453i) {
                j = 2500;
            } else {
                if ((C1002u.m35202t(this.f3445a) & 1) == 1) {
                    j2 = 3000;
                    i = ViewConfiguration.getLongPressTimeout();
                } else {
                    j2 = 15000;
                    i = ViewConfiguration.getLongPressTimeout();
                }
                j = j2 - i;
            }
            this.f3445a.removeCallbacks(this.f3449e);
            this.f3445a.postDelayed(this.f3449e, j);
        }
    }

    /* renamed from: a */
    public final boolean m36370a(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f3450f) <= this.f3447c && Math.abs(y - this.f3451g) <= this.f3447c) {
            return false;
        }
        this.f3450f = x;
        this.f3451g = y;
        return true;
    }

    /* renamed from: b */
    public final void m36366b() {
        this.f3450f = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        this.f3451g = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
    }

    /* renamed from: c */
    public void m36365c() {
        if (f3444k == this) {
            f3444k = null;
            C0703j0 j0Var = this.f3452h;
            if (j0Var != null) {
                j0Var.m36357a();
                this.f3452h = null;
                m36366b();
                this.f3445a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f3443j == this) {
            m36368a((View$OnLongClickListenerC0699i0) null);
        }
        this.f3445a.removeCallbacks(this.f3449e);
    }

    /* renamed from: d */
    public final void m36364d() {
        this.f3445a.postDelayed(this.f3448d, ViewConfiguration.getLongPressTimeout());
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f3452h != null && this.f3453i) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f3445a.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action != 10) {
                return false;
            }
            m36366b();
            m36365c();
            return false;
        } else if (!this.f3445a.isEnabled() || this.f3452h != null || !m36370a(motionEvent)) {
            return false;
        } else {
            m36368a(this);
            return false;
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f3450f = view.getWidth() / 2;
        this.f3451g = view.getHeight() / 2;
        m36367a(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m36365c();
    }
}
