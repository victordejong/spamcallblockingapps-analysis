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
import androidx.coordinatorlayout.C0389a;
import androidx.core.graphics.drawable.C0575a;
import androidx.core.p015a.C0409a;
import androidx.core.p022f.C0497c;
import androidx.core.p022f.C0498d;
import androidx.core.p023g.AbstractC0545n;
import androidx.core.p023g.AbstractC0548q;
import androidx.core.p023g.C0529ac;
import androidx.core.p023g.C0533c;
import androidx.core.p023g.C0547p;
import androidx.core.p023g.C0552u;
import androidx.customview.view.AbsSavedState;
import com.google.android.flexbox.FlexItem;
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
public class CoordinatorLayout extends ViewGroup implements AbstractC0545n {
    static final Class<?>[] CONSTRUCTOR_PARAMS;
    static final int EVENT_NESTED_SCROLL = 1;
    static final int EVENT_PRE_DRAW = 0;
    static final int EVENT_VIEW_REMOVED = 2;
    static final String TAG = "CoordinatorLayout";
    static final Comparator<View> TOP_SORTED_CHILDREN_COMPARATOR;
    private static final int TYPE_ON_INTERCEPT = 0;
    private static final int TYPE_ON_TOUCH = 1;
    static final String WIDGET_PACKAGE_NAME;
    static final ThreadLocal<Map<String, Constructor<AbstractC0396b>>> sConstructors;
    private static final C0498d.AbstractC0499a<Rect> sRectPool;
    private AbstractC0548q mApplyWindowInsetsListener;
    private View mBehaviorTouchView;
    private final C0402a<View> mChildDag;
    private final List<View> mDependencySortedChildren;
    private boolean mDisallowInterceptReset;
    private boolean mDrawStatusBarBackground;
    private boolean mIsAttachedToWindow;
    private int[] mKeylines;
    private C0529ac mLastInsets;
    private boolean mNeedsPreDrawListener;
    private final C0547p mNestedScrollingParentHelper;
    private View mNestedScrollingTarget;
    ViewGroup.OnHierarchyChangeListener mOnHierarchyChangeListener;
    private ViewTreeObserver$OnPreDrawListenerC0400f mOnPreDrawListener;
    private Paint mScrimPaint;
    private Drawable mStatusBarBackground;
    private final List<View> mTempDependenciesList;
    private final int[] mTempIntPair;
    private final List<View> mTempList1;

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        SparseArray<Parcelable> f1521a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f1521a = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.f1521a.append(iArr[i], readParcelableArray[i]);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            SparseArray<Parcelable> sparseArray = this.f1521a;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.f1521a.keyAt(i2);
                parcelableArr[i2] = this.f1521a.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$a.class */
    public interface AbstractC0395a {
        AbstractC0396b getBehavior();
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$b.class */
    public static abstract class AbstractC0396b<V extends View> {
        public AbstractC0396b() {
        }

        public AbstractC0396b(Context context, AttributeSet attributeSet) {
        }

        public static Object getTag(View view) {
            return ((C0399e) view.getLayoutParams()).f1536n;
        }

        public static void setTag(View view, Object obj) {
            ((C0399e) view.getLayoutParams()).f1536n = obj;
        }

        public boolean blocksInteractionBelow(CoordinatorLayout coordinatorLayout, V v) {
            return getScrimOpacity(coordinatorLayout, v) > FlexItem.FLEX_GROW_DEFAULT;
        }

        public boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }

        public int getScrimColor(CoordinatorLayout coordinatorLayout, V v) {
            return -16777216;
        }

        public float getScrimOpacity(CoordinatorLayout coordinatorLayout, V v) {
            return FlexItem.FLEX_GROW_DEFAULT;
        }

        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public C0529ac onApplyWindowInsets(CoordinatorLayout coordinatorLayout, V v, C0529ac c0529ac) {
            return c0529ac;
        }

        public void onAttachedToLayoutParams(C0399e c0399e) {
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public void onDetachedFromLayoutParams() {
        }

        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        public boolean onNestedFling(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2, boolean z) {
            return false;
        }

        public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        @Deprecated
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
            if (i3 == 0) {
                onNestedPreScroll(coordinatorLayout, v, view, i, i2, iArr);
            }
        }

