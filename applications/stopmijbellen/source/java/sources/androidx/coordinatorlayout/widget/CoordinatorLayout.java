package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.google.android.gms.internal.ads.C1676a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p001a0.C0005a;
import p001a0.C0006b;
import p015b0.C0713a;
import p066d0.C2134a;
import p098g0.C2789a;
import p152l0.C3428c;
import p152l0.C3429d;
import p163m0.AbstractC3577j;
import p163m0.AbstractC3578k;
import p163m0.AbstractC3580m;
import p163m0.C3551b0;
import p163m0.C3579l;
import p163m0.C3589v;
import p163m0.C3611y;
import p216r0.AbstractC4178a;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout.class */
public class CoordinatorLayout extends ViewGroup implements AbstractC3577j, AbstractC3578k {

    /* renamed from: t */
    public static final String f1432t;

    /* renamed from: u */
    public static final Class<?>[] f1433u;

    /* renamed from: v */
    public static final ThreadLocal<Map<String, Constructor<AbstractC0321c>>> f1434v;

    /* renamed from: w */
    public static final Comparator<View> f1435w;

    /* renamed from: x */
    public static final C3428c f1436x;

    /* renamed from: g */
    public boolean f1443g;

    /* renamed from: h */
    public boolean f1444h;

    /* renamed from: i */
    public int[] f1445i;

    /* renamed from: j */
    public View f1446j;

    /* renamed from: k */
    public View f1447k;

    /* renamed from: l */
    public ViewTreeObserver$OnPreDrawListenerC0325g f1448l;

    /* renamed from: m */
    public boolean f1449m;

    /* renamed from: n */
    public C3551b0 f1450n;

    /* renamed from: o */
    public boolean f1451o;

    /* renamed from: p */
    public Drawable f1452p;

    /* renamed from: q */
    public ViewGroup.OnHierarchyChangeListener f1453q;

    /* renamed from: r */
    public AbstractC3580m f1454r;

    /* renamed from: a */
    public final List<View> f1437a = new ArrayList();

    /* renamed from: b */
    public final C0005a<View> f1438b = new C0005a<>();

    /* renamed from: c */
    public final List<View> f1439c = new ArrayList();

    /* renamed from: d */
    public final List<View> f1440d = new ArrayList();

    /* renamed from: e */
    public final int[] f1441e = new int[2];

    /* renamed from: f */
    public final int[] f1442f = new int[2];

    /* renamed from: s */
    public final C3579l f1455s = new C3579l();

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$a.class */
    public class C0319a implements AbstractC3580m {
        public C0319a() {
            CoordinatorLayout.this = r4;
        }

        @Override // p163m0.AbstractC3580m
        /* renamed from: a */
        public C3551b0 mo686a(View view, C3551b0 c3551b0) {
            CoordinatorLayout coordinatorLayout = CoordinatorLayout.this;
            if (!Objects.equals(coordinatorLayout.f1450n, c3551b0)) {
                coordinatorLayout.f1450n = c3551b0;
                boolean z = c3551b0.m2178e() > 0;
                coordinatorLayout.f1451o = z;
                coordinatorLayout.setWillNotDraw(!z && coordinatorLayout.getBackground() == null);
                if (!c3551b0.m2176g()) {
                    int childCount = coordinatorLayout.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        View childAt = coordinatorLayout.getChildAt(i);
                        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                        if (C3589v.C3593d.m2092b(childAt) && ((C0324f) childAt.getLayoutParams()).f1458a != null && c3551b0.m2176g()) {
                            break;
                        }
                    }
                }
                coordinatorLayout.requestLayout();
            }
            return c3551b0;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$b.class */
    public interface AbstractC0320b {
        AbstractC0321c getBehavior();
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$c.class */
    public static abstract class AbstractC0321c<V extends View> {
        public AbstractC0321c() {
        }

        public AbstractC0321c(Context context, AttributeSet attributeSet) {
        }

        /* renamed from: a */
        public boolean mo4573a(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }

