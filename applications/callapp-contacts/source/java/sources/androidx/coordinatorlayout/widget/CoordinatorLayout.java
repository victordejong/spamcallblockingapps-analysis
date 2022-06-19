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
import androidx.coordinatorlayout.C0693a;
import androidx.core.content.C0790b;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.p036e.C0827a;
import androidx.core.p036e.C0829c;
import androidx.core.view.AbstractC0919o;
import androidx.core.view.AbstractC0920p;
import androidx.core.view.AbstractC0922r;
import androidx.core.view.C0889ac;
import androidx.core.view.C0908e;
import androidx.core.view.C0921q;
import androidx.core.view.C0926v;
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
public class CoordinatorLayout extends ViewGroup implements AbstractC0919o, AbstractC0920p {

    /* renamed from: a */
    static final String f3174a;

    /* renamed from: b */
    static final Class<?>[] f3175b;

    /* renamed from: c */
    static final ThreadLocal<Map<String, Constructor<Behavior>>> f3176c;

    /* renamed from: d */
    static final Comparator<View> f3177d;

    /* renamed from: h */
    private static final C0829c.AbstractC0830a<Rect> f3178h;

    /* renamed from: e */
    public C0889ac f3179e;

    /* renamed from: f */
    boolean f3180f;

    /* renamed from: g */
    ViewGroup.OnHierarchyChangeListener f3181g;

    /* renamed from: i */
    private final List<View> f3182i;

    /* renamed from: j */
    private final C0705a<View> f3183j;

    /* renamed from: k */
    private final List<View> f3184k;

    /* renamed from: l */
    private final List<View> f3185l;

    /* renamed from: m */
    private final int[] f3186m;

    /* renamed from: n */
    private final int[] f3187n;

    /* renamed from: o */
    private boolean f3188o;

    /* renamed from: p */
    private boolean f3189p;

    /* renamed from: q */
    private int[] f3190q;

    /* renamed from: r */
    private View f3191r;

    /* renamed from: s */
    private View f3192s;

    /* renamed from: t */
    private ViewTreeObserver$OnPreDrawListenerC0703e f3193t;

    /* renamed from: u */
    private boolean f3194u;

    /* renamed from: v */
    private Drawable f3195v;

    /* renamed from: w */
    private AbstractC0922r f3196w;

