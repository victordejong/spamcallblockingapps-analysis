package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.core.p015a.C0409a;
import androidx.core.p023g.AbstractC0548q;
import androidx.core.p023g.C0503a;
import androidx.core.p023g.C0529ac;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.p024a.C0510d;
import androidx.customview.view.AbsSavedState;
import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.flexbox.FlexItem;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager.class */
public class ViewPager extends ViewGroup {

    /* renamed from: B */
    private boolean f3413B;

    /* renamed from: C */
    private boolean f3414C;

    /* renamed from: D */
    private int f3415D;

    /* renamed from: E */
    private int f3416E;

    /* renamed from: F */
    private int f3417F;

    /* renamed from: G */
    private float f3418G;

    /* renamed from: H */
    private float f3419H;

    /* renamed from: I */
    private float f3420I;

    /* renamed from: J */
    private float f3421J;

    /* renamed from: L */
    private VelocityTracker f3423L;

    /* renamed from: M */
    private int f3424M;

    /* renamed from: N */
    private int f3425N;

    /* renamed from: O */
    private int f3426O;

    /* renamed from: P */
    private int f3427P;

    /* renamed from: Q */
    private boolean f3428Q;

    /* renamed from: R */
    private EdgeEffect f3429R;

    /* renamed from: S */
    private EdgeEffect f3430S;

    /* renamed from: V */
    private boolean f3433V;

    /* renamed from: W */
    private int f3434W;

    /* renamed from: aa */
    private List<AbstractC1096f> f3435aa;

    /* renamed from: ab */
    private AbstractC1096f f3436ab;

    /* renamed from: ac */
    private AbstractC1096f f3437ac;

    /* renamed from: ad */
    private List<AbstractC1095e> f3438ad;

    /* renamed from: ae */
    private AbstractC1097g f3439ae;

    /* renamed from: af */
    private int f3440af;

    /* renamed from: ag */
    private int f3441ag;

    /* renamed from: ah */
    private ArrayList<View> f3442ah;

    /* renamed from: b */
    AbstractC1100a f3445b;

    /* renamed from: c */
    int f3446c;

    /* renamed from: d */
    private int f3447d;

    /* renamed from: m */
    private Scroller f3454m;

    /* renamed from: n */
    private boolean f3455n;

    /* renamed from: o */
    private C1098h f3456o;

    /* renamed from: p */
    private int f3457p;

    /* renamed from: q */
    private Drawable f3458q;

    /* renamed from: r */
    private int f3459r;

    /* renamed from: s */
    private int f3460s;

    /* renamed from: v */
    private int f3463v;

    /* renamed from: w */
    private int f3464w;

    /* renamed from: x */
    private boolean f3465x;

    /* renamed from: y */
    private boolean f3466y;

    /* renamed from: z */
    private boolean f3467z;

    /* renamed from: a */
    static final int[] f3408a = {16842931};

    /* renamed from: e */
    private static final Comparator<C1092b> f3410e = new Comparator<C1092b>() { // from class: androidx.viewpager.widget.ViewPager.1
        /* renamed from: a */
        public int compare(C1092b c1092b, C1092b c1092b2) {
            return c1092b.f3475b - c1092b2.f3475b;
        }
    };

    /* renamed from: f */
    private static final Interpolator f3411f = new Interpolator() { // from class: androidx.viewpager.widget.ViewPager.2
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };

    /* renamed from: ai */
    private static final C1099i f3409ai = new C1099i();

    /* renamed from: g */
    private final ArrayList<C1092b> f3448g = new ArrayList<>();

    /* renamed from: h */
    private final C1092b f3449h = new C1092b();

    /* renamed from: i */
    private final Rect f3450i = new Rect();

    /* renamed from: j */
    private int f3451j = -1;

    /* renamed from: k */
    private Parcelable f3452k = null;

    /* renamed from: l */
    private ClassLoader f3453l = null;

    /* renamed from: t */
    private float f3461t = -3.4028235E38f;

    /* renamed from: u */
    private float f3462u = Float.MAX_VALUE;

    /* renamed from: A */
    private int f3412A = 1;

    /* renamed from: K */
    private int f3422K = -1;

    /* renamed from: T */
    private boolean f3431T = true;

    /* renamed from: U */
    private boolean f3432U = false;

