package androidx.customview.a;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.b.h;
import androidx.core.view.a.c;
import androidx.core.view.a.d;
import androidx.core.view.a.e;
import androidx.core.view.v;
import androidx.core.view.x;
import androidx.customview.a.b;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/customview/a/a.class */
public abstract class a extends androidx.core.view.a {
    private static final Rect e = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    private static final b.a<c> m = new b.a<c>() { // from class: androidx.customview.a.a.1
        @Override // androidx.customview.a.b.a
        public final /* bridge */ /* synthetic */ void a(c cVar, Rect rect) {
            cVar.a(rect);
        }
    };
    private static final b.AbstractC0057b<h<c>, c> n = new b.AbstractC0057b<h<c>, c>() { // from class: androidx.customview.a.a.2
        @Override // androidx.customview.a.b.AbstractC0057b
        public final /* synthetic */ int a(h<c> hVar) {
            return hVar.b();
        }

        @Override // androidx.customview.a.b.AbstractC0057b
        public final /* synthetic */ c a(h<c> hVar, int i) {
            return hVar.b(i);
        }
    };
    private final AccessibilityManager j;
    private final View k;
    private C0056a l;
    private final Rect f = new Rect();
    private final Rect g = new Rect();
    private final Rect h = new Rect();
    private final int[] i = new int[2];

    /* renamed from: b  reason: collision with root package name */
    public int f2074b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

    /* renamed from: c  reason: collision with root package name */
    public int f2075c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

    /* renamed from: d  reason: collision with root package name */
    public int f2076d = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

    /* renamed from: androidx.customview.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/a$a.class */
    final class C0056a extends d {
        C0056a() {
        }

        @Override // androidx.core.view.a.d
        public final c a(int i) {
            return c.a(a.this.c(i));
        }

        @Override // androidx.core.view.a.d
        public final boolean a(int i, int i2, Bundle bundle) {
            return a.this.a(i, i2, bundle);
        }

        @Override // androidx.core.view.a.d
        public final c b(int i) {
            int i2 = i == 2 ? a.this.f2074b : a.this.f2075c;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return a(i2);
        }
    }

