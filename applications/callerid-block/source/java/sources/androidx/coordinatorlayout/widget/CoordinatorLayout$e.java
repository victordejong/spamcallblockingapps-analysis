package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import d.g.c;
import d.h.m.d;
import d.h.m.t;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$e.class */
public class CoordinatorLayout$e extends ViewGroup.MarginLayoutParams {

    /* renamed from: a */
    CoordinatorLayout$Behavior f1537a;

    /* renamed from: b */
    boolean f1538b;

    /* renamed from: c */
    public int f1539c;

    /* renamed from: d */
    public int f1540d;

    /* renamed from: e */
    public int f1541e;

    /* renamed from: f */
    int f1542f;

    /* renamed from: g */
    public int f1543g;

    /* renamed from: h */
    public int f1544h;

    /* renamed from: i */
    int f1545i;

    /* renamed from: j */
    int f1546j;

    /* renamed from: k */
    View f1547k;

    /* renamed from: l */
    View f1548l;

    /* renamed from: m */
    private boolean f1549m;

    /* renamed from: n */
    private boolean f1550n;

    /* renamed from: o */
    private boolean f1551o;

    /* renamed from: p */
    private boolean f1552p;

    /* renamed from: q */
    final Rect f1553q;

    public CoordinatorLayout$e(int i, int i2) {
        super(i, i2);
        this.f1538b = false;
        this.f1539c = 0;
        this.f1540d = 0;
        this.f1541e = -1;
        this.f1542f = -1;
        this.f1543g = 0;
        this.f1544h = 0;
        this.f1553q = new Rect();
    }

