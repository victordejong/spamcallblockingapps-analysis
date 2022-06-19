package androidx.customview.p039a;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.C0865a;
import androidx.core.view.C0926v;
import androidx.core.view.C0939x;
import androidx.core.view.p038a.C0868b;
import androidx.core.view.p038a.C0869c;
import androidx.core.view.p038a.C0874d;
import androidx.core.view.p038a.C0877e;
import androidx.customview.p039a.C0968b;
import androidx.p023b.C0442h;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.customview.a.a */
/* loaded from: classes-dex2jar.jar:androidx/customview/a/a.class */
public abstract class AbstractC0964a extends C0865a {

    /* renamed from: e */
    private static final Rect f3878e = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);

    /* renamed from: m */
    private static final C0968b.AbstractC0969a<C0869c> f3879m = new C0968b.AbstractC0969a<C0869c>() { // from class: androidx.customview.a.a.1
        @Override // androidx.customview.p039a.C0968b.AbstractC0969a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo43913a(C0869c c0869c, Rect rect) {
            c0869c.m44282a(rect);
        }
    };

    /* renamed from: n */
    private static final C0968b.AbstractC0970b<C0442h<C0869c>, C0869c> f3880n = new C0968b.AbstractC0970b<C0442h<C0869c>, C0869c>() { // from class: androidx.customview.a.a.2
        @Override // androidx.customview.p039a.C0968b.AbstractC0970b
        /* renamed from: a */
        public final /* synthetic */ int mo43912a(C0442h<C0869c> c0442h) {
            return c0442h.m45509b();
        }

        @Override // androidx.customview.p039a.C0968b.AbstractC0970b
        /* renamed from: a */
        public final /* synthetic */ C0869c mo43911a(C0442h<C0869c> c0442h, int i) {
            return c0442h.m45508b(i);
        }
    };

    /* renamed from: j */
    private final AccessibilityManager f3888j;

    /* renamed from: k */
    private final View f3889k;

    /* renamed from: l */
    private C0967a f3890l;

    /* renamed from: f */
    private final Rect f3884f = new Rect();

    /* renamed from: g */
    private final Rect f3885g = new Rect();

    /* renamed from: h */
    private final Rect f3886h = new Rect();

    /* renamed from: i */
    private final int[] f3887i = new int[2];

    /* renamed from: b */
    public int f3881b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

    /* renamed from: c */
    public int f3882c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

    /* renamed from: d */
    public int f3883d = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

    /* renamed from: androidx.customview.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/a$a.class */
    final class C0967a extends C0874d {
        C0967a() {
            AbstractC0964a.this = r4;
        }

        @Override // androidx.core.view.p038a.C0874d
        /* renamed from: a */
        public final C0869c mo43930a(int i) {
            return C0869c.m44276a(AbstractC0964a.this.m43937c(i));
        }

        @Override // androidx.core.view.p038a.C0874d
        /* renamed from: a */
        public final boolean mo43929a(int i, int i2, Bundle bundle) {
            return AbstractC0964a.this.m43948a(i, i2, bundle);
        }

        @Override // androidx.core.view.p038a.C0874d
        /* renamed from: b */
        public final C0869c mo43928b(int i) {
            int i2 = i == 2 ? AbstractC0964a.this.f3881b : AbstractC0964a.this.f3882c;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return mo43930a(i2);
        }
    }

    public AbstractC0964a(View view) {
        if (view != null) {
            this.f3889k = view;
            this.f3888j = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            if (C0926v.m44099e(view) != 0) {
                return;
            }
            C0926v.m44102c(view, 1);
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    /* renamed from: a */
    private static Rect m43943a(View view, int i, Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i == 17) {
            rect.set(width, 0, width, height);
        } else if (i == 33) {
            rect.set(0, height, width, height);
        } else if (i == 66) {
            rect.set(-1, 0, -1, height);
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            rect.set(0, -1, width, -1);
        }
        return rect;
    }

    /* renamed from: a */
    private C0442h<C0869c> m43951a() {
        ArrayList arrayList = new ArrayList();
        mo10223a(arrayList);
        C0442h<C0869c> c0442h = new C0442h<>();
        for (int i = 0; i < arrayList.size(); i++) {
            c0442h.m45507b(i, m43932g(i));
        }
        return c0442h;
    }

    /* renamed from: a */
    private void m43947a(int i, Rect rect) {
        m43937c(i).m44282a(rect);
    }

    /* renamed from: a */
    private boolean m43946a(Rect rect) {
        if (rect == null || rect.isEmpty() || this.f3889k.getWindowVisibility() != 0) {
            return false;
        }
        ViewParent parent = this.f3889k.getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (!(viewParent instanceof View)) {
                return viewParent != null;
            }
            View view = (View) viewParent;
            if (view.getAlpha() <= BitmapDescriptorFactory.HUE_RED || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
    }

    /* renamed from: b */
    private AccessibilityEvent m43939b(int i, int i2) {
        return i != -1 ? m43936c(i, i2) : m43933f(i2);
    }

    /* renamed from: b */
    private C0869c m43941b() {
        C0869c m44280a = C0869c.m44280a(this.f3889k);
        C0926v.m44124a(this.f3889k, m44280a);
        ArrayList arrayList = new ArrayList();
        mo10223a(arrayList);
        if (m44280a.f3644a.getChildCount() <= 0 || arrayList.size() <= 0) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                m44280a.m44267b(this.f3889k, ((Integer) arrayList.get(i)).intValue());
            }
            return m44280a;
        }
        throw new RuntimeException("Views cannot have both real and virtual children");
    }

    /* renamed from: b */
    private boolean m43938b(int i, Rect rect) {
        C0869c c0869c;
        C0442h<C0869c> m43951a = m43951a();
        int i2 = this.f3882c;
        C0869c m45511a = i2 == Integer.MIN_VALUE ? null : m43951a.m45511a(i2, null);
        if (i == 1 || i == 2) {
            c0869c = (C0869c) C0968b.m43923a(m43951a, f3880n, f3879m, m45511a, i, C0926v.m44097f(this.f3889k) == 1);
        } else if (i != 17 && i != 33 && i != 66 && i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            Rect rect2 = new Rect();
            int i3 = this.f3882c;
            if (i3 != Integer.MIN_VALUE) {
                m43947a(i3, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                m43943a(this.f3889k, i, rect2);
            }
            c0869c = (C0869c) C0968b.m43922a(m43951a, f3880n, f3879m, m45511a, rect2, i);
        }
        return m43935d(c0869c == null ? Integer.MIN_VALUE : m43951a.m45512a(m43951a.m45510a((C0442h<C0869c>) c0869c)));
    }

    /* renamed from: c */
    private AccessibilityEvent m43936c(int i, int i2) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        C0869c m43937c = m43937c(i);
        obtain.getText().add(m43937c.m44257d());
        obtain.setContentDescription(m43937c.f3644a.getContentDescription());
        obtain.setScrollable(m43937c.f3644a.isScrollable());
        obtain.setPassword(m43937c.f3644a.isPassword());
        obtain.setEnabled(m43937c.f3644a.isEnabled());
        obtain.setChecked(m43937c.f3644a.isChecked());
        if (!obtain.getText().isEmpty() || obtain.getContentDescription() != null) {
            obtain.setClassName(m43937c.f3644a.getClassName());
            C0877e.m44233a(obtain, this.f3889k, i);
            obtain.setPackageName(this.f3889k.getContext().getPackageName());
            return obtain;
        }
        throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
    }

    /* renamed from: f */
    private AccessibilityEvent m43933f(int i) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i);
        this.f3889k.onInitializeAccessibilityEvent(obtain);
        return obtain;
    }

    /* renamed from: g */
    private C0869c m43932g(int i) {
        C0869c m44285a = C0869c.m44285a();
        m44285a.m44241i(true);
        m44285a.m44263b(true);
        m44285a.m44265b("android.view.View");
        Rect rect = f3878e;
        m44285a.m44269b(rect);
        m44285a.m44256d(rect);
        m44285a.m44255d(this.f3889k);
        mo10224a(i, m44285a);
        if (m44285a.m44257d() == null && m44285a.f3644a.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        m44285a.m44282a(this.f3885g);
        if (this.f3885g.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = m44285a.f3644a.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        m44285a.m44275a((CharSequence) this.f3889k.getContext().getPackageName());
        m44285a.m44279a(this.f3889k, i);
        if (this.f3881b == i) {
            m44285a.m44249e(true);
            m44285a.m44284a(128);
        } else {
            m44285a.m44249e(false);
            m44285a.m44284a(64);
        }
        boolean z = this.f3882c == i;
        if (z) {
            m44285a.m44284a(2);
        } else if (m44285a.f3644a.isFocusable()) {
            m44285a.m44284a(1);
        }
        m44285a.m44258c(z);
        this.f3889k.getLocationOnScreen(this.f3887i);
        m44285a.m44261c(this.f3884f);
        if (this.f3884f.equals(rect)) {
            m44285a.m44282a(this.f3884f);
            if (m44285a.f3645b != -1) {
                C0869c m44285a2 = C0869c.m44285a();
                int i2 = m44285a.f3645b;
                while (true) {
                    int i3 = i2;
                    if (i3 == -1) {
                        break;
                    }
                    m44285a2.m44251e(this.f3889k);
                    m44285a2.m44269b(f3878e);
                    mo10224a(i3, m44285a2);
                    m44285a2.m44282a(this.f3885g);
                    this.f3884f.offset(this.f3885g.left, this.f3885g.top);
                    i2 = m44285a2.f3645b;
                }
                m44285a2.f3644a.recycle();
            }
            this.f3884f.offset(this.f3887i[0] - this.f3889k.getScrollX(), this.f3887i[1] - this.f3889k.getScrollY());
        }
        if (this.f3889k.getLocalVisibleRect(this.f3886h)) {
            this.f3886h.offset(this.f3887i[0] - this.f3889k.getScrollX(), this.f3887i[1] - this.f3889k.getScrollY());
            if (this.f3884f.intersect(this.f3886h)) {
                m44285a.m44256d(this.f3884f);
                if (m43946a(this.f3884f)) {
                    m44285a.m44253d(true);
                }
            }
        }
        return m44285a;
    }

    /* renamed from: h */
    private boolean m43931h(int i) {
        if (this.f3881b == i) {
            this.f3881b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.f3889k.invalidate();
            m43949a(i, 65536);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    protected abstract int mo10225a(float f, float f2);

    @Override // androidx.core.view.C0865a
    /* renamed from: a */
    public final C0874d mo40053a(View view) {
        if (this.f3890l == null) {
            this.f3890l = new C0967a();
        }
        return this.f3890l;
    }

    /* renamed from: a */
    public final void m43950a(int i) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.f3888j.isEnabled() || (parent = this.f3889k.getParent()) == null) {
            return;
        }
        AccessibilityEvent m43939b = m43939b(i, 2048);
        C0868b.m44286a(m43939b, 0);
        C0939x.m44051a(parent, this.f3889k, m43939b);
    }

    /* renamed from: a */
    protected abstract void mo10224a(int i, C0869c c0869c);

    /* renamed from: a */
    protected void mo10959a(int i, boolean z) {
    }

    @Override // androidx.core.view.C0865a
    /* renamed from: a */
    public final void mo9886a(View view, C0869c c0869c) {
        super.mo9886a(view, c0869c);
        mo10958a(c0869c);
    }

    /* renamed from: a */
    protected void mo10958a(C0869c c0869c) {
    }

    /* renamed from: a */
    protected abstract void mo10223a(List<Integer> list);

    /* renamed from: a */
    public final void m43942a(boolean z, int i, Rect rect) {
        int i2 = this.f3882c;
        if (i2 != Integer.MIN_VALUE) {
            m43934e(i2);
        }
        if (z) {
            m43938b(i, rect);
        }
    }

    /* renamed from: a */
    public final boolean m43949a(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.f3888j.isEnabled() || (parent = this.f3889k.getParent()) == null) {
            return false;
        }
        return C0939x.m44051a(parent, this.f3889k, m43939b(i, i2));
    }

    /* renamed from: a */
    final boolean m43948a(int i, int i2, Bundle bundle) {
        int i3;
        if (i != -1) {
            if (i2 == 1) {
                return m43935d(i);
            }
            if (i2 == 2) {
                return m43934e(i);
            }
            if (i2 != 64) {
                return i2 != 128 ? mo10222b(i, i2, bundle) : m43931h(i);
            } else if (!this.f3888j.isEnabled() || !this.f3888j.isTouchExplorationEnabled() || (i3 = this.f3881b) == i) {
                return false;
            } else {
                if (i3 != Integer.MIN_VALUE) {
                    m43931h(i3);
                }
                this.f3881b = i;
                this.f3889k.invalidate();
                m43949a(i, 32768);
                return true;
            }
        }
        return C0926v.m44134a(this.f3889k, i2, bundle);
    }

    /* renamed from: a */
    public final boolean m43945a(KeyEvent keyEvent) {
        int i = 0;
        boolean z = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i2 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            z = false;
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i2 = 33;
                                } else if (keyCode == 21) {
                                    i2 = 17;
                                } else if (keyCode != 22) {
                                    i2 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount();
                                boolean z2 = false;
                                while (true) {
                                    z = z2;
                                    if (i < repeatCount + 1 && m43938b(i2, (Rect) null)) {
                                        i++;
                                        z2 = true;
                                    }
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
                        int i3 = this.f3882c;
                        if (i3 != Integer.MIN_VALUE) {
                            mo10222b(i3, 16, null);
                        }
                        z = true;
                    }
                }
            } else if (keyEvent.hasNoModifiers()) {
                z = m43938b(2, (Rect) null);
            } else {
                z = false;
                if (keyEvent.hasModifiers(1)) {
                    z = m43938b(1, (Rect) null);
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m43944a(MotionEvent motionEvent) {
        if (!this.f3888j.isEnabled() || !this.f3888j.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int mo10225a = mo10225a(motionEvent.getX(), motionEvent.getY());
            m43940b(mo10225a);
            return mo10225a != Integer.MIN_VALUE;
        } else if (action != 10 || this.f3883d == Integer.MIN_VALUE) {
            return false;
        } else {
            m43940b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            return true;
        }
    }

    /* renamed from: b */
    public void m43940b(int i) {
        int i2 = this.f3883d;
        if (i2 == i) {
            return;
        }
        this.f3883d = i;
        m43949a(i, 128);
        m43949a(i2, PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
    }

    /* renamed from: b */
    protected abstract boolean mo10222b(int i, int i2, Bundle bundle);

    /* renamed from: c */
    final C0869c m43937c(int i) {
        return i == -1 ? m43941b() : m43932g(i);
    }

    @Override // androidx.core.view.C0865a
    /* renamed from: d */
    public final void mo10621d(View view, AccessibilityEvent accessibilityEvent) {
        super.mo10621d(view, accessibilityEvent);
    }

    /* renamed from: d */
    public final boolean m43935d(int i) {
        int i2;
        if ((this.f3889k.isFocused() || this.f3889k.requestFocus()) && (i2 = this.f3882c) != i) {
            if (i2 != Integer.MIN_VALUE) {
                m43934e(i2);
            }
            this.f3882c = i;
            mo10959a(i, true);
            m43949a(i, 8);
            return true;
        }
        return false;
    }

    /* renamed from: e */
    public final boolean m43934e(int i) {
        if (this.f3882c != i) {
            return false;
        }
        this.f3882c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        mo10959a(i, false);
        m43949a(i, 8);
        return true;
    }
}
