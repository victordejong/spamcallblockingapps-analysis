package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$e.class */
public class CoordinatorLayout$e extends ViewGroup.MarginLayoutParams {

    /* renamed from: a */
    public CoordinatorLayout$Behavior f763a;

    /* renamed from: b */
    public boolean f764b;

    /* renamed from: c */
    public int f765c;

    /* renamed from: d */
    public int f766d;

    /* renamed from: e */
    public int f767e;

    /* renamed from: f */
    public int f768f;

    /* renamed from: g */
    public int f769g;

    /* renamed from: h */
    public int f770h;

    /* renamed from: i */
    public int f771i;

    /* renamed from: j */
    public int f772j;

    /* renamed from: k */
    public View f773k;

    /* renamed from: l */
    public View f774l;

    /* renamed from: m */
    public boolean f775m;

    /* renamed from: n */
    public boolean f776n;

    /* renamed from: o */
    public boolean f777o;

    /* renamed from: p */
    public boolean f778p;

    /* renamed from: q */
    public final Rect f779q;

    /* renamed from: r */
    public Object f780r;

    public CoordinatorLayout$e(int i, int i2) {
        super(i, i2);
        this.f764b = false;
        this.f765c = 0;
        this.f766d = 0;
        this.f767e = -1;
        this.f768f = -1;
        this.f769g = 0;
        this.f770h = 0;
        this.f779q = new Rect();
    }