    CoordinatorLayout$e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1538b = false;
        this.f1539c = 0;
        this.f1540d = 0;
        this.f1541e = -1;
        this.f1542f = -1;
        this.f1543g = 0;
        this.f1544h = 0;
        this.f1553q = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.CoordinatorLayout_Layout);
        this.f1539c = obtainStyledAttributes.getInteger(c.CoordinatorLayout_Layout_android_layout_gravity, 0);
        this.f1542f = obtainStyledAttributes.getResourceId(c.CoordinatorLayout_Layout_layout_anchor, -1);
        this.f1540d = obtainStyledAttributes.getInteger(c.CoordinatorLayout_Layout_layout_anchorGravity, 0);
        this.f1541e = obtainStyledAttributes.getInteger(c.CoordinatorLayout_Layout_layout_keyline, -1);
        this.f1543g = obtainStyledAttributes.getInt(c.CoordinatorLayout_Layout_layout_insetEdge, 0);
        this.f1544h = obtainStyledAttributes.getInt(c.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
        int i = c.CoordinatorLayout_Layout_layout_behavior;
        boolean hasValue = obtainStyledAttributes.hasValue(i);
        this.f1538b = hasValue;
        if (hasValue) {
            this.f1537a = CoordinatorLayout.O(context, attributeSet, obtainStyledAttributes.getString(i));
        }
        obtainStyledAttributes.recycle();
        CoordinatorLayout$Behavior coordinatorLayout$Behavior = this.f1537a;
        if (coordinatorLayout$Behavior != null) {
            coordinatorLayout$Behavior.m13747g(this);
        }
    }

    public CoordinatorLayout$e(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f1538b = false;
        this.f1539c = 0;
        this.f1540d = 0;
        this.f1541e = -1;
        this.f1542f = -1;
        this.f1543g = 0;
        this.f1544h = 0;
        this.f1553q = new Rect();
    }

    public CoordinatorLayout$e(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f1538b = false;
        this.f1539c = 0;
        this.f1540d = 0;
        this.f1541e = -1;
        this.f1542f = -1;
        this.f1543g = 0;
        this.f1544h = 0;
        this.f1553q = new Rect();
    }

    public CoordinatorLayout$e(CoordinatorLayout$e coordinatorLayout$e) {
        super((ViewGroup.MarginLayoutParams) coordinatorLayout$e);
        this.f1538b = false;
        this.f1539c = 0;
        this.f1540d = 0;
        this.f1541e = -1;
        this.f1542f = -1;
        this.f1543g = 0;
        this.f1544h = 0;
        this.f1553q = new Rect();
    }

    /* renamed from: n */
    private void m13711n(View view, CoordinatorLayout coordinatorLayout) {
        View findViewById = coordinatorLayout.findViewById(this.f1542f);
        this.f1547k = findViewById;
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
                this.f1548l = findViewById;
                return;
            } else if (!coordinatorLayout.isInEditMode()) {
                throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
            }
        } else if (!coordinatorLayout.isInEditMode()) {
            throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f1542f) + " to anchor view " + view);
        }
        this.f1548l = null;
        this.f1547k = null;
    }

    /* renamed from: s */
    private boolean m13706s(View view, int i) {
        int b = d.b(((CoordinatorLayout$e) view.getLayoutParams()).f1543g, i);
        return b != 0 && (d.b(this.f1544h, i) & b) == b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
        r3.f1548l = null;
        r3.f1547k = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0054, code lost:
        return false;
     */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m13705t(android.view.View r4, androidx.coordinatorlayout.widget.CoordinatorLayout r5) {
        /*
            r3 = this;
            r0 = r3
            android.view.View r0 = r0.f1547k
            int r0 = r0.getId()
            r1 = r3
            int r1 = r1.f1542f
            if (r0 == r1) goto L10
            r0 = 0
            return r0
        L10:
            r0 = r3
            android.view.View r0 = r0.f1547k
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
            r0.f1548l = r1
            r0 = r3
            r1 = 0
            r0.f1547k = r1
            r0 = 0
            return r0
        L55:
            r0 = r3
            r1 = r6
            r0.f1548l = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout$e.m13705t(android.view.View, androidx.coordinatorlayout.widget.CoordinatorLayout):boolean");
    }

    /* renamed from: a */
    boolean m13724a() {
        return this.f1547k == null && this.f1542f != -1;
    }

    /* renamed from: b */
    boolean m13723b(CoordinatorLayout coordinatorLayout, View view, View view2) {
        CoordinatorLayout$Behavior coordinatorLayout$Behavior;
        return view2 == this.f1548l || m13706s(view2, t.B(coordinatorLayout)) || ((coordinatorLayout$Behavior = this.f1537a) != null && coordinatorLayout$Behavior.m13749e(coordinatorLayout, view, view2));
    }

    /* renamed from: c */
    boolean m13722c() {
        if (this.f1537a == null) {
            this.f1549m = false;
        }
        return this.f1549m;
    }

    /* renamed from: d */
    View m13721d(CoordinatorLayout coordinatorLayout, View view) {
        if (this.f1542f == -1) {
            this.f1548l = null;
            this.f1547k = null;
            return null;
        }
        if (this.f1547k == null || !m13705t(view, coordinatorLayout)) {
            m13711n(view, coordinatorLayout);
        }
        return this.f1547k;
    }

    /* renamed from: e */
    public int m13720e() {
        return this.f1542f;
    }

    /* renamed from: f */
    public CoordinatorLayout$Behavior m13719f() {
        return this.f1537a;
    }

    /* renamed from: g */
    boolean m13718g() {
        return this.f1552p;
    }

    /* renamed from: h */
    Rect m13717h() {
        return this.f1553q;
    }

    /* renamed from: i */
    boolean m13716i(CoordinatorLayout coordinatorLayout, View view) {
        boolean z = this.f1549m;
        if (z) {
            return true;
        }
        CoordinatorLayout$Behavior coordinatorLayout$Behavior = this.f1537a;
        boolean m13753a = (coordinatorLayout$Behavior != null ? coordinatorLayout$Behavior.m13753a(coordinatorLayout, view) : false) | z;
        this.f1549m = m13753a;
        return m13753a;
    }

    /* renamed from: j */
    boolean m13715j(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f1551o;
            }
            return false;
        }
        return this.f1550n;
    }

    /* renamed from: k */
    void m13714k() {
        this.f1552p = false;
    }

    /* renamed from: l */
    void m13713l(int i) {
        m13707r(i, false);
    }

    /* renamed from: m */
    void m13712m() {
        this.f1549m = false;
    }

    /* renamed from: o */
    public void m13710o(CoordinatorLayout$Behavior coordinatorLayout$Behavior) {
        CoordinatorLayout$Behavior coordinatorLayout$Behavior2 = this.f1537a;
        if (coordinatorLayout$Behavior2 != coordinatorLayout$Behavior) {
            if (coordinatorLayout$Behavior2 != null) {
                coordinatorLayout$Behavior2.m13744j();
            }
            this.f1537a = coordinatorLayout$Behavior;
            this.f1538b = true;
            if (coordinatorLayout$Behavior == null) {
                return;
            }
            coordinatorLayout$Behavior.m13747g(this);
        }
    }

    /* renamed from: p */
    void m13709p(boolean z) {
        this.f1552p = z;
    }

    /* renamed from: q */
    void m13708q(Rect rect) {
        this.f1553q.set(rect);
    }

    /* renamed from: r */
    void m13707r(int i, boolean z) {
        if (i == 0) {
            this.f1550n = z;
        } else if (i != 1) {
        } else {
            this.f1551o = z;
        }
    }
}