    /* renamed from: aj */
    private final Runnable f3443aj = new Runnable() { // from class: androidx.viewpager.widget.ViewPager.3
        @Override // java.lang.Runnable
        public void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.m4305c();
        }
    };

    /* renamed from: ak */
    private int f3444ak = 0;

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.viewpager.widget.ViewPager.SavedState.1
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
        int f3471a;

        /* renamed from: b */
        Parcelable f3472b;

        /* renamed from: c */
        ClassLoader f3473c;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            ClassLoader classLoader2 = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f3471a = parcel.readInt();
            this.f3472b = parcel.readParcelable(classLoader2);
            this.f3473c = classLoader2;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f3471a + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f3471a);
            parcel.writeParcelable(this.f3472b, i);
        }
    }

    @Inherited
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: androidx.viewpager.widget.ViewPager$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$a.class */
    public @interface AbstractC1091a {
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$b.class */
    public static class C1092b {

        /* renamed from: a */
        Object f3474a;

        /* renamed from: b */
        int f3475b;

        /* renamed from: c */
        boolean f3476c;

        /* renamed from: d */
        float f3477d;

        /* renamed from: e */
        float f3478e;

        C1092b() {
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$c */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$c.class */
    public static class C1093c extends ViewGroup.LayoutParams {

        /* renamed from: a */
        public boolean f3479a;

        /* renamed from: b */
        public int f3480b;

        /* renamed from: c */
        float f3481c = FlexItem.FLEX_GROW_DEFAULT;

        /* renamed from: d */
        boolean f3482d;

        /* renamed from: e */
        int f3483e;

        /* renamed from: f */
        int f3484f;

        public C1093c() {
            super(-1, -1);
        }

        public C1093c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f3408a);
            this.f3480b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$d */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$d.class */
    public class C1094d extends C0503a {
        C1094d() {
            ViewPager.this = r4;
        }

        /* renamed from: a */
        private boolean m4287a() {
            boolean z = true;
            if (ViewPager.this.f3445b == null || ViewPager.this.f3445b.mo236b() <= 1) {
                z = false;
            }
            return z;
        }

        @Override // androidx.core.p023g.C0503a
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(m4287a());
            if (accessibilityEvent.getEventType() != 4096 || ViewPager.this.f3445b == null) {
                return;
            }
            accessibilityEvent.setItemCount(ViewPager.this.f3445b.mo236b());
            accessibilityEvent.setFromIndex(ViewPager.this.f3446c);
            accessibilityEvent.setToIndex(ViewPager.this.f3446c);
        }

        @Override // androidx.core.p023g.C0503a
        public void onInitializeAccessibilityNodeInfo(View view, C0510d c0510d) {
            super.onInitializeAccessibilityNodeInfo(view, c0510d);
            c0510d.m6433b((CharSequence) ViewPager.class.getName());
            c0510d.m6399k(m4287a());
            if (ViewPager.this.canScrollHorizontally(1)) {
                c0510d.m6455a(CodedOutputStream.DEFAULT_BUFFER_SIZE);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                c0510d.m6455a(8192);
            }
        }

        @Override // androidx.core.p023g.C0503a
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            if (i == 4096) {
                if (!ViewPager.this.canScrollHorizontally(1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.f3446c + 1);
                return true;
            } else if (i != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                return false;
            } else {
                ViewPager viewPager2 = ViewPager.this;
                viewPager2.setCurrentItem(viewPager2.f3446c - 1);
                return true;
            }
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$e.class */
    public interface AbstractC1095e {
        void onAdapterChanged(ViewPager viewPager, AbstractC1100a abstractC1100a, AbstractC1100a abstractC1100a2);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$f */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$f.class */
    public interface AbstractC1096f {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$g */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$g.class */
    public interface AbstractC1097g {
        /* renamed from: a */
        void m4286a(View view, float f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.viewpager.widget.ViewPager$h */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$h.class */
    public class C1098h extends DataSetObserver {
        C1098h() {
            ViewPager.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.m4313b();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.m4313b();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$i */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$i.class */
    public static class C1099i implements Comparator<View> {
        C1099i() {
        }

        /* renamed from: a */
        public int compare(View view, View view2) {
            C1093c c1093c = (C1093c) view.getLayoutParams();
            C1093c c1093c2 = (C1093c) view2.getLayoutParams();
            if (c1093c.f3479a != c1093c2.f3479a) {
                return c1093c.f3479a ? 1 : -1;
            }
            return c1093c.f3483e - c1093c2.f3483e;
        }
    }

    public ViewPager(Context context) {
        super(context);
        m4335a();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4335a();
    }

    /* renamed from: a */
    private int m4330a(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.f3426O || Math.abs(i2) <= this.f3424M) {
            i += (int) (f + (i >= this.f3446c ? 0.4f : 0.6f));
        } else if (i2 <= 0) {
            i++;
        }
        int i4 = i;
        if (this.f3448g.size() > 0) {
            C1092b c1092b = this.f3448g.get(0);
            ArrayList<C1092b> arrayList = this.f3448g;
            i4 = Math.max(c1092b.f3475b, Math.min(i, arrayList.get(arrayList.size() - 1).f3475b));
        }
        return i4;
    }

    /* renamed from: a */
    private Rect m4322a(Rect rect, View view) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
        }
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        }
        rect2.left = view.getLeft();
        rect2.right = view.getRight();
        rect2.top = view.getTop();
        rect2.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (!(viewParent instanceof ViewGroup) || viewParent == this) {
                break;
            }
            ViewGroup viewGroup = (ViewGroup) viewParent;
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    /* renamed from: a */
    private void m4327a(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.f3448g.isEmpty()) {
            C1092b m4311b = m4311b(this.f3446c);
            int min = (int) ((m4311b != null ? Math.min(m4311b.f3478e, this.f3462u) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
            if (min == getScrollX()) {
                return;
            }
            m4314a(false);
            scrollTo(min, getScrollY());
        } else if (!this.f3454m.isFinished()) {
            this.f3454m.setFinalX(getCurrentItem() * getClientWidth());
        } else {
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            scrollTo((int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - paddingLeft) - paddingRight) + i3)), getScrollY());
        }
    }

    /* renamed from: a */
    private void m4325a(int i, boolean z, int i2, boolean z2) {
        C1092b m4311b = m4311b(i);
        int clientWidth = m4311b != null ? (int) (getClientWidth() * Math.max(this.f3461t, Math.min(m4311b.f3478e, this.f3462u))) : 0;
        if (z) {
            m4328a(clientWidth, 0, i2);
            if (!z2) {
                return;
            }
            m4298e(i);
            return;
        }
        if (z2) {
            m4298e(i);
        }
        m4314a(false);
        scrollTo(clientWidth, 0);
        m4300d(clientWidth);
    }

    /* renamed from: a */
    private void m4320a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f3422K) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f3418G = motionEvent.getX(i);
            this.f3422K = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f3423L;
            if (velocityTracker == null) {
                return;
            }
            velocityTracker.clear();
        }
    }

    /* renamed from: a */
    private void m4317a(C1092b c1092b, int i, C1092b c1092b2) {
        C1092b c1092b3;
        int i2;
        float f;
        C1092b c1092b4;
        int i3;
        float f2;
        int mo236b = this.f3445b.mo236b();
        int clientWidth = getClientWidth();
        float f3 = clientWidth > 0 ? this.f3457p / clientWidth : 0.0f;
        if (c1092b2 != null) {
            int i4 = c1092b2.f3475b;
            if (i4 < c1092b.f3475b) {
                float f4 = c1092b2.f3478e + c1092b2.f3477d + f3;
                int i5 = 0;
                for (int i6 = i4 + 1; i6 <= c1092b.f3475b && i5 < this.f3448g.size(); i6 = i3 + 1) {
                    C1092b c1092b5 = this.f3448g.get(i5);
                    while (true) {
                        c1092b4 = c1092b5;
                        i3 = i6;
                        f2 = f4;
                        if (i6 <= c1092b4.f3475b) {
                            break;
                        }
                        i3 = i6;
                        f2 = f4;
                        if (i5 >= this.f3448g.size() - 1) {
                            break;
                        }
                        i5++;
                        c1092b5 = this.f3448g.get(i5);
                    }
                    while (i3 < c1092b4.f3475b) {
                        f2 += this.f3445b.m4268c(i3) + f3;
                        i3++;
                    }
                    c1092b4.f3478e = f2;
                    f4 = f2 + c1092b4.f3477d + f3;
                }
            } else if (i4 > c1092b.f3475b) {
                int size = this.f3448g.size() - 1;
                float f5 = c1092b2.f3478e;
                for (int i7 = i4 - 1; i7 >= c1092b.f3475b && size >= 0; i7 = i2 - 1) {
                    C1092b c1092b6 = this.f3448g.get(size);
                    while (true) {
                        c1092b3 = c1092b6;
                        i2 = i7;
                        f = f5;
                        if (i7 >= c1092b3.f3475b) {
                            break;
                        }
                        i2 = i7;
                        f = f5;
                        if (size <= 0) {
                            break;
                        }
                        size--;
                        c1092b6 = this.f3448g.get(size);
                    }
                    while (i2 > c1092b3.f3475b) {
                        f -= this.f3445b.m4268c(i2) + f3;
                        i2--;
                    }
                    f5 = f - (c1092b3.f3477d + f3);
                    c1092b3.f3478e = f5;
                }
            }
        }
        int size2 = this.f3448g.size();
        float f6 = c1092b.f3478e;
        int i8 = c1092b.f3475b - 1;
        this.f3461t = c1092b.f3475b == 0 ? c1092b.f3478e : -3.4028235E38f;
        int i9 = mo236b - 1;
        this.f3462u = c1092b.f3475b == i9 ? (c1092b.f3478e + c1092b.f3477d) - 1.0f : Float.MAX_VALUE;
        int i10 = i - 1;
        float f7 = f6;
        while (i10 >= 0) {
            C1092b c1092b7 = this.f3448g.get(i10);
            while (i8 > c1092b7.f3475b) {
                f7 -= this.f3445b.m4268c(i8) + f3;
                i8--;
            }
            f7 -= c1092b7.f3477d + f3;
            c1092b7.f3478e = f7;
            if (c1092b7.f3475b == 0) {
                this.f3461t = f7;
            }
            i10--;
            i8--;
        }
        float f8 = c1092b.f3478e + c1092b.f3477d + f3;
        int i11 = i + 1;
        int i12 = c1092b.f3475b + 1;
        while (i11 < size2) {
            C1092b c1092b8 = this.f3448g.get(i11);
            while (i12 < c1092b8.f3475b) {
                f8 += this.f3445b.m4268c(i12) + f3;
                i12++;
            }
            if (c1092b8.f3475b == i9) {
                this.f3462u = (c1092b8.f3477d + f8) - 1.0f;
            }
            c1092b8.f3478e = f8;
            f8 += c1092b8.f3477d + f3;
            i11++;
            i12++;
        }
        this.f3432U = false;
    }

    /* renamed from: a */
    private void m4314a(boolean z) {
        boolean z2 = this.f3444ak == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.f3454m.isFinished()) {
                this.f3454m.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f3454m.getCurrX();
                int currY = this.f3454m.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m4300d(currX);
                    }
                }
            }
        }
        this.f3467z = false;
        boolean z3 = z2;
        for (int i = 0; i < this.f3448g.size(); i++) {
            C1092b c1092b = this.f3448g.get(i);
            if (c1092b.f3476c) {
                c1092b.f3476c = false;
                z3 = true;
            }
        }
        if (z3) {
            if (z) {
                C0552u.m6265a(this, this.f3443aj);
            } else {
                this.f3443aj.run();
            }
        }
    }

    /* renamed from: a */
    private boolean m4333a(float f, float f2) {
        return (f < ((float) this.f3416E) && f2 > FlexItem.FLEX_GROW_DEFAULT) || (f > ((float) (getWidth() - this.f3416E)) && f2 < FlexItem.FLEX_GROW_DEFAULT);
    }

    /* renamed from: b */
    private void m4310b(int i, float f, int i2) {
        AbstractC1096f abstractC1096f = this.f3436ab;
        if (abstractC1096f != null) {
            abstractC1096f.onPageScrolled(i, f, i2);
        }
        List<AbstractC1096f> list = this.f3435aa;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC1096f abstractC1096f2 = this.f3435aa.get(i3);
                if (abstractC1096f2 != null) {
                    abstractC1096f2.onPageScrolled(i, f, i2);
                }
            }
        }
        AbstractC1096f abstractC1096f3 = this.f3437ac;
        if (abstractC1096f3 != null) {
            abstractC1096f3.onPageScrolled(i, f, i2);
        }
    }

    /* renamed from: b */
    private void m4306b(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setLayerType(z ? this.f3440af : 0, null);
        }
    }

    /* renamed from: b */
    private boolean m4312b(float f) {
        boolean z;
        boolean z2;
        float f2 = this.f3418G;
        this.f3418G = f;
        float scrollX = getScrollX() + (f2 - f);
        float clientWidth = getClientWidth();
        float f3 = this.f3461t * clientWidth;
        float f4 = this.f3462u * clientWidth;
        boolean z3 = false;
        C1092b c1092b = this.f3448g.get(0);
        ArrayList<C1092b> arrayList = this.f3448g;
        C1092b c1092b2 = arrayList.get(arrayList.size() - 1);
        if (c1092b.f3475b != 0) {
            f3 = c1092b.f3478e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (c1092b2.f3475b != this.f3445b.mo236b() - 1) {
            f4 = c1092b2.f3478e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX >= f3) {
            z3 = false;
            f3 = scrollX;
            if (scrollX > f4) {
                z3 = false;
                if (z2) {
                    this.f3430S.onPull(Math.abs(scrollX - f4) / clientWidth);
                    z3 = true;
                }
                f3 = f4;
            }
        } else if (z) {
            this.f3429R.onPull(Math.abs(f3 - scrollX) / clientWidth);
            z3 = true;
        }
        int i = (int) f3;
        this.f3418G += f3 - i;
        scrollTo(i, getScrollY());
        m4300d(i);
        return z3;
    }

    /* renamed from: c */
    private void m4302c(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    /* renamed from: c */
    private static boolean m4303c(View view) {
        return view.getClass().getAnnotation(AbstractC1091a.class) != null;
    }

    /* renamed from: d */
    private boolean m4300d(int i) {
        int i2;
        if (this.f3448g.size() == 0) {
            if (this.f3431T) {
                return false;
            }
            this.f3433V = false;
            m4331a(0, FlexItem.FLEX_GROW_DEFAULT, 0);
            if (!this.f3433V) {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
            return false;
        }
        C1092b m4293i = m4293i();
        int clientWidth = getClientWidth();
        float f = this.f3457p;
        float f2 = clientWidth;
        float f3 = f / f2;
        int i3 = m4293i.f3475b;
        float f4 = ((i / f2) - m4293i.f3478e) / (m4293i.f3477d + f3);
        this.f3433V = false;
        m4331a(i3, f4, (int) ((clientWidth + i2) * f4));
        if (!this.f3433V) {
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        return true;
    }

    /* renamed from: e */
    private void m4298e(int i) {
        AbstractC1096f abstractC1096f = this.f3436ab;
        if (abstractC1096f != null) {
            abstractC1096f.onPageSelected(i);
        }
        List<AbstractC1096f> list = this.f3435aa;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC1096f abstractC1096f2 = this.f3435aa.get(i2);
                if (abstractC1096f2 != null) {
                    abstractC1096f2.onPageSelected(i);
                }
            }
        }
        AbstractC1096f abstractC1096f3 = this.f3437ac;
        if (abstractC1096f3 != null) {
            abstractC1096f3.onPageSelected(i);
        }
    }

    /* renamed from: f */
    private void m4297f() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < getChildCount()) {
                int i3 = i2;
                if (!((C1093c) getChildAt(i2).getLayoutParams()).f3479a) {
                    removeViewAt(i2);
                    i3 = i2 - 1;
                }
                i = i3 + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: f */
    private void m4296f(int i) {
        AbstractC1096f abstractC1096f = this.f3436ab;
        if (abstractC1096f != null) {
            abstractC1096f.onPageScrollStateChanged(i);
        }
        List<AbstractC1096f> list = this.f3435aa;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC1096f abstractC1096f2 = this.f3435aa.get(i2);
                if (abstractC1096f2 != null) {
                    abstractC1096f2.onPageScrollStateChanged(i);
                }
            }
        }
        AbstractC1096f abstractC1096f3 = this.f3437ac;
        if (abstractC1096f3 != null) {
            abstractC1096f3.onPageScrollStateChanged(i);
        }
    }

    /* renamed from: g */
    private void m4295g() {
        if (this.f3441ag != 0) {
            ArrayList<View> arrayList = this.f3442ah;
            if (arrayList == null) {
                this.f3442ah = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.f3442ah.add(getChildAt(i));
            }
            Collections.sort(this.f3442ah, f3409ai);
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    /* renamed from: h */
    private boolean m4294h() {
        this.f3422K = -1;
        m4292j();
        this.f3429R.onRelease();
        this.f3430S.onRelease();
        return this.f3429R.isFinished() || this.f3430S.isFinished();
    }

    /* renamed from: i */
    private C1092b m4293i() {
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f = clientWidth > 0 ? this.f3457p / clientWidth : 0.0f;
        C1092b c1092b = null;
        float f2 = 0.0f;
        float f3 = 0.0f;
        int i = 0;
        int i2 = -1;
        boolean z = true;
        while (i < this.f3448g.size()) {
            C1092b c1092b2 = this.f3448g.get(i);
            int i3 = i;
            C1092b c1092b3 = c1092b2;
            if (!z) {
                int i4 = i2 + 1;
                i3 = i;
                c1092b3 = c1092b2;
                if (c1092b2.f3475b != i4) {
                    c1092b3 = this.f3449h;
                    c1092b3.f3478e = f2 + f3 + f;
                    c1092b3.f3475b = i4;
                    c1092b3.f3477d = this.f3445b.m4268c(c1092b3.f3475b);
                    i3 = i - 1;
                }
            }
            f2 = c1092b3.f3478e;
            float f4 = c1092b3.f3477d;
            if (!z && scrollX < f2) {
                return c1092b;
            }
            if (scrollX < f4 + f2 + f || i3 == this.f3448g.size() - 1) {
                return c1092b3;
            }
            i2 = c1092b3.f3475b;
            f3 = c1092b3.f3477d;
            i = i3 + 1;
            z = false;
            c1092b = c1092b3;
        }
        return c1092b;
    }

    /* renamed from: j */
    private void m4292j() {
        this.f3413B = false;
        this.f3414C = false;
        VelocityTracker velocityTracker = this.f3423L;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f3423L = null;
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.f3466y != z) {
            this.f3466y = z;
        }
    }

    /* renamed from: a */
    float m4334a(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* renamed from: a */
    C1092b m4329a(int i, int i2) {
        C1092b c1092b = new C1092b();
        c1092b.f3475b = i;
        c1092b.f3474a = this.f3445b.mo4276a((ViewGroup) this, i);
        c1092b.f3477d = this.f3445b.m4268c(i);
        if (i2 < 0 || i2 >= this.f3448g.size()) {
            this.f3448g.add(c1092b);
        } else {
            this.f3448g.add(i2, c1092b);
        }
        return c1092b;
    }

    /* renamed from: a */
    C1092b m4319a(View view) {
        for (int i = 0; i < this.f3448g.size(); i++) {
            C1092b c1092b = this.f3448g.get(i);
            if (this.f3445b.mo4278a(view, c1092b.f3474a)) {
                return c1092b;
            }
        }
        return null;
    }

    /* renamed from: a */
    void m4335a() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f3454m = new Scroller(context, f3411f);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.f3417F = viewConfiguration.getScaledPagingTouchSlop();
        this.f3424M = (int) (400.0f * f);
        this.f3425N = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f3429R = new EdgeEffect(context);
        this.f3430S = new EdgeEffect(context);
        this.f3426O = (int) (25.0f * f);
        this.f3427P = (int) (2.0f * f);
        this.f3415D = (int) (f * 16.0f);
        C0552u.m6269a(this, new C1094d());
        if (C0552u.m6247e(this) == 0) {
            C0552u.m6258b((View) this, 1);
        }
        C0552u.m6267a(this, new AbstractC0548q() { // from class: androidx.viewpager.widget.ViewPager.4

            /* renamed from: b */
            private final Rect f3470b = new Rect();

            @Override // androidx.core.p023g.AbstractC0548q
            public C0529ac onApplyWindowInsets(View view, C0529ac c0529ac) {
                C0529ac m6268a = C0552u.m6268a(view, c0529ac);
                if (m6268a.m6359f()) {
                    return m6268a;
                }
                Rect rect = this.f3470b;
                rect.left = m6268a.m6367a();
                rect.top = m6268a.m6363b();
                rect.right = m6268a.m6362c();
                rect.bottom = m6268a.m6361d();
                int childCount = ViewPager.this.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    C0529ac m6256b = C0552u.m6256b(ViewPager.this.getChildAt(i), m6268a);
                    rect.left = Math.min(m6256b.m6367a(), rect.left);
                    rect.top = Math.min(m6256b.m6363b(), rect.top);
                    rect.right = Math.min(m6256b.m6362c(), rect.right);
                    rect.bottom = Math.min(m6256b.m6361d(), rect.bottom);
                }
                return m6268a.m6366a(rect.left, rect.top, rect.right, rect.bottom);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a3, code lost:
        if (r13.f3475b == r6.f3446c) goto L28;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m4332a(int r7) {
        /*
            Method dump skipped, instructions count: 1323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m4332a(int):void");
    }

    /* renamed from: a */
    protected void m4331a(int i, float f, int i2) {
        int i3;
        if (this.f3434W > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                C1093c c1093c = (C1093c) childAt.getLayoutParams();
                if (c1093c.f3479a) {
                    int i5 = c1093c.f3480b & 7;
                    if (i5 == 1) {
                        i3 = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    } else if (i5 == 3) {
                        i3 = paddingLeft;
                        paddingLeft = childAt.getWidth() + paddingLeft;
                    } else if (i5 != 5) {
                        i3 = paddingLeft;
                        paddingLeft = paddingLeft;
                    } else {
                        i3 = (width - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                    }
                    int left = (i3 + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                }
            }
        }
        m4310b(i, f, i2);
        if (this.f3439ae != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i6 = 0; i6 < childCount2; i6++) {
                View childAt2 = getChildAt(i6);
                if (!((C1093c) childAt2.getLayoutParams()).f3479a) {
                    this.f3439ae.m4286a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.f3433V = true;
    }

    /* renamed from: a */
    void m4328a(int i, int i2, int i3) {
        int i4;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.f3454m;
        if (scroller != null && !scroller.isFinished()) {
            i4 = this.f3455n ? this.f3454m.getCurrX() : this.f3454m.getStartX();
            this.f3454m.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            i4 = getScrollX();
        }
        int scrollY = getScrollY();
        int i5 = i - i4;
        int i6 = i2 - scrollY;
        if (i5 == 0 && i6 == 0) {
            m4314a(false);
            m4305c();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i7 = clientWidth / 2;
        float abs = Math.abs(i5);
        float f = clientWidth;
        float f2 = i7;
        float m4334a = m4334a(Math.min(1.0f, (abs * 1.0f) / f));
        int abs2 = Math.abs(i3);
        int min = Math.min(abs2 > 0 ? Math.round(Math.abs((f2 + (m4334a * f2)) / abs2) * 1000.0f) * 4 : (int) (((Math.abs(i5) / ((f * this.f3445b.m4268c(this.f3446c)) + this.f3457p)) + 1.0f) * 100.0f), 600);
        this.f3455n = false;
        this.f3454m.startScroll(i4, scrollY, i5, i6, min);
        C0552u.m6249d(this);
    }

    /* renamed from: a */
    public void m4326a(int i, boolean z) {
        this.f3467z = false;
        m4324a(i, z, false);
    }

    /* renamed from: a */
    void m4324a(int i, boolean z, boolean z2) {
        m4323a(i, z, z2, 0);
    }

    /* renamed from: a */
    void m4323a(int i, boolean z, boolean z2, int i2) {
        int i3;
        AbstractC1100a abstractC1100a = this.f3445b;
        if (abstractC1100a == null || abstractC1100a.mo236b() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.f3446c != i || this.f3448g.size() == 0) {
            boolean z3 = true;
            if (i < 0) {
                i3 = 0;
            } else {
                i3 = i;
                if (i >= this.f3445b.mo236b()) {
                    i3 = this.f3445b.mo236b() - 1;
                }
            }
            int i4 = this.f3412A;
            int i5 = this.f3446c;
            if (i3 > i5 + i4 || i3 < i5 - i4) {
                for (int i6 = 0; i6 < this.f3448g.size(); i6++) {
                    this.f3448g.get(i6).f3476c = true;
                }
            }
            if (this.f3446c == i3) {
                z3 = false;
            }
            if (!this.f3431T) {
                m4332a(i3);
                m4325a(i3, z, i2, z3);
                return;
            }
            this.f3446c = i3;
            if (z3) {
                m4298e(i3);
            }
            requestLayout();
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    /* renamed from: a */
    public void m4316a(AbstractC1095e abstractC1095e) {
        if (this.f3438ad == null) {
            this.f3438ad = new ArrayList();
        }
        this.f3438ad.add(abstractC1095e);
    }

    /* renamed from: a */
    public void m4315a(AbstractC1096f abstractC1096f) {
        if (this.f3435aa == null) {
            this.f3435aa = new ArrayList();
        }
        this.f3435aa.add(abstractC1096f);
    }

    /* renamed from: a */
    public boolean m4321a(KeyEvent keyEvent) {
        boolean z;
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                z = keyEvent.hasModifiers(2) ? m4301d() : m4304c(17);
            } else if (keyCode == 22) {
                z = keyEvent.hasModifiers(2) ? m4299e() : m4304c(66);
            } else if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    z = m4304c(2);
                } else if (keyEvent.hasModifiers(1)) {
                    z = m4304c(1);
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    protected boolean m4318a(View view, boolean z, int i, int i2, int i3) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && m4318a(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        C1092b m4319a;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (m4319a = m4319a(childAt)) != null && m4319a.f3475b == this.f3446c) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        C1092b m4319a;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m4319a = m4319a(childAt)) != null && m4319a.f3475b == this.f3446c) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (!checkLayoutParams(layoutParams)) {
            layoutParams2 = generateLayoutParams(layoutParams);
        }
        C1093c c1093c = (C1093c) layoutParams2;
        c1093c.f3479a |= m4303c(view);
        if (!this.f3465x) {
            super.addView(view, i, layoutParams2);
        } else if (c1093c != null && c1093c.f3479a) {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        } else {
            c1093c.f3482d = true;
            addViewInLayout(view, i, layoutParams2);
        }
    }

    /* renamed from: b */
    C1092b m4311b(int i) {
        for (int i2 = 0; i2 < this.f3448g.size(); i2++) {
            C1092b c1092b = this.f3448g.get(i2);
            if (c1092b.f3475b == i) {
                return c1092b;
            }
        }
        return null;
    }

    /* renamed from: b */
    C1092b m4309b(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return m4319a(view);
            }
        }
    }

    /* renamed from: b */
    void m4313b() {
        int i;
        boolean z;
        int i2;
        int mo236b = this.f3445b.mo236b();
        this.f3447d = mo236b;
        boolean z2 = this.f3448g.size() < (this.f3412A * 2) + 1 && this.f3448g.size() < mo236b;
        int i3 = this.f3446c;
        int i4 = 0;
        boolean z3 = false;
        while (i4 < this.f3448g.size()) {
            C1092b c1092b = this.f3448g.get(i4);
            int m4274a = this.f3445b.m4274a(c1092b.f3474a);
            if (m4274a == -1) {
                i2 = i4;
                z = z3;
                i = i3;
            } else {
                if (m4274a == -2) {
                    this.f3448g.remove(i4);
                    int i5 = i4 - 1;
                    boolean z4 = z3;
                    if (!z3) {
                        this.f3445b.mo4277a((ViewGroup) this);
                        z4 = true;
                    }
                    this.f3445b.mo4275a((ViewGroup) this, c1092b.f3475b, c1092b.f3474a);
                    i4 = i5;
                    z3 = z4;
                    if (this.f3446c == c1092b.f3475b) {
                        i3 = Math.max(0, Math.min(this.f3446c, mo236b - 1));
                        z3 = z4;
                        i4 = i5;
                    }
                } else {
                    i2 = i4;
                    z = z3;
                    i = i3;
                    if (c1092b.f3475b != m4274a) {
                        if (c1092b.f3475b == this.f3446c) {
                            i3 = m4274a;
                        }
                        c1092b.f3475b = m4274a;
                    }
                }
                z2 = true;
                i2 = i4;
                z = z3;
                i = i3;
            }
            i4 = i2 + 1;
            z3 = z;
            i3 = i;
        }
        if (z3) {
            this.f3445b.mo4270b((ViewGroup) this);
        }
        Collections.sort(this.f3448g, f3410e);
        if (z2) {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                C1093c c1093c = (C1093c) getChildAt(i6).getLayoutParams();
                if (!c1093c.f3479a) {
                    c1093c.f3481c = FlexItem.FLEX_GROW_DEFAULT;
                }
            }
            m4324a(i3, false, true);
            requestLayout();
        }
    }

    /* renamed from: b */
    public void m4308b(AbstractC1095e abstractC1095e) {
        List<AbstractC1095e> list = this.f3438ad;
        if (list != null) {
            list.remove(abstractC1095e);
        }
    }

    /* renamed from: b */
    public void m4307b(AbstractC1096f abstractC1096f) {
        List<AbstractC1096f> list = this.f3435aa;
        if (list != null) {
            list.remove(abstractC1096f);
        }
    }

    /* renamed from: c */
    void m4305c() {
        m4332a(this.f3446c);
    }

    /* renamed from: c */
    public boolean m4304c(int i) {
        View view;
        boolean z;
        View findFocus = findFocus();
        boolean z2 = false;
        if (findFocus == this) {
            view = null;
        } else {
            if (findFocus != null) {
                ViewParent parent = findFocus.getParent();
                while (true) {
                    ViewParent viewParent = parent;
                    if (!(viewParent instanceof ViewGroup)) {
                        z = false;
                        break;
                    } else if (viewParent == this) {
                        z = true;
                        break;
                    } else {
                        parent = viewParent.getParent();
                    }
                }
                if (!z) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(findFocus.getClass().getSimpleName());
                    ViewParent parent2 = findFocus.getParent();
                    while (true) {
                        ViewParent viewParent2 = parent2;
                        if (!(viewParent2 instanceof ViewGroup)) {
                            break;
                        }
                        sb.append(" => ");
                        sb.append(viewParent2.getClass().getSimpleName());
                        parent2 = viewParent2.getParent();
                    }
                    Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
                    view = null;
                }
            }
            view = findFocus;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        if (findNextFocus == null || findNextFocus == view) {
            if (i == 17 || i == 1) {
                z2 = m4301d();
            } else if (i == 66 || i == 2) {
                z2 = m4299e();
            }
        } else if (i == 17) {
            z2 = (view == null || m4322a(this.f3450i, findNextFocus).left < m4322a(this.f3450i, view).left) ? findNextFocus.requestFocus() : m4301d();
        } else if (i == 66) {
            z2 = (view == null || m4322a(this.f3450i, findNextFocus).left > m4322a(this.f3450i, view).left) ? findNextFocus.requestFocus() : m4299e();
        }
        if (z2) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return z2;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        boolean z = false;
        if (this.f3445b == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            if (scrollX > ((int) (clientWidth * this.f3461t))) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (i > 0) {
            z2 = false;
            if (scrollX < ((int) (clientWidth * this.f3462u))) {
                z2 = true;
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C1093c) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f3455n = true;
        if (this.f3454m.isFinished() || !this.f3454m.computeScrollOffset()) {
            m4314a(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f3454m.getCurrX();
        int currY = this.f3454m.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!m4300d(currX)) {
                this.f3454m.abortAnimation();
                scrollTo(0, currY);
            }
        }
        C0552u.m6249d(this);
    }

    /* renamed from: d */
    boolean m4301d() {
        int i = this.f3446c;
        if (i > 0) {
            m4326a(i - 1, true);
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m4321a(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C1092b m4319a;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m4319a = m4319a(childAt)) != null && m4319a.f3475b == this.f3446c && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        AbstractC1100a abstractC1100a;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        boolean z2 = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (abstractC1100a = this.f3445b) != null && abstractC1100a.mo236b() > 1)) {
            if (!this.f3429R.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.f3461t * width);
                this.f3429R.setSize(height, width);
                z2 = false | this.f3429R.draw(canvas);
                canvas.restoreToCount(save);
            }
            z = z2;
            if (!this.f3430S.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f3462u + 1.0f)) * width2);
                this.f3430S.setSize((height2 - paddingTop) - paddingBottom, width2);
                z = z2 | this.f3430S.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.f3429R.finish();
            this.f3430S.finish();
        }
        if (z) {
            C0552u.m6249d(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f3458q;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    /* renamed from: e */
    boolean m4299e() {
        AbstractC1100a abstractC1100a = this.f3445b;
        if (abstractC1100a == null || this.f3446c >= abstractC1100a.mo236b() - 1) {
            return false;
        }
        m4326a(this.f3446c + 1, true);
        return true;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C1093c();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C1093c(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public AbstractC1100a getAdapter() {
        return this.f3445b;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = i2;
        if (this.f3441ag == 2) {
            i3 = (i - 1) - i2;
        }
        return ((C1093c) this.f3442ah.get(i3).getLayoutParams()).f3484f;
    }

    public int getCurrentItem() {
        return this.f3446c;
    }

    public int getOffscreenPageLimit() {
        return this.f3412A;
    }

    public int getPageMargin() {
        return this.f3457p;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f3431T = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f3443aj);
        Scroller scroller = this.f3454m;
        if (scroller != null && !scroller.isFinished()) {
            this.f3454m.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        float f;
        super.onDraw(canvas);
        if (this.f3457p <= 0 || this.f3458q == null || this.f3448g.size() <= 0 || this.f3445b == null) {
            return;
        }
        int scrollX = getScrollX();
        float width2 = getWidth();
        float f2 = this.f3457p / width2;
        int i = 0;
        C1092b c1092b = this.f3448g.get(0);
        float f3 = c1092b.f3478e;
        int size = this.f3448g.size();
        int i2 = this.f3448g.get(size - 1).f3475b;
        for (int i3 = c1092b.f3475b; i3 < i2; i3++) {
            while (i3 > c1092b.f3475b && i < size) {
                i++;
                c1092b = this.f3448g.get(i);
            }
            if (i3 == c1092b.f3475b) {
                f = (c1092b.f3478e + c1092b.f3477d) * width2;
                f3 = c1092b.f3478e + c1092b.f3477d + f2;
            } else {
                float m4268c = this.f3445b.m4268c(i3);
                f3 += m4268c + f2;
                f = (f3 + m4268c) * width2;
            }
            if (this.f3457p + f > scrollX) {
                this.f3458q.setBounds(Math.round(f), this.f3459r, Math.round(this.f3457p + f), this.f3460s);
                this.f3458q.draw(canvas);
            }
            if (f > scrollX + width) {
                return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            m4294h();
            return false;
        }
        if (action != 0) {
            if (this.f3413B) {
                return true;
            }
            if (this.f3414C) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.f3420I = x;
            this.f3418G = x;
            float y = motionEvent.getY();
            this.f3421J = y;
            this.f3419H = y;
            this.f3422K = motionEvent.getPointerId(0);
            this.f3414C = false;
            this.f3455n = true;
            this.f3454m.computeScrollOffset();
            if (this.f3444ak != 2 || Math.abs(this.f3454m.getFinalX() - this.f3454m.getCurrX()) <= this.f3427P) {
                m4314a(false);
                this.f3413B = false;
            } else {
                this.f3454m.abortAnimation();
                this.f3467z = false;
                m4305c();
                this.f3413B = true;
                m4302c(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i = this.f3422K;
            if (i != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(findPointerIndex);
                float f = x2 - this.f3418G;
                float abs = Math.abs(f);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.f3421J);
                int i2 = (f > FlexItem.FLEX_GROW_DEFAULT ? 1 : (f == FlexItem.FLEX_GROW_DEFAULT ? 0 : -1));
                if (i2 != 0 && !m4333a(this.f3418G, f) && m4318a(this, false, (int) f, (int) x2, (int) y2)) {
                    this.f3418G = x2;
                    this.f3419H = y2;
                    this.f3414C = true;
                    return false;
                }
                if (abs > this.f3417F && abs * 0.5f > abs2) {
                    this.f3413B = true;
                    m4302c(true);
                    setScrollState(1);
                    float f2 = this.f3420I;
                    float f3 = this.f3417F;
                    this.f3418G = i2 > 0 ? f2 + f3 : f2 - f3;
                    this.f3419H = y2;
                    setScrollingCacheEnabled(true);
                } else if (abs2 > this.f3417F) {
                    this.f3414C = true;
                }
                if (this.f3413B && m4312b(x2)) {
                    C0552u.m6249d(this);
                }
            }
        } else if (action == 6) {
            m4320a(motionEvent);
        }
        if (this.f3423L == null) {
            this.f3423L = VelocityTracker.obtain();
        }
        this.f3423L.addMovement(motionEvent);
        return this.f3413B;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C1092b m4319a;
        int i5;
        int i6;
        int childCount = getChildCount();
        int i7 = i3 - i;
        int i8 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i9 = 0;
        int i10 = 0;
        while (i10 < childCount) {
            View childAt = getChildAt(i10);
            int i11 = paddingLeft;
            int i12 = paddingRight;
            int i13 = paddingTop;
            int i14 = paddingBottom;
            int i15 = i9;
            if (childAt.getVisibility() != 8) {
                C1093c c1093c = (C1093c) childAt.getLayoutParams();
                i11 = paddingLeft;
                i12 = paddingRight;
                i13 = paddingTop;
                i14 = paddingBottom;
                i15 = i9;
                if (c1093c.f3479a) {
                    int i16 = c1093c.f3480b & 7;
                    int i17 = c1093c.f3480b & 112;
                    if (i16 == 1) {
                        i5 = Math.max((i7 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                        i11 = paddingLeft;
                    } else if (i16 == 3) {
                        i5 = paddingLeft;
                        i11 = childAt.getMeasuredWidth() + paddingLeft;
                    } else if (i16 != 5) {
                        i5 = paddingLeft;
                        i11 = paddingLeft;
                    } else {
                        i5 = (i7 - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                        i11 = paddingLeft;
                    }
                    if (i17 == 16) {
                        i6 = Math.max((i8 - childAt.getMeasuredHeight()) / 2, paddingTop);
                    } else if (i17 == 48) {
                        i6 = paddingTop;
                        paddingTop = childAt.getMeasuredHeight() + paddingTop;
                    } else if (i17 != 80) {
                        i6 = paddingTop;
                    } else {
                        i6 = (i8 - paddingBottom) - childAt.getMeasuredHeight();
                        paddingBottom += childAt.getMeasuredHeight();
                    }
                    int i18 = i5 + scrollX;
                    childAt.layout(i18, i6, childAt.getMeasuredWidth() + i18, i6 + childAt.getMeasuredHeight());
                    i15 = i9 + 1;
                    i14 = paddingBottom;
                    i13 = paddingTop;
                    i12 = paddingRight;
                }
            }
            i10++;
            paddingLeft = i11;
            paddingRight = i12;
            paddingTop = i13;
            paddingBottom = i14;
            i9 = i15;
        }
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt2 = getChildAt(i19);
            if (childAt2.getVisibility() != 8) {
                C1093c c1093c2 = (C1093c) childAt2.getLayoutParams();
                if (!c1093c2.f3479a && (m4319a = m4319a(childAt2)) != null) {
                    float f = (i7 - paddingLeft) - paddingRight;
                    int i20 = ((int) (m4319a.f3478e * f)) + paddingLeft;
                    if (c1093c2.f3482d) {
                        c1093c2.f3482d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f * c1093c2.f3481c), 1073741824), View.MeasureSpec.makeMeasureSpec((i8 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i20, paddingTop, childAt2.getMeasuredWidth() + i20, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.f3459r = paddingTop;
        this.f3460s = i8 - paddingBottom;
        this.f3434W = i9;
        if (this.f3431T) {
            m4325a(this.f3446c, false, 0, false);
        }
        this.f3431T = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        C1093c c1093c;
        int i3;
        int i4;
        int i5;
        int i6;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.f3416E = Math.min(measuredWidth / 10, this.f3415D);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int measuredHeight = getMeasuredHeight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int childCount = getChildCount();
        int i7 = (measuredHeight - paddingTop) - paddingBottom;
        int i8 = (measuredWidth - paddingLeft) - paddingRight;
        int i9 = 0;
        while (true) {
            int i10 = 1073741824;
            if (i9 >= childCount) {
                break;
            }
            View childAt = getChildAt(i9);
            int i11 = i8;
            int i12 = i7;
            if (childAt.getVisibility() != 8) {
                C1093c c1093c2 = (C1093c) childAt.getLayoutParams();
                i11 = i8;
                i12 = i7;
                if (c1093c2 != null) {
                    i11 = i8;
                    i12 = i7;
                    if (c1093c2.f3479a) {
                        int i13 = c1093c2.f3480b & 7;
                        int i14 = c1093c2.f3480b & 112;
                        boolean z = i14 == 48 || i14 == 80;
                        boolean z2 = true;
                        if (i13 != 3) {
                            z2 = i13 == 5;
                        }
                        int i15 = Integer.MIN_VALUE;
                        if (z) {
                            i3 = Integer.MIN_VALUE;
                            i15 = 1073741824;
                        } else {
                            i3 = z2 ? 1073741824 : Integer.MIN_VALUE;
                        }
                        if (c1093c2.width != -2) {
                            i4 = 1073741824;
                            i5 = c1093c2.width != -1 ? c1093c2.width : i8;
                        } else {
                            i5 = i8;
                            i4 = i15;
                        }
                        if (c1093c2.height != -2) {
                            i6 = c1093c2.height != -1 ? c1093c2.height : i7;
                        } else {
                            i10 = i3;
                            i6 = i7;
                        }
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(i5, i4), View.MeasureSpec.makeMeasureSpec(i6, i10));
                        if (z) {
                            i12 = i7 - childAt.getMeasuredHeight();
                            i11 = i8;
                        } else {
                            i11 = i8;
                            i12 = i7;
                            if (z2) {
                                i11 = i8 - childAt.getMeasuredWidth();
                                i12 = i7;
                            }
                        }
                    }
                }
            }
            i9++;
            i8 = i11;
            i7 = i12;
        }
        this.f3463v = View.MeasureSpec.makeMeasureSpec(i8, 1073741824);
        this.f3464w = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
        this.f3465x = true;
        m4305c();
        this.f3465x = false;
        int childCount2 = getChildCount();
        for (int i16 = 0; i16 < childCount2; i16++) {
            View childAt2 = getChildAt(i16);
            if (childAt2.getVisibility() != 8 && ((c1093c = (C1093c) childAt2.getLayoutParams()) == null || !c1093c.f3479a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (i8 * c1093c.f3481c), 1073741824), this.f3464w);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        C1092b m4319a;
        int childCount = getChildCount();
        int i4 = -1;
        if ((i & 2) != 0) {
            i4 = childCount;
            i3 = 0;
            i2 = 1;
        } else {
            i3 = childCount - 1;
            i2 = -1;
        }
        while (i3 != i4) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (m4319a = m4319a(childAt)) != null && m4319a.f3475b == this.f3446c && childAt.requestFocus(i, rect)) {
                return true;
            }
            i3 += i2;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        AbstractC1100a abstractC1100a = this.f3445b;
        if (abstractC1100a != null) {
            abstractC1100a.mo4282a(savedState.f3472b, savedState.f3473c);
            m4324a(savedState.f3471a, false, true);
            return;
        }
        this.f3451j = savedState.f3471a;
        this.f3452k = savedState.f3472b;
        this.f3453l = savedState.f3473c;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3471a = this.f3446c;
        AbstractC1100a abstractC1100a = this.f3445b;
        if (abstractC1100a != null) {
            savedState.f3472b = abstractC1100a.mo4284a();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.f3457p;
            m4327a(i, i3, i5, i5);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractC1100a abstractC1100a;
        if (this.f3428Q) {
            return true;
        }
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (abstractC1100a = this.f3445b) == null || abstractC1100a.mo236b() == 0) {
            return false;
        }
        if (this.f3423L == null) {
            this.f3423L = VelocityTracker.obtain();
        }
        this.f3423L.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f3454m.abortAnimation();
            this.f3467z = false;
            m4305c();
            float x = motionEvent.getX();
            this.f3420I = x;
            this.f3418G = x;
            float y = motionEvent.getY();
            this.f3421J = y;
            this.f3419H = y;
            this.f3422K = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.f3413B) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f3422K);
                    if (findPointerIndex == -1) {
                        z = m4294h();
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x2 - this.f3418G);
                        float y2 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y2 - this.f3419H);
                        if (abs > this.f3417F && abs > abs2) {
                            this.f3413B = true;
                            m4302c(true);
                            float f = this.f3420I;
                            this.f3418G = x2 - f > FlexItem.FLEX_GROW_DEFAULT ? f + this.f3417F : f - this.f3417F;
                            this.f3419H = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.f3413B) {
                    z = false | m4312b(motionEvent.getX(motionEvent.findPointerIndex(this.f3422K)));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.f3418G = motionEvent.getX(actionIndex);
                    this.f3422K = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    m4320a(motionEvent);
                    this.f3418G = motionEvent.getX(motionEvent.findPointerIndex(this.f3422K));
                }
            } else if (this.f3413B) {
                m4325a(this.f3446c, true, 0, false);
                z = m4294h();
            }
        } else if (this.f3413B) {
            VelocityTracker velocityTracker = this.f3423L;
            velocityTracker.computeCurrentVelocity(1000, this.f3425N);
            int xVelocity = (int) velocityTracker.getXVelocity(this.f3422K);
            this.f3467z = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            C1092b m4293i = m4293i();
            float f2 = clientWidth;
            m4323a(m4330a(m4293i.f3475b, ((scrollX / f2) - m4293i.f3478e) / (m4293i.f3477d + (this.f3457p / f2)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.f3422K)) - this.f3420I)), true, true, xVelocity);
            z = m4294h();
        }
        if (!z) {
            return true;
        }
        C0552u.m6249d(this);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f3465x) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(AbstractC1100a abstractC1100a) {
        AbstractC1100a abstractC1100a2 = this.f3445b;
        if (abstractC1100a2 != null) {
            abstractC1100a2.m4267c((DataSetObserver) null);
            this.f3445b.mo4277a((ViewGroup) this);
            for (int i = 0; i < this.f3448g.size(); i++) {
                C1092b c1092b = this.f3448g.get(i);
                this.f3445b.mo4275a((ViewGroup) this, c1092b.f3475b, c1092b.f3474a);
            }
            this.f3445b.mo4270b((ViewGroup) this);
            this.f3448g.clear();
            m4297f();
            this.f3446c = 0;
            scrollTo(0, 0);
        }
        AbstractC1100a abstractC1100a3 = this.f3445b;
        this.f3445b = abstractC1100a;
        this.f3447d = 0;
        if (this.f3445b != null) {
            if (this.f3456o == null) {
                this.f3456o = new C1098h();
            }
            this.f3445b.m4267c(this.f3456o);
            this.f3467z = false;
            boolean z = this.f3431T;
            this.f3431T = true;
            this.f3447d = this.f3445b.mo236b();
            if (this.f3451j >= 0) {
                this.f3445b.mo4282a(this.f3452k, this.f3453l);
                m4324a(this.f3451j, false, true);
                this.f3451j = -1;
                this.f3452k = null;
                this.f3453l = null;
            } else if (!z) {
                m4305c();
            } else {
                requestLayout();
            }
        }
        List<AbstractC1095e> list = this.f3438ad;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.f3438ad.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f3438ad.get(i2).onAdapterChanged(this, abstractC1100a3, abstractC1100a);
        }
    }

    public void setCurrentItem(int i) {
        this.f3467z = false;
        m4324a(i, !this.f3431T, false);
    }

    public void setOffscreenPageLimit(int i) {
        int i2 = i;
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.f3412A) {
            this.f3412A = i2;
            m4305c();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(AbstractC1096f abstractC1096f) {
        this.f3436ab = abstractC1096f;
    }

    public void setPageMargin(int i) {
        int i2 = this.f3457p;
        this.f3457p = i;
        int width = getWidth();
        m4327a(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(C0409a.m6753a(getContext(), i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f3458q = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    void setScrollState(int i) {
        if (this.f3444ak == i) {
            return;
        }
        this.f3444ak = i;
        if (this.f3439ae != null) {
            m4306b(i != 0);
        }
        m4296f(i);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f3458q;
    }
}
