package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.C0417a;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p017a.C0438a;
import androidx.core.p025g.C0521c;
import androidx.core.p025g.C0523e;
import androidx.core.p026h.AbstractC0588n;
import androidx.core.p026h.AbstractC0589o;
import androidx.core.p026h.AbstractC0591q;
import androidx.core.p026h.C0572ac;
import androidx.core.p026h.C0576c;
import androidx.core.p026h.C0590p;
import androidx.core.p026h.C0595u;
import androidx.p029d.p030a.AbstractC0633a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout.class */
public class CoordinatorLayout extends ViewGroup implements AbstractC0588n, AbstractC0589o {

    /* renamed from: a */
    static final String f1675a;

    /* renamed from: b */
    static final Class<?>[] f1676b;

    /* renamed from: c */
    static final ThreadLocal<Map<String, Constructor<AbstractC0423b>>> f1677c;

    /* renamed from: d */
    static final Comparator<View> f1678d;

    /* renamed from: f */
    private static final C0523e.AbstractC0524a<Rect> f1679f;

    /* renamed from: e */
    ViewGroup.OnHierarchyChangeListener f1680e;

    /* renamed from: g */
    private final List<View> f1681g;

    /* renamed from: h */
    private final C0431a<View> f1682h;

    /* renamed from: i */
    private final List<View> f1683i;

    /* renamed from: j */
    private final List<View> f1684j;

    /* renamed from: k */
    private Paint f1685k;

    /* renamed from: l */
    private final int[] f1686l;

    /* renamed from: m */
    private final int[] f1687m;

    /* renamed from: n */
    private boolean f1688n;

    /* renamed from: o */
    private boolean f1689o;

    /* renamed from: p */
    private int[] f1690p;

    /* renamed from: q */
    private View f1691q;

    /* renamed from: r */
    private View f1692r;

    /* renamed from: s */
    private ViewTreeObserver$OnPreDrawListenerC0427f f1693s;

    /* renamed from: t */
    private boolean f1694t;

    /* renamed from: u */
    private C0572ac f1695u;

    /* renamed from: v */
    private boolean f1696v;

    /* renamed from: w */
    private Drawable f1697w;

    /* renamed from: x */
    private AbstractC0591q f1698x;

    /* renamed from: y */
    private final C0590p f1699y;

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$a.class */
    public interface AbstractC0422a {
        AbstractC0423b getBehavior();
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$b.class */
    public static abstract class AbstractC0423b<V extends View> {
        public AbstractC0423b() {
        }

        public AbstractC0423b(Context context, AttributeSet attributeSet) {
        }

        /* renamed from: a */
        public int m20951a(CoordinatorLayout coordinatorLayout, V v) {
            return -16777216;
        }

        /* renamed from: a */
        public C0572ac m20947a(CoordinatorLayout coordinatorLayout, V v, C0572ac c0572ac) {
            return c0572ac;
        }

        /* renamed from: a */
        public void mo3574a() {
        }

        /* renamed from: a */
        public void mo2202a(C0426e c0426e) {
        }

        /* renamed from: a */
        public void mo3563a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        /* renamed from: a */
        public void mo3561a(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
            if (i == 0) {
                m20941d(coordinatorLayout, v, view);
            }
        }

        @Deprecated
        /* renamed from: a */
        public void mo3688a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        }

