package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.C0926v;
import androidx.core.view.ViewConfigurationCompat;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.ae */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ae.class */
public final class View$OnAttachStateChangeListenerC0375ae implements View.OnAttachStateChangeListener, View.OnHoverListener, View.OnLongClickListener {

    /* renamed from: j */
    private static View$OnAttachStateChangeListenerC0375ae f1516j;

    /* renamed from: k */
    private static View$OnAttachStateChangeListenerC0375ae f1517k;

    /* renamed from: a */
    private final View f1518a;

    /* renamed from: b */
    private final CharSequence f1519b;

    /* renamed from: c */
    private final int f1520c;

    /* renamed from: d */
    private final Runnable f1521d = new Runnable() { // from class: androidx.appcompat.widget.ae.1
        @Override // java.lang.Runnable
        public final void run() {
            View$OnAttachStateChangeListenerC0375ae.this.m45781a(false);
        }
    };

    /* renamed from: e */
    private final Runnable f1522e = new Runnable() { // from class: androidx.appcompat.widget.ae.2
        @Override // java.lang.Runnable
        public final void run() {
            View$OnAttachStateChangeListenerC0375ae.this.m45784a();
        }
    };

    /* renamed from: f */
    private int f1523f;

    /* renamed from: g */
    private int f1524g;

    /* renamed from: h */
    private C0378af f1525h;

    /* renamed from: i */
    private boolean f1526i;

    private View$OnAttachStateChangeListenerC0375ae(View view, CharSequence charSequence) {
        this.f1518a = view;
        this.f1519b = charSequence;
        this.f1520c = ViewConfigurationCompat.getScaledHoverSlop(ViewConfiguration.get(view.getContext()));
        m45778d();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    /* renamed from: a */
    public static void m45783a(View view, CharSequence charSequence) {
        View$OnAttachStateChangeListenerC0375ae view$OnAttachStateChangeListenerC0375ae = f1516j;
        if (view$OnAttachStateChangeListenerC0375ae != null && view$OnAttachStateChangeListenerC0375ae.f1518a == view) {
            m45782a((View$OnAttachStateChangeListenerC0375ae) null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new View$OnAttachStateChangeListenerC0375ae(view, charSequence);
            return;
        }
        View$OnAttachStateChangeListenerC0375ae view$OnAttachStateChangeListenerC0375ae2 = f1517k;
        if (view$OnAttachStateChangeListenerC0375ae2 != null && view$OnAttachStateChangeListenerC0375ae2.f1518a == view) {
            view$OnAttachStateChangeListenerC0375ae2.m45784a();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    /* renamed from: a */
    private static void m45782a(View$OnAttachStateChangeListenerC0375ae view$OnAttachStateChangeListenerC0375ae) {
        View$OnAttachStateChangeListenerC0375ae view$OnAttachStateChangeListenerC0375ae2 = f1516j;
        if (view$OnAttachStateChangeListenerC0375ae2 != null) {
            view$OnAttachStateChangeListenerC0375ae2.m45779c();
        }
        f1516j = view$OnAttachStateChangeListenerC0375ae;
        if (view$OnAttachStateChangeListenerC0375ae != null) {
            view$OnAttachStateChangeListenerC0375ae.m45780b();
        }
    }

    /* renamed from: b */
    private void m45780b() {
        this.f1518a.postDelayed(this.f1521d, ViewConfiguration.getLongPressTimeout());
    }

    /* renamed from: c */
    private void m45779c() {
        this.f1518a.removeCallbacks(this.f1521d);
    }

    /* renamed from: d */
    private void m45778d() {
        this.f1523f = Integer.MAX_VALUE;
        this.f1524g = Integer.MAX_VALUE;
    }

    /* renamed from: a */
    final void m45784a() {
        if (f1517k == this) {
            f1517k = null;
            C0378af c0378af = this.f1525h;
            if (c0378af != null) {
                c0378af.m45777a();
                this.f1525h = null;
                m45778d();
                this.f1518a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f1516j == this) {
            m45782a((View$OnAttachStateChangeListenerC0375ae) null);
        }
        this.f1518a.removeCallbacks(this.f1522e);
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
    /* renamed from: a */
    final void m45781a(boolean z) {
        ?? r10;
        int i;
        ?? r102;
        if (!C0926v.m44154E(this.f1518a)) {
            return;
        }
        m45782a((View$OnAttachStateChangeListenerC0375ae) null);
        View$OnAttachStateChangeListenerC0375ae view$OnAttachStateChangeListenerC0375ae = f1517k;
        if (view$OnAttachStateChangeListenerC0375ae != null) {
            view$OnAttachStateChangeListenerC0375ae.m45784a();
        }
        f1517k = this;
        this.f1526i = z;
        C0378af c0378af = new C0378af(this.f1518a.getContext());
        this.f1525h = c0378af;
        c0378af.m45774a(this.f1518a, this.f1523f, this.f1524g, this.f1526i, this.f1519b);
        this.f1518a.addOnAttachStateChangeListener(this);
        if (this.f1526i) {
            r10 = 2500;
        } else {
            if ((C0926v.m44082q(this.f1518a) & 1) == 1) {
                r102 = true;
                i = ViewConfiguration.getLongPressTimeout();
            } else {
                r102 = true;
                i = ViewConfiguration.getLongPressTimeout();
            }
            r10 = (r102 == true ? 1L : 0L) - i;
        }
        this.f1518a.removeCallbacks(this.f1522e);
        this.f1518a.postDelayed(this.f1522e, r10);
    }

    @Override // android.view.View.OnHoverListener
    public final boolean onHover(View view, MotionEvent motionEvent) {
        boolean z;
        if (this.f1525h == null || !this.f1526i) {
            AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1518a.getContext().getSystemService("accessibility");
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
                return false;
            }
            int action = motionEvent.getAction();
            if (action != 7) {
                if (action != 10) {
                    return false;
                }
                m45778d();
                m45784a();
                return false;
            } else if (!this.f1518a.isEnabled() || this.f1525h != null) {
                return false;
            } else {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (Math.abs(x - this.f1523f) > this.f1520c || Math.abs(y - this.f1524g) > this.f1520c) {
                    this.f1523f = x;
                    this.f1524g = y;
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    return false;
                }
                m45782a(this);
                return false;
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f1523f = view.getWidth() / 2;
        this.f1524g = view.getHeight() / 2;
        m45781a(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        m45784a();
    }
}
