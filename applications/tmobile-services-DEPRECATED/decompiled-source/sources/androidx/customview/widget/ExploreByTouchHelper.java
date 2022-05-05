package androidx.customview.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewParentCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.core.view.accessibility.AccessibilityRecordCompat;
import androidx.customview.widget.FocusStrategy;
import com.google.android.gms.common.api.Api;
import com.google.firebase.appindexing.Indexable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/customview/widget/ExploreByTouchHelper.class */
public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {

    /* renamed from: k */
    private static final Rect f3468k = new Rect(Api.BaseClientBuilder.API_PRIORITY_OTHER, Api.BaseClientBuilder.API_PRIORITY_OTHER, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* renamed from: l */
    private static final FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat> f3469l = new FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat>() { // from class: androidx.customview.widget.ExploreByTouchHelper.1
        /* renamed from: b */
        public void mo18737a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, Rect rect) {
            accessibilityNodeInfoCompat.m19007m(rect);
        }
    };

    /* renamed from: m */
    private static final FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat> f3470m = new FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat>() { // from class: androidx.customview.widget.ExploreByTouchHelper.2
        /* renamed from: c */
        public AccessibilityNodeInfoCompat mo18736a(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat, int i) {
            return sparseArrayCompat.m20992p(i);
        }

        /* renamed from: d */
        public int mo18735b(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat) {
            return sparseArrayCompat.m20993o();
        }
    };

    /* renamed from: e */
    private final AccessibilityManager f3475e;

    /* renamed from: f */
    private final View f3476f;

    /* renamed from: g */
    private MyNodeProvider f3477g;

    /* renamed from: a */
    private final Rect f3471a = new Rect();

    /* renamed from: b */
    private final Rect f3472b = new Rect();

    /* renamed from: c */
    private final Rect f3473c = new Rect();

    /* renamed from: d */
    private final int[] f3474d = new int[2];

    /* renamed from: h */
    int f3478h = Integer.MIN_VALUE;

    /* renamed from: i */
    int f3479i = Integer.MIN_VALUE;

    /* renamed from: j */
    private int f3480j = Integer.MIN_VALUE;

    /* loaded from: classes-dex2jar.jar:androidx/customview/widget/ExploreByTouchHelper$MyNodeProvider.class */
    private class MyNodeProvider extends AccessibilityNodeProviderCompat {
        MyNodeProvider() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        /* renamed from: a */
        public AccessibilityNodeInfoCompat mo18755a(int i) {
            return AccessibilityNodeInfoCompat.m19041Q(ExploreByTouchHelper.this.m18761w(i));
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        /* renamed from: c */
        public AccessibilityNodeInfoCompat mo18754c(int i) {
            int i2 = i == 2 ? ExploreByTouchHelper.this.f3478h : ExploreByTouchHelper.this.f3479i;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return mo18755a(i2);
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        /* renamed from: e */
        public boolean mo18753e(int i, int i2, Bundle bundle) {
            return ExploreByTouchHelper.this.m18788E(i, i2, bundle);
        }
    }

    public ExploreByTouchHelper(@NonNull View view) {
        if (view != null) {
            this.f3476f = view;
            this.f3475e = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            if (ViewCompat.m19162y(view) == 0) {
                ViewCompat.m19163x0(view, 1);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    /* renamed from: F */
    private boolean m18787F(int i, int i2, Bundle bundle) {
        return i2 != 1 ? i2 != 2 ? i2 != 64 ? i2 != 128 ? mo9083y(i, i2, bundle) : m18781a(i) : m18785H(i) : m18780b(i) : m18784I(i);
    }

    /* renamed from: G */
    private boolean m18786G(int i, Bundle bundle) {
        return ViewCompat.m19205c0(this.f3476f, i, bundle);
    }

    /* renamed from: H */
    private boolean m18785H(int i) {
        int i2;
        if (!this.f3475e.isEnabled() || !this.f3475e.isTouchExplorationEnabled() || (i2 = this.f3478h) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            m18781a(i2);
        }
        this.f3478h = i;
        this.f3476f.invalidate();
        m18783J(i, 32768);
        return true;
    }

    /* renamed from: K */
    private void m18782K(int i) {
        int i2 = this.f3480j;
        if (i2 != i) {
            this.f3480j = i;
            m18783J(i, 128);
            m18783J(i2, Indexable.MAX_URL_LENGTH);
        }
    }

    /* renamed from: a */
    private boolean m18781a(int i) {
        if (this.f3478h != i) {
            return false;
        }
        this.f3478h = Integer.MIN_VALUE;
        this.f3476f.invalidate();
        m18783J(i, 65536);
        return true;
    }

    /* renamed from: c */
    private boolean m18779c() {
        int i = this.f3479i;
        return i != Integer.MIN_VALUE && mo9083y(i, 16, null);
    }

    /* renamed from: d */
    private AccessibilityEvent m18778d(int i, int i2) {
        return i != -1 ? m18777e(i, i2) : m18776f(i2);
    }

    /* renamed from: e */
    private AccessibilityEvent m18777e(int i, int i2) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        AccessibilityNodeInfoCompat w = m18761w(i);
        obtain.getText().add(w.m18985x());
        obtain.setContentDescription(w.m18997r());
        obtain.setScrollable(w.m19047K());
        obtain.setPassword(w.m19048J());
        obtain.setEnabled(w.m19054F());
        obtain.setChecked(w.m19058D());
        m18789A(i, obtain);
        if (!obtain.getText().isEmpty() || obtain.getContentDescription() != null) {
            obtain.setClassName(w.m19001p());
            AccessibilityRecordCompat.m18962h(obtain, this.f3476f, i);
            obtain.setPackageName(this.f3476f.getContext().getPackageName());
            return obtain;
        }
        throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
    }

    /* renamed from: f */
    private AccessibilityEvent m18776f(int i) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i);
        this.f3476f.onInitializeAccessibilityEvent(obtain);
        return obtain;
    }

    @NonNull
    /* renamed from: g */
    private AccessibilityNodeInfoCompat m18775g(int i) {
        AccessibilityNodeInfoCompat O = AccessibilityNodeInfoCompat.m19043O();
        O.m19014i0(true);
        O.m19010k0(true);
        O.m19026c0("android.view.View");
        O.m19034X(f3468k);
        O.m19033Y(f3468k);
        O.m18992t0(this.f3476f);
        mo9087C(i, O);
        if (O.m18985x() == null && O.m18997r() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        O.m19007m(this.f3472b);
        if (!this.f3472b.equals(f3468k)) {
            int k = O.m19011k();
            if ((k & 64) != 0) {
                throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            } else if ((k & 128) == 0) {
                O.m18996r0(this.f3476f.getContext().getPackageName());
                O.m19059C0(this.f3476f, i);
                if (this.f3478h == i) {
                    O.m19036V(true);
                    O.m19031a(128);
                } else {
                    O.m19036V(false);
                    O.m19031a(64);
                }
                boolean z = this.f3479i == i;
                if (z) {
                    O.m19031a(2);
                } else if (O.m19052G()) {
                    O.m19031a(1);
                }
                O.m19008l0(z);
                this.f3476f.getLocationOnScreen(this.f3474d);
                O.m19005n(this.f3471a);
                if (this.f3471a.equals(f3468k)) {
                    O.m19007m(this.f3471a);
                    if (O.f3328b != -1) {
                        AccessibilityNodeInfoCompat O2 = AccessibilityNodeInfoCompat.m19043O();
                        for (int i2 = O.f3328b; i2 != -1; i2 = O2.f3328b) {
                            O2.m18990u0(this.f3476f, -1);
                            O2.m19034X(f3468k);
                            mo9087C(i2, O2);
                            O2.m19007m(this.f3472b);
                            Rect rect = this.f3471a;
                            Rect rect2 = this.f3472b;
                            rect.offset(rect2.left, rect2.top);
                        }
                        O2.m19039S();
                    }
                    this.f3471a.offset(this.f3474d[0] - this.f3476f.getScrollX(), this.f3474d[1] - this.f3476f.getScrollY());
                }
                if (this.f3476f.getLocalVisibleRect(this.f3473c)) {
                    this.f3473c.offset(this.f3474d[0] - this.f3476f.getScrollX(), this.f3474d[1] - this.f3476f.getScrollY());
                    if (this.f3471a.intersect(this.f3473c)) {
                        O.m19033Y(this.f3471a);
                        if (m18764t(this.f3471a)) {
                            O.m19055E0(true);
                        }
                    }
                }
                return O;
            } else {
                throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            }
        } else {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
    }

    @NonNull
    /* renamed from: h */
    private AccessibilityNodeInfoCompat m18774h() {
        AccessibilityNodeInfoCompat P = AccessibilityNodeInfoCompat.m19042P(this.f3476f);
        ViewCompat.m19209a0(this.f3476f, P);
        ArrayList arrayList = new ArrayList();
        mo9084p(arrayList);
        if (P.m19003o() <= 0 || arrayList.size() <= 0) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                P.m19025d(this.f3476f, ((Integer) arrayList.get(i)).intValue());
            }
            return P;
        }
        throw new RuntimeException("Views cannot have both real and virtual children");
    }

    /* renamed from: l */
    private SparseArrayCompat<AccessibilityNodeInfoCompat> m18770l() {
        ArrayList arrayList = new ArrayList();
        mo9084p(arrayList);
        SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat = new SparseArrayCompat<>();
        for (int i = 0; i < arrayList.size(); i++) {
            sparseArrayCompat.m20995m(i, m18775g(i));
        }
        return sparseArrayCompat;
    }

    /* renamed from: m */
    private void m18769m(int i, Rect rect) {
        m18761w(i).m19007m(rect);
    }

    /* renamed from: q */
    private static Rect m18767q(@NonNull View view, int i, @NonNull Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i == 17) {
            rect.set(width, 0, width, height);
        } else if (i == 33) {
            rect.set(0, height, width, height);
        } else if (i == 66) {
            rect.set(-1, 0, -1, height);
        } else if (i == 130) {
            rect.set(0, -1, width, -1);
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return rect;
    }

    /* renamed from: t */
    private boolean m18764t(Rect rect) {
        boolean z = false;
        if (rect != null) {
            if (rect.isEmpty()) {
                z = false;
            } else if (this.f3476f.getWindowVisibility() != 0) {
                return false;
            } else {
                ViewParent parent = this.f3476f.getParent();
                while (parent instanceof View) {
                    View view = (View) parent;
                    if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                        return false;
                    }
                    parent = view.getParent();
                }
                z = false;
                if (parent != null) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: u */
    private static int m18763u(int i) {
        if (i == 19) {
            return 33;
        }
        if (i != 21) {
            return i != 22 ? 130 : 66;
        }
        return 17;
    }

    /* renamed from: v */
    private boolean m18762v(int i, @Nullable Rect rect) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat;
        SparseArrayCompat<AccessibilityNodeInfoCompat> l = m18770l();
        int i2 = this.f3479i;
        int i3 = Integer.MIN_VALUE;
        AccessibilityNodeInfoCompat f = i2 == Integer.MIN_VALUE ? null : l.m21000f(i2);
        if (i == 1 || i == 2) {
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) FocusStrategy.m18749d(l, f3470m, f3469l, f, i, ViewCompat.m19244A(this.f3476f) == 1, false);
        } else if (i == 17 || i == 33 || i == 66 || i == 130) {
            Rect rect2 = new Rect();
            int i4 = this.f3479i;
            if (i4 != Integer.MIN_VALUE) {
                m18769m(i4, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                m18767q(this.f3476f, i, rect2);
            }
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) FocusStrategy.m18750c(l, f3470m, f3469l, f, rect2, i);
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        if (accessibilityNodeInfoCompat != null) {
            i3 = l.m20996l(l.m20997j(accessibilityNodeInfoCompat));
        }
        return m18784I(i3);
    }

    /* renamed from: A */
    protected void m18789A(int i, @NonNull AccessibilityEvent accessibilityEvent) {
    }

    /* renamed from: B */
    protected void mo10200B(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    /* renamed from: C */
    protected abstract void mo9087C(int i, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    /* renamed from: D */
    protected void mo10199D(int i, boolean z) {
    }

    /* renamed from: E */
    boolean m18788E(int i, int i2, Bundle bundle) {
        return i != -1 ? m18787F(i, i2, bundle) : m18786G(i2, bundle);
    }

    /* renamed from: I */
    public final boolean m18784I(int i) {
        int i2;
        if ((!this.f3476f.isFocused() && !this.f3476f.requestFocus()) || (i2 = this.f3479i) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            m18780b(i2);
        }
        this.f3479i = i;
        mo10199D(i, true);
        m18783J(i, 8);
        return true;
    }

    /* renamed from: J */
    public final boolean m18783J(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.f3475e.isEnabled() || (parent = this.f3476f.getParent()) == null) {
            return false;
        }
        return ViewParentCompat.m19116h(parent, this.f3476f, m18778d(i, i2));
    }

    /* renamed from: b */
    public final boolean m18780b(int i) {
        if (this.f3479i != i) {
            return false;
        }
        this.f3479i = Integer.MIN_VALUE;
        mo10199D(i, false);
        m18783J(i, 8);
        return true;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        if (this.f3477g == null) {
            this.f3477g = new MyNodeProvider();
        }
        return this.f3477g;
    }

    /* renamed from: i */
    public final boolean m18773i(@NonNull MotionEvent motionEvent) {
        boolean z = false;
        if (this.f3475e.isEnabled()) {
            if (!this.f3475e.isTouchExplorationEnabled()) {
                z = false;
            } else {
                int action = motionEvent.getAction();
                if (action == 7 || action == 9) {
                    int o = mo9085o(motionEvent.getX(), motionEvent.getY());
                    m18782K(o);
                    z = false;
                    if (o != Integer.MIN_VALUE) {
                        z = true;
                    }
                } else if (action != 10 || this.f3480j == Integer.MIN_VALUE) {
                    return false;
                } else {
                    m18782K(Integer.MIN_VALUE);
                    return true;
                }
            }
        }
        return z;
    }

    /* renamed from: j */
    public final boolean m18772j(@NonNull KeyEvent keyEvent) {
        int i = 0;
        boolean z = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            z = false;
                            if (keyEvent.hasNoModifiers()) {
                                int u = m18763u(keyCode);
                                int repeatCount = keyEvent.getRepeatCount();
                                z = false;
                                while (i < repeatCount + 1 && m18762v(u, null)) {
                                    i++;
                                    z = true;
                                }
                            }
                            break;
                        case 23:
                            break;
                        default:
                            z = false;
                            break;
                    }
                }
                z = false;
                if (keyEvent.hasNoModifiers()) {
                    z = false;
                    if (keyEvent.getRepeatCount() == 0) {
                        m18779c();
                        z = true;
                    }
                }
            } else if (keyEvent.hasNoModifiers()) {
                z = m18762v(2, null);
            } else {
                z = false;
                if (keyEvent.hasModifiers(1)) {
                    z = m18762v(1, null);
                }
            }
        }
        return z;
    }

    /* renamed from: k */
    public final int m18771k() {
        return this.f3478h;
    }

    /* renamed from: n */
    public final int m18768n() {
        return this.f3479i;
    }

    /* renamed from: o */
    protected abstract int mo9085o(float f, float f2);

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        m18759z(accessibilityEvent);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        mo10200B(accessibilityNodeInfoCompat);
    }

    /* renamed from: p */
    protected abstract void mo9084p(List<Integer> list);

    /* renamed from: r */
    public final void m18766r(int i) {
        m18765s(i, 0);
    }

    /* renamed from: s */
    public final void m18765s(int i, int i2) {
        ViewParent parent;
        if (i != Integer.MIN_VALUE && this.f3475e.isEnabled() && (parent = this.f3476f.getParent()) != null) {
            AccessibilityEvent d = m18778d(i, 2048);
            AccessibilityEventCompat.m19065c(d, i2);
            ViewParentCompat.m19116h(parent, this.f3476f, d);
        }
    }

    @NonNull
    /* renamed from: w */
    AccessibilityNodeInfoCompat m18761w(int i) {
        return i == -1 ? m18774h() : m18775g(i);
    }

    /* renamed from: x */
    public final void m18760x(boolean z, int i, @Nullable Rect rect) {
        int i2 = this.f3479i;
        if (i2 != Integer.MIN_VALUE) {
            m18780b(i2);
        }
        if (z) {
            m18762v(i, rect);
        }
    }

    /* renamed from: y */
    protected abstract boolean mo9083y(int i, int i2, @Nullable Bundle bundle);

    /* renamed from: z */
    protected void m18759z(@NonNull AccessibilityEvent accessibilityEvent) {
    }
}