        @Deprecated
        /* renamed from: a */
        public void m20949a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                mo3688a(coordinatorLayout, (CoordinatorLayout) v, view, i, i2, i3, i4);
            }
        }

        /* renamed from: a */
        public void mo3560a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
            m20949a(coordinatorLayout, v, view, i, i2, i3, i4, i5);
        }

        @Deprecated
        /* renamed from: a */
        public void m20948a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
        }

        /* renamed from: a */
        public void mo3559a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
            if (i3 == 0) {
                m20948a(coordinatorLayout, (CoordinatorLayout) v, view, i, i2, iArr);
            }
        }

        /* renamed from: a */
        public boolean mo2219a(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        /* renamed from: a */
        public boolean mo3755a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        /* renamed from: a */
        public boolean mo3018a(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }

        /* renamed from: a */
        public boolean mo3775a(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        /* renamed from: a */
        public boolean mo2508a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: a */
        public boolean mo2190a(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        /* renamed from: a */
        public boolean mo3562a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        /* renamed from: a */
        public boolean m20950a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2, boolean z) {
            return false;
        }

        @Deprecated
        /* renamed from: a */
        public boolean mo3687a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
            return false;
        }

        /* renamed from: a */
        public boolean mo3558a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            return i2 == 0 ? mo3687a(coordinatorLayout, (CoordinatorLayout) v, view, view2, i) : false;
        }

        /* renamed from: b */
        public float m20946b(CoordinatorLayout coordinatorLayout, V v) {
            return 0.0f;
        }

        @Deprecated
        /* renamed from: b */
        public void m20945b(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        }

        /* renamed from: b */
        public void m20944b(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                m20945b(coordinatorLayout, v, view, view2, i);
            }
        }

        /* renamed from: b */
        public boolean mo2188b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: b */
        public boolean mo2216b(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        /* renamed from: c */
        public void m20942c(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        /* renamed from: c */
        public boolean m20943c(CoordinatorLayout coordinatorLayout, V v) {
            return m20946b(coordinatorLayout, v) > 0.0f;
        }

        /* renamed from: d */
        public Parcelable mo3542d(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        /* renamed from: d */
        public void m20941d(CoordinatorLayout coordinatorLayout, V v, View view) {
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$c.class */
    public @interface AbstractC0424c {
        /* renamed from: a */
        Class<? extends AbstractC0423b> m20940a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$d.class */
    public class ViewGroup$OnHierarchyChangeListenerC0425d implements ViewGroup.OnHierarchyChangeListener {
        ViewGroup$OnHierarchyChangeListenerC0425d() {
            CoordinatorLayout.this = r4;
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (CoordinatorLayout.this.f1680e != null) {
                CoordinatorLayout.this.f1680e.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.m20994a(2);
            if (CoordinatorLayout.this.f1680e != null) {
                CoordinatorLayout.this.f1680e.onChildViewRemoved(view, view2);
            }
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$e.class */
    public static class C0426e extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        AbstractC0423b f1702a;

        /* renamed from: b */
        boolean f1703b;

        /* renamed from: c */
        public int f1704c;

        /* renamed from: d */
        public int f1705d;

        /* renamed from: e */
        public int f1706e;

        /* renamed from: f */
        int f1707f;

        /* renamed from: g */
        public int f1708g;

        /* renamed from: h */
        public int f1709h;

        /* renamed from: i */
        int f1710i;

        /* renamed from: j */
        int f1711j;

        /* renamed from: k */
        View f1712k;

        /* renamed from: l */
        View f1713l;

        /* renamed from: m */
        final Rect f1714m;

        /* renamed from: n */
        Object f1715n;

        /* renamed from: o */
        private boolean f1716o;

        /* renamed from: p */
        private boolean f1717p;

        /* renamed from: q */
        private boolean f1718q;

        /* renamed from: r */
        private boolean f1719r;

        public C0426e(int i, int i2) {
            super(i, i2);
            this.f1703b = false;
            this.f1704c = 0;
            this.f1705d = 0;
            this.f1706e = -1;
            this.f1707f = -1;
            this.f1708g = 0;
            this.f1709h = 0;
            this.f1714m = new Rect();
        }

        C0426e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1703b = false;
            this.f1704c = 0;
            this.f1705d = 0;
            this.f1706e = -1;
            this.f1707f = -1;
            this.f1708g = 0;
            this.f1709h = 0;
            this.f1714m = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0417a.C0420c.CoordinatorLayout_Layout);
            this.f1704c = obtainStyledAttributes.getInteger(C0417a.C0420c.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f1707f = obtainStyledAttributes.getResourceId(C0417a.C0420c.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f1705d = obtainStyledAttributes.getInteger(C0417a.C0420c.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f1706e = obtainStyledAttributes.getInteger(C0417a.C0420c.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f1708g = obtainStyledAttributes.getInt(C0417a.C0420c.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f1709h = obtainStyledAttributes.getInt(C0417a.C0420c.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            this.f1703b = obtainStyledAttributes.hasValue(C0417a.C0420c.CoordinatorLayout_Layout_layout_behavior);
            if (this.f1703b) {
                this.f1702a = CoordinatorLayout.m20992a(context, attributeSet, obtainStyledAttributes.getString(C0417a.C0420c.CoordinatorLayout_Layout_layout_behavior));
            }
            obtainStyledAttributes.recycle();
            if (this.f1702a != null) {
                this.f1702a.mo2202a(this);
            }
        }

        public C0426e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1703b = false;
            this.f1704c = 0;
            this.f1705d = 0;
            this.f1706e = -1;
            this.f1707f = -1;
            this.f1708g = 0;
            this.f1709h = 0;
            this.f1714m = new Rect();
        }

        public C0426e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1703b = false;
            this.f1704c = 0;
            this.f1705d = 0;
            this.f1706e = -1;
            this.f1707f = -1;
            this.f1708g = 0;
            this.f1709h = 0;
            this.f1714m = new Rect();
        }

        public C0426e(C0426e c0426e) {
            super((ViewGroup.MarginLayoutParams) c0426e);
            this.f1703b = false;
            this.f1704c = 0;
            this.f1705d = 0;
            this.f1706e = -1;
            this.f1707f = -1;
            this.f1708g = 0;
            this.f1709h = 0;
            this.f1714m = new Rect();
        }

        /* renamed from: a */
        private void m20934a(View view, CoordinatorLayout coordinatorLayout) {
            this.f1712k = coordinatorLayout.findViewById(this.f1707f);
            if (this.f1712k == null) {
                if (!coordinatorLayout.isInEditMode()) {
                    throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f1707f) + " to anchor view " + view);
                }
                this.f1713l = null;
                this.f1712k = null;
            } else if (this.f1712k == coordinatorLayout) {
                if (!coordinatorLayout.isInEditMode()) {
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
                this.f1713l = null;
                this.f1712k = null;
            } else {
                CoordinatorLayout coordinatorLayout2 = this.f1712k;
                ViewParent parent = this.f1712k.getParent();
                while (true) {
                    CoordinatorLayout coordinatorLayout3 = parent;
                    if (coordinatorLayout3 == coordinatorLayout || coordinatorLayout3 == null) {
                        break;
                    } else if (coordinatorLayout3 == view) {
                        if (!coordinatorLayout.isInEditMode()) {
                            throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                        }
                        this.f1713l = null;
                        this.f1712k = null;
                        return;
                    } else {
                        if (coordinatorLayout3 instanceof View) {
                            coordinatorLayout2 = coordinatorLayout3;
                        }
                        parent = coordinatorLayout3.getParent();
                    }
                }
                this.f1713l = coordinatorLayout2;
            }
        }

        /* renamed from: a */
        private boolean m20935a(View view, int i) {
            int m20421a = C0576c.m20421a(((C0426e) view.getLayoutParams()).f1708g, i);
            return m20421a != 0 && (C0576c.m20421a(this.f1709h, i) & m20421a) == m20421a;
        }

        /* renamed from: b */
        private boolean m20927b(View view, CoordinatorLayout coordinatorLayout) {
            boolean z;
            if (this.f1712k.getId() != this.f1707f) {
                z = false;
            } else {
                CoordinatorLayout coordinatorLayout2 = this.f1712k;
                ViewParent parent = this.f1712k.getParent();
                while (true) {
                    CoordinatorLayout coordinatorLayout3 = parent;
                    if (coordinatorLayout3 == coordinatorLayout) {
                        this.f1713l = coordinatorLayout2;
                        z = true;
                        break;
                    } else if (coordinatorLayout3 == null || coordinatorLayout3 == view) {
                        break;
                    } else {
                        if (coordinatorLayout3 instanceof View) {
                            coordinatorLayout2 = coordinatorLayout3;
                        }
                        parent = coordinatorLayout3.getParent();
                    }
                }
                this.f1713l = null;
                this.f1712k = null;
                z = false;
            }
            return z;
        }

        /* renamed from: a */
        public int m20939a() {
            return this.f1707f;
        }

        /* renamed from: a */
        void m20938a(int i) {
            m20937a(i, false);
        }

        /* renamed from: a */
        void m20937a(int i, boolean z) {
            switch (i) {
                case 0:
                    this.f1717p = z;
                    return;
                case 1:
                    this.f1718q = z;
                    return;
                default:
                    return;
            }
        }

        /* renamed from: a */
        void m20936a(Rect rect) {
            this.f1714m.set(rect);
        }

        /* renamed from: a */
        public void m20933a(AbstractC0423b abstractC0423b) {
            if (this.f1702a != abstractC0423b) {
                if (this.f1702a != null) {
                    this.f1702a.mo3574a();
                }
                this.f1702a = abstractC0423b;
                this.f1715n = null;
                this.f1703b = true;
                if (abstractC0423b == null) {
                    return;
                }
                abstractC0423b.mo2202a(this);
            }
        }

        /* renamed from: a */
        void m20930a(boolean z) {
            this.f1719r = z;
        }

        /* renamed from: a */
        boolean m20932a(CoordinatorLayout coordinatorLayout, View view) {
            boolean m20943c;
            if (this.f1716o) {
                m20943c = true;
            } else {
                m20943c = (this.f1702a != null ? this.f1702a.m20943c(coordinatorLayout, view) : false) | this.f1716o;
                this.f1716o = m20943c;
            }
            return m20943c;
        }

        /* renamed from: a */
        boolean m20931a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 == this.f1713l || m20935a(view2, C0595u.m20320g(coordinatorLayout)) || (this.f1702a != null && this.f1702a.mo2190a(coordinatorLayout, (CoordinatorLayout) view, view2));
        }

        /* renamed from: b */
        View m20926b(CoordinatorLayout coordinatorLayout, View view) {
            View view2;
            if (this.f1707f == -1) {
                this.f1713l = null;
                this.f1712k = null;
                view2 = null;
            } else {
                if (this.f1712k == null || !m20927b(view, coordinatorLayout)) {
                    m20934a(view, coordinatorLayout);
                }
                view2 = this.f1712k;
            }
            return view2;
        }

        /* renamed from: b */
        public AbstractC0423b m20929b() {
            return this.f1702a;
        }

        /* renamed from: b */
        boolean m20928b(int i) {
            boolean z;
            switch (i) {
                case 0:
                    z = this.f1717p;
                    break;
                case 1:
                    z = this.f1718q;
                    break;
                default:
                    z = false;
                    break;
            }
            return z;
        }

        /* renamed from: c */
        Rect m20925c() {
            return this.f1714m;
        }

        /* renamed from: d */
        boolean m20924d() {
            return this.f1712k == null && this.f1707f != -1;
        }

        /* renamed from: e */
        boolean m20923e() {
            if (this.f1702a == null) {
                this.f1716o = false;
            }
            return this.f1716o;
        }

        /* renamed from: f */
        void m20922f() {
            this.f1716o = false;
        }

        /* renamed from: g */
        boolean m20921g() {
            return this.f1719r;
        }

        /* renamed from: h */
        void m20920h() {
            this.f1719r = false;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$f */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$f.class */
    public class ViewTreeObserver$OnPreDrawListenerC0427f implements ViewTreeObserver.OnPreDrawListener {
        ViewTreeObserver$OnPreDrawListenerC0427f() {
            CoordinatorLayout.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.m20994a(0);
            return true;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$g */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$g.class */
    public static class C0428g extends AbstractC0633a {
        public static final Parcelable.Creator<C0428g> CREATOR = new Parcelable.ClassLoaderCreator<C0428g>() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.g.1
            /* renamed from: a */
            public C0428g createFromParcel(Parcel parcel) {
                return new C0428g(parcel, null);
            }

            /* renamed from: a */
            public C0428g createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0428g(parcel, classLoader);
            }

            /* renamed from: a */
            public C0428g[] newArray(int i) {
                return new C0428g[i];
            }
        };

        /* renamed from: a */
        SparseArray<Parcelable> f1721a;

        public C0428g(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f1721a = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.f1721a.append(iArr[i], readParcelableArray[i]);
            }
        }

        public C0428g(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.p029d.p030a.AbstractC0633a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            int size = this.f1721a != null ? this.f1721a.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.f1721a.keyAt(i2);
                parcelableArr[i2] = this.f1721a.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$h */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$h.class */
    static class C0430h implements Comparator<View> {
        C0430h() {
        }

        /* renamed from: a */
        public int compare(View view, View view2) {
            float m20298z = C0595u.m20298z(view);
            float m20298z2 = C0595u.m20298z(view2);
            return m20298z > m20298z2 ? -1 : m20298z < m20298z2 ? 1 : 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f1675a = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            f1678d = new C0430h();
        } else {
            f1678d = null;
        }
        f1676b = new Class[]{Context.class, AttributeSet.class};
        f1677c = new ThreadLocal<>();
        f1679f = new C0523e.C0526c(12);
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0417a.C0418a.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1681g = new ArrayList();
        this.f1682h = new C0431a<>();
        this.f1683i = new ArrayList();
        this.f1684j = new ArrayList();
        this.f1686l = new int[2];
        this.f1687m = new int[2];
        this.f1699y = new C0590p(this);
        TypedArray obtainStyledAttributes = i == 0 ? context.obtainStyledAttributes(attributeSet, C0417a.C0420c.CoordinatorLayout, 0, C0417a.C0419b.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, C0417a.C0420c.CoordinatorLayout, i, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            if (i == 0) {
                saveAttributeDataForStyleable(context, C0417a.C0420c.CoordinatorLayout, attributeSet, obtainStyledAttributes, 0, C0417a.C0419b.Widget_Support_CoordinatorLayout);
            } else {
                saveAttributeDataForStyleable(context, C0417a.C0420c.CoordinatorLayout, attributeSet, obtainStyledAttributes, i, 0);
            }
        }
        int resourceId = obtainStyledAttributes.getResourceId(C0417a.C0420c.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.f1690p = resources.getIntArray(resourceId);
            float f = resources.getDisplayMetrics().density;
            int length = this.f1690p.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.f1690p[i2] = (int) (this.f1690p[i2] * f);
            }
        }
        this.f1697w = obtainStyledAttributes.getDrawable(C0417a.C0420c.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        m20952g();
        super.setOnHierarchyChangeListener(new ViewGroup$OnHierarchyChangeListenerC0425d());
        if (C0595u.m20322f(this) == 0) {
            C0595u.m20335b(this, 1);
        }
    }

    /* renamed from: a */
    private static int m20993a(int i, int i2, int i3) {
        if (i >= i2) {
            i2 = i > i3 ? i3 : i;
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    static AbstractC0423b m20992a(Context context, AttributeSet attributeSet, String str) {
        String str2;
        AbstractC0423b newInstance;
        if (TextUtils.isEmpty(str)) {
            newInstance = null;
        } else {
            if (str.startsWith(".")) {
                str2 = context.getPackageName() + str;
            } else {
                str2 = str;
                if (str.indexOf(46) < 0) {
                    str2 = str;
                    if (!TextUtils.isEmpty(f1675a)) {
                        str2 = f1675a + '.' + str;
                    }
                }
            }
            try {
                Map<String, Constructor<AbstractC0423b>> map = f1677c.get();
                if (map == null) {
                    map = new HashMap<>();
                    f1677c.set(map);
                }
                Constructor<AbstractC0423b> constructor = map.get(str2);
                Constructor<AbstractC0423b> constructor2 = constructor;
                if (constructor == null) {
                    constructor2 = Class.forName(str2, false, context.getClassLoader()).getConstructor(f1676b);
                    constructor2.setAccessible(true);
                    map.put(str2, constructor2);
                }
                newInstance = constructor2.newInstance(context, attributeSet);
            } catch (Exception e) {
                throw new RuntimeException("Could not inflate Behavior subclass " + str2, e);
            }
        }
        return newInstance;
    }

    /* renamed from: a */
    private static void m20991a(Rect rect) {
        rect.setEmpty();
        f1679f.mo17020a(rect);
    }

    /* renamed from: a */
    private void m20984a(View view, int i, Rect rect, Rect rect2, C0426e c0426e, int i2, int i3) {
        int width;
        int height;
        int m20421a = C0576c.m20421a(m20957e(c0426e.f1704c), i);
        int m20421a2 = C0576c.m20421a(m20966c(c0426e.f1705d), i);
        switch (m20421a2 & 7) {
            case 1:
                width = (rect.width() / 2) + rect.left;
                break;
            case 5:
                width = rect.right;
                break;
            default:
                width = rect.left;
                break;
        }
        switch (m20421a2 & 112) {
            case 16:
                height = rect.top + (rect.height() / 2);
                break;
            case 80:
                height = rect.bottom;
                break;
            default:
                height = rect.top;
                break;
        }
        int i4 = width;
        switch (m20421a & 7) {
            case 1:
                i4 = width - (i2 / 2);
                break;
            case 5:
                break;
            default:
                i4 = width - i2;
                break;
        }
        int i5 = height;
        switch (m20421a & 112) {
            case 16:
                i5 = height - (i3 / 2);
                break;
            case 80:
                break;
            default:
                i5 = height - i3;
                break;
        }
        rect2.set(i4, i5, i4 + i2, i5 + i3);
    }

    /* renamed from: a */
    private void m20982a(View view, Rect rect, int i) {
        boolean z;
        boolean z2;
        int i2;
        int i3;
        if (C0595u.m20299y(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            C0426e c0426e = (C0426e) view.getLayoutParams();
            AbstractC0423b m20929b = c0426e.m20929b();
            Rect m20958e = m20958e();
            Rect m20958e2 = m20958e();
            m20958e2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (m20929b == null || !m20929b.mo3018a(this, (CoordinatorLayout) view, m20958e)) {
                m20958e.set(m20958e2);
            } else if (!m20958e2.contains(m20958e)) {
                throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + m20958e.toShortString() + " | Bounds:" + m20958e2.toShortString());
            }
            m20991a(m20958e2);
            if (m20958e.isEmpty()) {
                m20991a(m20958e);
                return;
            }
            int m20421a = C0576c.m20421a(c0426e.f1709h, i);
            if ((m20421a & 48) != 48 || (i3 = (m20958e.top - c0426e.topMargin) - c0426e.f1711j) >= rect.top) {
                z = false;
            } else {
                m20953f(view, rect.top - i3);
                z = true;
            }
            boolean z3 = z;
            if ((m20421a & 80) == 80) {
                int height = ((getHeight() - m20958e.bottom) - c0426e.bottomMargin) + c0426e.f1711j;
                z3 = z;
                if (height < rect.bottom) {
                    m20953f(view, height - rect.bottom);
                    z3 = true;
                }
            }
            if (!z3) {
                m20953f(view, 0);
            }
            if ((m20421a & 3) != 3 || (i2 = (m20958e.left - c0426e.leftMargin) - c0426e.f1710i) >= rect.left) {
                z2 = false;
            } else {
                m20955e(view, rect.left - i2);
                z2 = true;
            }
            if ((m20421a & 5) == 5) {
                int width = c0426e.f1710i + ((getWidth() - m20958e.right) - c0426e.rightMargin);
                if (width < rect.right) {
                    m20955e(view, width - rect.right);
                    z2 = true;
                }
            }
            if (!z2) {
                m20955e(view, 0);
            }
            m20991a(m20958e);
        }
    }

    /* renamed from: a */
    private void m20981a(View view, View view2, int i) {
        Rect m20958e = m20958e();
        Rect m20958e2 = m20958e();
        try {
            m20983a(view2, m20958e);
            m20985a(view, i, m20958e, m20958e2);
            view.layout(m20958e2.left, m20958e2.top, m20958e2.right, m20958e2.bottom);
        } finally {
            m20991a(m20958e);
            m20991a(m20958e2);
        }
    }

    /* renamed from: a */
    private void m20978a(C0426e c0426e, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + c0426e.leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - c0426e.rightMargin));
        int max2 = Math.max(getPaddingTop() + c0426e.topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - c0426e.bottomMargin));
        rect.set(max, max2, max + i, max2 + i2);
    }

    /* renamed from: a */
    private void m20976a(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i) : i));
        }
        if (f1678d != null) {
            Collections.sort(list, f1678d);
        }
    }

    /* renamed from: a */
    private void m20975a(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            AbstractC0423b m20929b = ((C0426e) childAt.getLayoutParams()).m20929b();
            if (m20929b != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    m20929b.mo2508a(this, (CoordinatorLayout) childAt, obtain);
                } else {
                    m20929b.mo2188b(this, (CoordinatorLayout) childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((C0426e) getChildAt(i2).getLayoutParams()).m20922f();
        }
        this.f1691q = null;
        this.f1688n = false;
    }

    /* renamed from: a */
    private boolean m20989a(MotionEvent motionEvent, int i) {
        boolean z = false;
        boolean z2 = false;
        MotionEvent motionEvent2 = null;
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.f1683i;
        m20976a(list);
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = list.get(i2);
            C0426e c0426e = (C0426e) view.getLayoutParams();
            AbstractC0423b m20929b = c0426e.m20929b();
            if (!(z || z2) || actionMasked == 0) {
                boolean z3 = z;
                if (!z) {
                    z3 = z;
                    if (m20929b != null) {
                        switch (i) {
                            case 0:
                                z = m20929b.mo2508a(this, (CoordinatorLayout) view, motionEvent);
                                break;
                            case 1:
                                z = m20929b.mo2188b(this, (CoordinatorLayout) view, motionEvent);
                                break;
                        }
                        z3 = z;
                        if (z) {
                            this.f1691q = view;
                            z3 = z;
                        }
                    }
                }
                z = z3;
                boolean m20923e = c0426e.m20923e();
                boolean m20932a = c0426e.m20932a(this, view);
                z2 = m20932a && !m20923e;
                if (m20932a && !z2) {
                    list.clear();
                    return z;
                }
            } else if (m20929b != null) {
                if (motionEvent2 == null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                switch (i) {
                    case 0:
                        m20929b.mo2508a(this, (CoordinatorLayout) view, motionEvent2);
                        continue;
                    case 1:
                        m20929b.mo2188b(this, (CoordinatorLayout) view, motionEvent2);
                        continue;
                }
            }
        }
        list.clear();
        return z;
    }

    /* renamed from: b */
    private int m20973b(int i) {
        int i2;
        if (this.f1690p == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i);
            i2 = 0;
        } else if (i < 0 || i >= this.f1690p.length) {
            Log.e("CoordinatorLayout", "Keyline index " + i + " out of range for " + this);
            i2 = 0;
        } else {
            i2 = this.f1690p[i];
        }
        return i2;
    }

    /* renamed from: b */
    private C0572ac m20968b(C0572ac c0572ac) {
        AbstractC0423b m20929b;
        if (!c0572ac.m20435e()) {
            int childCount = getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = getChildAt(i);
                if (C0595u.m20306r(childAt) && (m20929b = ((C0426e) childAt.getLayoutParams()).m20929b()) != null) {
                    C0572ac m20947a = m20929b.m20947a(this, (CoordinatorLayout) childAt, c0572ac);
                    c0572ac = m20947a;
                    if (m20947a.m20435e()) {
                        c0572ac = m20947a;
                        break;
                    }
                }
                i++;
            }
        }
        return c0572ac;
    }

    /* renamed from: b */
    private void m20970b(View view, int i, int i2) {
        C0426e c0426e = (C0426e) view.getLayoutParams();
        int m20421a = C0576c.m20421a(m20961d(c0426e.f1704c), i2);
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i;
        if (i2 == 1) {
            i3 = width - i;
        }
        int m20973b = m20973b(i3) - measuredWidth;
        int i4 = 0;
        switch (m20421a & 7) {
            case 1:
                m20973b += measuredWidth / 2;
                break;
            case 5:
                m20973b += measuredWidth;
                break;
        }
        switch (m20421a & 112) {
            case 16:
                i4 = 0 + (measuredHeight / 2);
                break;
            case 80:
                i4 = 0 + measuredHeight;
                break;
        }
        int max = Math.max(getPaddingLeft() + c0426e.leftMargin, Math.min(m20973b, ((width - getPaddingRight()) - measuredWidth) - c0426e.rightMargin));
        int max2 = Math.max(getPaddingTop() + c0426e.topMargin, Math.min(i4, ((height - getPaddingBottom()) - measuredHeight) - c0426e.bottomMargin));
        view.layout(max, max2, max + measuredWidth, max2 + measuredHeight);
    }

    /* renamed from: c */
    private static int m20966c(int i) {
        if ((i & 7) == 0) {
            i = 8388611 | i;
        }
        int i2 = i;
        if ((i & 112) == 0) {
            i2 = i | 48;
        }
        return i2;
    }

    /* renamed from: d */
    private static int m20961d(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 8388661;
        }
        return i2;
    }

    /* renamed from: d */
    private void m20959d(View view, int i) {
        C0426e c0426e = (C0426e) view.getLayoutParams();
        Rect m20958e = m20958e();
        m20958e.set(getPaddingLeft() + c0426e.leftMargin, getPaddingTop() + c0426e.topMargin, (getWidth() - getPaddingRight()) - c0426e.rightMargin, (getHeight() - getPaddingBottom()) - c0426e.bottomMargin);
        if (this.f1695u != null && C0595u.m20306r(this) && !C0595u.m20306r(view)) {
            m20958e.left += this.f1695u.m20442a();
            m20958e.top += this.f1695u.m20438b();
            m20958e.right -= this.f1695u.m20437c();
            m20958e.bottom -= this.f1695u.m20436d();
        }
        Rect m20958e2 = m20958e();
        C0576c.m20420a(m20966c(c0426e.f1704c), view.getMeasuredWidth(), view.getMeasuredHeight(), m20958e, m20958e2, i);
        view.layout(m20958e2.left, m20958e2.top, m20958e2.right, m20958e2.bottom);
        m20991a(m20958e);
        m20991a(m20958e2);
    }

    /* renamed from: e */
    private static int m20957e(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 17;
        }
        return i2;
    }

    /* renamed from: e */
    private static Rect m20958e() {
        Rect mo17021a = f1679f.mo17021a();
        Rect rect = mo17021a;
        if (mo17021a == null) {
            rect = new Rect();
        }
        return rect;
    }

    /* renamed from: e */
    private void m20955e(View view, int i) {
        C0426e c0426e = (C0426e) view.getLayoutParams();
        if (c0426e.f1710i != i) {
            C0595u.m20321f(view, i - c0426e.f1710i);
            c0426e.f1710i = i;
        }
    }

    /* renamed from: e */
    private boolean m20956e(View view) {
        return this.f1682h.m20905e(view);
    }

    /* renamed from: f */
    private void m20954f() {
        this.f1681g.clear();
        this.f1682h.m20915a();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            C0426e m20988a = m20988a(childAt);
            m20988a.m20926b(this, childAt);
            this.f1682h.m20914a((C0431a<View>) childAt);
            for (int i2 = 0; i2 < childCount; i2++) {
                if (i2 != i) {
                    View childAt2 = getChildAt(i2);
                    if (m20988a.m20931a(this, childAt, childAt2)) {
                        if (!this.f1682h.m20909b(childAt2)) {
                            this.f1682h.m20914a((C0431a<View>) childAt2);
                        }
                        this.f1682h.m20913a(childAt2, childAt);
                    }
                }
            }
        }
        this.f1681g.addAll(this.f1682h.m20910b());
        Collections.reverse(this.f1681g);
    }

    /* renamed from: f */
    private void m20953f(View view, int i) {
        C0426e c0426e = (C0426e) view.getLayoutParams();
        if (c0426e.f1711j != i) {
            C0595u.m20323e(view, i - c0426e.f1711j);
            c0426e.f1711j = i;
        }
    }

    /* renamed from: g */
    private void m20952g() {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (!C0595u.m20306r(this)) {
            C0595u.m20343a(this, (AbstractC0591q) null);
            return;
        }
        if (this.f1698x == null) {
            this.f1698x = new AbstractC0591q() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.1
                @Override // androidx.core.p026h.AbstractC0591q
                /* renamed from: a */
                public C0572ac mo2513a(View view, C0572ac c0572ac) {
                    return CoordinatorLayout.this.m20977a(c0572ac);
                }
            };
        }
        C0595u.m20343a(this, this.f1698x);
        setSystemUiVisibility(1280);
    }

    /* renamed from: a */
    public C0426e generateLayoutParams(AttributeSet attributeSet) {
        return new C0426e(getContext(), attributeSet);
    }

    /* renamed from: a */
    C0426e m20988a(View view) {
        AbstractC0424c abstractC0424c;
        C0426e c0426e = (C0426e) view.getLayoutParams();
        if (!c0426e.f1703b) {
            if (view instanceof AbstractC0422a) {
                AbstractC0423b behavior = ((AbstractC0422a) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                c0426e.m20933a(behavior);
                c0426e.f1703b = true;
            } else {
                Class<? super Object> cls = view.getClass();
                AbstractC0424c abstractC0424c2 = null;
                while (true) {
                    abstractC0424c = abstractC0424c2;
                    if (cls == null) {
                        break;
                    }
                    AbstractC0424c abstractC0424c3 = (AbstractC0424c) cls.getAnnotation(AbstractC0424c.class);
                    abstractC0424c = abstractC0424c3;
                    if (abstractC0424c3 != null) {
                        break;
                    }
                    cls = cls.getSuperclass();
                    abstractC0424c2 = abstractC0424c3;
                }
                if (abstractC0424c != null) {
                    try {
                        c0426e.m20933a(abstractC0424c.m20940a().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e) {
                        Log.e("CoordinatorLayout", "Default behavior class " + abstractC0424c.m20940a().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                    }
                }
                c0426e.f1703b = true;
            }
        }
        return c0426e;
    }

    /* renamed from: a */
    public C0426e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0426e ? new C0426e((C0426e) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0426e((ViewGroup.MarginLayoutParams) layoutParams) : new C0426e(layoutParams);
    }

    /* renamed from: a */
    final C0572ac m20977a(C0572ac c0572ac) {
        C0572ac c0572ac2 = c0572ac;
        if (!C0521c.m20648a(this.f1695u, c0572ac)) {
            this.f1695u = c0572ac;
            this.f1696v = c0572ac != null && c0572ac.m20438b() > 0;
            setWillNotDraw(!this.f1696v && getBackground() == null);
            c0572ac2 = m20968b(c0572ac);
            requestLayout();
        }
        return c0572ac2;
    }

    /* renamed from: a */
    void m20995a() {
        boolean z;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            z = false;
            if (i >= childCount) {
                break;
            } else if (m20956e(getChildAt(i))) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z != this.f1694t) {
            if (z) {
                m20974b();
            } else {
                m20967c();
            }
        }
    }

    /* renamed from: a */
    final void m20994a(int i) {
        boolean z;
        int m20320g = C0595u.m20320g(this);
        int size = this.f1681g.size();
        Rect m20958e = m20958e();
        Rect m20958e2 = m20958e();
        Rect m20958e3 = m20958e();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f1681g.get(i2);
            C0426e c0426e = (C0426e) view.getLayoutParams();
            if (i != 0 || view.getVisibility() != 8) {
                for (int i3 = 0; i3 < i2; i3++) {
                    if (c0426e.f1713l == this.f1681g.get(i3)) {
                        m20964c(view, m20320g);
                    }
                }
                m20980a(view, true, m20958e2);
                if (c0426e.f1708g != 0 && !m20958e2.isEmpty()) {
                    int m20421a = C0576c.m20421a(c0426e.f1708g, m20320g);
                    switch (m20421a & 112) {
                        case 48:
                            m20958e.top = Math.max(m20958e.top, m20958e2.bottom);
                            break;
                        case 80:
                            m20958e.bottom = Math.max(m20958e.bottom, getHeight() - m20958e2.top);
                            break;
                    }
                    switch (m20421a & 7) {
                        case 3:
                            m20958e.left = Math.max(m20958e.left, m20958e2.right);
                            break;
                        case 5:
                            m20958e.right = Math.max(m20958e.right, getWidth() - m20958e2.left);
                            break;
                    }
                }
                if (c0426e.f1709h != 0 && view.getVisibility() == 0) {
                    m20982a(view, m20958e, m20320g);
                }
                if (i != 2) {
                    m20963c(view, m20958e3);
                    if (!m20958e3.equals(m20958e2)) {
                        m20969b(view, m20958e2);
                    }
                }
                for (int i4 = i2 + 1; i4 < size; i4++) {
                    View view2 = this.f1681g.get(i4);
                    C0426e c0426e2 = (C0426e) view2.getLayoutParams();
                    AbstractC0423b m20929b = c0426e2.m20929b();
                    if (m20929b != null && m20929b.mo2190a(this, (CoordinatorLayout) view2, view)) {
                        if (i != 0 || !c0426e2.m20921g()) {
                            switch (i) {
                                case 2:
                                    m20929b.m20942c(this, view2, view);
                                    z = true;
                                    break;
                                default:
                                    z = m20929b.mo2216b(this, (CoordinatorLayout) view2, view);
                                    break;
                            }
                            if (i == 1) {
                                c0426e2.m20930a(z);
                            }
                        } else {
                            c0426e2.m20920h();
                        }
                    }
                }
            }
        }
        m20991a(m20958e);
        m20991a(m20958e2);
        m20991a(m20958e3);
    }

    @Override // androidx.core.p026h.AbstractC0588n
    /* renamed from: a */
    public void mo20226a(View view, int i) {
        this.f1699y.m20378a(view, i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            C0426e c0426e = (C0426e) childAt.getLayoutParams();
            if (c0426e.m20928b(i)) {
                AbstractC0423b m20929b = c0426e.m20929b();
                if (m20929b != null) {
                    m20929b.mo3561a(this, (CoordinatorLayout) childAt, view, i);
                }
                c0426e.m20938a(i);
                c0426e.m20920h();
            }
        }
        this.f1692r = null;
    }

    /* renamed from: a */
    public void m20986a(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // androidx.core.p026h.AbstractC0588n
    /* renamed from: a */
    public void mo20224a(View view, int i, int i2, int i3, int i4, int i5) {
        mo20223a(view, i, i2, i3, i4, 0, this.f1687m);
    }

    @Override // androidx.core.p026h.AbstractC0589o
    /* renamed from: a */
    public void mo20223a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        int i6;
        boolean z;
        int i7;
        int childCount = getChildCount();
        boolean z2 = false;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int i11 = i10;
            if (i11 >= childCount) {
                break;
            }
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 8) {
                int i12 = i9;
                i6 = i8;
                z = z2;
                i7 = i12;
            } else {
                C0426e c0426e = (C0426e) childAt.getLayoutParams();
                if (!c0426e.m20928b(i5)) {
                    int i13 = i8;
                    z = z2;
                    i7 = i9;
                    i6 = i13;
                } else {
                    AbstractC0423b m20929b = c0426e.m20929b();
                    if (m20929b != null) {
                        this.f1686l[0] = 0;
                        this.f1686l[1] = 0;
                        m20929b.mo3560a(this, childAt, view, i, i2, i3, i4, i5, this.f1686l);
                        int max = i3 > 0 ? Math.max(i8, this.f1686l[0]) : Math.min(i8, this.f1686l[0]);
                        i7 = i4 > 0 ? Math.max(i9, this.f1686l[1]) : Math.min(i9, this.f1686l[1]);
                        i6 = max;
                        z = true;
                    } else {
                        int i14 = i9;
                        i6 = i8;
                        z = z2;
                        i7 = i14;
                    }
                }
            }
            int i15 = i7;
            int i16 = i6;
            z2 = z;
            i9 = i15;
            i8 = i16;
            i10 = i11 + 1;
        }
        iArr[0] = iArr[0] + i8;
        iArr[1] = iArr[1] + i9;
        if (z2) {
            m20994a(1);
        }
    }

    @Override // androidx.core.p026h.AbstractC0588n
    /* renamed from: a */
    public void mo20222a(View view, int i, int i2, int[] iArr, int i3) {
        int i4;
        int i5;
        boolean z;
        int i6 = 0;
        int i7 = 0;
        boolean z2 = false;
        int childCount = getChildCount();
        int i8 = 0;
        while (true) {
            int i9 = i8;
            if (i9 >= childCount) {
                break;
            }
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 8) {
                int i10 = i7;
                i4 = i6;
                z = z2;
                i5 = i10;
            } else {
                C0426e c0426e = (C0426e) childAt.getLayoutParams();
                if (!c0426e.m20928b(i3)) {
                    int i11 = i7;
                    i4 = i6;
                    i5 = i11;
                    z = z2;
                } else {
                    AbstractC0423b m20929b = c0426e.m20929b();
                    if (m20929b != null) {
                        this.f1686l[0] = 0;
                        this.f1686l[1] = 0;
                        m20929b.mo3559a(this, (CoordinatorLayout) childAt, view, i, i2, this.f1686l, i3);
                        int max = i > 0 ? Math.max(i6, this.f1686l[0]) : Math.min(i6, this.f1686l[0]);
                        i5 = i2 > 0 ? Math.max(i7, this.f1686l[1]) : Math.min(i7, this.f1686l[1]);
                        z = true;
                        i4 = max;
                    } else {
                        int i12 = i7;
                        i4 = i6;
                        i5 = i12;
                        z = z2;
                    }
                }
            }
            int i13 = i4;
            z2 = z;
            i7 = i5;
            i6 = i13;
            i8 = i9 + 1;
        }
        iArr[0] = i6;
        iArr[1] = i7;
        if (z2) {
            m20994a(1);
        }
    }

    /* renamed from: a */
    void m20985a(View view, int i, Rect rect, Rect rect2) {
        C0426e c0426e = (C0426e) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        m20984a(view, i, rect, rect2, c0426e, measuredWidth, measuredHeight);
        m20978a(c0426e, rect2, measuredWidth, measuredHeight);
    }

    /* renamed from: a */
    void m20983a(View view, Rect rect) {
        C0432b.m20902b(this, view, rect);
    }

    /* renamed from: a */
    void m20980a(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            m20983a(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    /* renamed from: a */
    public boolean m20987a(View view, int i, int i2) {
        Rect m20958e = m20958e();
        m20983a(view, m20958e);
        try {
            return m20958e.contains(i, i2);
        } finally {
            m20991a(m20958e);
        }
    }

    @Override // androidx.core.p026h.AbstractC0588n
    /* renamed from: a */
    public boolean mo20220a(View view, View view2, int i, int i2) {
        boolean z = false;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                C0426e c0426e = (C0426e) childAt.getLayoutParams();
                AbstractC0423b m20929b = c0426e.m20929b();
                if (m20929b != null) {
                    boolean mo3558a = m20929b.mo3558a(this, (CoordinatorLayout) childAt, view, view2, i, i2);
                    z |= mo3558a;
                    c0426e.m20937a(i2, mo3558a);
                } else {
                    c0426e.m20937a(i2, false);
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    void m20974b() {
        if (this.f1689o) {
            if (this.f1693s == null) {
                this.f1693s = new ViewTreeObserver$OnPreDrawListenerC0427f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1693s);
        }
        this.f1694t = true;
    }

    /* renamed from: b */
    public void m20972b(View view) {
        List m20907c = this.f1682h.m20907c(view);
        if (m20907c == null || m20907c.isEmpty()) {
            return;
        }
        for (int i = 0; i < m20907c.size(); i++) {
            View view2 = (View) m20907c.get(i);
            AbstractC0423b m20929b = ((C0426e) view2.getLayoutParams()).m20929b();
            if (m20929b != null) {
                m20929b.mo2216b(this, (CoordinatorLayout) view2, view);
            }
        }
    }

    /* renamed from: b */
    public void m20971b(View view, int i) {
        C0426e c0426e = (C0426e) view.getLayoutParams();
        if (c0426e.m20924d()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        if (c0426e.f1712k != null) {
            m20981a(view, c0426e.f1712k, i);
        } else if (c0426e.f1706e >= 0) {
            m20970b(view, c0426e.f1706e, i);
        } else {
            m20959d(view, i);
        }
    }

    /* renamed from: b */
    void m20969b(View view, Rect rect) {
        ((C0426e) view.getLayoutParams()).m20936a(rect);
    }

    @Override // androidx.core.p026h.AbstractC0588n
    /* renamed from: b */
    public void mo20212b(View view, View view2, int i, int i2) {
        AbstractC0423b m20929b;
        this.f1699y.m20376a(view, view2, i, i2);
        this.f1692r = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            C0426e c0426e = (C0426e) childAt.getLayoutParams();
            if (c0426e.m20928b(i2) && (m20929b = c0426e.m20929b()) != null) {
                m20929b.m20944b(this, childAt, view, view2, i, i2);
            }
        }
    }

    /* renamed from: c */
    public List<View> m20965c(View view) {
        List<View> m20906d = this.f1682h.m20906d(view);
        this.f1684j.clear();
        if (m20906d != null) {
            this.f1684j.addAll(m20906d);
        }
        return this.f1684j;
    }

    /* renamed from: c */
    void m20967c() {
        if (this.f1689o && this.f1693s != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1693s);
        }
        this.f1694t = false;
    }

    /* renamed from: c */
    void m20964c(View view, int i) {
        AbstractC0423b m20929b;
        C0426e c0426e = (C0426e) view.getLayoutParams();
        if (c0426e.f1712k != null) {
            Rect m20958e = m20958e();
            Rect m20958e2 = m20958e();
            Rect m20958e3 = m20958e();
            m20983a(c0426e.f1712k, m20958e);
            m20980a(view, false, m20958e2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            m20984a(view, i, m20958e, m20958e3, c0426e, measuredWidth, measuredHeight);
            boolean z = (m20958e3.left == m20958e2.left && m20958e3.top == m20958e2.top) ? false : true;
            m20978a(c0426e, m20958e3, measuredWidth, measuredHeight);
            int i2 = m20958e3.left - m20958e2.left;
            int i3 = m20958e3.top - m20958e2.top;
            if (i2 != 0) {
                C0595u.m20321f(view, i2);
            }
            if (i3 != 0) {
                C0595u.m20323e(view, i3);
            }
            if (z && (m20929b = c0426e.m20929b()) != null) {
                m20929b.mo2216b(this, (CoordinatorLayout) view, c0426e.f1712k);
            }
            m20991a(m20958e);
            m20991a(m20958e2);
            m20991a(m20958e3);
        }
    }

    /* renamed from: c */
    void m20963c(View view, Rect rect) {
        rect.set(((C0426e) view.getLayoutParams()).m20925c());
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0426e) && super.checkLayoutParams(layoutParams);
    }

    /* renamed from: d */
    public C0426e generateDefaultLayoutParams() {
        return new C0426e(-2, -2);
    }

    /* renamed from: d */
    public List<View> m20960d(View view) {
        List m20907c = this.f1682h.m20907c(view);
        this.f1684j.clear();
        if (m20907c != null) {
            this.f1684j.addAll(m20907c);
        }
        return this.f1684j;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        C0426e c0426e = (C0426e) view.getLayoutParams();
        if (c0426e.f1702a != null) {
            float m20946b = c0426e.f1702a.m20946b(this, view);
            if (m20946b > 0.0f) {
                if (this.f1685k == null) {
                    this.f1685k = new Paint();
                }
                this.f1685k.setColor(c0426e.f1702a.m20951a(this, view));
                this.f1685k.setAlpha(m20993a(Math.round(m20946b * 255.0f), 0, 255));
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.f1685k);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1697w;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        if (z) {
            invalidate();
        }
    }

    final List<View> getDependencySortedChildren() {
        m20954f();
        return Collections.unmodifiableList(this.f1681g);
    }

    public final C0572ac getLastWindowInsets() {
        return this.f1695u;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f1699y.m20380a();
    }

    public Drawable getStatusBarBackground() {
        return this.f1697w;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m20975a(false);
        if (this.f1694t) {
            if (this.f1693s == null) {
                this.f1693s = new ViewTreeObserver$OnPreDrawListenerC0427f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1693s);
        }
        if (this.f1695u == null && C0595u.m20306r(this)) {
            C0595u.m20307q(this);
        }
        this.f1689o = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m20975a(false);
        if (this.f1694t && this.f1693s != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1693s);
        }
        if (this.f1692r != null) {
            onStopNestedScroll(this.f1692r);
        }
        this.f1689o = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f1696v || this.f1697w == null) {
            return;
        }
        int m20438b = this.f1695u != null ? this.f1695u.m20438b() : 0;
        if (m20438b <= 0) {
            return;
        }
        this.f1697w.setBounds(0, 0, getWidth(), m20438b);
        this.f1697w.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m20975a(true);
        }
        boolean m20989a = m20989a(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            m20975a(true);
        }
        return m20989a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        AbstractC0423b m20929b;
        int m20320g = C0595u.m20320g(this);
        int size = this.f1681g.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.f1681g.get(i5);
            if (view.getVisibility() != 8 && ((m20929b = ((C0426e) view.getLayoutParams()).m20929b()) == null || !m20929b.mo2219a(this, (CoordinatorLayout) view, m20320g))) {
                m20971b(view, m20320g);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0220, code lost:
        if (r16 != false) goto L51;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 597
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        AbstractC0423b m20929b;
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                C0426e c0426e = (C0426e) childAt.getLayoutParams();
                if (c0426e.m20928b(0) && (m20929b = c0426e.m20929b()) != null) {
                    z2 = m20929b.m20950a(this, (CoordinatorLayout) childAt, view, f, f2, z) | z2;
                }
            }
        }
        if (z2) {
            m20994a(1);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public boolean onNestedPreFling(View view, float f, float f2) {
        AbstractC0423b m20929b;
        int childCount = getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                C0426e c0426e = (C0426e) childAt.getLayoutParams();
                if (c0426e.m20928b(0) && (m20929b = c0426e.m20929b()) != null) {
                    z = m20929b.mo3562a(this, (CoordinatorLayout) childAt, view, f, f2) | z;
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo20222a(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        mo20224a(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onNestedScrollAccepted(View view, View view2, int i) {
        mo20212b(view, view2, i, 0);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof C0428g)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0428g c0428g = (C0428g) parcelable;
        super.onRestoreInstanceState(c0428g.m20121a());
        SparseArray<Parcelable> sparseArray = c0428g.f1721a;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            AbstractC0423b m20929b = m20988a(childAt).m20929b();
            if (id != -1 && m20929b != null && (parcelable2 = sparseArray.get(id)) != null) {
                m20929b.mo3563a(this, (CoordinatorLayout) childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable mo3542d;
        C0428g c0428g = new C0428g(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            AbstractC0423b m20929b = ((C0426e) childAt.getLayoutParams()).m20929b();
            if (id != -1 && m20929b != null && (mo3542d = m20929b.mo3542d(this, childAt)) != null) {
                sparseArray.append(id, mo3542d);
            }
        }
        c0428g.f1721a = sparseArray;
        return c0428g;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return mo20220a(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onStopNestedScroll(View view) {
        mo20226a(view, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            r9 = this;
            r0 = 0
            r11 = r0
            r0 = r10
            int r0 = r0.getActionMasked()
            r12 = r0
            r0 = r9
            android.view.View r0 = r0.f1691q
            if (r0 != 0) goto La7
            r0 = r9
            r1 = r10
            r2 = 1
            boolean r0 = r0.m20989a(r1, r2)
            r13 = r0
            r0 = r13
            if (r0 == 0) goto La1
        L1b:
            r0 = r9
            android.view.View r0 = r0.f1691q
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$e r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout.C0426e) r0
            androidx.coordinatorlayout.widget.CoordinatorLayout$b r0 = r0.m20929b()
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L9b
            r0 = r14
            r1 = r9
            r2 = r9
            android.view.View r2 = r2.f1691q
            r3 = r10
            boolean r0 = r0.mo2188b(r1, r2, r3)
            r15 = r0
        L3c:
            r0 = r9
            android.view.View r0 = r0.f1691q
            if (r0 != 0) goto L69
            r0 = r15
            r1 = r9
            r2 = r10
            boolean r1 = super.onTouchEvent(r2)
            r0 = r0 | r1
            r16 = r0
            r0 = r11
            r10 = r0
        L4f:
            r0 = r10
            if (r0 == 0) goto L57
            r0 = r10
            r0.recycle()
        L57:
            r0 = r12
            r1 = 1
            if (r0 == r1) goto L61
            r0 = r12
            r1 = 3
            if (r0 != r1) goto L66
        L61:
            r0 = r9
            r1 = 0
            r0.m20975a(r1)
        L66:
            r0 = r16
            return r0
        L69:
            r0 = r11
            r10 = r0
            r0 = r15
            r16 = r0
            r0 = r13
            if (r0 == 0) goto L4f
            r0 = 0
            if (r0 != 0) goto L96
            long r0 = android.os.SystemClock.uptimeMillis()
            r17 = r0
            r0 = r17
            r1 = r17
            r2 = 3
            r3 = 0
            r4 = 0
            r5 = 0
            android.view.MotionEvent r0 = android.view.MotionEvent.obtain(r0, r1, r2, r3, r4, r5)
            r10 = r0
        L89:
            r0 = r9
            r1 = r10
            boolean r0 = super.onTouchEvent(r1)
            r0 = r15
            r16 = r0
            goto L4f
        L96:
            r0 = 0
            r10 = r0
            goto L89
        L9b:
            r0 = 0
            r15 = r0
            goto L3c
        La1:
            r0 = 0
            r15 = r0
            goto L3c
        La7:
            r0 = 0
            r13 = r0
            goto L1b
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        AbstractC0423b m20929b = ((C0426e) view.getLayoutParams()).m20929b();
        return (m20929b == null || !m20929b.mo3775a(this, (CoordinatorLayout) view, rect, z)) ? super.requestChildRectangleOnScreen(view, rect, z) : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.f1688n) {
            return;
        }
        m20975a(false);
        this.f1688n = true;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        m20952g();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f1680e = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = null;
        if (this.f1697w != drawable) {
            if (this.f1697w != null) {
                this.f1697w.setCallback(null);
            }
            if (drawable != null) {
                drawable2 = drawable.mutate();
            }
            this.f1697w = drawable2;
            if (this.f1697w != null) {
                if (this.f1697w.isStateful()) {
                    this.f1697w.setState(getDrawableState());
                }
                C0535a.m20589b(this.f1697w, C0595u.m20320g(this));
                this.f1697w.setVisible(getVisibility() == 0, false);
                this.f1697w.setCallback(this);
            }
            C0595u.m20324e(this);
        }
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(int i) {
        setStatusBarBackground(i != 0 ? C0438a.m20900a(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        if (this.f1697w == null || this.f1697w.isVisible() == z) {
            return;
        }
        this.f1697w.setVisible(z, false);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1697w;
    }
}