        /* renamed from: b */
        public boolean mo4481b(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        /* renamed from: c */
        public void mo4487c(C0324f c0324f) {
        }

        /* renamed from: d */
        public boolean mo4490d(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        /* renamed from: e */
        public void mo4770e(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        /* renamed from: f */
        public void mo4741f() {
        }

        /* renamed from: g */
        public boolean mo2988g(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: h */
        public boolean mo2976h(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        /* renamed from: i */
        public boolean mo2981i(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        /* renamed from: j */
        public boolean mo4740j(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        /* renamed from: k */
        public void mo4739k(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        }

        /* renamed from: l */
        public void mo4738l(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
        }

        /* renamed from: m */
        public boolean mo4769m(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        /* renamed from: n */
        public void mo4737n(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        /* renamed from: o */
        public Parcelable mo4736o(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        /* renamed from: p */
        public boolean mo4735p(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            return false;
        }

        /* renamed from: q */
        public void mo4734q(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        }

        /* renamed from: r */
        public boolean mo2987r(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$d.class */
    public @interface AbstractC0322d {
        Class<? extends AbstractC0321c> value();
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$e.class */
    public class ViewGroup$OnHierarchyChangeListenerC0323e implements ViewGroup.OnHierarchyChangeListener {
        public ViewGroup$OnHierarchyChangeListenerC0323e() {
            CoordinatorLayout.this = r4;
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f1453q;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.m8329r(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f1453q;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$f */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$f.class */
    public static class C0324f extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public AbstractC0321c f1458a;

        /* renamed from: b */
        public boolean f1459b;

        /* renamed from: c */
        public int f1460c;

        /* renamed from: d */
        public int f1461d;

        /* renamed from: e */
        public int f1462e;

        /* renamed from: f */
        public int f1463f;

        /* renamed from: g */
        public int f1464g;

        /* renamed from: h */
        public int f1465h;

        /* renamed from: i */
        public int f1466i;

        /* renamed from: j */
        public int f1467j;

        /* renamed from: k */
        public View f1468k;

        /* renamed from: l */
        public View f1469l;

        /* renamed from: m */
        public boolean f1470m;

        /* renamed from: n */
        public boolean f1471n;

        /* renamed from: o */
        public boolean f1472o;

        /* renamed from: p */
        public boolean f1473p;

        /* renamed from: q */
        public final Rect f1474q;

        public C0324f(int i, int i2) {
            super(i, i2);
            this.f1459b = false;
            this.f1460c = 0;
            this.f1461d = 0;
            this.f1462e = -1;
            this.f1463f = -1;
            this.f1464g = 0;
            this.f1465h = 0;
            this.f1474q = new Rect();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C0324f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            AbstractC0321c abstractC0321c;
            String str;
            this.f1459b = false;
            this.f1460c = 0;
            this.f1461d = 0;
            this.f1462e = -1;
            this.f1463f = -1;
            this.f1464g = 0;
            this.f1465h = 0;
            this.f1474q = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0713a.f2767s);
            this.f1460c = obtainStyledAttributes.getInteger(0, 0);
            this.f1463f = obtainStyledAttributes.getResourceId(1, -1);
            this.f1461d = obtainStyledAttributes.getInteger(2, 0);
            this.f1462e = obtainStyledAttributes.getInteger(6, -1);
            this.f1464g = obtainStyledAttributes.getInt(5, 0);
            this.f1465h = obtainStyledAttributes.getInt(4, 0);
            boolean hasValue = obtainStyledAttributes.hasValue(3);
            this.f1459b = hasValue;
            if (hasValue) {
                String string = obtainStyledAttributes.getString(3);
                String str2 = CoordinatorLayout.f1432t;
                if (TextUtils.isEmpty(string)) {
                    abstractC0321c = null;
                } else {
                    if (string.startsWith(".")) {
                        str = context.getPackageName() + string;
                    } else if (string.indexOf(46) >= 0) {
                        str = string;
                    } else {
                        String str3 = CoordinatorLayout.f1432t;
                        str = string;
                        if (!TextUtils.isEmpty(str3)) {
                            str = str3 + '.' + string;
                        }
                    }
                    try {
                        ThreadLocal<Map<String, Constructor<AbstractC0321c>>> threadLocal = CoordinatorLayout.f1434v;
                        Map<String, Constructor<AbstractC0321c>> map = threadLocal.get();
                        Map<String, Constructor<AbstractC0321c>> map2 = map;
                        if (map == null) {
                            map2 = new HashMap<>();
                            threadLocal.set(map2);
                        }
                        Constructor<AbstractC0321c> constructor = map2.get(str);
                        Constructor<AbstractC0321c> constructor2 = constructor;
                        if (constructor == null) {
                            constructor2 = Class.forName(str, false, context.getClassLoader()).getConstructor(CoordinatorLayout.f1433u);
                            constructor2.setAccessible(true);
                            map2.put(str, constructor2);
                        }
                        abstractC0321c = constructor2.newInstance(context, attributeSet);
                    } catch (Exception e) {
                        throw new RuntimeException(C1676a.m4789h("Could not inflate Behavior subclass ", str), e);
                    }
                }
                this.f1458a = abstractC0321c;
            }
            obtainStyledAttributes.recycle();
            AbstractC0321c abstractC0321c2 = this.f1458a;
            if (abstractC0321c2 != null) {
                abstractC0321c2.mo4487c(this);
            }
        }

        public C0324f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1459b = false;
            this.f1460c = 0;
            this.f1461d = 0;
            this.f1462e = -1;
            this.f1463f = -1;
            this.f1464g = 0;
            this.f1465h = 0;
            this.f1474q = new Rect();
        }

        public C0324f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1459b = false;
            this.f1460c = 0;
            this.f1461d = 0;
            this.f1462e = -1;
            this.f1463f = -1;
            this.f1464g = 0;
            this.f1465h = 0;
            this.f1474q = new Rect();
        }

        public C0324f(C0324f c0324f) {
            super((ViewGroup.MarginLayoutParams) c0324f);
            this.f1459b = false;
            this.f1460c = 0;
            this.f1461d = 0;
            this.f1462e = -1;
            this.f1463f = -1;
            this.f1464g = 0;
            this.f1465h = 0;
            this.f1474q = new Rect();
        }

        /* renamed from: a */
        public boolean m8320a(int i) {
            if (i != 0) {
                if (i == 1) {
                    return this.f1472o;
                }
                return false;
            }
            return this.f1471n;
        }

        /* renamed from: b */
        public void m8319b(int i, boolean z) {
            if (i == 0) {
                this.f1471n = z;
            } else if (i != 1) {
            } else {
                this.f1472o = z;
            }
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$g */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$g.class */
    public class ViewTreeObserver$OnPreDrawListenerC0325g implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserver$OnPreDrawListenerC0325g() {
            CoordinatorLayout.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.m8329r(0);
            return true;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$h */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$h.class */
    public static class C0326h extends AbstractC4178a {
        public static final Parcelable.Creator<C0326h> CREATOR = new C0327a();

        /* renamed from: c */
        public SparseArray<Parcelable> f1476c;

        /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$h$a */
        /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$h$a.class */
        public static final class C0327a implements Parcelable.ClassLoaderCreator<C0326h> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new C0326h(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public C0326h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0326h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new C0326h[i];
            }
        }

        public C0326h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f1476c = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.f1476c.append(iArr[i], readParcelableArray[i]);
            }
        }

        public C0326h(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // p216r0.AbstractC4178a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f13167a, i);
            SparseArray<Parcelable> sparseArray = this.f1476c;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.f1476c.keyAt(i2);
                parcelableArr[i2] = this.f1476c.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$i */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$i.class */
    public static class C0328i implements Comparator<View> {
        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            float m2038m = C3589v.C3598i.m2038m(view);
            float m2038m2 = C3589v.C3598i.m2038m(view2);
            return m2038m > m2038m2 ? -1 : m2038m < m2038m2 ? 1 : 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f1432t = r0 != null ? r0.getName() : null;
        f1435w = new C0328i();
        f1433u = new Class[]{Context.class, AttributeSet.class};
        f1434v = new ThreadLocal<>();
        f1436x = new C3429d(12);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 2130968883);
        int[] iArr;
        int[] iArr2 = C0713a.f2766r;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr2, 2130968883, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr2, attributeSet, obtainStyledAttributes, 2130968883, 0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.f1445i = resources.getIntArray(resourceId);
            float f = resources.getDisplayMetrics().density;
            int length = this.f1445i.length;
            for (int i = 0; i < length; i++) {
                this.f1445i[i] = (int) (iArr[i] * f);
            }
        }
        this.f1452p = obtainStyledAttributes.getDrawable(1);
        obtainStyledAttributes.recycle();
        m8321z();
        super.setOnHierarchyChangeListener(new ViewGroup$OnHierarchyChangeListenerC0323e());
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (C3589v.C3593d.m2091c(this) == 0) {
            C3589v.C3593d.m2075s(this, 1);
        }
    }

    /* renamed from: a */
    public static Rect m8340a() {
        Rect rect = (Rect) f1436x.mo2303a();
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
        }
        return rect2;
    }

    /* renamed from: b */
    public final void m8339b(C0324f c0324f, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0324f).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - ((ViewGroup.MarginLayoutParams) c0324f).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0324f).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - ((ViewGroup.MarginLayoutParams) c0324f).bottomMargin));
        rect.set(max, max2, i + max, i2 + max2);
    }

    /* renamed from: c */
    public void m8338c(View view) {
        ArrayList<View> orDefault = this.f1438b.f3b.getOrDefault(view, null);
        if (orDefault == null || orDefault.isEmpty()) {
            return;
        }
        for (int i = 0; i < orDefault.size(); i++) {
            View view2 = orDefault.get(i);
            AbstractC0321c abstractC0321c = ((C0324f) view2.getLayoutParams()).f1458a;
            if (abstractC0321c != null) {
                abstractC0321c.mo4490d(this, view2, view);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0324f) && super.checkLayoutParams(layoutParams);
    }

    /* renamed from: d */
    public void m8337d(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            m8334g(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        AbstractC0321c abstractC0321c = ((C0324f) view.getLayoutParams()).f1458a;
        if (abstractC0321c != null) {
            Objects.requireNonNull(abstractC0321c);
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1452p;
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

    /* renamed from: e */
    public List<View> m8336e(View view) {
        C0005a<View> c0005a = this.f1438b;
        int i = c0005a.f3b.f13365c;
        ArrayList arrayList = null;
        int i2 = 0;
        while (i2 < i) {
            ArrayList<View> m1192k = c0005a.f3b.m1192k(i2);
            ArrayList arrayList2 = arrayList;
            if (m1192k != null) {
                arrayList2 = arrayList;
                if (m1192k.contains(view)) {
                    arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(c0005a.f3b.m1195h(i2));
                }
            }
            i2++;
            arrayList = arrayList2;
        }
        this.f1440d.clear();
        if (arrayList != null) {
            this.f1440d.addAll(arrayList);
        }
        return this.f1440d;
    }

    /* renamed from: f */
    public List<View> m8335f(View view) {
        ArrayList<View> orDefault = this.f1438b.f3b.getOrDefault(view, null);
        this.f1440d.clear();
        if (orDefault != null) {
            this.f1440d.addAll(orDefault);
        }
        return this.f1440d;
    }

    /* renamed from: g */
    public void m8334g(View view, Rect rect) {
        ThreadLocal<Matrix> threadLocal = C0006b.f6a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal<Matrix> threadLocal2 = C0006b.f6a;
        Matrix matrix = threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        C0006b.m8931a(this, view, matrix);
        ThreadLocal<RectF> threadLocal3 = C0006b.f7b;
        RectF rectF = threadLocal3.get();
        RectF rectF2 = rectF;
        if (rectF == null) {
            rectF2 = new RectF();
            threadLocal3.set(rectF2);
        }
        rectF2.set(rect);
        matrix.mapRect(rectF2);
        rect.set((int) (rectF2.left + 0.5f), (int) (rectF2.top + 0.5f), (int) (rectF2.right + 0.5f), (int) (rectF2.bottom + 0.5f));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0324f(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0324f(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0324f ? new C0324f((C0324f) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0324f((ViewGroup.MarginLayoutParams) layoutParams) : new C0324f(layoutParams);
    }

    public final List<View> getDependencySortedChildren() {
        m8325v();
        return Collections.unmodifiableList(this.f1437a);
    }

    public final C3551b0 getLastWindowInsets() {
        return this.f1450n;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f1455s.m2128a();
    }

    public Drawable getStatusBarBackground() {
        return this.f1452p;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: h */
    public void mo445h(View view, View view2, int i, int i2) {
        C3579l c3579l = this.f1455s;
        if (i2 == 1) {
            c3579l.f11775b = i;
        } else {
            c3579l.f11774a = i;
        }
        this.f1447k = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            ((C0324f) getChildAt(i3).getLayoutParams()).m8320a(i2);
        }
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: i */
    public void mo444i(View view, int i) {
        C3579l c3579l = this.f1455s;
        if (i == 1) {
            c3579l.f11775b = 0;
        } else {
            c3579l.f11774a = 0;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            C0324f c0324f = (C0324f) childAt.getLayoutParams();
            if (c0324f.m8320a(i)) {
                AbstractC0321c abstractC0321c = c0324f.f1458a;
                if (abstractC0321c != null) {
                    abstractC0321c.mo4734q(this, childAt, view, i);
                }
                c0324f.m8319b(i, false);
                c0324f.f1473p = false;
            }
        }
        this.f1447k = null;
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: j */
    public void mo443j(View view, int i, int i2, int[] iArr, int i3) {
        int i4;
        int i5;
        int i6;
        int childCount = getChildCount();
        boolean z = false;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            i4 = i9;
            if (i7 >= childCount) {
                break;
            }
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() == 8) {
                i6 = i8;
                i5 = i4;
            } else {
                C0324f c0324f = (C0324f) childAt.getLayoutParams();
                if (!c0324f.m8320a(i3)) {
                    i6 = i8;
                    i5 = i4;
                } else {
                    AbstractC0321c abstractC0321c = c0324f.f1458a;
                    i6 = i8;
                    i5 = i4;
                    if (abstractC0321c != null) {
                        int[] iArr2 = this.f1441e;
                        iArr2[0] = 0;
                        iArr2[1] = 0;
                        abstractC0321c.mo4739k(this, childAt, view, i, i2, iArr2, i3);
                        int[] iArr3 = this.f1441e;
                        int max = i > 0 ? Math.max(i8, iArr3[0]) : Math.min(i8, iArr3[0]);
                        int[] iArr4 = this.f1441e;
                        i5 = i2 > 0 ? Math.max(i4, iArr4[1]) : Math.min(i4, iArr4[1]);
                        z = true;
                        i6 = max;
                    }
                }
            }
            i7++;
            i8 = i6;
            i9 = i5;
        }
        iArr[0] = i8;
        iArr[1] = i4;
        if (z) {
            m8329r(1);
        }
    }

    /* renamed from: k */
    public final void m8333k(int i, Rect rect, Rect rect2, C0324f c0324f, int i2, int i3) {
        int i4;
        int i5;
        int i6 = c0324f.f1460c;
        int i7 = i6;
        if (i6 == 0) {
            i7 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i7, i);
        int i8 = c0324f.f1461d;
        int i9 = i8;
        if ((i8 & 7) == 0) {
            i9 = i8 | 8388611;
        }
        int i10 = i9;
        if ((i9 & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 0) {
            i10 = i9 | 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i10, i);
        int i11 = absoluteGravity & 7;
        int i12 = absoluteGravity & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle;
        int i13 = absoluteGravity2 & 7;
        int i14 = absoluteGravity2 & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle;
        int width = i13 != 1 ? i13 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int height = i14 != 16 ? i14 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i11 != 1) {
            i4 = width;
            if (i11 != 5) {
                i4 = width - i2;
            }
        } else {
            i4 = width - (i2 / 2);
        }
        if (i12 != 16) {
            i5 = height;
            if (i12 != 80) {
                i5 = height - i3;
            }
        } else {
            i5 = height - (i3 / 2);
        }
        rect2.set(i4, i5, i2 + i4, i3 + i5);
    }

    /* renamed from: l */
    public final int m8332l(int i) {
        int[] iArr = this.f1445i;
        if (iArr == null) {
            toString();
            return 0;
        } else if (i >= 0 && i < iArr.length) {
            return iArr[i];
        } else {
            toString();
            return 0;
        }
    }

    @Override // p163m0.AbstractC3578k
    /* renamed from: m */
    public void mo441m(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        int i6;
        int i7;
        int i8;
        int childCount = getChildCount();
        boolean z = false;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            i6 = i11;
            if (i9 >= childCount) {
                break;
            }
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 8) {
                i8 = i10;
                i7 = i6;
            } else {
                C0324f c0324f = (C0324f) childAt.getLayoutParams();
                if (!c0324f.m8320a(i5)) {
                    i8 = i10;
                    i7 = i6;
                } else {
                    AbstractC0321c abstractC0321c = c0324f.f1458a;
                    i8 = i10;
                    i7 = i6;
                    if (abstractC0321c != null) {
                        int[] iArr2 = this.f1441e;
                        iArr2[0] = 0;
                        iArr2[1] = 0;
                        abstractC0321c.mo4738l(this, childAt, view, i, i2, i3, i4, i5, iArr2);
                        int[] iArr3 = this.f1441e;
                        i8 = i3 > 0 ? Math.max(i10, iArr3[0]) : Math.min(i10, iArr3[0]);
                        i7 = i4 > 0 ? Math.max(i6, this.f1441e[1]) : Math.min(i6, this.f1441e[1]);
                        z = true;
                    }
                }
            }
            i9++;
            i10 = i8;
            i11 = i7;
        }
        iArr[0] = iArr[0] + i10;
        iArr[1] = iArr[1] + i6;
        if (z) {
            m8329r(1);
        }
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: n */
    public void mo440n(View view, int i, int i2, int i3, int i4, int i5) {
        mo441m(view, i, i2, i3, i4, 0, this.f1442f);
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: o */
    public boolean mo439o(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                C0324f c0324f = (C0324f) childAt.getLayoutParams();
                AbstractC0321c abstractC0321c = c0324f.f1458a;
                if (abstractC0321c != null) {
                    boolean mo4735p = abstractC0321c.mo4735p(this, childAt, view, view2, i, i2);
                    z |= mo4735p;
                    c0324f.m8319b(i2, mo4735p);
                } else {
                    c0324f.m8319b(i2, false);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m8324w(false);
        if (this.f1449m) {
            if (this.f1448l == null) {
                this.f1448l = new ViewTreeObserver$OnPreDrawListenerC0325g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1448l);
        }
        if (this.f1450n == null) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (C3589v.C3593d.m2092b(this)) {
                C3589v.C3597h.m2051c(this);
            }
        }
        this.f1444h = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m8324w(false);
        if (this.f1449m && this.f1448l != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1448l);
        }
        View view = this.f1447k;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f1444h = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f1451o || this.f1452p == null) {
            return;
        }
        C3551b0 c3551b0 = this.f1450n;
        int m2178e = c3551b0 != null ? c3551b0.m2178e() : 0;
        if (m2178e <= 0) {
            return;
        }
        this.f1452p.setBounds(0, 0, getWidth(), m2178e);
        this.f1452p.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m8324w(true);
        }
        boolean m8326u = m8326u(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            m8324w(true);
        }
        return m8326u;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        AbstractC0321c abstractC0321c;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        int m2071d = C3589v.C3594e.m2071d(this);
        int size = this.f1437a.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.f1437a.get(i5);
            if (view.getVisibility() != 8 && ((abstractC0321c = ((C0324f) view.getLayoutParams()).f1458a) == null || !abstractC0321c.mo2976h(this, view, m2071d))) {
                m8328s(view, m2071d);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        int i4;
        int i5;
        AbstractC0321c abstractC0321c;
        boolean z2;
        m8325v();
        int childCount = getChildCount();
        int i6 = 0;
        while (true) {
            if (i6 >= childCount) {
                z = false;
                break;
            }
            View childAt = getChildAt(i6);
            C0005a<View> c0005a = this.f1438b;
            int i7 = c0005a.f3b.f13365c;
            int i8 = 0;
            while (true) {
                if (i8 >= i7) {
                    z2 = false;
                    break;
                }
                ArrayList<View> m1192k = c0005a.f3b.m1192k(i8);
                if (m1192k != null && m1192k.contains(childAt)) {
                    z2 = true;
                    break;
                }
                i8++;
            }
            if (z2) {
                z = true;
                break;
            }
            i6++;
        }
        if (z != this.f1449m) {
            if (z) {
                if (this.f1444h) {
                    if (this.f1448l == null) {
                        this.f1448l = new ViewTreeObserver$OnPreDrawListenerC0325g();
                    }
                    getViewTreeObserver().addOnPreDrawListener(this.f1448l);
                }
                this.f1449m = true;
            } else {
                if (this.f1444h && this.f1448l != null) {
                    getViewTreeObserver().removeOnPreDrawListener(this.f1448l);
                }
                this.f1449m = false;
            }
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        int m2071d = C3589v.C3594e.m2071d(this);
        boolean z3 = m2071d == 1;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z4 = this.f1450n != null && C3589v.C3593d.m2092b(this);
        int size3 = this.f1437a.size();
        int i9 = 0;
        int i10 = 0;
        int i11 = paddingLeft;
        while (true) {
            int i12 = i11;
            if (i10 >= size3) {
                setMeasuredDimension(View.resolveSizeAndState(suggestedMinimumWidth, i, (-16777216) & i9), View.resolveSizeAndState(suggestedMinimumHeight, i2, i9 << 16));
                return;
            }
            View view = this.f1437a.get(i10);
            if (view.getVisibility() != 8) {
                C0324f c0324f = (C0324f) view.getLayoutParams();
                int i13 = c0324f.f1462e;
                if (i13 >= 0 && mode != 0) {
                    int m8332l = m8332l(i13);
                    int i14 = c0324f.f1460c;
                    int i15 = i14;
                    if (i14 == 0) {
                        i15 = 8388661;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i15, m2071d) & 7;
                    if ((absoluteGravity == 3 && !z3) || (absoluteGravity == 5 && z3)) {
                        i3 = Math.max(0, (size - paddingRight) - m8332l);
                    } else if ((absoluteGravity == 5 && !z3) || (absoluteGravity == 3 && z3)) {
                        i3 = Math.max(0, m8332l - i12);
                    }
                    int i16 = i9;
                    if (z4 || C3589v.C3593d.m2092b(view)) {
                        i5 = i;
                        i4 = i2;
                    } else {
                        int m2180c = this.f1450n.m2180c();
                        int m2179d = this.f1450n.m2179d();
                        int m2178e = this.f1450n.m2178e();
                        int m2181b = this.f1450n.m2181b();
                        i5 = View.MeasureSpec.makeMeasureSpec(size - (m2179d + m2180c), mode);
                        i4 = View.MeasureSpec.makeMeasureSpec(size2 - (m2181b + m2178e), mode2);
                    }
                    abstractC0321c = c0324f.f1458a;
                    if (abstractC0321c != null || !abstractC0321c.mo2981i(this, view, i5, i3, i4, 0)) {
                        measureChildWithMargins(view, i5, i3, i4, 0);
                    }
                    suggestedMinimumWidth = Math.max(suggestedMinimumWidth, view.getMeasuredWidth() + paddingLeft + paddingRight + ((ViewGroup.MarginLayoutParams) c0324f).leftMargin + ((ViewGroup.MarginLayoutParams) c0324f).rightMargin);
                    suggestedMinimumHeight = Math.max(suggestedMinimumHeight, view.getMeasuredHeight() + paddingTop + paddingBottom + ((ViewGroup.MarginLayoutParams) c0324f).topMargin + ((ViewGroup.MarginLayoutParams) c0324f).bottomMargin);
                    i9 = View.combineMeasuredStates(i16, view.getMeasuredState());
                }
                i3 = 0;
                int i162 = i9;
                if (z4) {
                }
                i5 = i;
                i4 = i2;
                abstractC0321c = c0324f.f1458a;
                if (abstractC0321c != null) {
                }
                measureChildWithMargins(view, i5, i3, i4, 0);
                suggestedMinimumWidth = Math.max(suggestedMinimumWidth, view.getMeasuredWidth() + paddingLeft + paddingRight + ((ViewGroup.MarginLayoutParams) c0324f).leftMargin + ((ViewGroup.MarginLayoutParams) c0324f).rightMargin);
                suggestedMinimumHeight = Math.max(suggestedMinimumHeight, view.getMeasuredHeight() + paddingTop + paddingBottom + ((ViewGroup.MarginLayoutParams) c0324f).topMargin + ((ViewGroup.MarginLayoutParams) c0324f).bottomMargin);
                i9 = View.combineMeasuredStates(i162, view.getMeasuredState());
            }
            i10++;
            i11 = i12;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                C0324f c0324f = (C0324f) childAt.getLayoutParams();
                if (c0324f.m8320a(0)) {
                    AbstractC0321c abstractC0321c = c0324f.f1458a;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
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
                    C0324f c0324f = (C0324f) childAt.getLayoutParams();
                    if (!c0324f.m8320a(0)) {
                        z = z3;
                    } else {
                        AbstractC0321c abstractC0321c = c0324f.f1458a;
                        z = z3;
                        if (abstractC0321c != null) {
                            z = z3 | abstractC0321c.mo4740j(this, childAt, view, f, f2);
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

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo443j(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        mo441m(view, i, i2, i3, i4, 0, this.f1442f);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        mo445h(view, view2, i, 0);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof C0326h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0326h c0326h = (C0326h) parcelable;
        super.onRestoreInstanceState(c0326h.f13167a);
        SparseArray<Parcelable> sparseArray = c0326h.f1476c;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            AbstractC0321c abstractC0321c = m8331p(childAt).f1458a;
            if (id != -1 && abstractC0321c != null && (parcelable2 = sparseArray.get(id)) != null) {
                abstractC0321c.mo4737n(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable mo4736o;
        C0326h c0326h = new C0326h(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            AbstractC0321c abstractC0321c = ((C0324f) childAt.getLayoutParams()).f1458a;
            if (id != -1 && abstractC0321c != null && (mo4736o = abstractC0321c.mo4736o(this, childAt)) != null) {
                sparseArray.append(id, mo4736o);
            }
        }
        c0326h.f1476c = sparseArray;
        return c0326h;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return mo439o(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        mo444i(view, 0);
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
            android.view.View r0 = r0.f1446j
            if (r0 != 0) goto L1d
            r0 = r9
            r1 = r10
            r2 = 1
            boolean r0 = r0.m8326u(r1, r2)
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
            android.view.View r0 = r0.f1446j
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$f r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout.C0324f) r0
            androidx.coordinatorlayout.widget.CoordinatorLayout$c r0 = r0.f1458a
            r14 = r0
            r0 = r12
            r13 = r0
            r0 = r14
            if (r0 == 0) goto L4c
            r0 = r14
            r1 = r9
            r2 = r9
            android.view.View r2 = r2.f1446j
            r3 = r10
            boolean r0 = r0.mo2987r(r1, r2, r3)
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
            android.view.View r0 = r0.f1446j
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
            r0.m8324w(r1)
        La7:
            r0 = r15
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public C0324f m8331p(View view) {
        AbstractC0322d abstractC0322d;
        C0324f c0324f = (C0324f) view.getLayoutParams();
        if (!c0324f.f1459b) {
            if (view instanceof AbstractC0320b) {
                AbstractC0321c behavior = ((AbstractC0320b) view).getBehavior();
                AbstractC0321c abstractC0321c = c0324f.f1458a;
                if (abstractC0321c != behavior) {
                    if (abstractC0321c != null) {
                        abstractC0321c.mo4741f();
                    }
                    c0324f.f1458a = behavior;
                    c0324f.f1459b = true;
                    if (behavior != null) {
                        behavior.mo4487c(c0324f);
                    }
                }
                c0324f.f1459b = true;
            } else {
                Class<? super Object> cls = view.getClass();
                AbstractC0322d abstractC0322d2 = null;
                while (true) {
                    abstractC0322d = abstractC0322d2;
                    if (cls == null) {
                        break;
                    }
                    AbstractC0322d abstractC0322d3 = (AbstractC0322d) cls.getAnnotation(AbstractC0322d.class);
                    abstractC0322d = abstractC0322d3;
                    if (abstractC0322d3 != null) {
                        break;
                    }
                    cls = cls.getSuperclass();
                    abstractC0322d2 = abstractC0322d3;
                }
                if (abstractC0322d != null) {
                    try {
                        AbstractC0321c newInstance = abstractC0322d.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                        AbstractC0321c abstractC0321c2 = c0324f.f1458a;
                        if (abstractC0321c2 != newInstance) {
                            if (abstractC0321c2 != null) {
                                abstractC0321c2.mo4741f();
                            }
                            c0324f.f1458a = newInstance;
                            c0324f.f1459b = true;
                            if (newInstance != null) {
                                newInstance.mo4487c(c0324f);
                            }
                        }
                    } catch (Exception e) {
                        Objects.requireNonNull(abstractC0322d.value());
                    }
                }
                c0324f.f1459b = true;
            }
        }
        return c0324f;
    }

    /* renamed from: q */
    public boolean m8330q(View view, int i, int i2) {
        Rect m8340a = m8340a();
        m8334g(view, m8340a);
        try {
            return m8340a.contains(i, i2);
        } finally {
            m8340a.setEmpty();
            f1436x.mo2302b(m8340a);
        }
    }

    /* renamed from: r */
    public final void m8329r(int i) {
        int i2;
        int i3;
        boolean z;
        boolean z2;
        boolean z3;
        int i4;
        int i5;
        int i6;
        int i7;
        AbstractC0321c abstractC0321c;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        int m2071d = C3589v.C3594e.m2071d(this);
        int size = this.f1437a.size();
        Rect m8340a = m8340a();
        Rect m8340a2 = m8340a();
        Rect m8340a3 = m8340a();
        int i8 = 0;
        while (true) {
            int i9 = i8;
            if (i9 >= size) {
                m8340a.setEmpty();
                C3428c c3428c = f1436x;
                c3428c.mo2302b(m8340a);
                m8340a2.setEmpty();
                c3428c.mo2302b(m8340a2);
                m8340a3.setEmpty();
                c3428c.mo2302b(m8340a3);
                return;
            }
            View view = this.f1437a.get(i9);
            C0324f c0324f = (C0324f) view.getLayoutParams();
            if (i == 0 && view.getVisibility() == 8) {
                i2 = i9;
                i3 = size;
            } else {
                i3 = size;
                for (int i10 = 0; i10 < i9; i10++) {
                    if (c0324f.f1469l == this.f1437a.get(i10)) {
                        C0324f c0324f2 = (C0324f) view.getLayoutParams();
                        if (c0324f2.f1468k != null) {
                            Rect m8340a4 = m8340a();
                            Rect m8340a5 = m8340a();
                            Rect m8340a6 = m8340a();
                            m8334g(c0324f2.f1468k, m8340a4);
                            m8337d(view, false, m8340a5);
                            int measuredWidth = view.getMeasuredWidth();
                            int measuredHeight = view.getMeasuredHeight();
                            m8333k(m2071d, m8340a4, m8340a6, c0324f2, measuredWidth, measuredHeight);
                            boolean z4 = (m8340a6.left == m8340a5.left && m8340a6.top == m8340a5.top) ? false : true;
                            m8339b(c0324f2, m8340a6, measuredWidth, measuredHeight);
                            int i11 = m8340a6.left - m8340a5.left;
                            int i12 = m8340a6.top - m8340a5.top;
                            if (i11 != 0) {
                                C3589v.m2110n(view, i11);
                            }
                            if (i12 != 0) {
                                C3589v.m2109o(view, i12);
                            }
                            if (z4 && (abstractC0321c = c0324f2.f1458a) != null) {
                                abstractC0321c.mo4490d(this, view, c0324f2.f1468k);
                            }
                            m8340a4.setEmpty();
                            C3428c c3428c2 = f1436x;
                            c3428c2.mo2302b(m8340a4);
                            m8340a5.setEmpty();
                            c3428c2.mo2302b(m8340a5);
                            m8340a6.setEmpty();
                            c3428c2.mo2302b(m8340a6);
                        }
                    }
                }
                m8337d(view, true, m8340a2);
                if (c0324f.f1464g != 0 && !m8340a2.isEmpty()) {
                    int absoluteGravity = Gravity.getAbsoluteGravity(c0324f.f1464g, m2071d);
                    int i13 = absoluteGravity & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle;
                    if (i13 == 48) {
                        m8340a.top = Math.max(m8340a.top, m8340a2.bottom);
                    } else if (i13 == 80) {
                        m8340a.bottom = Math.max(m8340a.bottom, getHeight() - m8340a2.top);
                    }
                    int i14 = absoluteGravity & 7;
                    if (i14 == 3) {
                        m8340a.left = Math.max(m8340a.left, m8340a2.right);
                    } else if (i14 == 5) {
                        m8340a.right = Math.max(m8340a.right, getWidth() - m8340a2.left);
                    }
                }
                if (c0324f.f1465h != 0 && view.getVisibility() == 0) {
                    WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
                    if (C3589v.C3596g.m2058c(view) && view.getWidth() > 0 && view.getHeight() > 0) {
                        C0324f c0324f3 = (C0324f) view.getLayoutParams();
                        AbstractC0321c abstractC0321c2 = c0324f3.f1458a;
                        Rect m8340a7 = m8340a();
                        Rect m8340a8 = m8340a();
                        m8340a8.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                        if (abstractC0321c2 == null || !abstractC0321c2.mo4573a(this, view, m8340a7)) {
                            m8340a7.set(m8340a8);
                        } else if (!m8340a8.contains(m8340a7)) {
                            StringBuilder m8752j = C0082b.m8752j("Rect should be within the child's bounds. Rect:");
                            m8752j.append(m8340a7.toShortString());
                            m8752j.append(" | Bounds:");
                            m8752j.append(m8340a8.toShortString());
                            throw new IllegalArgumentException(m8752j.toString());
                        }
                        m8340a8.setEmpty();
                        C3428c c3428c3 = f1436x;
                        c3428c3.mo2302b(m8340a8);
                        if (m8340a7.isEmpty()) {
                            m8340a7.setEmpty();
                            c3428c3.mo2302b(m8340a7);
                        } else {
                            int absoluteGravity2 = Gravity.getAbsoluteGravity(c0324f3.f1465h, m2071d);
                            if ((absoluteGravity2 & 48) != 48 || (i6 = (m8340a7.top - ((ViewGroup.MarginLayoutParams) c0324f3).topMargin) - c0324f3.f1467j) >= (i7 = m8340a.top)) {
                                z2 = false;
                            } else {
                                m8322y(view, i7 - i6);
                                z2 = true;
                            }
                            boolean z5 = z2;
                            if ((absoluteGravity2 & 80) == 80) {
                                int height = ((getHeight() - m8340a7.bottom) - ((ViewGroup.MarginLayoutParams) c0324f3).bottomMargin) + c0324f3.f1467j;
                                int i15 = m8340a.bottom;
                                z5 = z2;
                                if (height < i15) {
                                    m8322y(view, height - i15);
                                    z5 = true;
                                }
                            }
                            if (!z5) {
                                m8322y(view, 0);
                            }
                            if ((absoluteGravity2 & 3) != 3 || (i4 = (m8340a7.left - ((ViewGroup.MarginLayoutParams) c0324f3).leftMargin) - c0324f3.f1466i) >= (i5 = m8340a.left)) {
                                z3 = false;
                            } else {
                                m8323x(view, i5 - i4);
                                z3 = true;
                            }
                            boolean z6 = z3;
                            if ((absoluteGravity2 & 5) == 5) {
                                int width = ((getWidth() - m8340a7.right) - ((ViewGroup.MarginLayoutParams) c0324f3).rightMargin) + c0324f3.f1466i;
                                int i16 = m8340a.right;
                                z6 = z3;
                                if (width < i16) {
                                    m8323x(view, width - i16);
                                    z6 = true;
                                }
                            }
                            if (!z6) {
                                m8323x(view, 0);
                            }
                            m8340a7.setEmpty();
                            c3428c3.mo2302b(m8340a7);
                        }
                    }
                }
                if (i != 2) {
                    Rect rect = ((C0324f) view.getLayoutParams()).f1474q;
                    Rect rect2 = m8340a3;
                    rect2.set(rect);
                    if (rect2.equals(m8340a2)) {
                        m8340a3 = rect2;
                        i2 = i9;
                    } else {
                        ((C0324f) view.getLayoutParams()).f1474q.set(m8340a2);
                    }
                }
                Rect rect3 = m8340a3;
                int i17 = i9 + 1;
                while (true) {
                    i3 = i3;
                    m8340a3 = rect3;
                    i2 = i9;
                    if (i17 < i3) {
                        View view2 = this.f1437a.get(i17);
                        C0324f c0324f4 = (C0324f) view2.getLayoutParams();
                        AbstractC0321c abstractC0321c3 = c0324f4.f1458a;
                        if (abstractC0321c3 != null && abstractC0321c3.mo4481b(this, view2, view)) {
                            if (i != 0 || !c0324f4.f1473p) {
                                if (i != 2) {
                                    z = abstractC0321c3.mo4490d(this, view2, view);
                                } else {
                                    abstractC0321c3.mo4770e(this, view2, view);
                                    z = true;
                                }
                                if (i == 1) {
                                    c0324f4.f1473p = z;
                                }
                            } else {
                                c0324f4.f1473p = false;
                            }
                        }
                        i17++;
                    }
                }
            }
            size = i3;
            i8 = i2 + 1;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        AbstractC0321c abstractC0321c = ((C0324f) view.getLayoutParams()).f1458a;
        if (abstractC0321c == null || !abstractC0321c.mo4769m(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.f1443g) {
            return;
        }
        m8324w(false);
        this.f1443g = true;
    }

    /* renamed from: s */
    public void m8328s(View view, int i) {
        Rect m8340a;
        Rect m8340a2;
        C3428c c3428c;
        C0324f c0324f = (C0324f) view.getLayoutParams();
        View view2 = c0324f.f1468k;
        if (!(view2 == null && c0324f.f1463f != -1)) {
            if (view2 != null) {
                m8340a = m8340a();
                m8340a2 = m8340a();
                try {
                    m8334g(view2, m8340a);
                    C0324f c0324f2 = (C0324f) view.getLayoutParams();
                    int measuredWidth = view.getMeasuredWidth();
                    int measuredHeight = view.getMeasuredHeight();
                    m8333k(i, m8340a, m8340a2, c0324f2, measuredWidth, measuredHeight);
                    m8339b(c0324f2, m8340a2, measuredWidth, measuredHeight);
                    view.layout(m8340a2.left, m8340a2.top, m8340a2.right, m8340a2.bottom);
                    return;
                } finally {
                    m8340a.setEmpty();
                    c3428c = f1436x;
                    c3428c.mo2302b(m8340a);
                    m8340a2.setEmpty();
                    c3428c.mo2302b(m8340a2);
                }
            }
            int i2 = c0324f.f1462e;
            if (i2 < 0) {
                C0324f c0324f3 = (C0324f) view.getLayoutParams();
                m8340a = m8340a();
                m8340a.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0324f3).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0324f3).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) c0324f3).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) c0324f3).bottomMargin);
                if (this.f1450n != null) {
                    WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                    if (C3589v.C3593d.m2092b(this) && !C3589v.C3593d.m2092b(view)) {
                        m8340a.left = this.f1450n.m2180c() + m8340a.left;
                        m8340a.top = this.f1450n.m2178e() + m8340a.top;
                        m8340a.right -= this.f1450n.m2179d();
                        m8340a.bottom -= this.f1450n.m2181b();
                    }
                }
                m8340a2 = m8340a();
                int i3 = c0324f3.f1460c;
                int i4 = i3;
                if ((i3 & 7) == 0) {
                    i4 = i3 | 8388611;
                }
                int i5 = i4;
                if ((i4 & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 0) {
                    i5 = i4 | 48;
                }
                Gravity.apply(i5, view.getMeasuredWidth(), view.getMeasuredHeight(), m8340a, m8340a2, i);
                view.layout(m8340a2.left, m8340a2.top, m8340a2.right, m8340a2.bottom);
                return;
            }
            C0324f c0324f4 = (C0324f) view.getLayoutParams();
            int i6 = c0324f4.f1460c;
            int i7 = i6;
            if (i6 == 0) {
                i7 = 8388661;
            }
            int absoluteGravity = Gravity.getAbsoluteGravity(i7, i);
            int i8 = absoluteGravity & 7;
            int i9 = absoluteGravity & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle;
            int width = getWidth();
            int height = getHeight();
            int measuredWidth2 = view.getMeasuredWidth();
            int measuredHeight2 = view.getMeasuredHeight();
            int i10 = i2;
            if (i == 1) {
                i10 = width - i2;
            }
            int m8332l = m8332l(i10) - measuredWidth2;
            if (i8 == 1) {
                m8332l += measuredWidth2 / 2;
            } else if (i8 == 5) {
                m8332l += measuredWidth2;
            }
            int i11 = i9 != 16 ? i9 != 80 ? 0 : measuredHeight2 + 0 : 0 + (measuredHeight2 / 2);
            int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0324f4).leftMargin, Math.min(m8332l, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) c0324f4).rightMargin));
            int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0324f4).topMargin, Math.min(i11, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) c0324f4).bottomMargin));
            view.layout(max, max2, measuredWidth2 + max, measuredHeight2 + max2);
            return;
        }
        throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        m8321z();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f1453q = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.f1452p;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f1452p = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f1452p.setState(getDrawableState());
                }
                Drawable drawable4 = this.f1452p;
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                C2789a.m3012c(drawable4, C3589v.C3594e.m2071d(this));
                this.f1452p.setVisible(getVisibility() == 0, false);
                this.f1452p.setCallback(this);
            }
            WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
            C3589v.C3593d.m2083k(this);
        }
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(int i) {
        Drawable drawable;
        if (i != 0) {
            Context context = getContext();
            Object obj = C2134a.f7832a;
            drawable = C2134a.C2136b.m3841b(context, i);
        } else {
            drawable = null;
        }
        setStatusBarBackground(drawable);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f1452p;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        this.f1452p.setVisible(z, false);
    }

    /* renamed from: t */
    public void m8327t(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    /* renamed from: u */
    public final boolean m8326u(MotionEvent motionEvent, int i) {
        boolean z;
        boolean z2;
        MotionEvent motionEvent2;
        boolean z3;
        boolean z4;
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.f1439c;
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i2) : i2));
        }
        Comparator<View> comparator = f1435w;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
        int size = list.size();
        MotionEvent motionEvent3 = null;
        int i3 = 0;
        boolean z5 = false;
        boolean z6 = false;
        while (true) {
            boolean z7 = z6;
            z = z5;
            if (i3 >= size) {
                break;
            }
            View view = list.get(i3);
            C0324f c0324f = (C0324f) view.getLayoutParams();
            AbstractC0321c abstractC0321c = c0324f.f1458a;
            if ((z5 || z7) && actionMasked != 0) {
                motionEvent2 = motionEvent3;
                z2 = z5;
                z3 = z7;
                if (abstractC0321c != null) {
                    motionEvent2 = motionEvent3;
                    if (motionEvent3 == null) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    if (i == 0) {
                        abstractC0321c.mo2988g(this, view, motionEvent2);
                        z2 = z5;
                        z3 = z7;
                    } else if (i != 1) {
                        z2 = z5;
                        z3 = z7;
                    } else {
                        abstractC0321c.mo2987r(this, view, motionEvent2);
                        z2 = z5;
                        z3 = z7;
                    }
                }
            } else {
                z = z5;
                if (!z5) {
                    z = z5;
                    if (abstractC0321c != null) {
                        if (i == 0) {
                            z5 = abstractC0321c.mo2988g(this, view, motionEvent);
                        } else if (i == 1) {
                            z5 = abstractC0321c.mo2987r(this, view, motionEvent);
                        }
                        z = z5;
                        if (z5) {
                            this.f1446j = view;
                            z = z5;
                        }
                    }
                }
                if (c0324f.f1458a == null) {
                    c0324f.f1470m = false;
                }
                boolean z8 = c0324f.f1470m;
                if (z8) {
                    z4 = true;
                } else {
                    z4 = z8 | false;
                    c0324f.f1470m = z4;
                }
                boolean z9 = z4 && !z8;
                motionEvent2 = motionEvent3;
                z2 = z;
                z3 = z9;
                if (z4) {
                    motionEvent2 = motionEvent3;
                    z2 = z;
                    z3 = z9;
                    if (!z9) {
                        break;
                    }
                } else {
                    continue;
                }
            }
            i3++;
            motionEvent3 = motionEvent2;
            z5 = z2;
            z6 = z3;
        }
        list.clear();
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f2, code lost:
        if (r7 == false) goto L35;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02e8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0230  */
    /* JADX WARN: Type inference failed for: r0v118, types: [android.view.View] */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8325v() {
        /*
            Method dump skipped, instructions count: 896
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.m8325v():void");
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1452p;
    }

    /* renamed from: w */
    public final void m8324w(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            AbstractC0321c abstractC0321c = ((C0324f) childAt.getLayoutParams()).f1458a;
            if (abstractC0321c != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    abstractC0321c.mo2988g(this, childAt, obtain);
                } else {
                    abstractC0321c.mo2987r(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((C0324f) getChildAt(i2).getLayoutParams()).f1470m = false;
        }
        this.f1446j = null;
        this.f1443g = false;
    }

    /* renamed from: x */
    public final void m8323x(View view, int i) {
        C0324f c0324f = (C0324f) view.getLayoutParams();
        int i2 = c0324f.f1466i;
        if (i2 != i) {
            C3589v.m2110n(view, i - i2);
            c0324f.f1466i = i;
        }
    }

    /* renamed from: y */
    public final void m8322y(View view, int i) {
        C0324f c0324f = (C0324f) view.getLayoutParams();
        int i2 = c0324f.f1467j;
        if (i2 != i) {
            C3589v.m2109o(view, i - i2);
            c0324f.f1467j = i;
        }
    }

    /* renamed from: z */
    public final void m8321z() {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (!C3589v.C3593d.m2092b(this)) {
            C3589v.C3598i.m2030u(this, null);
            return;
        }
        if (this.f1454r == null) {
            this.f1454r = new C0319a();
        }
        C3589v.C3598i.m2030u(this, this.f1454r);
        setSystemUiVisibility(1280);
    }
}
