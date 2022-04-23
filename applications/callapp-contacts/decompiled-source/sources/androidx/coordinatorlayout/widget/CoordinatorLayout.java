package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
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
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.a;
import androidx.core.e.c;
import androidx.core.view.ac;
import androidx.core.view.o;
import androidx.core.view.p;
import androidx.core.view.q;
import androidx.core.view.r;
import androidx.core.view.v;
import androidx.customview.view.AbsSavedState;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
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
public class CoordinatorLayout extends ViewGroup implements o, p {

    /* renamed from: a  reason: collision with root package name */
    static final String f1657a;

    /* renamed from: b  reason: collision with root package name */
    static final Class<?>[] f1658b;

    /* renamed from: c  reason: collision with root package name */
    static final ThreadLocal<Map<String, Constructor<Behavior>>> f1659c;

    /* renamed from: d  reason: collision with root package name */
    static final Comparator<View> f1660d;
    private static final c.a<Rect> h;
    public ac e;
    boolean f;
    ViewGroup.OnHierarchyChangeListener g;
    private final List<View> i;
    private final androidx.coordinatorlayout.widget.a<View> j;
    private final List<View> k;
    private final List<View> l;
    private final int[] m;
    private final int[] n;
    private boolean o;
    private boolean p;
    private int[] q;
    private View r;
    private View s;
    private e t;
    private boolean u;
    private Drawable v;
    private r w;
    private final q x;

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior.class */
    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }

        public static ac a(ac acVar) {
            return acVar;
        }

        public void a() {
        }

        @Deprecated
        public void a(V v, View view, int i, int[] iArr) {
        }

        public void a(d dVar) {
        }

        public void a(CoordinatorLayout coordinatorLayout, View view) {
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
            if (i == 0) {
                b((Behavior<V>) v, view);
            }
        }

        @Deprecated
        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        }

        @Deprecated
        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                a(coordinatorLayout, (CoordinatorLayout) v, view, i, i2, i3, i4);
            }
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
            a(coordinatorLayout, v, view, i, i2, i3, i4, i5);
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
            if (i3 == 0) {
                a((Behavior<V>) v, view, i2, iArr);
            }
        }

        @Deprecated
        public boolean a(int i) {
            return false;
        }

        public boolean a(V v, View view) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                return a(i);
            }
            return false;
        }

        public Parcelable b(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        public void b(V v, View view) {
        }

        public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState.class */
    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        SparseArray<Parcelable> behaviorStates;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.behaviorStates = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.behaviorStates.append(iArr[i], readParcelableArray[i]);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            SparseArray<Parcelable> sparseArray = this.behaviorStates;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.behaviorStates.keyAt(i2);
                parcelableArr[i2] = this.behaviorStates.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$a.class */
    public interface a {
        Behavior a();
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$b.class */
    public @interface b {
        Class<? extends Behavior> a();
    }

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$c.class */
    final class c implements ViewGroup.OnHierarchyChangeListener {
        c() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            if (CoordinatorLayout.this.g != null) {
                CoordinatorLayout.this.g.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.a(2);
            if (CoordinatorLayout.this.g != null) {
                CoordinatorLayout.this.g.onChildViewRemoved(view, view2);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$d.class */
    public static final class d extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public Behavior f1663a;

        /* renamed from: b  reason: collision with root package name */
        boolean f1664b;

        /* renamed from: c  reason: collision with root package name */
        public int f1665c;

        /* renamed from: d  reason: collision with root package name */
        public int f1666d;
        public int e;
        public int f;
        public int g;
        public int h;
        int i;
        int j;
        public View k;
        public View l;
        boolean m;
        boolean n;
        final Rect o;
        Object p;
        private boolean q;
        private boolean r;

        public d(int i, int i2) {
            super(i, i2);
            this.f1664b = false;
            this.f1665c = 0;
            this.f1666d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.o = new Rect();
        }

        d(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1664b = false;
            this.f1665c = 0;
            this.f1666d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.o = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.c.CoordinatorLayout_Layout);
            this.f1665c = obtainStyledAttributes.getInteger(a.c.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f = obtainStyledAttributes.getResourceId(a.c.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f1666d = obtainStyledAttributes.getInteger(a.c.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.e = obtainStyledAttributes.getInteger(a.c.CoordinatorLayout_Layout_layout_keyline, -1);
            this.g = obtainStyledAttributes.getInt(a.c.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.h = obtainStyledAttributes.getInt(a.c.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            boolean hasValue = obtainStyledAttributes.hasValue(a.c.CoordinatorLayout_Layout_layout_behavior);
            this.f1664b = hasValue;
            if (hasValue) {
                this.f1663a = CoordinatorLayout.a(context, attributeSet, obtainStyledAttributes.getString(a.c.CoordinatorLayout_Layout_layout_behavior));
            }
            obtainStyledAttributes.recycle();
            Behavior behavior = this.f1663a;
            if (behavior != null) {
                behavior.a(this);
            }
        }

        public d(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1664b = false;
            this.f1665c = 0;
            this.f1666d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.o = new Rect();
        }

        public d(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1664b = false;
            this.f1665c = 0;
            this.f1666d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.o = new Rect();
        }

        public d(d dVar) {
            super((ViewGroup.MarginLayoutParams) dVar);
            this.f1664b = false;
            this.f1665c = 0;
            this.f1666d = 0;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.h = 0;
            this.o = new Rect();
        }

        final void a(int i, boolean z) {
            if (i == 0) {
                this.q = z;
            } else if (i == 1) {
                this.r = z;
            }
        }

        public final void a(Behavior behavior) {
            Behavior behavior2 = this.f1663a;
            if (behavior2 != behavior) {
                if (behavior2 != null) {
                    behavior2.a();
                }
                this.f1663a = behavior;
                this.p = null;
                this.f1664b = true;
                if (behavior != null) {
                    behavior.a(this);
                }
            }
        }

        final boolean a(int i) {
            if (i == 0) {
                return this.q;
            }
            if (i != 1) {
                return false;
            }
            return this.r;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$e.class */
    public final class e implements ViewTreeObserver.OnPreDrawListener {
        e() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            CoordinatorLayout.this.a(0);
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$f.class */
    static final class f implements Comparator<View> {
        f() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(View view, View view2) {
            float C = v.C(view);
            float C2 = v.C(view2);
            if (C > C2) {
                return -1;
            }
            return C < C2 ? 1 : 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f1657a = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            f1660d = new f();
        } else {
            f1660d = null;
        }
        f1658b = new Class[]{Context.class, AttributeSet.class};
        f1659c = new ThreadLocal<>();
        h = new c.C0049c(12);
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0039a.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.i = new ArrayList();
        this.j = new androidx.coordinatorlayout.widget.a<>();
        this.k = new ArrayList();
        this.l = new ArrayList();
        this.m = new int[2];
        this.n = new int[2];
        this.x = new q(this);
        TypedArray obtainStyledAttributes = i == 0 ? context.obtainStyledAttributes(attributeSet, a.c.CoordinatorLayout, 0, a.b.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, a.c.CoordinatorLayout, i, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            if (i == 0) {
                saveAttributeDataForStyleable(context, a.c.CoordinatorLayout, attributeSet, obtainStyledAttributes, 0, a.b.Widget_Support_CoordinatorLayout);
            } else {
                saveAttributeDataForStyleable(context, a.c.CoordinatorLayout, attributeSet, obtainStyledAttributes, i, 0);
            }
        }
        int resourceId = obtainStyledAttributes.getResourceId(a.c.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.q = resources.getIntArray(resourceId);
            float f2 = resources.getDisplayMetrics().density;
            int length = this.q.length;
            for (int i2 = 0; i2 < length; i2++) {
                int[] iArr = this.q;
                iArr[i2] = (int) (iArr[i2] * f2);
            }
        }
        this.v = obtainStyledAttributes.getDrawable(a.c.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        c();
        super.setOnHierarchyChangeListener(new c());
        if (v.e(this) == 0) {
            v.c((View) this, 1);
        }
    }

    private static Rect a() {
        Rect a2 = h.a();
        Rect rect = a2;
        if (a2 == null) {
            rect = new Rect();
        }
        return rect;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static Behavior a(Context context, AttributeSet attributeSet, String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str2 = context.getPackageName() + str;
        } else if (str.indexOf(46) >= 0) {
            str2 = str;
        } else {
            String str3 = f1657a;
            str2 = str;
            if (!TextUtils.isEmpty(str3)) {
                str2 = str3 + '.' + str;
            }
        }
        try {
            ThreadLocal<Map<String, Constructor<Behavior>>> threadLocal = f1659c;
            Map<String, Constructor<Behavior>> map = threadLocal.get();
            Map<String, Constructor<Behavior>> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                threadLocal.set(map2);
            }
            Constructor<Behavior> constructor = map2.get(str2);
            Constructor<Behavior> constructor2 = constructor;
            if (constructor == null) {
                constructor2 = Class.forName(str2, false, context.getClassLoader()).getConstructor(f1658b);
                constructor2.setAccessible(true);
                map2.put(str2, constructor2);
            }
            return constructor2.newInstance(context, attributeSet);
        } catch (Exception e2) {
            throw new RuntimeException("Could not inflate Behavior subclass ".concat(String.valueOf(str2)), e2);
        }
    }

    private static void a(int i, Rect rect, Rect rect2, d dVar, int i2, int i3) {
        int i4;
        int i5;
        int a2 = androidx.core.view.e.a(e(dVar.f1665c), i);
        int a3 = androidx.core.view.e.a(c(dVar.f1666d), i);
        int i6 = a2 & 7;
        int i7 = a2 & 112;
        int i8 = a3 & 7;
        int i9 = a3 & 112;
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

    private static void a(Rect rect) {
        rect.setEmpty();
        h.a(rect);
    }

    private void a(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            androidx.coordinatorlayout.widget.b.a(this, view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    private void a(d dVar, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + dVar.leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - dVar.rightMargin));
        int max2 = Math.max(getPaddingTop() + dVar.topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - dVar.bottomMargin));
        rect.set(max, max2, i + max, i2 + max2);
    }

    private void a(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Behavior behavior = ((d) childAt.getLayoutParams()).f1663a;
            if (behavior != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                if (z) {
                    behavior.a(this, (CoordinatorLayout) childAt, obtain);
                } else {
                    behavior.b(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((d) getChildAt(i2).getLayoutParams()).m = false;
        }
        this.r = null;
        this.o = false;
    }

    private boolean a(MotionEvent motionEvent, int i) {
        boolean z;
        boolean z2;
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.k;
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i2) : i2));
        }
        Comparator<View> comparator = f1660d;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
        int size = list.size();
        MotionEvent motionEvent2 = null;
        int i3 = 0;
        boolean z3 = false;
        boolean z4 = false;
        while (true) {
            z = z3;
            if (i3 >= size) {
                break;
            }
            View view = list.get(i3);
            d dVar = (d) view.getLayoutParams();
            Behavior behavior = dVar.f1663a;
            if ((z3 || z4) && actionMasked != 0) {
                motionEvent2 = motionEvent2;
                z3 = z3;
                z4 = z4;
                if (behavior != null) {
                    motionEvent2 = motionEvent2;
                    if (motionEvent2 == null) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                    }
                    if (i == 0) {
                        behavior.a(this, (CoordinatorLayout) view, motionEvent2);
                        z3 = z3;
                        z4 = z4;
                    } else if (i != 1) {
                        z3 = z3;
                        z4 = z4;
                    } else {
                        behavior.b(this, view, motionEvent2);
                        z3 = z3;
                        z4 = z4;
                    }
                }
            } else {
                boolean z5 = z3;
                if (!z3) {
                    z5 = z3;
                    if (behavior != null) {
                        if (i == 0) {
                            z3 = behavior.a(this, (CoordinatorLayout) view, motionEvent);
                        } else if (i == 1) {
                            z3 = behavior.b(this, view, motionEvent);
                        }
                        z5 = z3;
                        if (z3) {
                            this.r = view;
                            z5 = z3;
                        }
                    }
                }
                if (dVar.f1663a == null) {
                    dVar.m = false;
                }
                boolean z6 = dVar.m;
                if (dVar.m) {
                    z2 = true;
                } else {
                    z2 = dVar.m | false;
                    dVar.m = z2;
                }
                boolean z7 = z2 && !z6;
                motionEvent2 = motionEvent2;
                z3 = z5;
                z4 = z7;
                if (z2) {
                    z = z5;
                    if (!z7) {
                        break;
                    }
                    z4 = z7;
                    z3 = z5;
                    motionEvent2 = motionEvent2;
                } else {
                    continue;
                }
            }
            i3++;
        }
        list.clear();
        return z;
    }

    private int b(int i) {
        int[] iArr = this.q;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        } else if (i >= 0 && i < iArr.length) {
            return iArr[i];
        } else {
            Log.e("CoordinatorLayout", "Keyline index " + i + " out of range for " + this);
            return 0;
        }
    }

    private void b() {
        boolean z;
        boolean z2;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                z = false;
                break;
            }
            View childAt = getChildAt(i);
            androidx.coordinatorlayout.widget.a<View> aVar = this.j;
            int size = aVar.f1669b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    z2 = false;
                    break;
                }
                ArrayList<View> c2 = aVar.f1669b.c(i2);
                if (c2 != null && c2.contains(childAt)) {
                    z2 = true;
                    break;
                }
                i2++;
            }
            if (z2) {
                z = true;
                break;
            }
            i++;
        }
        if (z == this.u) {
            return;
        }
        if (z) {
            if (this.p) {
                if (this.t == null) {
                    this.t = new e();
                }
                getViewTreeObserver().addOnPreDrawListener(this.t);
            }
            this.u = true;
            return;
        }
        if (this.p && this.t != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.t);
        }
        this.u = false;
    }

    private static int c(int i) {
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

    private void c() {
        if (Build.VERSION.SDK_INT >= 21) {
            if (v.s(this)) {
                if (this.w == null) {
                    this.w = new r() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.1
                        @Override // androidx.core.view.r
                        public final ac a(View view, ac acVar) {
                            CoordinatorLayout coordinatorLayout = CoordinatorLayout.this;
                            ac acVar2 = acVar;
                            if (!androidx.core.e.a.a(coordinatorLayout.e, acVar)) {
                                coordinatorLayout.e = acVar;
                                boolean z = true;
                                int i = 0;
                                coordinatorLayout.f = acVar != null && acVar.f1974b.g().f1897c > 0;
                                if (coordinatorLayout.f || coordinatorLayout.getBackground() != null) {
                                    z = false;
                                }
                                coordinatorLayout.setWillNotDraw(z);
                                acVar2 = acVar;
                                if (!acVar.f1974b.b()) {
                                    int childCount = coordinatorLayout.getChildCount();
                                    while (true) {
                                        acVar2 = acVar;
                                        if (i >= childCount) {
                                            break;
                                        }
                                        View childAt = coordinatorLayout.getChildAt(i);
                                        acVar = acVar;
                                        if (v.s(childAt)) {
                                            acVar = acVar;
                                            if (((d) childAt.getLayoutParams()).f1663a != null) {
                                                ac a2 = Behavior.a(acVar);
                                                acVar2 = a2;
                                                if (a2.f1974b.b()) {
                                                    break;
                                                }
                                                acVar = a2;
                                            } else {
                                                continue;
                                            }
                                        }
                                        i++;
                                    }
                                }
                                coordinatorLayout.requestLayout();
                            }
                            return acVar2;
                        }
                    };
                }
                v.a(this, this.w);
                setSystemUiVisibility(Constants.SMALL_SIZE_SCREEN);
                return;
            }
            v.a(this, (r) null);
        }
    }

    private static void c(View view, int i) {
        d dVar = (d) view.getLayoutParams();
        if (dVar.i != i) {
            v.f(view, i - dVar.i);
            dVar.i = i;
        }
    }

    private static int d(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 8388661;
        }
        return i2;
    }

    private static d d(View view) {
        d dVar = (d) view.getLayoutParams();
        if (!dVar.f1664b) {
            if (view instanceof a) {
                Behavior a2 = ((a) view).a();
                if (a2 == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                dVar.a(a2);
                dVar.f1664b = true;
            } else {
                Class<?> cls = view.getClass();
                b bVar = null;
                while (cls != null) {
                    b bVar2 = (b) cls.getAnnotation(b.class);
                    bVar = bVar2;
                    if (bVar2 != null) {
                        break;
                    }
                    cls = cls.getSuperclass();
                    bVar = bVar2;
                }
                if (bVar != null) {
                    try {
                        dVar.a((Behavior) bVar.a().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e2) {
                        Log.e("CoordinatorLayout", "Default behavior class " + bVar.a().getName() + " could not be instantiated. Did you forget a default constructor?", e2);
                    }
                }
                dVar.f1664b = true;
            }
        }
        return dVar;
    }

    private static void d(View view, int i) {
        d dVar = (d) view.getLayoutParams();
        if (dVar.j != i) {
            v.e(view, i - dVar.j);
            dVar.j = i;
        }
    }

    private static int e(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 17;
        }
        return i2;
    }

    final void a(int i) {
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        int i3;
        int i4;
        Behavior behavior;
        int f2 = v.f(this);
        int size = this.i.size();
        Rect a2 = a();
        Rect a3 = a();
        Rect a4 = a();
        int i5 = 0;
        while (i5 < size) {
            View view = this.i.get(i5);
            d dVar = (d) view.getLayoutParams();
            if (i == 0 && view.getVisibility() == 8) {
                i2 = i5;
                size = size;
            } else {
                size = size;
                for (int i6 = 0; i6 < i5; i6++) {
                    if (dVar.l == this.i.get(i6)) {
                        d dVar2 = (d) view.getLayoutParams();
                        if (dVar2.k != null) {
                            Rect a5 = a();
                            Rect a6 = a();
                            Rect a7 = a();
                            androidx.coordinatorlayout.widget.b.a(this, dVar2.k, a5);
                            a(view, false, a6);
                            int measuredWidth = view.getMeasuredWidth();
                            int measuredHeight = view.getMeasuredHeight();
                            a(f2, a5, a7, dVar2, measuredWidth, measuredHeight);
                            boolean z4 = (a7.left == a6.left && a7.top == a6.top) ? false : true;
                            a(dVar2, a7, measuredWidth, measuredHeight);
                            int i7 = a7.left - a6.left;
                            int i8 = a7.top - a6.top;
                            if (i7 != 0) {
                                v.f(view, i7);
                            }
                            if (i8 != 0) {
                                v.e(view, i8);
                            }
                            if (z4 && (behavior = dVar2.f1663a) != null) {
                                behavior.a(this, (CoordinatorLayout) view, dVar2.k);
                            }
                            a(a5);
                            a(a6);
                            a(a7);
                        }
                    }
                }
                a(view, true, a3);
                if (dVar.g != 0 && !a3.isEmpty()) {
                    int a8 = androidx.core.view.e.a(dVar.g, f2);
                    int i9 = a8 & 112;
                    if (i9 == 48) {
                        a2.top = Math.max(a2.top, a3.bottom);
                    } else if (i9 == 80) {
                        a2.bottom = Math.max(a2.bottom, getHeight() - a3.top);
                    }
                    int i10 = a8 & 7;
                    if (i10 == 3) {
                        a2.left = Math.max(a2.left, a3.right);
                    } else if (i10 == 5) {
                        a2.right = Math.max(a2.right, getWidth() - a3.left);
                    }
                }
                if (dVar.h != 0 && view.getVisibility() == 0 && v.B(view) && view.getWidth() > 0 && view.getHeight() > 0) {
                    d dVar3 = (d) view.getLayoutParams();
                    Behavior behavior2 = dVar3.f1663a;
                    Rect a9 = a();
                    Rect a10 = a();
                    a10.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                    if (behavior2 == null || !behavior2.a(this, (CoordinatorLayout) view, a9)) {
                        a9.set(a10);
                    } else if (!a10.contains(a9)) {
                        throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + a9.toShortString() + " | Bounds:" + a10.toShortString());
                    }
                    a(a10);
                    if (!a9.isEmpty()) {
                        int a11 = androidx.core.view.e.a(dVar3.h, f2);
                        if ((a11 & 48) != 48 || (i4 = (a9.top - dVar3.topMargin) - dVar3.j) >= a2.top) {
                            z2 = false;
                        } else {
                            d(view, a2.top - i4);
                            z2 = true;
                        }
                        boolean z5 = z2;
                        if ((a11 & 80) == 80) {
                            int height = ((getHeight() - a9.bottom) - dVar3.bottomMargin) + dVar3.j;
                            z5 = z2;
                            if (height < a2.bottom) {
                                d(view, height - a2.bottom);
                                z5 = true;
                            }
                        }
                        if (!z5) {
                            d(view, 0);
                        }
                        if ((a11 & 3) != 3 || (i3 = (a9.left - dVar3.leftMargin) - dVar3.i) >= a2.left) {
                            z3 = false;
                        } else {
                            c(view, a2.left - i3);
                            z3 = true;
                        }
                        boolean z6 = z3;
                        if ((a11 & 5) == 5) {
                            int width = ((getWidth() - a9.right) - dVar3.rightMargin) + dVar3.i;
                            z6 = z3;
                            if (width < a2.right) {
                                c(view, width - a2.right);
                                z6 = true;
                            }
                        }
                        if (!z6) {
                            c(view, 0);
                        }
                    }
                    a(a9);
                }
                if (i != 2) {
                    a4.set(((d) view.getLayoutParams()).o);
                    if (!a4.equals(a3)) {
                        ((d) view.getLayoutParams()).o.set(a3);
                    } else {
                        a4 = a4;
                        i2 = i5;
                    }
                }
                int i11 = i5 + 1;
                while (true) {
                    size = size;
                    a4 = a4;
                    i2 = i5;
                    if (i11 < size) {
                        View view2 = this.i.get(i11);
                        d dVar4 = (d) view2.getLayoutParams();
                        Behavior behavior3 = dVar4.f1663a;
                        if (behavior3 != null && behavior3.a((Behavior) view2, view)) {
                            if (i != 0 || !dVar4.n) {
                                if (i != 2) {
                                    z = behavior3.a(this, (CoordinatorLayout) view2, view);
                                } else {
                                    behavior3.a(this, view);
                                    z = true;
                                }
                                if (i == 1) {
                                    dVar4.n = z;
                                }
                            } else {
                                dVar4.n = false;
                            }
                        }
                        i11++;
                    }
                }
            }
            i5 = i2 + 1;
        }
        a(a2);
        a(a3);
        a(a4);
    }

    public final void a(View view) {
        List b2 = this.j.b(view);
        if (!(b2 == null || b2.isEmpty())) {
            for (int i = 0; i < b2.size(); i++) {
                View view2 = (View) b2.get(i);
                Behavior behavior = ((d) view2.getLayoutParams()).f1663a;
                if (behavior != null) {
                    behavior.a(this, (CoordinatorLayout) view2, view);
                }
            }
        }
    }

    @Override // androidx.core.view.o
    public final void a(View view, int i) {
        this.x.a(i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            d dVar = (d) childAt.getLayoutParams();
            if (dVar.a(i)) {
                Behavior behavior = dVar.f1663a;
                if (behavior != null) {
                    behavior.a(this, (CoordinatorLayout) childAt, view, i);
                }
                dVar.a(i, false);
                dVar.n = false;
            }
        }
        this.s = null;
    }

    public final void a(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // androidx.core.view.o
    public final void a(View view, int i, int i2, int i3, int i4, int i5) {
        a(view, i, i2, i3, i4, 0, this.n);
    }

    @Override // androidx.core.view.p
    public final void a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        int childCount = getChildCount();
        boolean z = false;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            z = z;
            i6 = i6;
            i7 = i7;
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                z = z;
                i6 = i6;
                i7 = i7;
                if (dVar.a(i5)) {
                    Behavior behavior = dVar.f1663a;
                    z = z;
                    i6 = i6;
                    i7 = i7;
                    if (behavior != null) {
                        int[] iArr2 = this.m;
                        iArr2[0] = 0;
                        iArr2[1] = 0;
                        behavior.a(this, childAt, view, i, i2, i3, i4, i5, iArr2);
                        int[] iArr3 = this.m;
                        i6 = i3 > 0 ? Math.max(i6, iArr3[0]) : Math.min(i6, iArr3[0]);
                        i7 = i4 > 0 ? Math.max(i7, this.m[1]) : Math.min(i7, this.m[1]);
                        z = true;
                    }
                }
            }
        }
        iArr[0] = iArr[0] + i6;
        iArr[1] = iArr[1] + i7;
        if (z) {
            a(1);
        }
    }

    @Override // androidx.core.view.o
    public final void a(View view, int i, int i2, int[] iArr, int i3) {
        int childCount = getChildCount();
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                z = z;
                i4 = i4;
                i5 = i5;
                if (dVar.a(i3)) {
                    Behavior behavior = dVar.f1663a;
                    z = z;
                    i4 = i4;
                    i5 = i5;
                    if (behavior != null) {
                        int[] iArr2 = this.m;
                        iArr2[0] = 0;
                        iArr2[1] = 0;
                        behavior.a(this, (CoordinatorLayout) childAt, view, i, i2, iArr2, i3);
                        int[] iArr3 = this.m;
                        i4 = i > 0 ? Math.max(i4, iArr3[0]) : Math.min(i4, iArr3[0]);
                        int[] iArr4 = this.m;
                        i5 = i2 > 0 ? Math.max(i5, iArr4[1]) : Math.min(i5, iArr4[1]);
                        z = true;
                    }
                }
            } else {
                i5 = i5;
                i4 = i4;
                z = z;
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
        if (z) {
            a(1);
        }
    }

    public final boolean a(View view, int i, int i2) {
        Rect a2 = a();
        androidx.coordinatorlayout.widget.b.a(this, view, a2);
        try {
            return a2.contains(i, i2);
        } finally {
            a(a2);
        }
    }

    @Override // androidx.core.view.o
    public final boolean a(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            z = z;
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                Behavior behavior = dVar.f1663a;
                if (behavior != null) {
                    boolean a2 = behavior.a(this, (CoordinatorLayout) childAt, view, view2, i, i2);
                    z |= a2;
                    dVar.a(i2, a2);
                } else {
                    dVar.a(i2, false);
                    z = z;
                }
            }
        }
        return z;
    }

    public final List<View> b(View view) {
        androidx.coordinatorlayout.widget.a<View> aVar = this.j;
        int size = aVar.f1669b.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            ArrayList<View> c2 = aVar.f1669b.c(i);
            arrayList = arrayList;
            if (c2 != null) {
                arrayList = arrayList;
                if (c2.contains(view)) {
                    arrayList = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(aVar.f1669b.b(i));
                }
            }
        }
        this.l.clear();
        if (arrayList != null) {
            this.l.addAll(arrayList);
        }
        return this.l;
    }

    public final void b(View view, int i) {
        Rect a2;
        Rect a3;
        d dVar = (d) view.getLayoutParams();
        int i2 = 0;
        if (dVar.k == null && dVar.f != -1) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        } else if (dVar.k != null) {
            View view2 = dVar.k;
            a2 = a();
            a3 = a();
            try {
                androidx.coordinatorlayout.widget.b.a(this, view2, a2);
                d dVar2 = (d) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                a(i, a2, a3, dVar2, measuredWidth, measuredHeight);
                a(dVar2, a3, measuredWidth, measuredHeight);
                view.layout(a3.left, a3.top, a3.right, a3.bottom);
            } finally {
                a(a2);
                a(a3);
            }
        } else if (dVar.e >= 0) {
            int i3 = dVar.e;
            d dVar3 = (d) view.getLayoutParams();
            int a4 = androidx.core.view.e.a(d(dVar3.f1665c), i);
            int i4 = a4 & 7;
            int i5 = a4 & 112;
            int width = getWidth();
            int height = getHeight();
            int measuredWidth2 = view.getMeasuredWidth();
            int measuredHeight2 = view.getMeasuredHeight();
            int i6 = i3;
            if (i == 1) {
                i6 = width - i3;
            }
            int b2 = b(i6) - measuredWidth2;
            if (i4 == 1) {
                b2 += measuredWidth2 / 2;
            } else if (i4 == 5) {
                b2 += measuredWidth2;
            }
            if (i5 == 16) {
                i2 = 0 + (measuredHeight2 / 2);
            } else if (i5 == 80) {
                i2 = measuredHeight2 + 0;
            }
            int max = Math.max(getPaddingLeft() + dVar3.leftMargin, Math.min(b2, ((width - getPaddingRight()) - measuredWidth2) - dVar3.rightMargin));
            int max2 = Math.max(getPaddingTop() + dVar3.topMargin, Math.min(i2, ((height - getPaddingBottom()) - measuredHeight2) - dVar3.bottomMargin));
            view.layout(max, max2, measuredWidth2 + max, measuredHeight2 + max2);
        } else {
            d dVar4 = (d) view.getLayoutParams();
            a2 = a();
            a2.set(getPaddingLeft() + dVar4.leftMargin, getPaddingTop() + dVar4.topMargin, (getWidth() - getPaddingRight()) - dVar4.rightMargin, (getHeight() - getPaddingBottom()) - dVar4.bottomMargin);
            if (this.e != null && v.s(this) && !v.s(view)) {
                a2.left += this.e.f1974b.g().f1896b;
                a2.top += this.e.f1974b.g().f1897c;
                a2.right -= this.e.f1974b.g().f1898d;
                a2.bottom -= this.e.f1974b.g().e;
            }
            a3 = a();
            androidx.core.view.e.a(c(dVar4.f1665c), view.getMeasuredWidth(), view.getMeasuredHeight(), a2, a3, i);
            view.layout(a3.left, a3.top, a3.right, a3.bottom);
        }
    }

    @Override // androidx.core.view.o
    public final void b(View view, View view2, int i, int i2) {
        this.x.a(i, i2);
        this.s = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            ((d) getChildAt(i3).getLayoutParams()).a(i2);
        }
    }

    public final List<View> c(View view) {
        List b2 = this.j.b(view);
        this.l.clear();
        if (b2 != null) {
            this.l.addAll(b2);
        }
        return this.l;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof d) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        view.getLayoutParams();
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.v;
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

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new d(-2, -2);
    }

    @Override // android.view.ViewGroup
    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new d(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof d ? new d((d) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new d((ViewGroup.MarginLayoutParams) layoutParams) : new d(layoutParams);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.x.a();
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
        a(false);
        if (this.u) {
            if (this.t == null) {
                this.t = new e();
            }
            getViewTreeObserver().addOnPreDrawListener(this.t);
        }
        if (this.e == null && v.s(this)) {
            v.r(this);
        }
        this.p = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a(false);
        if (this.u && this.t != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.t);
        }
        View view = this.s;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.p = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f && this.v != null) {
            ac acVar = this.e;
            int i = acVar != null ? acVar.f1974b.g().f1897c : 0;
            if (i > 0) {
                this.v.setBounds(0, 0, getWidth(), i);
                this.v.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            a(true);
        }
        boolean a2 = a(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            a(true);
        }
        return a2;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Behavior behavior;
        int f2 = v.f(this);
        int size = this.i.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.i.get(i5);
            if (view.getVisibility() != 8 && ((behavior = ((d) view.getLayoutParams()).f1663a) == null || !behavior.a(this, (CoordinatorLayout) view, f2))) {
                b(view, f2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00fb, code lost:
        if (r12 != false) goto L_0x01b2;
     */
    /* JADX WARN: Removed duplicated region for block: B:181:0x02d2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0243  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 1375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                ((d) childAt.getLayoutParams()).a(0);
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public boolean onNestedPreFling(View view, float f2, float f3) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            z = z;
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                z = z;
                if (dVar.a(0)) {
                    Behavior behavior = dVar.f1663a;
                    z = z;
                    if (behavior != null) {
                        z |= behavior.a(this, childAt, view, f2, f3);
                    }
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        a(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        a(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onNestedScrollAccepted(View view, View view2, int i) {
        b(view, view2, i, 0);
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
        SparseArray<Parcelable> sparseArray = savedState.behaviorStates;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = d(childAt).f1663a;
            if (!(id == -1 || behavior == null || (parcelable2 = sparseArray.get(id)) == null)) {
                behavior.a(this, (CoordinatorLayout) childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable b2;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = ((d) childAt.getLayoutParams()).f1663a;
            if (!(id == -1 || behavior == null || (b2 = behavior.b(this, (CoordinatorLayout) childAt)) == null)) {
                sparseArray.append(id, b2);
            }
        }
        savedState.behaviorStates = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return a(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onStopNestedScroll(View view) {
        a(view, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r12 != false) goto L_0x001f;
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
            android.view.View r0 = r0.r
            if (r0 != 0) goto L_0x001d
            r0 = r9
            r1 = r10
            r2 = 1
            boolean r0 = r0.a(r1, r2)
            r12 = r0
            r0 = r12
            r13 = r0
            r0 = r12
            if (r0 == 0) goto L_0x004c
            goto L_0x001f
        L_0x001d:
            r0 = 0
            r12 = r0
        L_0x001f:
            r0 = r9
            android.view.View r0 = r0.r
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$d r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout.d) r0
            androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r0 = r0.f1663a
            r14 = r0
            r0 = r12
            r13 = r0
            r0 = r14
            if (r0 == 0) goto L_0x004c
            r0 = r14
            r1 = r9
            r2 = r9
            android.view.View r2 = r2.r
            r3 = r10
            boolean r0 = r0.b(r1, r2, r3)
            r15 = r0
            r0 = r12
            r13 = r0
            r0 = r15
            r12 = r0
            goto L_0x004e
        L_0x004c:
            r0 = 0
            r12 = r0
        L_0x004e:
            r0 = r9
            android.view.View r0 = r0.r
            r16 = r0
            r0 = 0
            r14 = r0
            r0 = r16
            if (r0 != 0) goto L_0x006b
            r0 = r12
            r1 = r9
            r2 = r10
            boolean r1 = super.onTouchEvent(r2)
            r0 = r0 | r1
            r15 = r0
            r0 = r14
            r10 = r0
            goto L_0x0090
        L_0x006b:
            r0 = r12
            r15 = r0
            r0 = r14
            r10 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0090
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
        L_0x0090:
            r0 = r10
            if (r0 == 0) goto L_0x0098
            r0 = r10
            r0.recycle()
        L_0x0098:
            r0 = r11
            r1 = 1
            if (r0 == r1) goto L_0x00a2
            r0 = r11
            r1 = 3
            if (r0 != r1) goto L_0x00a7
        L_0x00a2:
            r0 = r9
            r1 = 0
            r0.a(r1)
        L_0x00a7:
            r0 = r15
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        Behavior behavior = ((d) view.getLayoutParams()).f1663a;
        if (behavior == null || !behavior.a(this, (CoordinatorLayout) view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z && !this.o) {
            a(false);
            this.o = true;
        }
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        c();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.g = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.v;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.v = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.v.setState(getDrawableState());
                }
                androidx.core.graphics.drawable.a.b(this.v, v.f(this));
                this.v.setVisible(getVisibility() == 0, false);
                this.v.setCallback(this);
            }
            v.d(this);
        }
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(int i) {
        setStatusBarBackground(i != 0 ? androidx.core.content.b.a(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.v;
        if (drawable != null && drawable.isVisible() != z) {
            this.v.setVisible(z, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.v;
    }
}