    public a(View view) {
        if (view != null) {
            this.k = view;
            this.j = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            if (v.e(view) == 0) {
                v.c(view, 1);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    private static Rect a(View view, int i, Rect rect) {
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

    private h<c> a() {
        ArrayList arrayList = new ArrayList();
        a(arrayList);
        h<c> hVar = new h<>();
        for (int i = 0; i < arrayList.size(); i++) {
            hVar.b(i, g(i));
        }
        return hVar;
    }

    private void a(int i, Rect rect) {
        c(i).a(rect);
    }

    private boolean a(Rect rect) {
        if (rect == null || rect.isEmpty() || this.k.getWindowVisibility() != 0) {
            return false;
        }
        ViewParent parent = this.k.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() <= BitmapDescriptorFactory.HUE_RED || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        return parent != null;
    }

    private AccessibilityEvent b(int i, int i2) {
        return i != -1 ? c(i, i2) : f(i2);
    }

    private c b() {
        c a2 = c.a(this.k);
        v.a(this.k, a2);
        ArrayList arrayList = new ArrayList();
        a(arrayList);
        if (a2.f1959a.getChildCount() <= 0 || arrayList.size() <= 0) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                a2.b(this.k, ((Integer) arrayList.get(i)).intValue());
            }
            return a2;
        }
        throw new RuntimeException("Views cannot have both real and virtual children");
    }

    private boolean b(int i, Rect rect) {
        c cVar;
        h<c> a2 = a();
        int i2 = this.f2075c;
        int i3 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        c a3 = i2 == Integer.MIN_VALUE ? null : a2.a(i2, null);
        if (i == 1 || i == 2) {
            cVar = (c) b.a(a2, n, m, a3, i, v.f(this.k) == 1);
        } else if (i == 17 || i == 33 || i == 66 || i == 130) {
            Rect rect2 = new Rect();
            int i4 = this.f2075c;
            if (i4 != Integer.MIN_VALUE) {
                a(i4, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                a(this.k, i, rect2);
            }
            cVar = (c) b.a(a2, n, m, a3, rect2, i);
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        if (cVar != null) {
            i3 = a2.a(a2.a((h<c>) cVar));
        }
        return d(i3);
    }

    private AccessibilityEvent c(int i, int i2) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        c c2 = c(i);
        obtain.getText().add(c2.d());
        obtain.setContentDescription(c2.f1959a.getContentDescription());
        obtain.setScrollable(c2.f1959a.isScrollable());
        obtain.setPassword(c2.f1959a.isPassword());
        obtain.setEnabled(c2.f1959a.isEnabled());
        obtain.setChecked(c2.f1959a.isChecked());
        if (!obtain.getText().isEmpty() || obtain.getContentDescription() != null) {
            obtain.setClassName(c2.f1959a.getClassName());
            e.a(obtain, this.k, i);
            obtain.setPackageName(this.k.getContext().getPackageName());
            return obtain;
        }
        throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
    }

    private AccessibilityEvent f(int i) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i);
        this.k.onInitializeAccessibilityEvent(obtain);
        return obtain;
    }

    private c g(int i) {
        c a2 = c.a();
        a2.i(true);
        a2.b(true);
        a2.b("android.view.View");
        Rect rect = e;
        a2.b(rect);
        a2.d(rect);
        a2.d(this.k);
        a(i, a2);
        if (a2.d() == null && a2.f1959a.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        a2.a(this.g);
        if (!this.g.equals(rect)) {
            int actions = a2.f1959a.getActions();
            if ((actions & 64) != 0) {
                throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            } else if ((actions & 128) == 0) {
                a2.a((CharSequence) this.k.getContext().getPackageName());
                a2.a(this.k, i);
                if (this.f2074b == i) {
                    a2.e(true);
                    a2.a(128);
                } else {
                    a2.e(false);
                    a2.a(64);
                }
                boolean z = this.f2075c == i;
                if (z) {
                    a2.a(2);
                } else if (a2.f1959a.isFocusable()) {
                    a2.a(1);
                }
                a2.c(z);
                this.k.getLocationOnScreen(this.i);
                a2.c(this.f);
                if (this.f.equals(rect)) {
                    a2.a(this.f);
                    if (a2.f1960b != -1) {
                        c a3 = c.a();
                        for (int i2 = a2.f1960b; i2 != -1; i2 = a3.f1960b) {
                            a3.e(this.k);
                            a3.b(e);
                            a(i2, a3);
                            a3.a(this.g);
                            this.f.offset(this.g.left, this.g.top);
                        }
                        a3.f1959a.recycle();
                    }
                    this.f.offset(this.i[0] - this.k.getScrollX(), this.i[1] - this.k.getScrollY());
                }
                if (this.k.getLocalVisibleRect(this.h)) {
                    this.h.offset(this.i[0] - this.k.getScrollX(), this.i[1] - this.k.getScrollY());
                    if (this.f.intersect(this.h)) {
                        a2.d(this.f);
                        if (a(this.f)) {
                            a2.d(true);
                        }
                    }
                }
                return a2;
            } else {
                throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            }
        } else {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
    }

    private boolean h(int i) {
        if (this.f2074b != i) {
            return false;
        }
        this.f2074b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.k.invalidate();
        a(i, 65536);
        return true;
    }

    protected abstract int a(float f, float f2);

    @Override // androidx.core.view.a
    public final d a(View view) {
        if (this.l == null) {
            this.l = new C0056a();
        }
        return this.l;
    }

    public final void a(int i) {
        ViewParent parent;
        if (i != Integer.MIN_VALUE && this.j.isEnabled() && (parent = this.k.getParent()) != null) {
            AccessibilityEvent b2 = b(i, 2048);
            androidx.core.view.a.b.a(b2, 0);
            x.a(parent, this.k, b2);
        }
    }

    protected abstract void a(int i, c cVar);

    protected void a(int i, boolean z) {
    }

    @Override // androidx.core.view.a
    public final void a(View view, c cVar) {
        super.a(view, cVar);
        a(cVar);
    }

    protected void a(c cVar) {
    }

    protected abstract void a(List<Integer> list);

    public final void a(boolean z, int i, Rect rect) {
        int i2 = this.f2075c;
        if (i2 != Integer.MIN_VALUE) {
            e(i2);
        }
        if (z) {
            b(i, rect);
        }
    }

    public final boolean a(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.j.isEnabled() || (parent = this.k.getParent()) == null) {
            return false;
        }
        return x.a(parent, this.k, b(i, i2));
    }

    final boolean a(int i, int i2, Bundle bundle) {
        int i3;
        if (i == -1) {
            return v.a(this.k, i2, bundle);
        }
        if (i2 == 1) {
            return d(i);
        }
        if (i2 == 2) {
            return e(i);
        }
        if (i2 != 64) {
            return i2 != 128 ? b(i, i2, bundle) : h(i);
        }
        if (!this.j.isEnabled() || !this.j.isTouchExplorationEnabled() || (i3 = this.f2074b) == i) {
            return false;
        }
        if (i3 != Integer.MIN_VALUE) {
            h(i3);
        }
        this.f2074b = i;
        this.k.invalidate();
        a(i, 32768);
        return true;
    }

    public final boolean a(KeyEvent keyEvent) {
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
                                z = false;
                                while (i < repeatCount + 1 && b(i2, (Rect) null)) {
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
                        int i3 = this.f2075c;
                        if (i3 != Integer.MIN_VALUE) {
                            b(i3, 16, null);
                        }
                        z = true;
                    }
                }
            } else if (keyEvent.hasNoModifiers()) {
                z = b(2, (Rect) null);
            } else {
                z = false;
                if (keyEvent.hasModifiers(1)) {
                    z = b(1, (Rect) null);
                }
            }
        }
        return z;
    }

    public final boolean a(MotionEvent motionEvent) {
        if (!this.j.isEnabled() || !this.j.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int a2 = a(motionEvent.getX(), motionEvent.getY());
            b(a2);
            return a2 != Integer.MIN_VALUE;
        } else if (action != 10 || this.f2076d == Integer.MIN_VALUE) {
            return false;
        } else {
            b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            return true;
        }
    }

    public void b(int i) {
        int i2 = this.f2076d;
        if (i2 != i) {
            this.f2076d = i;
            a(i, 128);
            a(i2, PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
        }
    }

    protected abstract boolean b(int i, int i2, Bundle bundle);

    final c c(int i) {
        return i == -1 ? b() : g(i);
    }

    @Override // androidx.core.view.a
    public final void d(View view, AccessibilityEvent accessibilityEvent) {
        super.d(view, accessibilityEvent);
    }

    public final boolean d(int i) {
        int i2;
        if ((!this.k.isFocused() && !this.k.requestFocus()) || (i2 = this.f2075c) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            e(i2);
        }
        this.f2075c = i;
        a(i, true);
        a(i, 8);
        return true;
    }

    public final boolean e(int i) {
        if (this.f2075c != i) {
            return false;
        }
        this.f2075c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        a(i, false);
        a(i, 8);
        return true;
    }
}