    public CoordinatorLayout$e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f764b = false;
        this.f765c = 0;
        this.f766d = 0;
        this.f767e = -1;
        this.f768f = -1;
        this.f769g = 0;
        this.f770h = 0;
        this.f779q = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h7.CoordinatorLayout_Layout);
        this.f765c = obtainStyledAttributes.getInteger(h7.CoordinatorLayout_Layout_android_layout_gravity, 0);
        this.f768f = obtainStyledAttributes.getResourceId(h7.CoordinatorLayout_Layout_layout_anchor, -1);
        this.f766d = obtainStyledAttributes.getInteger(h7.CoordinatorLayout_Layout_layout_anchorGravity, 0);
        this.f767e = obtainStyledAttributes.getInteger(h7.CoordinatorLayout_Layout_layout_keyline, -1);
        this.f769g = obtainStyledAttributes.getInt(h7.CoordinatorLayout_Layout_layout_insetEdge, 0);
        this.f770h = obtainStyledAttributes.getInt(h7.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
        int i = h7.CoordinatorLayout_Layout_layout_behavior;
        boolean hasValue = obtainStyledAttributes.hasValue(i);
        this.f764b = hasValue;
        if (hasValue) {
            this.f763a = CoordinatorLayout.parseBehavior(context, attributeSet, obtainStyledAttributes.getString(i));
        }
        obtainStyledAttributes.recycle();
        CoordinatorLayout$Behavior coordinatorLayout$Behavior = this.f763a;
        if (coordinatorLayout$Behavior != null) {
            coordinatorLayout$Behavior.onAttachedToLayoutParams(this);
        }
    }

    public CoordinatorLayout$e(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f764b = false;
        this.f765c = 0;
        this.f766d = 0;
        this.f767e = -1;
        this.f768f = -1;
        this.f769g = 0;
        this.f770h = 0;
        this.f779q = new Rect();
    }

    public CoordinatorLayout$e(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f764b = false;
        this.f765c = 0;
        this.f766d = 0;
        this.f767e = -1;
        this.f768f = -1;
        this.f769g = 0;
        this.f770h = 0;
        this.f779q = new Rect();
    }

    public CoordinatorLayout$e(CoordinatorLayout$e coordinatorLayout$e) {
        super((ViewGroup.MarginLayoutParams) coordinatorLayout$e);
        this.f764b = false;
        this.f765c = 0;
        this.f766d = 0;
        this.f767e = -1;
        this.f768f = -1;
        this.f769g = 0;
        this.f770h = 0;
        this.f779q = new Rect();
    }

    /* renamed from: a */
    public boolean m6833a() {
        return this.f773k == null && this.f768f != -1;
    }

    /* renamed from: b */
    public boolean m6832b(CoordinatorLayout coordinatorLayout, View view, View view2) {
        CoordinatorLayout$Behavior coordinatorLayout$Behavior;
        return view2 == this.f774l || m6815s(view2, jb.B(coordinatorLayout)) || ((coordinatorLayout$Behavior = this.f763a) != null && coordinatorLayout$Behavior.layoutDependsOn(coordinatorLayout, view, view2));
    }

    /* renamed from: c */
    public boolean m6831c() {
        if (this.f763a == null) {
            this.f775m = false;
        }
        return this.f775m;
    }

    /* renamed from: d */
    public View m6830d(CoordinatorLayout coordinatorLayout, View view) {
        if (this.f768f == -1) {
            this.f774l = null;
            this.f773k = null;
            return null;
        }
        if (this.f773k == null || !m6814t(view, coordinatorLayout)) {
            m6820n(view, coordinatorLayout);
        }
        return this.f773k;
    }

    /* renamed from: e */
    public int m6829e() {
        return this.f768f;
    }

    /* renamed from: f */
    public CoordinatorLayout$Behavior m6828f() {
        return this.f763a;
    }

    /* renamed from: g */
    public boolean m6827g() {
        return this.f778p;
    }

    /* renamed from: h */
    public Rect m6826h() {
        return this.f779q;
    }

    /* renamed from: i */
    public boolean m6825i(CoordinatorLayout coordinatorLayout, View view) {
        boolean z = this.f775m;
        if (z) {
            return true;
        }
        CoordinatorLayout$Behavior coordinatorLayout$Behavior = this.f763a;
        boolean blocksInteractionBelow = (coordinatorLayout$Behavior != null ? coordinatorLayout$Behavior.blocksInteractionBelow(coordinatorLayout, view) : false) | z;
        this.f775m = blocksInteractionBelow;
        return blocksInteractionBelow;
    }

    /* renamed from: j */
    public boolean m6824j(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f777o;
            }
            return false;
        }
        return this.f776n;
    }

    /* renamed from: k */
    public void m6823k() {
        this.f778p = false;
    }

    /* renamed from: l */
    public void m6822l(int i) {
        m6816r(i, false);
    }

    /* renamed from: m */
    public void m6821m() {
        this.f775m = false;
    }

    /* renamed from: n */
    public final void m6820n(View view, CoordinatorLayout coordinatorLayout) {
        View findViewById = coordinatorLayout.findViewById(this.f768f);
        this.f773k = findViewById;
        if (findViewById != null) {
            if (findViewById != coordinatorLayout) {
                ViewParent parent = findViewById.getParent();
                while (true) {
                    ViewParent viewParent = parent;
                    if (viewParent == coordinatorLayout || viewParent == null) {
                        break;
                    } else if (viewParent != view) {
                        if (viewParent instanceof View) {
                            findViewById = (View) viewParent;
                        }
                        parent = viewParent.getParent();
                    } else if (!coordinatorLayout.isInEditMode()) {
                        throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                }
                this.f774l = findViewById;
                return;
            } else if (!coordinatorLayout.isInEditMode()) {
                throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
            }
        } else if (!coordinatorLayout.isInEditMode()) {
            throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f768f) + " to anchor view " + view);
        }
        this.f774l = null;
        this.f773k = null;
    }

    /* renamed from: o */
    public void m6819o(CoordinatorLayout$Behavior coordinatorLayout$Behavior) {
        CoordinatorLayout$Behavior coordinatorLayout$Behavior2 = this.f763a;
        if (coordinatorLayout$Behavior2 != coordinatorLayout$Behavior) {
            if (coordinatorLayout$Behavior2 != null) {
                coordinatorLayout$Behavior2.onDetachedFromLayoutParams();
            }
            this.f763a = coordinatorLayout$Behavior;
            this.f780r = null;
            this.f764b = true;
            if (coordinatorLayout$Behavior == null) {
                return;
            }
            coordinatorLayout$Behavior.onAttachedToLayoutParams(this);
        }
    }

    /* renamed from: p */
    public void m6818p(boolean z) {
        this.f778p = z;
    }

    /* renamed from: q */
    public void m6817q(Rect rect) {
        this.f779q.set(rect);
    }

    /* renamed from: r */
    public void m6816r(int i, boolean z) {
        if (i == 0) {
            this.f776n = z;
        } else if (i != 1) {
        } else {
            this.f777o = z;
        }
    }

    /* renamed from: s */
    public final boolean m6815s(View view, int i) {
        int b = ta.b(((CoordinatorLayout$e) view.getLayoutParams()).f769g, i);
        return b != 0 && (ta.b(this.f770h, i) & b) == b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
        r3.f774l = null;
        r3.f773k = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0054, code lost:
        return false;
     */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6814t(android.view.View r4, androidx.coordinatorlayout.widget.CoordinatorLayout r5) {
        /*
            r3 = this;
            r0 = r3
            android.view.View r0 = r0.f773k
            int r0 = r0.getId()
            r1 = r3
            int r1 = r1.f768f
            if (r0 == r1) goto L10
            r0 = 0
            return r0
        L10:
            r0 = r3
            android.view.View r0 = r0.f773k
            r6 = r0
            r0 = r6
            android.view.ViewParent r0 = r0.getParent()
            r7 = r0
        L1b:
            r0 = r7
            r1 = r5
            if (r0 == r1) goto L55
            r0 = r7
            if (r0 == 0) goto L49
            r0 = r7
            r1 = r4
            if (r0 != r1) goto L2f
            goto L49
        L2f:
            r0 = r7
            boolean r0 = r0 instanceof android.view.View
            if (r0 == 0) goto L3d
            r0 = r7
            android.view.View r0 = (android.view.View) r0
            r6 = r0
        L3d:
            r0 = r7
            android.view.ViewParent r0 = r0.getParent()
            r7 = r0
            goto L1b
        L49:
            r0 = r3
            r1 = 0
            r0.f774l = r1
            r0 = r3
            r1 = 0
            r0.f773k = r1
            r0 = 0
            return r0
        L55:
            r0 = r3
            r1 = r6
            r0.f774l = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout$e.m6814t(android.view.View, androidx.coordinatorlayout.widget.CoordinatorLayout):boolean");
    }
}