        @Deprecated
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                onNestedScroll(coordinatorLayout, v, view, i, i2, i3, i4);
            }
        }

        @Deprecated
        public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        }

        public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                onNestedScrollAccepted(coordinatorLayout, v, view, view2, i);
            }
        }

        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
            return false;
        }

        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                return onStartNestedScroll(coordinatorLayout, v, view, view2, i);
            }
            return false;
        }

        @Deprecated
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
            if (i == 0) {
                onStopNestedScroll(coordinatorLayout, v, view);
            }
        }

        public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$c.class */
    public @interface AbstractC0397c {
        /* renamed from: a */
        Class<? extends AbstractC0396b> m6790a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$d.class */
    public class ViewGroup$OnHierarchyChangeListenerC0398d implements ViewGroup.OnHierarchyChangeListener {
        ViewGroup$OnHierarchyChangeListenerC0398d() {
            CoordinatorLayout.this = r4;
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (CoordinatorLayout.this.mOnHierarchyChangeListener != null) {
                CoordinatorLayout.this.mOnHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.onChildViewsChanged(2);
            if (CoordinatorLayout.this.mOnHierarchyChangeListener != null) {
                CoordinatorLayout.this.mOnHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$e.class */
    public static class C0399e extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        AbstractC0396b f1523a;

        /* renamed from: b */
        boolean f1524b;

        /* renamed from: c */
        public int f1525c;

        /* renamed from: d */
        public int f1526d;

        /* renamed from: e */
        public int f1527e;

        /* renamed from: f */
        int f1528f;

        /* renamed from: g */
        public int f1529g;

        /* renamed from: h */
        public int f1530h;

        /* renamed from: i */
        int f1531i;

        /* renamed from: j */
        int f1532j;

        /* renamed from: k */
        View f1533k;

        /* renamed from: l */
        View f1534l;

        /* renamed from: m */
        final Rect f1535m;

        /* renamed from: n */
        Object f1536n;

        /* renamed from: o */
        private boolean f1537o;

        /* renamed from: p */
        private boolean f1538p;

        /* renamed from: q */
        private boolean f1539q;

        /* renamed from: r */
        private boolean f1540r;

        public C0399e(int i, int i2) {
            super(i, i2);
            this.f1524b = false;
            this.f1525c = 0;
            this.f1526d = 0;
            this.f1527e = -1;
            this.f1528f = -1;
            this.f1529g = 0;
            this.f1530h = 0;
            this.f1535m = new Rect();
        }

        C0399e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1524b = false;
            this.f1525c = 0;
            this.f1526d = 0;
            this.f1527e = -1;
            this.f1528f = -1;
            this.f1529g = 0;
            this.f1530h = 0;
            this.f1535m = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0389a.C0392c.CoordinatorLayout_Layout);
            this.f1525c = obtainStyledAttributes.getInteger(C0389a.C0392c.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f1528f = obtainStyledAttributes.getResourceId(C0389a.C0392c.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f1526d = obtainStyledAttributes.getInteger(C0389a.C0392c.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f1527e = obtainStyledAttributes.getInteger(C0389a.C0392c.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f1529g = obtainStyledAttributes.getInt(C0389a.C0392c.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f1530h = obtainStyledAttributes.getInt(C0389a.C0392c.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            this.f1524b = obtainStyledAttributes.hasValue(C0389a.C0392c.CoordinatorLayout_Layout_layout_behavior);
            if (this.f1524b) {
                this.f1523a = CoordinatorLayout.parseBehavior(context, attributeSet, obtainStyledAttributes.getString(C0389a.C0392c.CoordinatorLayout_Layout_layout_behavior));
            }
            obtainStyledAttributes.recycle();
            AbstractC0396b abstractC0396b = this.f1523a;
            if (abstractC0396b != null) {
                abstractC0396b.onAttachedToLayoutParams(this);
            }
        }

        public C0399e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1524b = false;
            this.f1525c = 0;
            this.f1526d = 0;
            this.f1527e = -1;
            this.f1528f = -1;
            this.f1529g = 0;
            this.f1530h = 0;
            this.f1535m = new Rect();
        }

        public C0399e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1524b = false;
            this.f1525c = 0;
            this.f1526d = 0;
            this.f1527e = -1;
            this.f1528f = -1;
            this.f1529g = 0;
            this.f1530h = 0;
            this.f1535m = new Rect();
        }

        public C0399e(C0399e c0399e) {
            super((ViewGroup.MarginLayoutParams) c0399e);
            this.f1524b = false;
            this.f1525c = 0;
            this.f1526d = 0;
            this.f1527e = -1;
            this.f1528f = -1;
            this.f1529g = 0;
            this.f1530h = 0;
            this.f1535m = new Rect();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [android.view.View] */
        /* renamed from: a */
        private void m6784a(View view, CoordinatorLayout coordinatorLayout) {
            this.f1533k = coordinatorLayout.findViewById(this.f1528f);
            CoordinatorLayout coordinatorLayout2 = this.f1533k;
            if (coordinatorLayout2 == null) {
                if (coordinatorLayout.isInEditMode()) {
                    this.f1534l = null;
                    this.f1533k = null;
                    return;
                }
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f1528f) + " to anchor view " + view);
            } else if (coordinatorLayout2 == coordinatorLayout) {
                if (!coordinatorLayout.isInEditMode()) {
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
                this.f1534l = null;
                this.f1533k = null;
            } else {
                ViewParent parent = coordinatorLayout2.getParent();
                while (true) {
                    CoordinatorLayout coordinatorLayout3 = parent;
                    if (coordinatorLayout3 == coordinatorLayout || coordinatorLayout3 == null) {
                        break;
                    } else if (coordinatorLayout3 == view) {
                        if (!coordinatorLayout.isInEditMode()) {
                            throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                        }
                        this.f1534l = null;
                        this.f1533k = null;
                        return;
                    } else {
                        if (coordinatorLayout3 instanceof View) {
                            coordinatorLayout2 = coordinatorLayout3;
                        }
                        parent = coordinatorLayout3.getParent();
                    }
                }
                this.f1534l = coordinatorLayout2;
            }
        }

        /* renamed from: a */
        private boolean m6785a(View view, int i) {
            int m6344a = C0533c.m6344a(((C0399e) view.getLayoutParams()).f1529g, i);
            return m6344a != 0 && (C0533c.m6344a(this.f1530h, i) & m6344a) == m6344a;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
            r3.f1534l = null;
            r3.f1533k = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0054, code lost:
            return false;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean m6777b(android.view.View r4, androidx.coordinatorlayout.widget.CoordinatorLayout r5) {
            /*
                r3 = this;
                r0 = r3
                android.view.View r0 = r0.f1533k
                int r0 = r0.getId()
                r1 = r3
                int r1 = r1.f1528f
                if (r0 == r1) goto L10
                r0 = 0
                return r0
            L10:
                r0 = r3
                android.view.View r0 = r0.f1533k
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
                r0.f1534l = r1
                r0 = r3
                r1 = 0
                r0.f1533k = r1
                r0 = 0
                return r0
            L55:
                r0 = r3
                r1 = r6
                r0.f1534l = r1
                r0 = 1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.C0399e.m6777b(android.view.View, androidx.coordinatorlayout.widget.CoordinatorLayout):boolean");
        }

        /* renamed from: a */
        public int m6789a() {
            return this.f1528f;
        }

        /* renamed from: a */
        void m6788a(int i) {
            m6787a(i, false);
        }

        /* renamed from: a */
        void m6787a(int i, boolean z) {
            if (i == 0) {
                this.f1538p = z;
            } else if (i != 1) {
            } else {
                this.f1539q = z;
            }
        }

        /* renamed from: a */
        void m6786a(Rect rect) {
            this.f1535m.set(rect);
        }

        /* renamed from: a */
        public void m6783a(AbstractC0396b abstractC0396b) {
            AbstractC0396b abstractC0396b2 = this.f1523a;
            if (abstractC0396b2 != abstractC0396b) {
                if (abstractC0396b2 != null) {
                    abstractC0396b2.onDetachedFromLayoutParams();
                }
                this.f1523a = abstractC0396b;
                this.f1536n = null;
                this.f1524b = true;
                if (abstractC0396b == null) {
                    return;
                }
                abstractC0396b.onAttachedToLayoutParams(this);
            }
        }

        /* renamed from: a */
        void m6780a(boolean z) {
            this.f1540r = z;
        }

        /* renamed from: a */
        boolean m6782a(CoordinatorLayout coordinatorLayout, View view) {
            boolean z = this.f1537o;
            if (z) {
                return true;
            }
            AbstractC0396b abstractC0396b = this.f1523a;
            boolean blocksInteractionBelow = (abstractC0396b != null ? abstractC0396b.blocksInteractionBelow(coordinatorLayout, view) : false) | z;
            this.f1537o = blocksInteractionBelow;
            return blocksInteractionBelow;
        }

        /* renamed from: a */
        boolean m6781a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            AbstractC0396b abstractC0396b;
            return view2 == this.f1534l || m6785a(view2, C0552u.m6245f(coordinatorLayout)) || ((abstractC0396b = this.f1523a) != null && abstractC0396b.layoutDependsOn(coordinatorLayout, view, view2));
        }

        /* renamed from: b */
        View m6776b(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f1528f == -1) {
                this.f1534l = null;
                this.f1533k = null;
                return null;
            }
            if (this.f1533k == null || !m6777b(view, coordinatorLayout)) {
                m6784a(view, coordinatorLayout);
            }
            return this.f1533k;
        }

        /* renamed from: b */
        public AbstractC0396b m6779b() {
            return this.f1523a;
        }

        /* renamed from: b */
        boolean m6778b(int i) {
            if (i != 0) {
                if (i == 1) {
                    return this.f1539q;
                }
                return false;
            }
            return this.f1538p;
        }

        /* renamed from: c */
        Rect m6775c() {
            return this.f1535m;
        }

        /* renamed from: d */
        boolean m6774d() {
            return this.f1533k == null && this.f1528f != -1;
        }

        /* renamed from: e */
        boolean m6773e() {
            if (this.f1523a == null) {
                this.f1537o = false;
            }
            return this.f1537o;
        }

        /* renamed from: f */
        void m6772f() {
            this.f1537o = false;
        }

        /* renamed from: g */
        boolean m6771g() {
            return this.f1540r;
        }

        /* renamed from: h */
        void m6770h() {
            this.f1540r = false;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$f */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$f.class */
    public class ViewTreeObserver$OnPreDrawListenerC0400f implements ViewTreeObserver.OnPreDrawListener {
        ViewTreeObserver$OnPreDrawListenerC0400f() {
            CoordinatorLayout.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.onChildViewsChanged(0);
            return true;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$g */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$g.class */
    static class C0401g implements Comparator<View> {
        C0401g() {
        }

        /* renamed from: a */
        public int compare(View view, View view2) {
            float m6294B = C0552u.m6294B(view);
            float m6294B2 = C0552u.m6294B(view2);
            if (m6294B > m6294B2) {
                return -1;
            }
            return m6294B < m6294B2 ? 1 : 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        WIDGET_PACKAGE_NAME = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            TOP_SORTED_CHILDREN_COMPARATOR = new C0401g();
        } else {
            TOP_SORTED_CHILDREN_COMPARATOR = null;
        }
        CONSTRUCTOR_PARAMS = new Class[]{Context.class, AttributeSet.class};
        sConstructors = new ThreadLocal<>();
        sRectPool = new C0498d.C0501c(12);
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0389a.C0390a.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int[] iArr;
        this.mDependencySortedChildren = new ArrayList();
        this.mChildDag = new C0402a<>();
        this.mTempList1 = new ArrayList();
        this.mTempDependenciesList = new ArrayList();
        this.mTempIntPair = new int[2];
        this.mNestedScrollingParentHelper = new C0547p(this);
        TypedArray obtainStyledAttributes = i == 0 ? context.obtainStyledAttributes(attributeSet, C0389a.C0392c.CoordinatorLayout, 0, C0389a.C0391b.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, C0389a.C0392c.CoordinatorLayout, i, 0);
        int resourceId = obtainStyledAttributes.getResourceId(C0389a.C0392c.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.mKeylines = resources.getIntArray(resourceId);
            float f = resources.getDisplayMetrics().density;
            int length = this.mKeylines.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.mKeylines[i2] = (int) (iArr[i2] * f);
            }
        }
        this.mStatusBarBackground = obtainStyledAttributes.getDrawable(C0389a.C0392c.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        setupForInsets();
        super.setOnHierarchyChangeListener(new ViewGroup$OnHierarchyChangeListenerC0398d());
    }

    private static Rect acquireTempRect() {
        Rect mo6465a = sRectPool.mo6465a();
        Rect rect = mo6465a;
        if (mo6465a == null) {
            rect = new Rect();
        }
        return rect;
    }

    private static int clamp(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    private void constrainChildRect(C0399e c0399e, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + c0399e.leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - c0399e.rightMargin));
        int max2 = Math.max(getPaddingTop() + c0399e.topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - c0399e.bottomMargin));
        rect.set(max, max2, i + max, i2 + max2);
    }

    private C0529ac dispatchApplyWindowInsetsToBehaviors(C0529ac c0529ac) {
        C0529ac c0529ac2;
        if (c0529ac.m6359f()) {
            return c0529ac;
        }
        int i = 0;
        int childCount = getChildCount();
        while (true) {
            c0529ac2 = c0529ac;
            if (i >= childCount) {
                break;
            }
            View childAt = getChildAt(i);
            C0529ac c0529ac3 = c0529ac;
            if (C0552u.m6227t(childAt)) {
                AbstractC0396b m6779b = ((C0399e) childAt.getLayoutParams()).m6779b();
                c0529ac3 = c0529ac;
                if (m6779b != null) {
                    C0529ac onApplyWindowInsets = m6779b.onApplyWindowInsets(this, childAt, c0529ac);
                    c0529ac3 = onApplyWindowInsets;
                    if (onApplyWindowInsets.m6359f()) {
                        c0529ac2 = onApplyWindowInsets;
                        break;
                    }
                } else {
                    continue;
                }
            }
            i++;
            c0529ac = c0529ac3;
        }
        return c0529ac2;
    }

    private void getDesiredAnchoredChildRectWithoutConstraints(View view, int i, Rect rect, Rect rect2, C0399e c0399e, int i2, int i3) {
        int i4;
        int i5;
        int m6344a = C0533c.m6344a(resolveAnchoredChildGravity(c0399e.f1525c), i);
        int m6344a2 = C0533c.m6344a(resolveGravity(c0399e.f1526d), i);
        int i6 = m6344a & 7;
        int i7 = m6344a & 112;
        int i8 = m6344a2 & 7;
        int i9 = m6344a2 & 112;
        int width = i8 != 1 ? i8 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int height = i9 != 16 ? i9 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i6 != 1) {
            i4 = width;
            if (i6 != 5) {
                i4 = width - i2;
            }
        } else {
            i4 = width - (i2 / 2);
        }
        if (i7 != 16) {
            i5 = height;
            if (i7 != 80) {
                i5 = height - i3;
            }
        } else {
            i5 = height - (i3 / 2);
        }
        rect2.set(i4, i5, i2 + i4, i3 + i5);
    }

    private int getKeyline(int i) {
        int[] iArr = this.mKeylines;
        if (iArr == null) {
            Log.e(TAG, "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        } else if (i >= 0 && i < iArr.length) {
            return iArr[i];
        } else {
            Log.e(TAG, "Keyline index " + i + " out of range for " + this);
            return 0;
        }
    }

    private void getTopSortedChildren(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i) : i));
        }
        Comparator<View> comparator = TOP_SORTED_CHILDREN_COMPARATOR;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    private boolean hasDependencies(View view) {
        return this.mChildDag.m6758e(view);
    }

    private void layoutChild(View view, int i) {
        C0399e c0399e = (C0399e) view.getLayoutParams();
        Rect acquireTempRect = acquireTempRect();
        acquireTempRect.set(getPaddingLeft() + c0399e.leftMargin, getPaddingTop() + c0399e.topMargin, (getWidth() - getPaddingRight()) - c0399e.rightMargin, (getHeight() - getPaddingBottom()) - c0399e.bottomMargin);
        if (this.mLastInsets != null && C0552u.m6227t(this) && !C0552u.m6227t(view)) {
            acquireTempRect.left += this.mLastInsets.m6367a();
            acquireTempRect.top += this.mLastInsets.m6363b();
            acquireTempRect.right -= this.mLastInsets.m6362c();
            acquireTempRect.bottom -= this.mLastInsets.m6361d();
        }
        Rect acquireTempRect2 = acquireTempRect();
        C0533c.m6343a(resolveGravity(c0399e.f1525c), view.getMeasuredWidth(), view.getMeasuredHeight(), acquireTempRect, acquireTempRect2, i);
        view.layout(acquireTempRect2.left, acquireTempRect2.top, acquireTempRect2.right, acquireTempRect2.bottom);
        releaseTempRect(acquireTempRect);
        releaseTempRect(acquireTempRect2);
    }

    private void layoutChildWithAnchor(View view, View view2, int i) {
        Rect acquireTempRect = acquireTempRect();
        Rect acquireTempRect2 = acquireTempRect();
        try {
            getDescendantRect(view2, acquireTempRect);
            getDesiredAnchoredChildRect(view, i, acquireTempRect, acquireTempRect2);
            view.layout(acquireTempRect2.left, acquireTempRect2.top, acquireTempRect2.right, acquireTempRect2.bottom);
        } finally {
            releaseTempRect(acquireTempRect);
            releaseTempRect(acquireTempRect2);
        }
    }

    private void layoutChildWithKeyline(View view, int i, int i2) {
        C0399e c0399e = (C0399e) view.getLayoutParams();
        int m6344a = C0533c.m6344a(resolveKeylineGravity(c0399e.f1525c), i2);
        int i3 = m6344a & 7;
        int i4 = m6344a & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i5 = i;
        if (i2 == 1) {
            i5 = width - i;
        }
        int keyline = getKeyline(i5) - measuredWidth;
        int i6 = 0;
        if (i3 == 1) {
            keyline += measuredWidth / 2;
        } else if (i3 == 5) {
            keyline += measuredWidth;
        }
        if (i4 == 16) {
            i6 = 0 + (measuredHeight / 2);
        } else if (i4 == 80) {
            i6 = measuredHeight + 0;
        }
        int max = Math.max(getPaddingLeft() + c0399e.leftMargin, Math.min(keyline, ((width - getPaddingRight()) - measuredWidth) - c0399e.rightMargin));
        int max2 = Math.max(getPaddingTop() + c0399e.topMargin, Math.min(i6, ((height - getPaddingBottom()) - measuredHeight) - c0399e.bottomMargin));
        view.layout(max, max2, measuredWidth + max, measuredHeight + max2);
    }

    private void offsetChildByInset(View view, Rect rect, int i) {
        boolean z;
        boolean z2;
        int i2;
        int i3;
        if (C0552u.m6295A(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            C0399e c0399e = (C0399e) view.getLayoutParams();
            AbstractC0396b m6779b = c0399e.m6779b();
            Rect acquireTempRect = acquireTempRect();
            Rect acquireTempRect2 = acquireTempRect();
            acquireTempRect2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (m6779b == null || !m6779b.getInsetDodgeRect(this, view, acquireTempRect)) {
                acquireTempRect.set(acquireTempRect2);
            } else if (!acquireTempRect2.contains(acquireTempRect)) {
                throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + acquireTempRect.toShortString() + " | Bounds:" + acquireTempRect2.toShortString());
            }
            releaseTempRect(acquireTempRect2);
            if (acquireTempRect.isEmpty()) {
                releaseTempRect(acquireTempRect);
                return;
            }
            int m6344a = C0533c.m6344a(c0399e.f1530h, i);
            if ((m6344a & 48) != 48 || (i3 = (acquireTempRect.top - c0399e.topMargin) - c0399e.f1532j) >= rect.top) {
                z = false;
            } else {
                setInsetOffsetY(view, rect.top - i3);
                z = true;
            }
            boolean z3 = z;
            if ((m6344a & 80) == 80) {
                int height = ((getHeight() - acquireTempRect.bottom) - c0399e.bottomMargin) + c0399e.f1532j;
                z3 = z;
                if (height < rect.bottom) {
                    setInsetOffsetY(view, height - rect.bottom);
                    z3 = true;
                }
            }
            if (!z3) {
                setInsetOffsetY(view, 0);
            }
            if ((m6344a & 3) != 3 || (i2 = (acquireTempRect.left - c0399e.leftMargin) - c0399e.f1531i) >= rect.left) {
                z2 = false;
            } else {
                setInsetOffsetX(view, rect.left - i2);
                z2 = true;
            }
            boolean z4 = z2;
            if ((m6344a & 5) == 5) {
                int width = ((getWidth() - acquireTempRect.right) - c0399e.rightMargin) + c0399e.f1531i;
                z4 = z2;
                if (width < rect.right) {
                    setInsetOffsetX(view, width - rect.right);
                    z4 = true;
                }
            }
            if (!z4) {
                setInsetOffsetX(view, 0);
            }
            releaseTempRect(acquireTempRect);
        }
    }

    static AbstractC0396b parseBehavior(Context context, AttributeSet attributeSet, String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str2 = context.getPackageName() + str;
        } else if (str.indexOf(46) >= 0) {
            str2 = str;
        } else {
            str2 = str;
            if (!TextUtils.isEmpty(WIDGET_PACKAGE_NAME)) {
                str2 = WIDGET_PACKAGE_NAME + '.' + str;
            }
        }
        try {
            Map<String, Constructor<AbstractC0396b>> map = sConstructors.get();
            Map<String, Constructor<AbstractC0396b>> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                sConstructors.set(map2);
            }
            Constructor<AbstractC0396b> constructor = map2.get(str2);
            Constructor<AbstractC0396b> constructor2 = constructor;
            if (constructor == null) {
                constructor2 = context.getClassLoader().loadClass(str2).getConstructor(CONSTRUCTOR_PARAMS);
                constructor2.setAccessible(true);
                map2.put(str2, constructor2);
            }
            return (AbstractC0396b) constructor2.newInstance(context, attributeSet);
        } catch (Exception e) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str2, e);
        }
    }

    private boolean performIntercept(MotionEvent motionEvent, int i) {
        boolean z;
        boolean z2;
        MotionEvent motionEvent2;
        boolean z3;
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.mTempList1;
        getTopSortedChildren(list);
        int size = list.size();
        MotionEvent motionEvent3 = null;
        int i2 = 0;
        boolean z4 = false;
        boolean z5 = false;
        while (true) {
            z = z5;
            if (i2 >= size) {
                break;
            }
            View view = list.get(i2);
            C0399e c0399e = (C0399e) view.getLayoutParams();
            AbstractC0396b m6779b = c0399e.m6779b();
            if ((!z5 && !z4) || actionMasked == 0) {
                boolean z6 = z5;
                if (!z5) {
                    z6 = z5;
                    if (m6779b != null) {
                        if (i == 0) {
                            z5 = m6779b.onInterceptTouchEvent(this, view, motionEvent);
                        } else if (i == 1) {
                            z5 = m6779b.onTouchEvent(this, view, motionEvent);
                        }
                        z6 = z5;
                        if (z5) {
                            this.mBehaviorTouchView = view;
                            z6 = z5;
                        }
                    }
                }
                boolean m6773e = c0399e.m6773e();
                boolean m6782a = c0399e.m6782a(this, view);
                boolean z7 = m6782a && !m6773e;
                if (m6782a && !z7) {
                    z = z6;
                    break;
                }
                motionEvent2 = motionEvent3;
                z3 = z7;
                z2 = z6;
            } else {
                z2 = z5;
                z3 = z4;
                motionEvent2 = motionEvent3;
                if (m6779b != null) {
                    motionEvent2 = motionEvent3;
                    if (motionEvent3 == null) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, 0);
                    }
                    if (i == 0) {
                        m6779b.onInterceptTouchEvent(this, view, motionEvent2);
                        z2 = z5;
                        z3 = z4;
                    } else if (i != 1) {
                        z2 = z5;
                        z3 = z4;
                    } else {
                        m6779b.onTouchEvent(this, view, motionEvent2);
                        z2 = z5;
                        z3 = z4;
                    }
                }
            }
            i2++;
            z5 = z2;
            z4 = z3;
            motionEvent3 = motionEvent2;
        }
        list.clear();
        return z;
    }

    private void prepareChildren() {
        this.mDependencySortedChildren.clear();
        this.mChildDag.m6768a();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            C0399e resolvedLayoutParams = getResolvedLayoutParams(childAt);
            resolvedLayoutParams.m6776b(this, childAt);
            this.mChildDag.m6767a((C0402a<View>) childAt);
            for (int i2 = 0; i2 < childCount; i2++) {
                if (i2 != i) {
                    View childAt2 = getChildAt(i2);
                    if (resolvedLayoutParams.m6781a(this, childAt, childAt2)) {
                        if (!this.mChildDag.m6762b(childAt2)) {
                            this.mChildDag.m6767a((C0402a<View>) childAt2);
                        }
                        this.mChildDag.m6766a(childAt2, childAt);
                    }
                }
            }
        }
        this.mDependencySortedChildren.addAll(this.mChildDag.m6763b());
        Collections.reverse(this.mDependencySortedChildren);
    }

    private static void releaseTempRect(Rect rect) {
        rect.setEmpty();
        sRectPool.mo6464a(rect);
    }

    private void resetTouchBehaviors(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            AbstractC0396b m6779b = ((C0399e) childAt.getLayoutParams()).m6779b();
            if (m6779b != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, 0);
                if (z) {
                    m6779b.onInterceptTouchEvent(this, childAt, obtain);
                } else {
                    m6779b.onTouchEvent(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((C0399e) getChildAt(i2).getLayoutParams()).m6772f();
        }
        this.mBehaviorTouchView = null;
        this.mDisallowInterceptReset = false;
    }

    private static int resolveAnchoredChildGravity(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 17;
        }
        return i2;
    }

    private static int resolveGravity(int i) {
        int i2 = i;
        if ((i & 7) == 0) {
            i2 = i | 8388611;
        }
        int i3 = i2;
        if ((i2 & 112) == 0) {
            i3 = i2 | 48;
        }
        return i3;
    }

    private static int resolveKeylineGravity(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 8388661;
        }
        return i2;
    }

    private void setInsetOffsetX(View view, int i) {
        C0399e c0399e = (C0399e) view.getLayoutParams();
        if (c0399e.f1531i != i) {
            C0552u.m6244f(view, i - c0399e.f1531i);
            c0399e.f1531i = i;
        }
    }

    private void setInsetOffsetY(View view, int i) {
        C0399e c0399e = (C0399e) view.getLayoutParams();
        if (c0399e.f1532j != i) {
            C0552u.m6246e(view, i - c0399e.f1532j);
            c0399e.f1532j = i;
        }
    }

    private void setupForInsets() {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (!C0552u.m6227t(this)) {
            C0552u.m6267a(this, (AbstractC0548q) null);
            return;
        }
        if (this.mApplyWindowInsetsListener == null) {
            this.mApplyWindowInsetsListener = new AbstractC0548q() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.1
                @Override // androidx.core.p023g.AbstractC0548q
                public C0529ac onApplyWindowInsets(View view, C0529ac c0529ac) {
                    return CoordinatorLayout.this.setWindowInsets(c0529ac);
                }
            };
        }
        C0552u.m6267a(this, this.mApplyWindowInsetsListener);
        setSystemUiVisibility(1280);
    }

    void addPreDrawListener() {
        if (this.mIsAttachedToWindow) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new ViewTreeObserver$OnPreDrawListenerC0400f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = true;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0399e) && super.checkLayoutParams(layoutParams);
    }

    public void dispatchDependentViewsChanged(View view) {
        List m6760c = this.mChildDag.m6760c(view);
        if (m6760c == null || m6760c.isEmpty()) {
            return;
        }
        for (int i = 0; i < m6760c.size(); i++) {
            View view2 = (View) m6760c.get(i);
            AbstractC0396b m6779b = ((C0399e) view2.getLayoutParams()).m6779b();
            if (m6779b != null) {
                m6779b.onDependentViewChanged(this, view2, view);
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    public boolean doViewsOverlap(View view, View view2) {
        if (view.getVisibility() == 0 && view2.getVisibility() == 0) {
            Rect acquireTempRect = acquireTempRect();
            getChildRect(view, view.getParent() != this, acquireTempRect);
            Rect acquireTempRect2 = acquireTempRect();
            getChildRect(view2, view2.getParent() != this, acquireTempRect2);
            boolean z = false;
            try {
                if (acquireTempRect.left <= acquireTempRect2.right) {
                    z = false;
                    if (acquireTempRect.top <= acquireTempRect2.bottom) {
                        z = false;
                        if (acquireTempRect.right >= acquireTempRect2.left) {
                            z = false;
                            if (acquireTempRect.bottom >= acquireTempRect2.top) {
                                z = true;
                            }
                        }
                    }
                }
                releaseTempRect(acquireTempRect);
                releaseTempRect(acquireTempRect2);
                return z;
            } catch (Throwable th) {
                releaseTempRect(acquireTempRect);
                releaseTempRect(acquireTempRect2);
                throw th;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        C0399e c0399e = (C0399e) view.getLayoutParams();
        if (c0399e.f1523a != null) {
            float scrimOpacity = c0399e.f1523a.getScrimOpacity(this, view);
            if (scrimOpacity > FlexItem.FLEX_GROW_DEFAULT) {
                if (this.mScrimPaint == null) {
                    this.mScrimPaint = new Paint();
                }
                this.mScrimPaint.setColor(c0399e.f1523a.getScrimColor(this, view));
                this.mScrimPaint.setAlpha(clamp(Math.round(scrimOpacity * 255.0f), 0, 255));
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.mScrimPaint);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.mStatusBarBackground;
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

    void ensurePreDrawListener() {
        boolean z;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            z = false;
            if (i >= childCount) {
                break;
            } else if (hasDependencies(getChildAt(i))) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z != this.mNeedsPreDrawListener) {
            if (z) {
                addPreDrawListener();
            } else {
                removePreDrawListener();
            }
        }
    }

    @Override // android.view.ViewGroup
    public C0399e generateDefaultLayoutParams() {
        return new C0399e(-2, -2);
    }

    @Override // android.view.ViewGroup
    public C0399e generateLayoutParams(AttributeSet attributeSet) {
        return new C0399e(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public C0399e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0399e ? new C0399e((C0399e) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0399e((ViewGroup.MarginLayoutParams) layoutParams) : new C0399e(layoutParams);
    }

    void getChildRect(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            getDescendantRect(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public List<View> getDependencies(View view) {
        List<View> m6759d = this.mChildDag.m6759d(view);
        this.mTempDependenciesList.clear();
        if (m6759d != null) {
            this.mTempDependenciesList.addAll(m6759d);
        }
        return this.mTempDependenciesList;
    }

    final List<View> getDependencySortedChildren() {
        prepareChildren();
        return Collections.unmodifiableList(this.mDependencySortedChildren);
    }

    public List<View> getDependents(View view) {
        List m6760c = this.mChildDag.m6760c(view);
        this.mTempDependenciesList.clear();
        if (m6760c != null) {
            this.mTempDependenciesList.addAll(m6760c);
        }
        return this.mTempDependenciesList;
    }

    void getDescendantRect(View view, Rect rect) {
        C0403b.m6755b(this, view, rect);
    }

    void getDesiredAnchoredChildRect(View view, int i, Rect rect, Rect rect2) {
        C0399e c0399e = (C0399e) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        getDesiredAnchoredChildRectWithoutConstraints(view, i, rect, rect2, c0399e, measuredWidth, measuredHeight);
        constrainChildRect(c0399e, rect2, measuredWidth, measuredHeight);
    }

    void getLastChildRect(View view, Rect rect) {
        rect.set(((C0399e) view.getLayoutParams()).m6775c());
    }

    public final C0529ac getLastWindowInsets() {
        return this.mLastInsets;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.mNestedScrollingParentHelper.m6303a();
    }

    C0399e getResolvedLayoutParams(View view) {
        AbstractC0397c abstractC0397c;
        C0399e c0399e = (C0399e) view.getLayoutParams();
        if (!c0399e.f1524b) {
            if (view instanceof AbstractC0395a) {
                AbstractC0396b behavior = ((AbstractC0395a) view).getBehavior();
                if (behavior == null) {
                    Log.e(TAG, "Attached behavior class is null");
                }
                c0399e.m6783a(behavior);
                c0399e.f1524b = true;
            } else {
                Class<? super Object> cls = view.getClass();
                AbstractC0397c abstractC0397c2 = null;
                while (true) {
                    abstractC0397c = abstractC0397c2;
                    if (cls == null) {
                        break;
                    }
                    AbstractC0397c abstractC0397c3 = (AbstractC0397c) cls.getAnnotation(AbstractC0397c.class);
                    abstractC0397c = abstractC0397c3;
                    if (abstractC0397c3 != null) {
                        break;
                    }
                    cls = cls.getSuperclass();
                    abstractC0397c2 = abstractC0397c3;
                }
                if (abstractC0397c != null) {
                    try {
                        c0399e.m6783a(abstractC0397c.m6790a().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e) {
                        Log.e(TAG, "Default behavior class " + abstractC0397c.m6790a().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                    }
                }
                c0399e.f1524b = true;
            }
        }
        return c0399e;
    }

    public Drawable getStatusBarBackground() {
        return this.mStatusBarBackground;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    public boolean isPointInChildBounds(View view, int i, int i2) {
        Rect acquireTempRect = acquireTempRect();
        getDescendantRect(view, acquireTempRect);
        try {
            return acquireTempRect.contains(i, i2);
        } finally {
            releaseTempRect(acquireTempRect);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0068, code lost:
        if (r0.top != r0.top) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void offsetChildToAnchor(android.view.View r10, int r11) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.offsetChildToAnchor(android.view.View, int):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        resetTouchBehaviors(false);
        if (this.mNeedsPreDrawListener) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new ViewTreeObserver$OnPreDrawListenerC0400f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        if (this.mLastInsets == null && C0552u.m6227t(this)) {
            C0552u.m6228s(this);
        }
        this.mIsAttachedToWindow = true;
    }

    final void onChildViewsChanged(int i) {
        boolean z;
        int m6245f = C0552u.m6245f(this);
        int size = this.mDependencySortedChildren.size();
        Rect acquireTempRect = acquireTempRect();
        Rect acquireTempRect2 = acquireTempRect();
        Rect acquireTempRect3 = acquireTempRect();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.mDependencySortedChildren.get(i2);
            C0399e c0399e = (C0399e) view.getLayoutParams();
            if (i != 0 || view.getVisibility() != 8) {
                for (int i3 = 0; i3 < i2; i3++) {
                    if (c0399e.f1534l == this.mDependencySortedChildren.get(i3)) {
                        offsetChildToAnchor(view, m6245f);
                    }
                }
                getChildRect(view, true, acquireTempRect2);
                if (c0399e.f1529g != 0 && !acquireTempRect2.isEmpty()) {
                    int m6344a = C0533c.m6344a(c0399e.f1529g, m6245f);
                    int i4 = m6344a & 112;
                    if (i4 == 48) {
                        acquireTempRect.top = Math.max(acquireTempRect.top, acquireTempRect2.bottom);
                    } else if (i4 == 80) {
                        acquireTempRect.bottom = Math.max(acquireTempRect.bottom, getHeight() - acquireTempRect2.top);
                    }
                    int i5 = m6344a & 7;
                    if (i5 == 3) {
                        acquireTempRect.left = Math.max(acquireTempRect.left, acquireTempRect2.right);
                    } else if (i5 == 5) {
                        acquireTempRect.right = Math.max(acquireTempRect.right, getWidth() - acquireTempRect2.left);
                    }
                }
                if (c0399e.f1530h != 0 && view.getVisibility() == 0) {
                    offsetChildByInset(view, acquireTempRect, m6245f);
                }
                if (i != 2) {
                    getLastChildRect(view, acquireTempRect3);
                    if (!acquireTempRect3.equals(acquireTempRect2)) {
                        recordLastChildRect(view, acquireTempRect2);
                    }
                }
                for (int i6 = i2 + 1; i6 < size; i6++) {
                    View view2 = this.mDependencySortedChildren.get(i6);
                    C0399e c0399e2 = (C0399e) view2.getLayoutParams();
                    AbstractC0396b m6779b = c0399e2.m6779b();
                    if (m6779b != null && m6779b.layoutDependsOn(this, view2, view)) {
                        if (i != 0 || !c0399e2.m6771g()) {
                            if (i != 2) {
                                z = m6779b.onDependentViewChanged(this, view2, view);
                            } else {
                                m6779b.onDependentViewRemoved(this, view2, view);
                                z = true;
                            }
                            if (i == 1) {
                                c0399e2.m6780a(z);
                            }
                        } else {
                            c0399e2.m6770h();
                        }
                    }
                }
            }
        }
        releaseTempRect(acquireTempRect);
        releaseTempRect(acquireTempRect2);
        releaseTempRect(acquireTempRect3);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        resetTouchBehaviors(false);
        if (this.mNeedsPreDrawListener && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        View view = this.mNestedScrollingTarget;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.mIsAttachedToWindow = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.mDrawStatusBarBackground || this.mStatusBarBackground == null) {
            return;
        }
        C0529ac c0529ac = this.mLastInsets;
        int m6363b = c0529ac != null ? c0529ac.m6363b() : 0;
        if (m6363b <= 0) {
            return;
        }
        this.mStatusBarBackground.setBounds(0, 0, getWidth(), m6363b);
        this.mStatusBarBackground.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            resetTouchBehaviors(true);
        }
        boolean performIntercept = performIntercept(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            resetTouchBehaviors(true);
        }
        return performIntercept;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        AbstractC0396b m6779b;
        int m6245f = C0552u.m6245f(this);
        int size = this.mDependencySortedChildren.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.mDependencySortedChildren.get(i5);
            if (view.getVisibility() != 8 && ((m6779b = ((C0399e) view.getLayoutParams()).m6779b()) == null || !m6779b.onLayoutChild(this, view, m6245f))) {
                onLayoutChild(view, m6245f);
            }
        }
    }

    public void onLayoutChild(View view, int i) {
        C0399e c0399e = (C0399e) view.getLayoutParams();
        if (!c0399e.m6774d()) {
            if (c0399e.f1533k != null) {
                layoutChildWithAnchor(view, c0399e.f1533k, i);
                return;
            } else if (c0399e.f1527e >= 0) {
                layoutChildWithKeyline(view, c0399e.f1527e, i);
                return;
            } else {
                layoutChild(view, i);
                return;
            }
        }
        throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        AbstractC0396b m6779b;
        prepareChildren();
        ensurePreDrawListener();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int m6245f = C0552u.m6245f(this);
        boolean z = m6245f == 1;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z2 = this.mLastInsets != null && C0552u.m6227t(this);
        int size3 = this.mDependencySortedChildren.size();
        int i6 = 0;
        for (int i7 = 0; i7 < size3; i7++) {
            View view = this.mDependencySortedChildren.get(i7);
            if (view.getVisibility() != 8) {
                C0399e c0399e = (C0399e) view.getLayoutParams();
                if (c0399e.f1527e >= 0 && mode != 0) {
                    int keyline = getKeyline(c0399e.f1527e);
                    int m6344a = C0533c.m6344a(resolveKeylineGravity(c0399e.f1525c), m6245f) & 7;
                    if ((m6344a == 3 && !z) || (m6344a == 5 && z)) {
                        i3 = Math.max(0, (size - paddingRight) - keyline);
                    } else if ((m6344a == 5 && !z) || (m6344a == 3 && z)) {
                        i3 = Math.max(0, keyline - paddingLeft);
                    }
                    int i8 = suggestedMinimumHeight;
                    if (z2 || C0552u.m6227t(view)) {
                        i5 = i;
                        i4 = i2;
                    } else {
                        int m6367a = this.mLastInsets.m6367a();
                        int m6362c = this.mLastInsets.m6362c();
                        int m6363b = this.mLastInsets.m6363b();
                        int m6361d = this.mLastInsets.m6361d();
                        i5 = View.MeasureSpec.makeMeasureSpec(size - (m6367a + m6362c), mode);
                        i4 = View.MeasureSpec.makeMeasureSpec(size2 - (m6363b + m6361d), mode2);
                    }
                    m6779b = c0399e.m6779b();
                    if (m6779b != null || !m6779b.onMeasureChild(this, view, i5, i3, i4, 0)) {
                        onMeasureChild(view, i5, i3, i4, 0);
                    }
                    suggestedMinimumWidth = Math.max(suggestedMinimumWidth, paddingLeft + paddingRight + view.getMeasuredWidth() + c0399e.leftMargin + c0399e.rightMargin);
                    suggestedMinimumHeight = Math.max(i8, paddingTop + paddingBottom + view.getMeasuredHeight() + c0399e.topMargin + c0399e.bottomMargin);
                    i6 = View.combineMeasuredStates(i6, view.getMeasuredState());
                }
                i3 = 0;
                int i82 = suggestedMinimumHeight;
                if (z2) {
                }
                i5 = i;
                i4 = i2;
                m6779b = c0399e.m6779b();
                if (m6779b != null) {
                }
                onMeasureChild(view, i5, i3, i4, 0);
                suggestedMinimumWidth = Math.max(suggestedMinimumWidth, paddingLeft + paddingRight + view.getMeasuredWidth() + c0399e.leftMargin + c0399e.rightMargin);
                suggestedMinimumHeight = Math.max(i82, paddingTop + paddingBottom + view.getMeasuredHeight() + c0399e.topMargin + c0399e.bottomMargin);
                i6 = View.combineMeasuredStates(i6, view.getMeasuredState());
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(suggestedMinimumWidth, i, (-16777216) & i6), View.resolveSizeAndState(suggestedMinimumHeight, i2, i6 << 16));
    }

    public void onMeasureChild(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        boolean z2;
        boolean z3;
        int childCount = getChildCount();
        int i = 0;
        boolean z4 = false;
        while (true) {
            z2 = z4;
            if (i >= childCount) {
                break;
            }
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 8) {
                z3 = z2;
            } else {
                C0399e c0399e = (C0399e) childAt.getLayoutParams();
                if (!c0399e.m6778b(0)) {
                    z3 = z2;
                } else {
                    AbstractC0396b m6779b = c0399e.m6779b();
                    z3 = z2;
                    if (m6779b != null) {
                        z3 = z2 | m6779b.onNestedFling(this, childAt, view, f, f2, z);
                    }
                }
            }
            i++;
            z4 = z3;
        }
        if (z2) {
            onChildViewsChanged(1);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public boolean onNestedPreFling(View view, float f, float f2) {
        boolean z;
        int childCount = getChildCount();
        int i = 0;
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            if (i < childCount) {
                View childAt = getChildAt(i);
                if (childAt.getVisibility() == 8) {
                    z = z3;
                } else {
                    C0399e c0399e = (C0399e) childAt.getLayoutParams();
                    if (!c0399e.m6778b(0)) {
                        z = z3;
                    } else {
                        AbstractC0396b m6779b = c0399e.m6779b();
                        z = z3;
                        if (m6779b != null) {
                            z = z3 | m6779b.onNestedPreFling(this, childAt, view, f, f2);
                        }
                    }
                }
                i++;
                z2 = z;
            } else {
                return z3;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        onNestedPreScroll(view, i, i2, iArr, 0);
    }

    @Override // androidx.core.p023g.AbstractC0545n
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
        int i4;
        int i5;
        int childCount = getChildCount();
        boolean z = false;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i8 < childCount) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() == 8) {
                i4 = i7;
                i5 = i6;
            } else {
                C0399e c0399e = (C0399e) childAt.getLayoutParams();
                if (!c0399e.m6778b(i3)) {
                    i4 = i7;
                    i5 = i6;
                } else {
                    AbstractC0396b m6779b = c0399e.m6779b();
                    i4 = i7;
                    i5 = i6;
                    if (m6779b != null) {
                        int[] iArr2 = this.mTempIntPair;
                        iArr2[1] = 0;
                        iArr2[0] = 0;
                        m6779b.onNestedPreScroll(this, childAt, view, i, i2, iArr2, i3);
                        int[] iArr3 = this.mTempIntPair;
                        int max = i > 0 ? Math.max(i7, iArr3[0]) : Math.min(i7, iArr3[0]);
                        int[] iArr4 = this.mTempIntPair;
                        int max2 = i2 > 0 ? Math.max(i6, iArr4[1]) : Math.min(i6, iArr4[1]);
                        int i9 = max;
                        i5 = max2;
                        z = true;
                        i4 = i9;
                    }
                }
            }
            i8++;
            i7 = i4;
            i6 = i5;
        }
        iArr[0] = i7;
        iArr[1] = i6;
        if (z) {
            onChildViewsChanged(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        onNestedScroll(view, i, i2, i3, i4, 0);
    }

    @Override // androidx.core.p023g.AbstractC0545n
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        AbstractC0396b m6779b;
        int childCount = getChildCount();
        boolean z = false;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                C0399e c0399e = (C0399e) childAt.getLayoutParams();
                if (c0399e.m6778b(i5) && (m6779b = c0399e.m6779b()) != null) {
                    m6779b.onNestedScroll(this, childAt, view, i, i2, i3, i4, i5);
                    z = true;
                }
            }
        }
        if (z) {
            onChildViewsChanged(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public void onNestedScrollAccepted(View view, View view2, int i) {
        onNestedScrollAccepted(view, view2, i, 0);
    }

    @Override // androidx.core.p023g.AbstractC0545n
    public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
        AbstractC0396b m6779b;
        this.mNestedScrollingParentHelper.m6300a(view, view2, i, i2);
        this.mNestedScrollingTarget = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            C0399e c0399e = (C0399e) childAt.getLayoutParams();
            if (c0399e.m6778b(i2) && (m6779b = c0399e.m6779b()) != null) {
                m6779b.onNestedScrollAccepted(this, childAt, view, view2, i, i2);
            }
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        SparseArray<Parcelable> sparseArray = savedState.f1521a;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            AbstractC0396b m6779b = getResolvedLayoutParams(childAt).m6779b();
            if (id != -1 && m6779b != null && (parcelable2 = sparseArray.get(id)) != null) {
                m6779b.onRestoreInstanceState(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            AbstractC0396b m6779b = ((C0399e) childAt.getLayoutParams()).m6779b();
            if (id != -1 && m6779b != null && (onSaveInstanceState = m6779b.onSaveInstanceState(this, childAt)) != null) {
                sparseArray.append(id, onSaveInstanceState);
            }
        }
        savedState.f1521a = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return onStartNestedScroll(view, view2, i, 0);
    }

    @Override // androidx.core.p023g.AbstractC0545n
    public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                C0399e c0399e = (C0399e) childAt.getLayoutParams();
                AbstractC0396b m6779b = c0399e.m6779b();
                if (m6779b != null) {
                    boolean onStartNestedScroll = m6779b.onStartNestedScroll(this, childAt, view, view2, i, i2);
                    c0399e.m6787a(i2, onStartNestedScroll);
                    z |= onStartNestedScroll;
                } else {
                    c0399e.m6787a(i2, false);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    @Override // androidx.core.p023g.AbstractC0545n
    public void onStopNestedScroll(View view, int i) {
        this.mNestedScrollingParentHelper.m6302a(view, i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            C0399e c0399e = (C0399e) childAt.getLayoutParams();
            if (c0399e.m6778b(i)) {
                AbstractC0396b m6779b = c0399e.m6779b();
                if (m6779b != null) {
                    m6779b.onStopNestedScroll(this, childAt, view, i);
                }
                c0399e.m6788a(i);
                c0399e.m6770h();
            }
        }
        this.mNestedScrollingTarget = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r12 != false) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0094  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            r9 = this;
            r0 = r10
            int r0 = r0.getActionMasked()
            r11 = r0
            r0 = r9
            android.view.View r0 = r0.mBehaviorTouchView
            if (r0 != 0) goto L1d
            r0 = r9
            r1 = r10
            r2 = 1
            boolean r0 = r0.performIntercept(r1, r2)
            r12 = r0
            r0 = r12
            r13 = r0
            r0 = r12
            if (r0 == 0) goto L4c
            goto L1f
        L1d:
            r0 = 0
            r12 = r0
        L1f:
            r0 = r9
            android.view.View r0 = r0.mBehaviorTouchView
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$e r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout.C0399e) r0
            androidx.coordinatorlayout.widget.CoordinatorLayout$b r0 = r0.m6779b()
            r14 = r0
            r0 = r12
            r13 = r0
            r0 = r14
            if (r0 == 0) goto L4c
            r0 = r14
            r1 = r9
            r2 = r9
            android.view.View r2 = r2.mBehaviorTouchView
            r3 = r10
            boolean r0 = r0.onTouchEvent(r1, r2, r3)
            r15 = r0
            r0 = r12
            r13 = r0
            r0 = r15
            r12 = r0
            goto L4e
        L4c:
            r0 = 0
            r12 = r0
        L4e:
            r0 = r9
            android.view.View r0 = r0.mBehaviorTouchView
            r16 = r0
            r0 = 0
            r14 = r0
            r0 = r16
            if (r0 != 0) goto L6b
            r0 = r12
            r1 = r9
            r2 = r10
            boolean r1 = super.onTouchEvent(r2)
            r0 = r0 | r1
            r15 = r0
            r0 = r14
            r10 = r0
            goto L90
        L6b:
            r0 = r12
            r15 = r0
            r0 = r14
            r10 = r0
            r0 = r13
            if (r0 == 0) goto L90
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
            r0 = r9
            r1 = r10
            boolean r0 = super.onTouchEvent(r1)
            r0 = r12
            r15 = r0
        L90:
            r0 = r10
            if (r0 == 0) goto L98
            r0 = r10
            r0.recycle()
        L98:
            r0 = r11
            r1 = 1
            if (r0 == r1) goto La2
            r0 = r11
            r1 = 3
            if (r0 != r1) goto La7
        La2:
            r0 = r9
            r1 = 0
            r0.resetTouchBehaviors(r1)
        La7:
            r0 = r15
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    void recordLastChildRect(View view, Rect rect) {
        ((C0399e) view.getLayoutParams()).m6786a(rect);
    }

    void removePreDrawListener() {
        if (this.mIsAttachedToWindow && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        AbstractC0396b m6779b = ((C0399e) view.getLayoutParams()).m6779b();
        if (m6779b == null || !m6779b.onRequestChildRectangleOnScreen(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.mDisallowInterceptReset) {
            return;
        }
        resetTouchBehaviors(false);
        this.mDisallowInterceptReset = true;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        setupForInsets();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.mOnHierarchyChangeListener = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.mStatusBarBackground;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.mStatusBarBackground = drawable3;
            Drawable drawable4 = this.mStatusBarBackground;
            if (drawable4 != null) {
                if (drawable4.isStateful()) {
                    this.mStatusBarBackground.setState(getDrawableState());
                }
                C0575a.m6127b(this.mStatusBarBackground, C0552u.m6245f(this));
                this.mStatusBarBackground.setVisible(getVisibility() == 0, false);
                this.mStatusBarBackground.setCallback(this);
            }
            C0552u.m6249d(this);
        }
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(int i) {
        setStatusBarBackground(i != 0 ? C0409a.m6753a(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.mStatusBarBackground;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        this.mStatusBarBackground.setVisible(z, false);
    }

    final C0529ac setWindowInsets(C0529ac c0529ac) {
        C0529ac c0529ac2 = c0529ac;
        if (!C0497c.m6468a(this.mLastInsets, c0529ac)) {
            this.mLastInsets = c0529ac;
            this.mDrawStatusBarBackground = c0529ac != null && c0529ac.m6363b() > 0;
            setWillNotDraw(!this.mDrawStatusBarBackground && getBackground() == null);
            c0529ac2 = dispatchApplyWindowInsetsToBehaviors(c0529ac);
            requestLayout();
        }
        return c0529ac2;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mStatusBarBackground;
    }
}