    /* renamed from: x */
    private final C0921q f3197x;

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior.class */
    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }

        /* renamed from: a */
        public static C0889ac m44646a(C0889ac c0889ac) {
            return c0889ac;
        }

        /* renamed from: a */
        public void mo11137a() {
        }

        @Deprecated
        /* renamed from: a */
        public void mo30916a(V v, View view, int i, int[] iArr) {
        }

        /* renamed from: a */
        public void mo9842a(C0702d c0702d) {
        }

        /* renamed from: a */
        public void mo11280a(CoordinatorLayout coordinatorLayout, View view) {
        }

        /* renamed from: a */
        public void mo11130a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        /* renamed from: a */
        public void mo11128a(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
            if (i == 0) {
                mo30910b((Behavior<V>) v, view);
            }
        }

        @Deprecated
        /* renamed from: a */
        public void mo29077a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        }

        @Deprecated
        /* renamed from: a */
        public void mo29080a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                mo29077a(coordinatorLayout, (CoordinatorLayout) v, view, i, i2, i3, i4);
            }
        }

        /* renamed from: a */
        public void mo11127a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
            mo29080a(coordinatorLayout, v, view, i, i2, i3, i4, i5);
        }

        /* renamed from: a */
        public void mo11126a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
            if (i3 == 0) {
                mo30916a((Behavior<V>) v, view, i2, iArr);
            }
        }

        @Deprecated
        /* renamed from: a */
        public boolean mo29078a(int i) {
            return false;
        }

        /* renamed from: a */
        public boolean mo9838a(V v, View view) {
            return false;
        }

        /* renamed from: a */
        public boolean mo9852a(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        /* renamed from: a */
        public boolean mo11255a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        /* renamed from: a */
        public boolean mo10731a(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }

        /* renamed from: a */
        public boolean mo11279a(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        /* renamed from: a */
        public boolean mo10175a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: a */
        public boolean mo9851a(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        /* renamed from: a */
        public boolean mo11129a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        /* renamed from: a */
        public boolean mo11125a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                return mo29078a(i);
            }
            return false;
        }

        /* renamed from: b */
        public Parcelable mo11116b(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        /* renamed from: b */
        public void mo30910b(V v, View view) {
        }

        /* renamed from: b */
        public boolean mo9836b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
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

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$a.class */
    public interface AbstractC0699a {
        /* renamed from: a */
        Behavior mo10748a();
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$b.class */
    public @interface AbstractC0700b {
        /* renamed from: a */
        Class<? extends Behavior> m44645a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$c.class */
    public final class ViewGroup$OnHierarchyChangeListenerC0701c implements ViewGroup.OnHierarchyChangeListener {
        ViewGroup$OnHierarchyChangeListenerC0701c() {
            CoordinatorLayout.this = r4;
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            if (CoordinatorLayout.this.f3181g != null) {
                CoordinatorLayout.this.f3181g.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.m44669a(2);
            if (CoordinatorLayout.this.f3181g != null) {
                CoordinatorLayout.this.f3181g.onChildViewRemoved(view, view2);
            }
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$d.class */
    public static final class C0702d extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public Behavior f3200a;

        /* renamed from: b */
        boolean f3201b;

        /* renamed from: c */
        public int f3202c;

        /* renamed from: d */
        public int f3203d;

        /* renamed from: e */
        public int f3204e;

        /* renamed from: f */
        public int f3205f;

        /* renamed from: g */
        public int f3206g;

        /* renamed from: h */
        public int f3207h;

        /* renamed from: i */
        int f3208i;

        /* renamed from: j */
        int f3209j;

        /* renamed from: k */
        public View f3210k;

        /* renamed from: l */
        public View f3211l;

        /* renamed from: m */
        boolean f3212m;

        /* renamed from: n */
        boolean f3213n;

        /* renamed from: o */
        final Rect f3214o;

        /* renamed from: p */
        Object f3215p;

        /* renamed from: q */
        private boolean f3216q;

        /* renamed from: r */
        private boolean f3217r;

        public C0702d(int i, int i2) {
            super(i, i2);
            this.f3201b = false;
            this.f3202c = 0;
            this.f3203d = 0;
            this.f3204e = -1;
            this.f3205f = -1;
            this.f3206g = 0;
            this.f3207h = 0;
            this.f3214o = new Rect();
        }

        C0702d(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3201b = false;
            this.f3202c = 0;
            this.f3203d = 0;
            this.f3204e = -1;
            this.f3205f = -1;
            this.f3206g = 0;
            this.f3207h = 0;
            this.f3214o = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0693a.C0696c.CoordinatorLayout_Layout);
            this.f3202c = obtainStyledAttributes.getInteger(C0693a.C0696c.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f3205f = obtainStyledAttributes.getResourceId(C0693a.C0696c.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f3203d = obtainStyledAttributes.getInteger(C0693a.C0696c.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f3204e = obtainStyledAttributes.getInteger(C0693a.C0696c.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f3206g = obtainStyledAttributes.getInt(C0693a.C0696c.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f3207h = obtainStyledAttributes.getInt(C0693a.C0696c.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            boolean hasValue = obtainStyledAttributes.hasValue(C0693a.C0696c.CoordinatorLayout_Layout_layout_behavior);
            this.f3201b = hasValue;
            if (hasValue) {
                this.f3200a = CoordinatorLayout.m44667a(context, attributeSet, obtainStyledAttributes.getString(C0693a.C0696c.CoordinatorLayout_Layout_layout_behavior));
            }
            obtainStyledAttributes.recycle();
            Behavior behavior = this.f3200a;
            if (behavior != null) {
                behavior.mo9842a(this);
            }
        }

        public C0702d(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f3201b = false;
            this.f3202c = 0;
            this.f3203d = 0;
            this.f3204e = -1;
            this.f3205f = -1;
            this.f3206g = 0;
            this.f3207h = 0;
            this.f3214o = new Rect();
        }

        public C0702d(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f3201b = false;
            this.f3202c = 0;
            this.f3203d = 0;
            this.f3204e = -1;
            this.f3205f = -1;
            this.f3206g = 0;
            this.f3207h = 0;
            this.f3214o = new Rect();
        }

        public C0702d(C0702d c0702d) {
            super((ViewGroup.MarginLayoutParams) c0702d);
            this.f3201b = false;
            this.f3202c = 0;
            this.f3203d = 0;
            this.f3204e = -1;
            this.f3205f = -1;
            this.f3206g = 0;
            this.f3207h = 0;
            this.f3214o = new Rect();
        }

        /* renamed from: a */
        final void m44643a(int i, boolean z) {
            if (i == 0) {
                this.f3216q = z;
            } else if (i != 1) {
            } else {
                this.f3217r = z;
            }
        }

        /* renamed from: a */
        public final void m44642a(Behavior behavior) {
            Behavior behavior2 = this.f3200a;
            if (behavior2 != behavior) {
                if (behavior2 != null) {
                    behavior2.mo11137a();
                }
                this.f3200a = behavior;
                this.f3215p = null;
                this.f3201b = true;
                if (behavior == null) {
                    return;
                }
                behavior.mo9842a(this);
            }
        }

        /* renamed from: a */
        final boolean m44644a(int i) {
            if (i != 0) {
                if (i == 1) {
                    return this.f3217r;
                }
                return false;
            }
            return this.f3216q;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$e.class */
    public final class ViewTreeObserver$OnPreDrawListenerC0703e implements ViewTreeObserver.OnPreDrawListener {
        ViewTreeObserver$OnPreDrawListenerC0703e() {
            CoordinatorLayout.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            CoordinatorLayout.this.m44669a(0);
            return true;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$f */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$f.class */
    static final class C0704f implements Comparator<View> {
        C0704f() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(View view, View view2) {
            float m44156C = C0926v.m44156C(view);
            float m44156C2 = C0926v.m44156C(view2);
            if (m44156C > m44156C2) {
                return -1;
            }
            return m44156C < m44156C2 ? 1 : 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f3174a = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            f3177d = new C0704f();
        } else {
            f3177d = null;
        }
        f3175b = new Class[]{Context.class, AttributeSet.class};
        f3176c = new ThreadLocal<>();
        f3178h = new C0829c.C0832c(12);
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0693a.C0694a.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int[] iArr;
        this.f3182i = new ArrayList();
        this.f3183j = new C0705a<>();
        this.f3184k = new ArrayList();
        this.f3185l = new ArrayList();
        this.f3186m = new int[2];
        this.f3187n = new int[2];
        this.f3197x = new C0921q(this);
        TypedArray obtainStyledAttributes = i == 0 ? context.obtainStyledAttributes(attributeSet, C0693a.C0696c.CoordinatorLayout, 0, C0693a.C0695b.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, C0693a.C0696c.CoordinatorLayout, i, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            if (i == 0) {
                saveAttributeDataForStyleable(context, C0693a.C0696c.CoordinatorLayout, attributeSet, obtainStyledAttributes, 0, C0693a.C0695b.Widget_Support_CoordinatorLayout);
            } else {
                saveAttributeDataForStyleable(context, C0693a.C0696c.CoordinatorLayout, attributeSet, obtainStyledAttributes, i, 0);
            }
        }
        int resourceId = obtainStyledAttributes.getResourceId(C0693a.C0696c.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.f3190q = resources.getIntArray(resourceId);
            float f = resources.getDisplayMetrics().density;
            int length = this.f3190q.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.f3190q[i2] = (int) (iArr[i2] * f);
            }
        }
        this.f3195v = obtainStyledAttributes.getDrawable(C0693a.C0696c.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        m44654c();
        super.setOnHierarchyChangeListener(new ViewGroup$OnHierarchyChangeListenerC0701c());
        if (C0926v.m44099e(this) == 0) {
            C0926v.m44102c((View) this, 1);
        }
    }

    /* renamed from: a */
    private static Rect m44670a() {
        Rect mo37607a = f3178h.mo37607a();
        Rect rect = mo37607a;
        if (mo37607a == null) {
            rect = new Rect();
        }
        return rect;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    static Behavior m44667a(Context context, AttributeSet attributeSet, String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str2 = context.getPackageName() + str;
        } else if (str.indexOf(46) >= 0) {
            str2 = str;
        } else {
            String str3 = f3174a;
            str2 = str;
            if (!TextUtils.isEmpty(str3)) {
                str2 = str3 + '.' + str;
            }
        }
        try {
            ThreadLocal<Map<String, Constructor<Behavior>>> threadLocal = f3176c;
            Map<String, Constructor<Behavior>> map = threadLocal.get();
            Map<String, Constructor<Behavior>> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                threadLocal.set(map2);
            }
            Constructor<Behavior> constructor = map2.get(str2);
            Constructor<Behavior> constructor2 = constructor;
            if (constructor == null) {
                constructor2 = Class.forName(str2, false, context.getClassLoader()).getConstructor(f3175b);
                constructor2.setAccessible(true);
                map2.put(str2, constructor2);
            }
            return constructor2.newInstance(context, attributeSet);
        } catch (Exception e) {
            throw new RuntimeException("Could not inflate Behavior subclass ".concat(String.valueOf(str2)), e);
        }
    }

    /* renamed from: a */
    private static void m44668a(int i, Rect rect, Rect rect2, C0702d c0702d, int i2, int i3) {
        int i4;
        int i5;
        int m44195a = C0908e.m44195a(m44647e(c0702d.f3202c), i);
        int m44195a2 = C0908e.m44195a(m44653c(c0702d.f3203d), i);
        int i6 = m44195a & 7;
        int i7 = m44195a & 112;
        int i8 = m44195a2 & 7;
        int i9 = m44195a2 & 112;
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

    /* renamed from: a */
    private static void m44666a(Rect rect) {
        rect.setEmpty();
        f3178h.mo37606a(rect);
    }

    /* renamed from: a */
    private void m44661a(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            C0706b.m44637a(this, view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    /* renamed from: a */
    private void m44660a(C0702d c0702d, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + c0702d.leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - c0702d.rightMargin));
        int max2 = Math.max(getPaddingTop() + c0702d.topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - c0702d.bottomMargin));
        rect.set(max, max2, i + max, i2 + max2);
    }

    /* renamed from: a */
    private void m44659a(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Behavior behavior = ((C0702d) childAt.getLayoutParams()).f3200a;
            if (behavior != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                if (z) {
                    behavior.mo10175a(this, (CoordinatorLayout) childAt, obtain);
                } else {
                    behavior.mo9836b(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((C0702d) getChildAt(i2).getLayoutParams()).f3212m = false;
        }
        this.f3191r = null;
        this.f3188o = false;
    }

    /* renamed from: a */
    private boolean m44665a(MotionEvent motionEvent, int i) {
        boolean z;
        MotionEvent motionEvent2;
        boolean z2;
        boolean z3;
        boolean z4;
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.f3184k;
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i2) : i2));
        }
        Comparator<View> comparator = f3177d;
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
            C0702d c0702d = (C0702d) view.getLayoutParams();
            Behavior behavior = c0702d.f3200a;
            if ((z5 || z7) && actionMasked != 0) {
                motionEvent2 = motionEvent3;
                z2 = z5;
                z3 = z7;
                if (behavior != null) {
                    motionEvent2 = motionEvent3;
                    if (motionEvent3 == null) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                    }
                    if (i == 0) {
                        behavior.mo10175a(this, (CoordinatorLayout) view, motionEvent2);
                        z2 = z5;
                        z3 = z7;
                    } else if (i != 1) {
                        z2 = z5;
                        z3 = z7;
                    } else {
                        behavior.mo9836b(this, view, motionEvent2);
                        z2 = z5;
                        z3 = z7;
                    }
                }
            } else {
                boolean z8 = z5;
                if (!z5) {
                    z8 = z5;
                    if (behavior != null) {
                        if (i == 0) {
                            z5 = behavior.mo10175a(this, (CoordinatorLayout) view, motionEvent);
                        } else if (i == 1) {
                            z5 = behavior.mo9836b(this, view, motionEvent);
                        }
                        z8 = z5;
                        if (z5) {
                            this.f3191r = view;
                            z8 = z5;
                        }
                    }
                }
                if (c0702d.f3200a == null) {
                    c0702d.f3212m = false;
                }
                boolean z9 = c0702d.f3212m;
                if (c0702d.f3212m) {
                    z4 = true;
                } else {
                    z4 = c0702d.f3212m | false;
                    c0702d.f3212m = z4;
                }
                boolean z10 = z4 && !z9;
                motionEvent2 = motionEvent3;
                z2 = z8;
                z3 = z10;
                if (z4) {
                    z = z8;
                    if (!z10) {
                        break;
                    }
                    z3 = z10;
                    z2 = z8;
                    motionEvent2 = motionEvent3;
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

    /* renamed from: b */
    private int m44657b(int i) {
        int[] iArr = this.f3190q;
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

    /* renamed from: b */
    private void m44658b() {
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
            C0705a<View> c0705a = this.f3183j;
            int size = c0705a.f3220b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    z2 = false;
                    break;
                }
                ArrayList<View> m45515c = c0705a.f3220b.m45515c(i2);
                if (m45515c != null && m45515c.contains(childAt)) {
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
        if (z != this.f3194u) {
            if (!z) {
                if (this.f3189p && this.f3193t != null) {
                    getViewTreeObserver().removeOnPreDrawListener(this.f3193t);
                }
                this.f3194u = false;
                return;
            }
            if (this.f3189p) {
                if (this.f3193t == null) {
                    this.f3193t = new ViewTreeObserver$OnPreDrawListenerC0703e();
                }
                getViewTreeObserver().addOnPreDrawListener(this.f3193t);
            }
            this.f3194u = true;
        }
    }

    /* renamed from: c */
    private static int m44653c(int i) {
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

    /* renamed from: c */
    private void m44654c() {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (!C0926v.m44080s(this)) {
            C0926v.m44120a(this, (AbstractC0922r) null);
            return;
        }
        if (this.f3196w == null) {
            this.f3196w = new AbstractC0922r() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.1
                @Override // androidx.core.view.AbstractC0922r
                /* renamed from: a */
                public final C0889ac mo10180a(View view, C0889ac c0889ac) {
                    CoordinatorLayout coordinatorLayout = CoordinatorLayout.this;
                    C0889ac c0889ac2 = c0889ac;
                    if (!C0827a.m44414a(coordinatorLayout.f3179e, c0889ac)) {
                        coordinatorLayout.f3179e = c0889ac;
                        int i = 0;
                        coordinatorLayout.f3180f = c0889ac != null && c0889ac.f3696b.mo44216g().f3564c > 0;
                        coordinatorLayout.setWillNotDraw(!coordinatorLayout.f3180f && coordinatorLayout.getBackground() == null);
                        c0889ac2 = c0889ac;
                        if (!c0889ac.f3696b.mo44215b()) {
                            int childCount = coordinatorLayout.getChildCount();
                            while (true) {
                                c0889ac2 = c0889ac;
                                if (i >= childCount) {
                                    break;
                                }
                                View childAt = coordinatorLayout.getChildAt(i);
                                C0889ac c0889ac3 = c0889ac;
                                if (C0926v.m44080s(childAt)) {
                                    c0889ac3 = c0889ac;
                                    if (((C0702d) childAt.getLayoutParams()).f3200a != null) {
                                        C0889ac m44646a = Behavior.m44646a(c0889ac);
                                        c0889ac2 = m44646a;
                                        if (m44646a.f3696b.mo44215b()) {
                                            break;
                                        }
                                        c0889ac3 = m44646a;
                                    } else {
                                        continue;
                                    }
                                }
                                i++;
                                c0889ac = c0889ac3;
                            }
                        }
                        coordinatorLayout.requestLayout();
                    }
                    return c0889ac2;
                }
            };
        }
        C0926v.m44120a(this, this.f3196w);
        setSystemUiVisibility(Constants.SMALL_SIZE_SCREEN);
    }

    /* renamed from: c */
    private static void m44651c(View view, int i) {
        C0702d c0702d = (C0702d) view.getLayoutParams();
        if (c0702d.f3208i != i) {
            C0926v.m44096f(view, i - c0702d.f3208i);
            c0702d.f3208i = i;
        }
    }

    /* renamed from: d */
    private static int m44650d(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 8388661;
        }
        return i2;
    }

    /* renamed from: d */
    private static C0702d m44649d(View view) {
        AbstractC0700b abstractC0700b;
        C0702d c0702d = (C0702d) view.getLayoutParams();
        if (!c0702d.f3201b) {
            if (view instanceof AbstractC0699a) {
                Behavior mo10748a = ((AbstractC0699a) view).mo10748a();
                if (mo10748a == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                c0702d.m44642a(mo10748a);
                c0702d.f3201b = true;
            } else {
                Class<? super Object> cls = view.getClass();
                AbstractC0700b abstractC0700b2 = null;
                while (true) {
                    abstractC0700b = abstractC0700b2;
                    if (cls == null) {
                        break;
                    }
                    AbstractC0700b abstractC0700b3 = (AbstractC0700b) cls.getAnnotation(AbstractC0700b.class);
                    abstractC0700b = abstractC0700b3;
                    if (abstractC0700b3 != null) {
                        break;
                    }
                    cls = cls.getSuperclass();
                    abstractC0700b2 = abstractC0700b3;
                }
                if (abstractC0700b != null) {
                    try {
                        c0702d.m44642a(abstractC0700b.m44645a().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e) {
                        Log.e("CoordinatorLayout", "Default behavior class " + abstractC0700b.m44645a().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                    }
                }
                c0702d.f3201b = true;
            }
        }
        return c0702d;
    }

    /* renamed from: d */
    private static void m44648d(View view, int i) {
        C0702d c0702d = (C0702d) view.getLayoutParams();
        if (c0702d.f3209j != i) {
            C0926v.m44098e(view, i - c0702d.f3209j);
            c0702d.f3209j = i;
        }
    }

    /* renamed from: e */
    private static int m44647e(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 17;
        }
        return i2;
    }

    /* renamed from: a */
    final void m44669a(int i) {
        int i2;
        int i3;
        boolean z;
        boolean z2;
        boolean z3;
        int i4;
        int i5;
        Behavior behavior;
        int m44097f = C0926v.m44097f(this);
        int size = this.f3182i.size();
        Rect m44670a = m44670a();
        Rect m44670a2 = m44670a();
        Rect m44670a3 = m44670a();
        int i6 = 0;
        while (true) {
            int i7 = i6;
            if (i7 >= size) {
                m44666a(m44670a);
                m44666a(m44670a2);
                m44666a(m44670a3);
                return;
            }
            View view = this.f3182i.get(i7);
            C0702d c0702d = (C0702d) view.getLayoutParams();
            if (i == 0 && view.getVisibility() == 8) {
                i2 = i7;
                i3 = size;
            } else {
                i3 = size;
                for (int i8 = 0; i8 < i7; i8++) {
                    if (c0702d.f3211l == this.f3182i.get(i8)) {
                        C0702d c0702d2 = (C0702d) view.getLayoutParams();
                        if (c0702d2.f3210k != null) {
                            Rect m44670a4 = m44670a();
                            Rect m44670a5 = m44670a();
                            Rect m44670a6 = m44670a();
                            C0706b.m44637a(this, c0702d2.f3210k, m44670a4);
                            m44661a(view, false, m44670a5);
                            int measuredWidth = view.getMeasuredWidth();
                            int measuredHeight = view.getMeasuredHeight();
                            m44668a(m44097f, m44670a4, m44670a6, c0702d2, measuredWidth, measuredHeight);
                            boolean z4 = (m44670a6.left == m44670a5.left && m44670a6.top == m44670a5.top) ? false : true;
                            m44660a(c0702d2, m44670a6, measuredWidth, measuredHeight);
                            int i9 = m44670a6.left - m44670a5.left;
                            int i10 = m44670a6.top - m44670a5.top;
                            if (i9 != 0) {
                                C0926v.m44096f(view, i9);
                            }
                            if (i10 != 0) {
                                C0926v.m44098e(view, i10);
                            }
                            if (z4 && (behavior = c0702d2.f3200a) != null) {
                                behavior.mo9851a(this, (CoordinatorLayout) view, c0702d2.f3210k);
                            }
                            m44666a(m44670a4);
                            m44666a(m44670a5);
                            m44666a(m44670a6);
                        }
                    }
                }
                m44661a(view, true, m44670a2);
                if (c0702d.f3206g != 0 && !m44670a2.isEmpty()) {
                    int m44195a = C0908e.m44195a(c0702d.f3206g, m44097f);
                    int i11 = m44195a & 112;
                    if (i11 == 48) {
                        m44670a.top = Math.max(m44670a.top, m44670a2.bottom);
                    } else if (i11 == 80) {
                        m44670a.bottom = Math.max(m44670a.bottom, getHeight() - m44670a2.top);
                    }
                    int i12 = m44195a & 7;
                    if (i12 == 3) {
                        m44670a.left = Math.max(m44670a.left, m44670a2.right);
                    } else if (i12 == 5) {
                        m44670a.right = Math.max(m44670a.right, getWidth() - m44670a2.left);
                    }
                }
                if (c0702d.f3207h != 0 && view.getVisibility() == 0 && C0926v.m44157B(view) && view.getWidth() > 0 && view.getHeight() > 0) {
                    C0702d c0702d3 = (C0702d) view.getLayoutParams();
                    Behavior behavior2 = c0702d3.f3200a;
                    Rect m44670a7 = m44670a();
                    Rect m44670a8 = m44670a();
                    m44670a8.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                    if (behavior2 == null || !behavior2.mo10731a(this, (CoordinatorLayout) view, m44670a7)) {
                        m44670a7.set(m44670a8);
                    } else if (!m44670a8.contains(m44670a7)) {
                        throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + m44670a7.toShortString() + " | Bounds:" + m44670a8.toShortString());
                    }
                    m44666a(m44670a8);
                    if (!m44670a7.isEmpty()) {
                        int m44195a2 = C0908e.m44195a(c0702d3.f3207h, m44097f);
                        if ((m44195a2 & 48) != 48 || (i5 = (m44670a7.top - c0702d3.topMargin) - c0702d3.f3209j) >= m44670a.top) {
                            z2 = false;
                        } else {
                            m44648d(view, m44670a.top - i5);
                            z2 = true;
                        }
                        boolean z5 = z2;
                        if ((m44195a2 & 80) == 80) {
                            int height = ((getHeight() - m44670a7.bottom) - c0702d3.bottomMargin) + c0702d3.f3209j;
                            z5 = z2;
                            if (height < m44670a.bottom) {
                                m44648d(view, height - m44670a.bottom);
                                z5 = true;
                            }
                        }
                        if (!z5) {
                            m44648d(view, 0);
                        }
                        if ((m44195a2 & 3) != 3 || (i4 = (m44670a7.left - c0702d3.leftMargin) - c0702d3.f3208i) >= m44670a.left) {
                            z3 = false;
                        } else {
                            m44651c(view, m44670a.left - i4);
                            z3 = true;
                        }
                        boolean z6 = z3;
                        if ((m44195a2 & 5) == 5) {
                            int width = ((getWidth() - m44670a7.right) - c0702d3.rightMargin) + c0702d3.f3208i;
                            z6 = z3;
                            if (width < m44670a.right) {
                                m44651c(view, width - m44670a.right);
                                z6 = true;
                            }
                        }
                        if (!z6) {
                            m44651c(view, 0);
                        }
                    }
                    m44666a(m44670a7);
                }
                if (i != 2) {
                    Rect rect = ((C0702d) view.getLayoutParams()).f3214o;
                    Rect rect2 = m44670a3;
                    rect2.set(rect);
                    if (!rect2.equals(m44670a2)) {
                        ((C0702d) view.getLayoutParams()).f3214o.set(m44670a2);
                    } else {
                        m44670a3 = rect2;
                        i2 = i7;
                    }
                }
                Rect rect3 = m44670a3;
                int i13 = i7 + 1;
                while (true) {
                    i3 = i3;
                    m44670a3 = rect3;
                    i2 = i7;
                    if (i13 < i3) {
                        View view2 = this.f3182i.get(i13);
                        C0702d c0702d4 = (C0702d) view2.getLayoutParams();
                        Behavior behavior3 = c0702d4.f3200a;
                        if (behavior3 != null && behavior3.mo9838a((Behavior) view2, view)) {
                            if (i != 0 || !c0702d4.f3213n) {
                                if (i != 2) {
                                    z = behavior3.mo9851a(this, (CoordinatorLayout) view2, view);
                                } else {
                                    behavior3.mo11280a(this, view);
                                    z = true;
                                }
                                if (i == 1) {
                                    c0702d4.f3213n = z;
                                }
                            } else {
                                c0702d4.f3213n = false;
                            }
                        }
                        i13++;
                    }
                }
            }
            size = i3;
            i6 = i2 + 1;
        }
    }

    /* renamed from: a */
    public final void m44664a(View view) {
        List m44638b = this.f3183j.m44638b(view);
        if (m44638b == null || m44638b.isEmpty()) {
            return;
        }
        for (int i = 0; i < m44638b.size(); i++) {
            View view2 = (View) m44638b.get(i);
            Behavior behavior = ((C0702d) view2.getLayoutParams()).f3200a;
            if (behavior != null) {
                behavior.mo9851a(this, (CoordinatorLayout) view2, view);
            }
        }
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final void mo44023a(View view, int i) {
        this.f3197x.m44163a(i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            C0702d c0702d = (C0702d) childAt.getLayoutParams();
            if (c0702d.m44644a(i)) {
                Behavior behavior = c0702d.f3200a;
                if (behavior != null) {
                    behavior.mo11128a(this, (CoordinatorLayout) childAt, view, i);
                }
                c0702d.m44643a(i, false);
                c0702d.f3213n = false;
            }
        }
        this.f3192s = null;
    }

    /* renamed from: a */
    public final void m44662a(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final void mo44021a(View view, int i, int i2, int i3, int i4, int i5) {
        mo44020a(view, i, i2, i3, i4, 0, this.f3187n);
    }

    @Override // androidx.core.view.AbstractC0920p
    /* renamed from: a */
    public final void mo44020a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        int i6;
        int childCount = getChildCount();
        boolean z = false;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            i6 = i9;
            if (i7 >= childCount) {
                break;
            }
            View childAt = getChildAt(i7);
            boolean z2 = z;
            int i10 = i8;
            int i11 = i6;
            if (childAt.getVisibility() != 8) {
                C0702d c0702d = (C0702d) childAt.getLayoutParams();
                z2 = z;
                i10 = i8;
                i11 = i6;
                if (c0702d.m44644a(i5)) {
                    Behavior behavior = c0702d.f3200a;
                    z2 = z;
                    i10 = i8;
                    i11 = i6;
                    if (behavior != null) {
                        int[] iArr2 = this.f3186m;
                        iArr2[0] = 0;
                        iArr2[1] = 0;
                        behavior.mo11127a(this, childAt, view, i, i2, i3, i4, i5, iArr2);
                        int[] iArr3 = this.f3186m;
                        int max = i3 > 0 ? Math.max(i8, iArr3[0]) : Math.min(i8, iArr3[0]);
                        i11 = i4 > 0 ? Math.max(i6, this.f3186m[1]) : Math.min(i6, this.f3186m[1]);
                        z2 = true;
                        i10 = max;
                    }
                }
            }
            i7++;
            z = z2;
            i8 = i10;
            i9 = i11;
        }
        iArr[0] = iArr[0] + i8;
        iArr[1] = iArr[1] + i6;
        if (z) {
            m44669a(1);
        }
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final void mo44019a(View view, int i, int i2, int[] iArr, int i3) {
        int i4;
        int i5;
        int i6;
        boolean z;
        int childCount = getChildCount();
        boolean z2 = false;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            i4 = i9;
            if (i7 >= childCount) {
                break;
            }
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                C0702d c0702d = (C0702d) childAt.getLayoutParams();
                z = z2;
                i6 = i8;
                i5 = i4;
                if (c0702d.m44644a(i3)) {
                    Behavior behavior = c0702d.f3200a;
                    z = z2;
                    i6 = i8;
                    i5 = i4;
                    if (behavior != null) {
                        int[] iArr2 = this.f3186m;
                        iArr2[0] = 0;
                        iArr2[1] = 0;
                        behavior.mo11126a(this, (CoordinatorLayout) childAt, view, i, i2, iArr2, i3);
                        int[] iArr3 = this.f3186m;
                        i6 = i > 0 ? Math.max(i8, iArr3[0]) : Math.min(i8, iArr3[0]);
                        int[] iArr4 = this.f3186m;
                        i5 = i2 > 0 ? Math.max(i4, iArr4[1]) : Math.min(i4, iArr4[1]);
                        z = true;
                    }
                }
            } else {
                i5 = i4;
                i6 = i8;
                z = z2;
            }
            i7++;
            z2 = z;
            i8 = i6;
            i9 = i5;
        }
        iArr[0] = i8;
        iArr[1] = i4;
        if (z2) {
            m44669a(1);
        }
    }

    /* renamed from: a */
    public final boolean m44663a(View view, int i, int i2) {
        Rect m44670a = m44670a();
        C0706b.m44637a(this, view, m44670a);
        try {
            return m44670a.contains(i, i2);
        } finally {
            m44666a(m44670a);
        }
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final boolean mo44017a(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        int i3 = 0;
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (i3 < childCount) {
                View childAt = getChildAt(i3);
                boolean z3 = z2;
                if (childAt.getVisibility() != 8) {
                    C0702d c0702d = (C0702d) childAt.getLayoutParams();
                    Behavior behavior = c0702d.f3200a;
                    if (behavior != null) {
                        boolean mo11125a = behavior.mo11125a(this, (CoordinatorLayout) childAt, view, view2, i, i2);
                        z3 = z2 | mo11125a;
                        c0702d.m44643a(i2, mo11125a);
                    } else {
                        c0702d.m44643a(i2, false);
                        z3 = z2;
                    }
                }
                i3++;
                z = z3;
            } else {
                return z2;
            }
        }
    }

    /* renamed from: b */
    public final List<View> m44656b(View view) {
        C0705a<View> c0705a = this.f3183j;
        int size = c0705a.f3220b.size();
        ArrayList arrayList = null;
        int i = 0;
        while (i < size) {
            ArrayList<View> m45515c = c0705a.f3220b.m45515c(i);
            ArrayList arrayList2 = arrayList;
            if (m45515c != null) {
                arrayList2 = arrayList;
                if (m45515c.contains(view)) {
                    arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(c0705a.f3220b.m45517b(i));
                }
            }
            i++;
            arrayList = arrayList2;
        }
        this.f3185l.clear();
        if (arrayList != null) {
            this.f3185l.addAll(arrayList);
        }
        return this.f3185l;
    }

    /* renamed from: b */
    public final void m44655b(View view, int i) {
        Rect m44670a;
        Rect m44670a2;
        C0702d c0702d = (C0702d) view.getLayoutParams();
        if (!(c0702d.f3210k == null && c0702d.f3205f != -1)) {
            if (c0702d.f3210k != null) {
                View view2 = c0702d.f3210k;
                m44670a = m44670a();
                m44670a2 = m44670a();
                try {
                    C0706b.m44637a(this, view2, m44670a);
                    C0702d c0702d2 = (C0702d) view.getLayoutParams();
                    int measuredWidth = view.getMeasuredWidth();
                    int measuredHeight = view.getMeasuredHeight();
                    m44668a(i, m44670a, m44670a2, c0702d2, measuredWidth, measuredHeight);
                    m44660a(c0702d2, m44670a2, measuredWidth, measuredHeight);
                    view.layout(m44670a2.left, m44670a2.top, m44670a2.right, m44670a2.bottom);
                    return;
                } finally {
                    m44666a(m44670a);
                    m44666a(m44670a2);
                }
            } else if (c0702d.f3204e < 0) {
                C0702d c0702d3 = (C0702d) view.getLayoutParams();
                m44670a = m44670a();
                m44670a.set(getPaddingLeft() + c0702d3.leftMargin, getPaddingTop() + c0702d3.topMargin, (getWidth() - getPaddingRight()) - c0702d3.rightMargin, (getHeight() - getPaddingBottom()) - c0702d3.bottomMargin);
                if (this.f3179e != null && C0926v.m44080s(this) && !C0926v.m44080s(view)) {
                    m44670a.left += this.f3179e.f3696b.mo44216g().f3563b;
                    m44670a.top += this.f3179e.f3696b.mo44216g().f3564c;
                    m44670a.right -= this.f3179e.f3696b.mo44216g().f3565d;
                    m44670a.bottom -= this.f3179e.f3696b.mo44216g().f3566e;
                }
                m44670a2 = m44670a();
                C0908e.m44194a(m44653c(c0702d3.f3202c), view.getMeasuredWidth(), view.getMeasuredHeight(), m44670a, m44670a2, i);
                view.layout(m44670a2.left, m44670a2.top, m44670a2.right, m44670a2.bottom);
                return;
            } else {
                int i2 = c0702d.f3204e;
                C0702d c0702d4 = (C0702d) view.getLayoutParams();
                int m44195a = C0908e.m44195a(m44650d(c0702d4.f3202c), i);
                int i3 = m44195a & 7;
                int i4 = m44195a & 112;
                int width = getWidth();
                int height = getHeight();
                int measuredWidth2 = view.getMeasuredWidth();
                int measuredHeight2 = view.getMeasuredHeight();
                int i5 = i2;
                if (i == 1) {
                    i5 = width - i2;
                }
                int m44657b = m44657b(i5) - measuredWidth2;
                if (i3 == 1) {
                    m44657b += measuredWidth2 / 2;
                } else if (i3 == 5) {
                    m44657b += measuredWidth2;
                }
                int i6 = i4 != 16 ? i4 != 80 ? 0 : measuredHeight2 + 0 : 0 + (measuredHeight2 / 2);
                int max = Math.max(getPaddingLeft() + c0702d4.leftMargin, Math.min(m44657b, ((width - getPaddingRight()) - measuredWidth2) - c0702d4.rightMargin));
                int max2 = Math.max(getPaddingTop() + c0702d4.topMargin, Math.min(i6, ((height - getPaddingBottom()) - measuredHeight2) - c0702d4.bottomMargin));
                view.layout(max, max2, measuredWidth2 + max, measuredHeight2 + max2);
                return;
            }
        }
        throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: b */
    public final void mo44010b(View view, View view2, int i, int i2) {
        this.f3197x.m44162a(i, i2);
        this.f3192s = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            ((C0702d) getChildAt(i3).getLayoutParams()).m44644a(i2);
        }
    }

    /* renamed from: c */
    public final List<View> m44652c(View view) {
        List m44638b = this.f3183j.m44638b(view);
        this.f3185l.clear();
        if (m44638b != null) {
            this.f3185l.addAll(m44638b);
        }
        return this.f3185l;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0702d) && super.checkLayoutParams(layoutParams);
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
        Drawable drawable = this.f3195v;
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
        return new C0702d(-2, -2);
    }

    @Override // android.view.ViewGroup
    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0702d(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0702d ? new C0702d((C0702d) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0702d((ViewGroup.MarginLayoutParams) layoutParams) : new C0702d(layoutParams);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f3197x.m44164a();
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
        m44659a(false);
        if (this.f3194u) {
            if (this.f3193t == null) {
                this.f3193t = new ViewTreeObserver$OnPreDrawListenerC0703e();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f3193t);
        }
        if (this.f3179e == null && C0926v.m44080s(this)) {
            C0926v.m44081r(this);
        }
        this.f3189p = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m44659a(false);
        if (this.f3194u && this.f3193t != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f3193t);
        }
        View view = this.f3192s;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f3189p = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f3180f || this.f3195v == null) {
            return;
        }
        C0889ac c0889ac = this.f3179e;
        int i = c0889ac != null ? c0889ac.f3696b.mo44216g().f3564c : 0;
        if (i <= 0) {
            return;
        }
        this.f3195v.setBounds(0, 0, getWidth(), i);
        this.f3195v.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m44659a(true);
        }
        boolean m44665a = m44665a(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            m44659a(true);
        }
        return m44665a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Behavior behavior;
        int m44097f = C0926v.m44097f(this);
        int size = this.f3182i.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.f3182i.get(i5);
            if (view.getVisibility() != 8 && ((behavior = ((C0702d) view.getLayoutParams()).f3200a) == null || !behavior.mo9852a(this, (CoordinatorLayout) view, m44097f))) {
                m44655b(view, m44097f);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00fb, code lost:
        if (r12 == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0195, code lost:
        r0.f3211l = r14;
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

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                ((C0702d) childAt.getLayoutParams()).m44644a(0);
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public boolean onNestedPreFling(View view, float f, float f2) {
        int childCount = getChildCount();
        int i = 0;
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (i < childCount) {
                View childAt = getChildAt(i);
                boolean z3 = z2;
                if (childAt.getVisibility() != 8) {
                    C0702d c0702d = (C0702d) childAt.getLayoutParams();
                    z3 = z2;
                    if (c0702d.m44644a(0)) {
                        Behavior behavior = c0702d.f3200a;
                        z3 = z2;
                        if (behavior != null) {
                            z3 = z2 | behavior.mo11129a(this, childAt, view, f, f2);
                        }
                    }
                }
                i++;
                z = z3;
            } else {
                return z2;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo44019a(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        mo44021a(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onNestedScrollAccepted(View view, View view2, int i) {
        mo44010b(view, view2, i, 0);
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
            Behavior behavior = m44649d(childAt).f3200a;
            if (id != -1 && behavior != null && (parcelable2 = sparseArray.get(id)) != null) {
                behavior.mo11130a(this, (CoordinatorLayout) childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable mo11116b;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = ((C0702d) childAt.getLayoutParams()).f3200a;
            if (id != -1 && behavior != null && (mo11116b = behavior.mo11116b(this, (CoordinatorLayout) childAt)) != null) {
                sparseArray.append(id, mo11116b);
            }
        }
        savedState.behaviorStates = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return mo44017a(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onStopNestedScroll(View view) {
        mo44023a(view, 0);
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
            android.view.View r0 = r0.f3191r
            if (r0 != 0) goto L1d
            r0 = r9
            r1 = r10
            r2 = 1
            boolean r0 = r0.m44665a(r1, r2)
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
            android.view.View r0 = r0.f3191r
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$d r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout.C0702d) r0
            androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r0 = r0.f3200a
            r14 = r0
            r0 = r12
            r13 = r0
            r0 = r14
            if (r0 == 0) goto L4c
            r0 = r14
            r1 = r9
            r2 = r9
            android.view.View r2 = r2.f3191r
            r3 = r10
            boolean r0 = r0.mo9836b(r1, r2, r3)
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
            android.view.View r0 = r0.f3191r
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
            r0.m44659a(r1)
        La7:
            r0 = r15
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        Behavior behavior = ((C0702d) view.getLayoutParams()).f3200a;
        if (behavior == null || !behavior.mo11279a(this, (CoordinatorLayout) view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.f3188o) {
            return;
        }
        m44659a(false);
        this.f3188o = true;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        m44654c();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f3181g = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.f3195v;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f3195v = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f3195v.setState(getDrawableState());
                }
                C0840a.m44349b(this.f3195v, C0926v.m44097f(this));
                this.f3195v.setVisible(getVisibility() == 0, false);
                this.f3195v.setCallback(this);
            }
            C0926v.m44101d(this);
        }
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(int i) {
        setStatusBarBackground(i != 0 ? C0790b.m44502a(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f3195v;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        this.f3195v.setVisible(z, false);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f3195v;
    }
}
