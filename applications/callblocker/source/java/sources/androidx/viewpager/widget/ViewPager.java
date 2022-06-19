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
import androidx.core.p017a.C0438a;
import androidx.core.p026h.AbstractC0591q;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0572ac;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.p027a.C0553c;
import androidx.p029d.p030a.AbstractC0633a;
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
    private boolean f3714B;

    /* renamed from: C */
    private boolean f3715C;

    /* renamed from: D */
    private int f3716D;

    /* renamed from: E */
    private int f3717E;

    /* renamed from: F */
    private int f3718F;

    /* renamed from: G */
    private float f3719G;

    /* renamed from: H */
    private float f3720H;

    /* renamed from: I */
    private float f3721I;

    /* renamed from: J */
    private float f3722J;

    /* renamed from: L */
    private VelocityTracker f3724L;

    /* renamed from: M */
    private int f3725M;

    /* renamed from: N */
    private int f3726N;

    /* renamed from: O */
    private int f3727O;

    /* renamed from: P */
    private int f3728P;

    /* renamed from: Q */
    private boolean f3729Q;

    /* renamed from: R */
    private EdgeEffect f3730R;

    /* renamed from: S */
    private EdgeEffect f3731S;

    /* renamed from: V */
    private boolean f3734V;

    /* renamed from: W */
    private int f3735W;

    /* renamed from: aa */
    private List<AbstractC1093f> f3736aa;

    /* renamed from: ab */
    private AbstractC1093f f3737ab;

    /* renamed from: ac */
    private AbstractC1093f f3738ac;

    /* renamed from: ad */
    private List<AbstractC1092e> f3739ad;

    /* renamed from: ae */
    private AbstractC1094g f3740ae;

    /* renamed from: af */
    private int f3741af;

    /* renamed from: ag */
    private int f3742ag;

    /* renamed from: ah */
    private ArrayList<View> f3743ah;

    /* renamed from: b */
    AbstractC1099a f3746b;

    /* renamed from: c */
    int f3747c;

    /* renamed from: d */
    private int f3748d;

    /* renamed from: m */
    private Scroller f3755m;

    /* renamed from: n */
    private boolean f3756n;

    /* renamed from: o */
    private C1095h f3757o;

    /* renamed from: p */
    private int f3758p;

    /* renamed from: q */
    private Drawable f3759q;

    /* renamed from: r */
    private int f3760r;

    /* renamed from: s */
    private int f3761s;

    /* renamed from: v */
    private int f3764v;

    /* renamed from: w */
    private int f3765w;

    /* renamed from: x */
    private boolean f3766x;

    /* renamed from: y */
    private boolean f3767y;

    /* renamed from: z */
    private boolean f3768z;

    /* renamed from: a */
    static final int[] f3709a = {16842931};

    /* renamed from: e */
    private static final Comparator<C1089b> f3711e = new Comparator<C1089b>() { // from class: androidx.viewpager.widget.ViewPager.1
        /* renamed from: a */
        public int compare(C1089b c1089b, C1089b c1089b2) {
            return c1089b.f3773b - c1089b2.f3773b;
        }
    };

    /* renamed from: f */
    private static final Interpolator f3712f = new Interpolator() { // from class: androidx.viewpager.widget.ViewPager.2
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };

    /* renamed from: ai */
    private static final C1098j f3710ai = new C1098j();

    /* renamed from: g */
    private final ArrayList<C1089b> f3749g = new ArrayList<>();

    /* renamed from: h */
    private final C1089b f3750h = new C1089b();

    /* renamed from: i */
    private final Rect f3751i = new Rect();

    /* renamed from: j */
    private int f3752j = -1;

    /* renamed from: k */
    private Parcelable f3753k = null;

    /* renamed from: l */
    private ClassLoader f3754l = null;

    /* renamed from: t */
    private float f3762t = -3.4028235E38f;

    /* renamed from: u */
    private float f3763u = Float.MAX_VALUE;

    /* renamed from: A */
    private int f3713A = 1;

    /* renamed from: K */
    private int f3723K = -1;

    /* renamed from: T */
    private boolean f3732T = true;

    /* renamed from: U */
    private boolean f3733U = false;

    /* renamed from: aj */
    private final Runnable f3744aj = new Runnable() { // from class: androidx.viewpager.widget.ViewPager.3
        @Override // java.lang.Runnable
        public void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.m18083c();
        }
    };

    /* renamed from: ak */
    private int f3745ak = 0;

    @Inherited
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: androidx.viewpager.widget.ViewPager$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$a.class */
    public @interface AbstractC1088a {
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$b.class */
    public static class C1089b {

        /* renamed from: a */
        Object f3772a;

        /* renamed from: b */
        int f3773b;

        /* renamed from: c */
        boolean f3774c;

        /* renamed from: d */
        float f3775d;

        /* renamed from: e */
        float f3776e;

        C1089b() {
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$c */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$c.class */
    public static class C1090c extends ViewGroup.LayoutParams {

        /* renamed from: a */
        public boolean f3777a;

        /* renamed from: b */
        public int f3778b;

        /* renamed from: c */
        float f3779c = 0.0f;

        /* renamed from: d */
        boolean f3780d;

        /* renamed from: e */
        int f3781e;

        /* renamed from: f */
        int f3782f;

        public C1090c() {
            super(-1, -1);
        }

        public C1090c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f3709a);
            this.f3778b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$d */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$d.class */
    public class C1091d extends C0549a {
        C1091d() {
            ViewPager.this = r4;
        }

        /* renamed from: b */
        private boolean m18068b() {
            boolean z = true;
            if (ViewPager.this.f3746b == null || ViewPager.this.f3746b.mo868b() <= 1) {
                z = false;
            }
            return z;
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: a */
        public void mo2272a(View view, C0553c c0553c) {
            super.mo2272a(view, c0553c);
            c0553c.m20504b((CharSequence) ViewPager.class.getName());
            c0553c.m20475i(m18068b());
            if (ViewPager.this.canScrollHorizontally(1)) {
                c0553c.m20525a(4096);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                c0553c.m20525a(8192);
            }
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: a */
        public boolean mo2512a(View view, int i, Bundle bundle) {
            boolean z = true;
            if (!super.mo2512a(view, i, bundle)) {
                switch (i) {
                    case 4096:
                        if (!ViewPager.this.canScrollHorizontally(1)) {
                            z = false;
                            break;
                        } else {
                            ViewPager.this.setCurrentItem(ViewPager.this.f3747c + 1);
                            break;
                        }
                    case 8192:
                        if (!ViewPager.this.canScrollHorizontally(-1)) {
                            z = false;
                            break;
                        } else {
                            ViewPager.this.setCurrentItem(ViewPager.this.f3747c - 1);
                            break;
                        }
                    default:
                        z = false;
                        break;
                }
            }
            return z;
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: d */
        public void mo2915d(View view, AccessibilityEvent accessibilityEvent) {
            super.mo2915d(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(m18068b());
            if (accessibilityEvent.getEventType() != 4096 || ViewPager.this.f3746b == null) {
                return;
            }
            accessibilityEvent.setItemCount(ViewPager.this.f3746b.mo868b());
            accessibilityEvent.setFromIndex(ViewPager.this.f3747c);
            accessibilityEvent.setToIndex(ViewPager.this.f3747c);
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$e.class */
    public interface AbstractC1092e {
        /* renamed from: a */
        void mo2430a(ViewPager viewPager, AbstractC1099a abstractC1099a, AbstractC1099a abstractC1099a2);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$f */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$f.class */
    public interface AbstractC1093f {
        /* renamed from: a */
        void mo909a(int i);

        /* renamed from: a */
        void mo908a(int i, float f, int i2);

        /* renamed from: b */
        void mo904b(int i);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$g */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$g.class */
    public interface AbstractC1094g {
        /* renamed from: a */
        void m18067a(View view, float f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.viewpager.widget.ViewPager$h */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$h.class */
    public class C1095h extends DataSetObserver {
        C1095h() {
            ViewPager.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.m18091b();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.m18091b();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$i */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$i.class */
    public static class C1096i extends AbstractC0633a {
        public static final Parcelable.Creator<C1096i> CREATOR = new Parcelable.ClassLoaderCreator<C1096i>() { // from class: androidx.viewpager.widget.ViewPager.i.1
            /* renamed from: a */
            public C1096i createFromParcel(Parcel parcel) {
                return new C1096i(parcel, null);
            }

            /* renamed from: a */
            public C1096i createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C1096i(parcel, classLoader);
            }

            /* renamed from: a */
            public C1096i[] newArray(int i) {
                return new C1096i[i];
            }
        };

        /* renamed from: a */
        int f3785a;

        /* renamed from: b */
        Parcelable f3786b;

        /* renamed from: d */
        ClassLoader f3787d;

        C1096i(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            ClassLoader classLoader2 = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f3785a = parcel.readInt();
            this.f3786b = parcel.readParcelable(classLoader2);
            this.f3787d = classLoader2;
        }

        public C1096i(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f3785a + "}";
        }

        @Override // androidx.p029d.p030a.AbstractC0633a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f3785a);
            parcel.writeParcelable(this.f3786b, i);
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$j */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$j.class */
    public static class C1098j implements Comparator<View> {
        C1098j() {
        }

        /* renamed from: a */
        public int compare(View view, View view2) {
            C1090c c1090c = (C1090c) view.getLayoutParams();
            C1090c c1090c2 = (C1090c) view2.getLayoutParams();
            return c1090c.f3777a != c1090c2.f3777a ? c1090c.f3777a ? 1 : -1 : c1090c.f3781e - c1090c2.f3781e;
        }
    }

    public ViewPager(Context context) {
        super(context);
        m18113a();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m18113a();
    }

    /* renamed from: a */
    private int m18108a(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.f3727O || Math.abs(i2) <= this.f3725M) {
            i += (int) ((i >= this.f3747c ? 0.4f : 0.6f) + f);
        } else if (i2 <= 0) {
            i++;
        }
        int i4 = i;
        if (this.f3749g.size() > 0) {
            i4 = Math.max(this.f3749g.get(0).f3773b, Math.min(i, this.f3749g.get(this.f3749g.size() - 1).f3773b));
        }
        return i4;
    }

    /* renamed from: a */
    private Rect m18100a(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view != null) {
            rect.left = view.getLeft();
            rect.right = view.getRight();
            rect.top = view.getTop();
            rect.bottom = view.getBottom();
            ViewParent parent = view.getParent();
            while (true) {
                ViewParent viewParent = parent;
                if (!(viewParent instanceof ViewGroup) || viewParent == this) {
                    break;
                }
                ViewGroup viewGroup = (ViewGroup) viewParent;
                rect.left += viewGroup.getLeft();
                rect.right += viewGroup.getRight();
                rect.top += viewGroup.getTop();
                rect.bottom += viewGroup.getBottom();
                parent = viewGroup.getParent();
            }
        } else {
            rect.set(0, 0, 0, 0);
        }
        return rect;
    }

    /* renamed from: a */
    private void m18105a(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.f3749g.isEmpty()) {
            C1089b m18089b = m18089b(this.f3747c);
            int min = (int) ((m18089b != null ? Math.min(m18089b.f3776e, this.f3763u) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
            if (min == getScrollX()) {
                return;
            }
            m18092a(false);
            scrollTo(min, getScrollY());
        } else if (!this.f3755m.isFinished()) {
            this.f3755m.setFinalX(getCurrentItem() * getClientWidth());
        } else {
            int paddingLeft = getPaddingLeft();
            scrollTo((int) ((((i - paddingLeft) - getPaddingRight()) + i3) * (getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4))), getScrollY());
        }
    }

    /* renamed from: a */
    private void m18103a(int i, boolean z, int i2, boolean z2) {
        int i3;
        C1089b m18089b = m18089b(i);
        if (m18089b != null) {
            i3 = (int) (Math.max(this.f3762t, Math.min(m18089b.f3776e, this.f3763u)) * getClientWidth());
        } else {
            i3 = 0;
        }
        if (z) {
            m18106a(i3, 0, i2);
            if (!z2) {
                return;
            }
            m18076e(i);
            return;
        }
        if (z2) {
            m18076e(i);
        }
        m18092a(false);
        scrollTo(i3, 0);
        m18078d(i3);
    }

    /* renamed from: a */
    private void m18098a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f3723K) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f3719G = motionEvent.getX(i);
            this.f3723K = motionEvent.getPointerId(i);
            if (this.f3724L == null) {
                return;
            }
            this.f3724L.clear();
        }
    }

    /* renamed from: a */
    private void m18095a(C1089b c1089b, int i, C1089b c1089b2) {
        C1089b c1089b3;
        int i2;
        float f;
        C1089b c1089b4;
        int i3;
        float f2;
        int mo868b = this.f3746b.mo868b();
        int clientWidth = getClientWidth();
        float f3 = clientWidth > 0 ? this.f3758p / clientWidth : 0.0f;
        if (c1089b2 != null) {
            int i4 = c1089b2.f3773b;
            if (i4 < c1089b.f3773b) {
                float f4 = c1089b2.f3776e + c1089b2.f3775d + f3;
                int i5 = 0;
                for (int i6 = i4 + 1; i6 <= c1089b.f3773b && i5 < this.f3749g.size(); i6 = i3 + 1) {
                    C1089b c1089b5 = this.f3749g.get(i5);
                    while (true) {
                        c1089b4 = c1089b5;
                        i3 = i6;
                        f2 = f4;
                        if (i6 <= c1089b4.f3773b) {
                            break;
                        }
                        i3 = i6;
                        f2 = f4;
                        if (i5 >= this.f3749g.size() - 1) {
                            break;
                        }
                        i5++;
                        c1089b5 = this.f3749g.get(i5);
                    }
                    while (i3 < c1089b4.f3773b) {
                        f2 += this.f3746b.m18044d(i3) + f3;
                        i3++;
                    }
                    c1089b4.f3776e = f2;
                    f4 = f2 + c1089b4.f3775d + f3;
                }
            } else if (i4 > c1089b.f3773b) {
                int size = this.f3749g.size() - 1;
                float f5 = c1089b2.f3776e;
                for (int i7 = i4 - 1; i7 >= c1089b.f3773b && size >= 0; i7 = i2 - 1) {
                    C1089b c1089b6 = this.f3749g.get(size);
                    while (true) {
                        c1089b3 = c1089b6;
                        i2 = i7;
                        f = f5;
                        if (i7 >= c1089b3.f3773b) {
                            break;
                        }
                        i2 = i7;
                        f = f5;
                        if (size <= 0) {
                            break;
                        }
                        size--;
                        c1089b6 = this.f3749g.get(size);
                    }
                    while (i2 > c1089b3.f3773b) {
                        f -= this.f3746b.m18044d(i2) + f3;
                        i2--;
                    }
                    f5 = f - (c1089b3.f3775d + f3);
                    c1089b3.f3776e = f5;
                }
            }
        }
        int size2 = this.f3749g.size();
        float f6 = c1089b.f3776e;
        int i8 = c1089b.f3773b - 1;
        this.f3762t = c1089b.f3773b == 0 ? c1089b.f3776e : -3.4028235E38f;
        this.f3763u = c1089b.f3773b == mo868b - 1 ? (c1089b.f3776e + c1089b.f3775d) - 1.0f : Float.MAX_VALUE;
        float f7 = f6;
        for (int i9 = i - 1; i9 >= 0; i9--) {
            C1089b c1089b7 = this.f3749g.get(i9);
            while (i8 > c1089b7.f3773b) {
                f7 -= this.f3746b.m18044d(i8) + f3;
                i8--;
            }
            f7 -= c1089b7.f3775d + f3;
            c1089b7.f3776e = f7;
            if (c1089b7.f3773b == 0) {
                this.f3762t = f7;
            }
            i8--;
        }
        float f8 = c1089b.f3776e + c1089b.f3775d + f3;
        int i10 = c1089b.f3773b + 1;
        for (int i11 = i + 1; i11 < size2; i11++) {
            C1089b c1089b8 = this.f3749g.get(i11);
            while (i10 < c1089b8.f3773b) {
                f8 += this.f3746b.m18044d(i10) + f3;
                i10++;
            }
            if (c1089b8.f3773b == mo868b - 1) {
                this.f3763u = (c1089b8.f3775d + f8) - 1.0f;
            }
            c1089b8.f3776e = f8;
            f8 += c1089b8.f3775d + f3;
            i10++;
        }
        this.f3733U = false;
    }

    /* renamed from: a */
    private void m18092a(boolean z) {
        boolean z2 = this.f3745ak == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.f3755m.isFinished()) {
                this.f3755m.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f3755m.getCurrX();
                int currY = this.f3755m.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m18078d(currX);
                    }
                }
            }
        }
        this.f3768z = false;
        boolean z3 = z2;
        for (int i = 0; i < this.f3749g.size(); i++) {
            C1089b c1089b = this.f3749g.get(i);
            if (c1089b.f3774c) {
                c1089b.f3774c = false;
                z3 = true;
            }
        }
        if (z3) {
            if (z) {
                C0595u.m20341a(this, this.f3744aj);
            } else {
                this.f3744aj.run();
            }
        }
    }

    /* renamed from: a */
    private boolean m18111a(float f, float f2) {
        return (f < ((float) this.f3717E) && f2 > 0.0f) || (f > ((float) (getWidth() - this.f3717E)) && f2 < 0.0f);
    }

    /* renamed from: b */
    private void m18088b(int i, float f, int i2) {
        if (this.f3737ab != null) {
            this.f3737ab.mo908a(i, f, i2);
        }
        if (this.f3736aa != null) {
            int size = this.f3736aa.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC1093f abstractC1093f = this.f3736aa.get(i3);
                if (abstractC1093f != null) {
                    abstractC1093f.mo908a(i, f, i2);
                }
            }
        }
        if (this.f3738ac != null) {
            this.f3738ac.mo908a(i, f, i2);
        }
    }

    /* renamed from: b */
    private void m18084b(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setLayerType(z ? this.f3741af : 0, null);
        }
    }

    /* renamed from: b */
    private boolean m18090b(float f) {
        boolean z;
        boolean z2;
        float f2;
        boolean z3 = true;
        float f3 = this.f3719G;
        this.f3719G = f;
        float scrollX = getScrollX() + (f3 - f);
        int clientWidth = getClientWidth();
        float f4 = clientWidth * this.f3762t;
        float f5 = clientWidth;
        float f6 = this.f3763u;
        C1089b c1089b = this.f3749g.get(0);
        C1089b c1089b2 = this.f3749g.get(this.f3749g.size() - 1);
        if (c1089b.f3773b != 0) {
            f4 = clientWidth * c1089b.f3776e;
            z = false;
        } else {
            z = true;
        }
        if (c1089b2.f3773b != this.f3746b.mo868b() - 1) {
            f2 = c1089b2.f3776e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
            f2 = f5 * f6;
        }
        if (scrollX < f4) {
            if (z) {
                this.f3730R.onPull(Math.abs(f4 - scrollX) / clientWidth);
            } else {
                z3 = false;
            }
        } else if (scrollX > f2) {
            if (z2) {
                this.f3731S.onPull(Math.abs(scrollX - f2) / clientWidth);
                z3 = true;
            } else {
                z3 = false;
            }
            f4 = f2;
        } else {
            f4 = scrollX;
            z3 = false;
        }
        this.f3719G += f4 - ((int) f4);
        scrollTo((int) f4, getScrollY());
        m18078d((int) f4);
        return z3;
    }

    /* renamed from: c */
    private void m18080c(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    /* renamed from: c */
    private static boolean m18081c(View view) {
        return view.getClass().getAnnotation(AbstractC1088a.class) != null;
    }

    /* renamed from: d */
    private boolean m18078d(int i) {
        boolean z = false;
        if (this.f3749g.size() != 0) {
            C1089b m18071i = m18071i();
            int clientWidth = getClientWidth();
            int i2 = this.f3758p;
            float f = this.f3758p / clientWidth;
            int i3 = m18071i.f3773b;
            float f2 = ((i / clientWidth) - m18071i.f3776e) / (m18071i.f3775d + f);
            this.f3734V = false;
            m18109a(i3, f2, (int) ((i2 + clientWidth) * f2));
            if (!this.f3734V) {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
            z = true;
        } else if (!this.f3732T) {
            this.f3734V = false;
            m18109a(0, 0.0f, 0);
            if (!this.f3734V) {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
        }
        return z;
    }

    /* renamed from: e */
    private void m18076e(int i) {
        if (this.f3737ab != null) {
            this.f3737ab.mo909a(i);
        }
        if (this.f3736aa != null) {
            int size = this.f3736aa.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC1093f abstractC1093f = this.f3736aa.get(i2);
                if (abstractC1093f != null) {
                    abstractC1093f.mo909a(i);
                }
            }
        }
        if (this.f3738ac != null) {
            this.f3738ac.mo909a(i);
        }
    }

    /* renamed from: f */
    private void m18075f() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < getChildCount()) {
                int i3 = i2;
                if (!((C1090c) getChildAt(i2).getLayoutParams()).f3777a) {
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
    private void m18074f(int i) {
        if (this.f3737ab != null) {
            this.f3737ab.mo904b(i);
        }
        if (this.f3736aa != null) {
            int size = this.f3736aa.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC1093f abstractC1093f = this.f3736aa.get(i2);
                if (abstractC1093f != null) {
                    abstractC1093f.mo904b(i);
                }
            }
        }
        if (this.f3738ac != null) {
            this.f3738ac.mo904b(i);
        }
    }

    /* renamed from: g */
    private void m18073g() {
        if (this.f3742ag != 0) {
            if (this.f3743ah == null) {
                this.f3743ah = new ArrayList<>();
            } else {
                this.f3743ah.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.f3743ah.add(getChildAt(i));
            }
            Collections.sort(this.f3743ah, f3710ai);
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    /* renamed from: h */
    private boolean m18072h() {
        this.f3723K = -1;
        m18070j();
        this.f3730R.onRelease();
        this.f3731S.onRelease();
        return this.f3730R.isFinished() || this.f3731S.isFinished();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c3, code lost:
        r13 = r14;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private androidx.viewpager.widget.ViewPager.C1089b m18071i() {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m18071i():androidx.viewpager.widget.ViewPager$b");
    }

    /* renamed from: j */
    private void m18070j() {
        this.f3714B = false;
        this.f3715C = false;
        if (this.f3724L != null) {
            this.f3724L.recycle();
            this.f3724L = null;
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.f3767y != z) {
            this.f3767y = z;
        }
    }

    /* renamed from: a */
    float m18112a(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* renamed from: a */
    C1089b m18107a(int i, int i2) {
        C1089b c1089b = new C1089b();
        c1089b.f3773b = i;
        c1089b.f3772a = this.f3746b.mo18054a((ViewGroup) this, i);
        c1089b.f3775d = this.f3746b.m18044d(i);
        if (i2 < 0 || i2 >= this.f3749g.size()) {
            this.f3749g.add(c1089b);
        } else {
            this.f3749g.add(i2, c1089b);
        }
        return c1089b;
    }

    /* renamed from: a */
    C1089b m18097a(View view) {
        C1089b c1089b;
        int i = 0;
        while (true) {
            if (i >= this.f3749g.size()) {
                c1089b = null;
                break;
            }
            C1089b c1089b2 = this.f3749g.get(i);
            if (this.f3746b.mo18056a(view, c1089b2.f3772a)) {
                c1089b = c1089b2;
                break;
            }
            i++;
        }
        return c1089b;
    }

    /* renamed from: a */
    void m18113a() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f3755m = new Scroller(context, f3712f);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.f3718F = viewConfiguration.getScaledPagingTouchSlop();
        this.f3725M = (int) (400.0f * f);
        this.f3726N = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f3730R = new EdgeEffect(context);
        this.f3731S = new EdgeEffect(context);
        this.f3727O = (int) (25.0f * f);
        this.f3728P = (int) (2.0f * f);
        this.f3716D = (int) (16.0f * f);
        C0595u.m20345a(this, new C1091d());
        if (C0595u.m20322f(this) == 0) {
            C0595u.m20335b(this, 1);
        }
        C0595u.m20343a(this, new AbstractC0591q() { // from class: androidx.viewpager.widget.ViewPager.4

            /* renamed from: b */
            private final Rect f3771b = new Rect();

            @Override // androidx.core.p026h.AbstractC0591q
            /* renamed from: a */
            public C0572ac mo2513a(View view, C0572ac c0572ac) {
                C0572ac m20344a = C0595u.m20344a(view, c0572ac);
                if (!m20344a.m20435e()) {
                    Rect rect = this.f3771b;
                    rect.left = m20344a.m20442a();
                    rect.top = m20344a.m20438b();
                    rect.right = m20344a.m20437c();
                    rect.bottom = m20344a.m20436d();
                    int childCount = ViewPager.this.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        C0572ac m20333b = C0595u.m20333b(ViewPager.this.getChildAt(i), m20344a);
                        rect.left = Math.min(m20333b.m20442a(), rect.left);
                        rect.top = Math.min(m20333b.m20438b(), rect.top);
                        rect.right = Math.min(m20333b.m20437c(), rect.right);
                        rect.bottom = Math.min(m20333b.m20436d(), rect.bottom);
                    }
                    m20344a = m20344a.m20441a(rect.left, rect.top, rect.right, rect.bottom);
                }
                return m20344a;
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x010c, code lost:
        if (r12.f3773b == r6.f3747c) goto L29;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00d1 -> B:17:0x007d). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m18110a(int r7) {
        /*
            Method dump skipped, instructions count: 1200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m18110a(int):void");
    }

    /* renamed from: a */
    protected void m18109a(int i, float f, int i2) {
        int measuredWidth;
        int i3;
        int i4;
        if (this.f3735W > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            int i5 = 0;
            while (i5 < childCount) {
                View childAt = getChildAt(i5);
                C1090c c1090c = (C1090c) childAt.getLayoutParams();
                if (!c1090c.f3777a) {
                    i4 = paddingLeft;
                    i3 = paddingRight;
                } else {
                    switch (c1090c.f3778b & 7) {
                        case 1:
                            measuredWidth = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case 2:
                        case 4:
                        default:
                            measuredWidth = paddingLeft;
                            break;
                        case 3:
                            measuredWidth = paddingLeft;
                            paddingLeft += childAt.getWidth();
                            break;
                        case 5:
                            measuredWidth = (width - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                            break;
                    }
                    int left = (measuredWidth + scrollX) - childAt.getLeft();
                    i3 = paddingRight;
                    i4 = paddingLeft;
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                        i3 = paddingRight;
                        i4 = paddingLeft;
                    }
                }
                i5++;
                paddingLeft = i4;
                paddingRight = i3;
            }
        }
        m18088b(i, f, i2);
        if (this.f3740ae != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i6 = 0; i6 < childCount2; i6++) {
                View childAt2 = getChildAt(i6);
                if (!((C1090c) childAt2.getLayoutParams()).f3777a) {
                    this.f3740ae.m18067a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.f3734V = true;
    }

    /* renamed from: a */
    void m18106a(int i, int i2, int i3) {
        int scrollX;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (this.f3755m != null && !this.f3755m.isFinished()) {
            scrollX = this.f3756n ? this.f3755m.getCurrX() : this.f3755m.getStartX();
            this.f3755m.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int scrollY = getScrollY();
        int i4 = i - scrollX;
        int i5 = i2 - scrollY;
        if (i4 == 0 && i5 == 0) {
            m18092a(false);
            m18083c();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i6 = clientWidth / 2;
        float f = i6;
        float f2 = i6;
        float m18112a = m18112a(Math.min(1.0f, (Math.abs(i4) * 1.0f) / clientWidth));
        int abs = Math.abs(i3);
        int min = Math.min(abs > 0 ? Math.round(1000.0f * Math.abs(((f2 * m18112a) + f) / abs)) * 4 : (int) (((Math.abs(i4) / ((clientWidth * this.f3746b.m18044d(this.f3747c)) + this.f3758p)) + 1.0f) * 100.0f), 600);
        this.f3756n = false;
        this.f3755m.startScroll(scrollX, scrollY, i4, i5, min);
        C0595u.m20324e(this);
    }

    /* renamed from: a */
    public void m18104a(int i, boolean z) {
        this.f3768z = false;
        m18102a(i, z, false);
    }

    /* renamed from: a */
    void m18102a(int i, boolean z, boolean z2) {
        m18101a(i, z, z2, 0);
    }

    /* renamed from: a */
    void m18101a(int i, boolean z, boolean z2, int i2) {
        int i3;
        if (this.f3746b == null || this.f3746b.mo868b() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.f3747c != i || this.f3749g.size() == 0) {
            if (i < 0) {
                i3 = 0;
            } else {
                i3 = i;
                if (i >= this.f3746b.mo868b()) {
                    i3 = this.f3746b.mo868b() - 1;
                }
            }
            int i4 = this.f3713A;
            if (i3 > this.f3747c + i4 || i3 < this.f3747c - i4) {
                for (int i5 = 0; i5 < this.f3749g.size(); i5++) {
                    this.f3749g.get(i5).f3774c = true;
                }
            }
            boolean z3 = false;
            if (this.f3747c != i3) {
                z3 = true;
            }
            if (!this.f3732T) {
                m18110a(i3);
                m18103a(i3, z, i2, z3);
                return;
            }
            this.f3747c = i3;
            if (z3) {
                m18076e(i3);
            }
            requestLayout();
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    /* renamed from: a */
    public void m18094a(AbstractC1092e abstractC1092e) {
        if (this.f3739ad == null) {
            this.f3739ad = new ArrayList();
        }
        this.f3739ad.add(abstractC1092e);
    }

    /* renamed from: a */
    public void m18093a(AbstractC1093f abstractC1093f) {
        if (this.f3736aa == null) {
            this.f3736aa = new ArrayList();
        }
        this.f3736aa.add(abstractC1093f);
    }

    /* renamed from: a */
    public boolean m18099a(KeyEvent keyEvent) {
        boolean z = false;
        if (keyEvent.getAction() == 0) {
            switch (keyEvent.getKeyCode()) {
                case 21:
                    if (!keyEvent.hasModifiers(2)) {
                        z = m18082c(17);
                        break;
                    } else {
                        z = m18079d();
                        break;
                    }
                case 22:
                    if (!keyEvent.hasModifiers(2)) {
                        z = m18082c(66);
                        break;
                    } else {
                        z = m18077e();
                        break;
                    }
                case 61:
                    if (!keyEvent.hasNoModifiers()) {
                        z = false;
                        if (keyEvent.hasModifiers(1)) {
                            z = m18082c(1);
                            break;
                        }
                    } else {
                        z = m18082c(2);
                        break;
                    }
                    break;
                default:
                    z = false;
                    break;
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a0, code lost:
        if (r9.canScrollHorizontally(-r11) == false) goto L25;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean m18096a(android.view.View r9, boolean r10, int r11, int r12, int r13) {
        /*
            r8 = this;
            r0 = 1
            r14 = r0
            r0 = r9
            boolean r0 = r0 instanceof android.view.ViewGroup
            if (r0 == 0) goto L93
            r0 = r9
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            r15 = r0
            r0 = r9
            int r0 = r0.getScrollX()
            r16 = r0
            r0 = r9
            int r0 = r0.getScrollY()
            r17 = r0
            r0 = r15
            int r0 = r0.getChildCount()
            r1 = 1
            int r0 = r0 - r1
            r18 = r0
        L25:
            r0 = r18
            if (r0 < 0) goto L93
            r0 = r15
            r1 = r18
            android.view.View r0 = r0.getChildAt(r1)
            r19 = r0
            r0 = r12
            r1 = r16
            int r0 = r0 + r1
            r1 = r19
            int r1 = r1.getLeft()
            if (r0 < r1) goto L8d
            r0 = r12
            r1 = r16
            int r0 = r0 + r1
            r1 = r19
            int r1 = r1.getRight()
            if (r0 >= r1) goto L8d
            r0 = r13
            r1 = r17
            int r0 = r0 + r1
            r1 = r19
            int r1 = r1.getTop()
            if (r0 < r1) goto L8d
            r0 = r13
            r1 = r17
            int r0 = r0 + r1
            r1 = r19
            int r1 = r1.getBottom()
            if (r0 >= r1) goto L8d
            r0 = r8
            r1 = r19
            r2 = 1
            r3 = r11
            r4 = r12
            r5 = r16
            int r4 = r4 + r5
            r5 = r19
            int r5 = r5.getLeft()
            int r4 = r4 - r5
            r5 = r13
            r6 = r17
            int r5 = r5 + r6
            r6 = r19
            int r6 = r6.getTop()
            int r5 = r5 - r6
            boolean r0 = r0.m18096a(r1, r2, r3, r4, r5)
            if (r0 == 0) goto L8d
            r0 = r14
            r10 = r0
        L8b:
            r0 = r10
            return r0
        L8d:
            int r18 = r18 + (-1)
            goto L25
        L93:
            r0 = r10
            if (r0 == 0) goto La3
            r0 = r14
            r10 = r0
            r0 = r9
            r1 = r11
            int r1 = -r1
            boolean r0 = r0.canScrollHorizontally(r1)
            if (r0 != 0) goto L8b
        La3:
            r0 = 0
            r10 = r0
            goto L8b
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m18096a(android.view.View, boolean, int, int, int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        C1089b m18097a;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (m18097a = m18097a(childAt)) != null && m18097a.f3773b == this.f3747c) {
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
        C1089b m18097a;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m18097a = m18097a(childAt)) != null && m18097a.f3773b == this.f3747c) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        C1090c c1090c = (C1090c) layoutParams;
        c1090c.f3777a |= m18081c(view);
        if (!this.f3766x) {
            super.addView(view, i, layoutParams);
        } else if (c1090c != null && c1090c.f3777a) {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        } else {
            c1090c.f3780d = true;
            addViewInLayout(view, i, layoutParams);
        }
    }

    /* renamed from: b */
    C1089b m18089b(int i) {
        C1089b c1089b;
        int i2 = 0;
        while (true) {
            if (i2 >= this.f3749g.size()) {
                c1089b = null;
                break;
            }
            c1089b = this.f3749g.get(i2);
            if (c1089b.f3773b == i) {
                break;
            }
            i2++;
        }
        return c1089b;
    }

    /* renamed from: b */
    C1089b m18087b(View view) {
        C1089b m18097a;
        while (true) {
            ViewParent parent = view.getParent();
            if (parent == this) {
                m18097a = m18097a(view);
                break;
            } else if (parent == null || !(parent instanceof View)) {
                break;
            } else {
                view = (View) parent;
            }
        }
        m18097a = null;
        return m18097a;
    }

    /* renamed from: b */
    void m18091b() {
        int i;
        boolean z;
        int i2;
        int mo868b = this.f3746b.mo868b();
        this.f3748d = mo868b;
        boolean z2 = this.f3749g.size() < (this.f3713A * 2) + 1 && this.f3749g.size() < mo868b;
        int i3 = this.f3747c;
        int i4 = 0;
        boolean z3 = false;
        while (i4 < this.f3749g.size()) {
            C1089b c1089b = this.f3749g.get(i4);
            int m18052a = this.f3746b.m18052a(c1089b.f3772a);
            if (m18052a == -1) {
                i2 = i3;
                z = z3;
                i = i4;
            } else if (m18052a == -2) {
                this.f3749g.remove(i4);
                i = i4 - 1;
                boolean z4 = z3;
                if (!z3) {
                    this.f3746b.mo18055a((ViewGroup) this);
                    z4 = true;
                }
                this.f3746b.mo18053a((ViewGroup) this, c1089b.f3773b, c1089b.f3772a);
                if (this.f3747c == c1089b.f3773b) {
                    i2 = Math.max(0, Math.min(this.f3747c, mo868b - 1));
                    z = z4;
                    z2 = true;
                } else {
                    z = z4;
                    i2 = i3;
                    z2 = true;
                }
            } else {
                i = i4;
                z = z3;
                i2 = i3;
                if (c1089b.f3773b != m18052a) {
                    if (c1089b.f3773b == this.f3747c) {
                        i3 = m18052a;
                    }
                    c1089b.f3773b = m18052a;
                    z2 = true;
                    i = i4;
                    z = z3;
                    i2 = i3;
                }
            }
            i4 = i + 1;
            z3 = z;
            i3 = i2;
        }
        if (z3) {
            this.f3746b.mo18048b((ViewGroup) this);
        }
        Collections.sort(this.f3749g, f3711e);
        if (z2) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                C1090c c1090c = (C1090c) getChildAt(i5).getLayoutParams();
                if (!c1090c.f3777a) {
                    c1090c.f3779c = 0.0f;
                }
            }
            m18102a(i3, false, true);
            requestLayout();
        }
    }

    /* renamed from: b */
    public void m18086b(AbstractC1092e abstractC1092e) {
        if (this.f3739ad != null) {
            this.f3739ad.remove(abstractC1092e);
        }
    }

    /* renamed from: b */
    public void m18085b(AbstractC1093f abstractC1093f) {
        if (this.f3736aa != null) {
            this.f3736aa.remove(abstractC1093f);
        }
    }

    /* renamed from: c */
    void m18083c() {
        m18110a(this.f3747c);
    }

    /* renamed from: c */
    public boolean m18082c(int i) {
        View view;
        boolean z;
        boolean z2;
        View findFocus = findFocus();
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
                        sb.append(" => ").append(viewParent2.getClass().getSimpleName());
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
                z2 = m18079d();
            } else {
                if (i == 66 || i == 2) {
                    z2 = m18077e();
                }
                z2 = false;
            }
        } else if (i == 17) {
            z2 = (view == null || m18100a(this.f3751i, findNextFocus).left < m18100a(this.f3751i, view).left) ? findNextFocus.requestFocus() : m18079d();
        } else {
            if (i == 66) {
                z2 = (view == null || m18100a(this.f3751i, findNextFocus).left > m18100a(this.f3751i, view).left) ? findNextFocus.requestFocus() : m18077e();
            }
            z2 = false;
        }
        if (z2) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return z2;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        boolean z = false;
        if (this.f3746b != null) {
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            if (i < 0) {
                z = scrollX > ((int) (((float) clientWidth) * this.f3762t));
            } else if (i > 0) {
                z = scrollX < ((int) (((float) clientWidth) * this.f3763u));
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C1090c) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f3756n = true;
        if (this.f3755m.isFinished() || !this.f3755m.computeScrollOffset()) {
            m18092a(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f3755m.getCurrX();
        int currY = this.f3755m.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!m18078d(currX)) {
                this.f3755m.abortAnimation();
                scrollTo(0, currY);
            }
        }
        C0595u.m20324e(this);
    }

    /* renamed from: d */
    boolean m18079d() {
        boolean z = true;
        if (this.f3747c > 0) {
            m18104a(this.f3747c - 1, true);
        } else {
            z = false;
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m18099a(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        boolean z;
        C1089b m18097a;
        if (accessibilityEvent.getEventType() != 4096) {
            int childCount = getChildCount();
            int i = 0;
            while (true) {
                z = false;
                if (i >= childCount) {
                    break;
                }
                View childAt = getChildAt(i);
                if (childAt.getVisibility() == 0 && (m18097a = m18097a(childAt)) != null && m18097a.f3773b == this.f3747c && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                    z = true;
                    break;
                }
                i++;
            }
        } else {
            z = super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        return z;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        boolean z = false;
        boolean z2 = false;
        int overScrollMode = getOverScrollMode();
        if (overScrollMode == 0 || (overScrollMode == 1 && this.f3746b != null && this.f3746b.mo868b() > 1)) {
            if (!this.f3730R.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.f3762t * width);
                this.f3730R.setSize(height, width);
                z2 = false | this.f3730R.draw(canvas);
                canvas.restoreToCount(save);
            }
            z = z2;
            if (!this.f3731S.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f3763u + 1.0f)) * width2);
                this.f3731S.setSize((height2 - paddingTop) - paddingBottom, width2);
                z = z2 | this.f3731S.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.f3730R.finish();
            this.f3731S.finish();
        }
        if (z) {
            C0595u.m20324e(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f3759q;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    /* renamed from: e */
    boolean m18077e() {
        boolean z = true;
        if (this.f3746b == null || this.f3747c >= this.f3746b.mo868b() - 1) {
            z = false;
        } else {
            m18104a(this.f3747c + 1, true);
        }
        return z;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C1090c();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C1090c(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public AbstractC1099a getAdapter() {
        return this.f3746b;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = i2;
        if (this.f3742ag == 2) {
            i3 = (i - 1) - i2;
        }
        return ((C1090c) this.f3743ah.get(i3).getLayoutParams()).f3782f;
    }

    public int getCurrentItem() {
        return this.f3747c;
    }

    public int getOffscreenPageLimit() {
        return this.f3713A;
    }

    public int getPageMargin() {
        return this.f3758p;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f3732T = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f3744aj);
        if (this.f3755m != null && !this.f3755m.isFinished()) {
            this.f3755m.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        super.onDraw(canvas);
        if (this.f3758p <= 0 || this.f3759q == null || this.f3749g.size() <= 0 || this.f3746b == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f2 = this.f3758p / width;
        C1089b c1089b = this.f3749g.get(0);
        float f3 = c1089b.f3776e;
        int size = this.f3749g.size();
        int i = this.f3749g.get(size - 1).f3773b;
        int i2 = 0;
        for (int i3 = c1089b.f3773b; i3 < i; i3++) {
            while (i3 > c1089b.f3773b && i2 < size) {
                i2++;
                c1089b = this.f3749g.get(i2);
            }
            if (i3 == c1089b.f3773b) {
                f = (c1089b.f3776e + c1089b.f3775d) * width;
                f3 = c1089b.f3776e + c1089b.f3775d + f2;
            } else {
                float m18044d = this.f3746b.m18044d(i3);
                f = (f3 + m18044d) * width;
                f3 += m18044d + f2;
            }
            if (this.f3758p + f > scrollX) {
                this.f3759q.setBounds(Math.round(f), this.f3760r, Math.round(this.f3758p + f), this.f3761s);
                this.f3759q.draw(canvas);
            }
            if (f > scrollX + width) {
                return;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0038, code lost:
        if (r7.f3715C == false) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0067  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C1089b m18097a;
        int i5;
        int i6;
        int i7;
        int measuredWidth;
        int measuredHeight;
        int childCount = getChildCount();
        int i8 = i3 - i;
        int i9 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i10 = 0;
        int i11 = 0;
        while (i11 < childCount) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                C1090c c1090c = (C1090c) childAt.getLayoutParams();
                if (c1090c.f3777a) {
                    int i12 = c1090c.f3778b;
                    int i13 = c1090c.f3778b;
                    switch (i12 & 7) {
                        case 1:
                            int max = Math.max((i8 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            int i14 = paddingRight;
                            i7 = paddingLeft;
                            i6 = i14;
                            measuredWidth = max;
                            break;
                        case 2:
                        case 4:
                        default:
                            measuredWidth = paddingLeft;
                            int i15 = paddingRight;
                            i7 = paddingLeft;
                            i6 = i15;
                            break;
                        case 3:
                            int measuredWidth2 = paddingLeft + childAt.getMeasuredWidth();
                            measuredWidth = paddingLeft;
                            i6 = paddingRight;
                            i7 = measuredWidth2;
                            break;
                        case 5:
                            measuredWidth = (i8 - paddingRight) - childAt.getMeasuredWidth();
                            int measuredWidth3 = paddingRight + childAt.getMeasuredWidth();
                            i7 = paddingLeft;
                            i6 = measuredWidth3;
                            break;
                    }
                    switch (i13 & 112) {
                        case 16:
                            measuredHeight = Math.max((i9 - childAt.getMeasuredHeight()) / 2, paddingTop);
                            break;
                        case 48:
                            measuredHeight = paddingTop;
                            paddingTop += childAt.getMeasuredHeight();
                            break;
                        case 80:
                            measuredHeight = (i9 - paddingBottom) - childAt.getMeasuredHeight();
                            paddingBottom += childAt.getMeasuredHeight();
                            break;
                        default:
                            measuredHeight = paddingTop;
                            break;
                    }
                    int i16 = measuredWidth + scrollX;
                    childAt.layout(i16, measuredHeight, childAt.getMeasuredWidth() + i16, childAt.getMeasuredHeight() + measuredHeight);
                    i5 = i10 + 1;
                    i11++;
                    int i17 = i6;
                    paddingLeft = i7;
                    paddingRight = i17;
                    i10 = i5;
                }
            }
            i5 = i10;
            int i18 = paddingLeft;
            i6 = paddingRight;
            i7 = i18;
            i11++;
            int i172 = i6;
            paddingLeft = i7;
            paddingRight = i172;
            i10 = i5;
        }
        int i19 = (i8 - paddingLeft) - paddingRight;
        for (int i20 = 0; i20 < childCount; i20++) {
            View childAt2 = getChildAt(i20);
            if (childAt2.getVisibility() != 8) {
                C1090c c1090c2 = (C1090c) childAt2.getLayoutParams();
                if (!c1090c2.f3777a && (m18097a = m18097a(childAt2)) != null) {
                    int i21 = ((int) (m18097a.f3776e * i19)) + paddingLeft;
                    if (c1090c2.f3780d) {
                        c1090c2.f3780d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (c1090c2.f3779c * i19), 1073741824), View.MeasureSpec.makeMeasureSpec((i9 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i21, paddingTop, childAt2.getMeasuredWidth() + i21, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.f3760r = paddingTop;
        this.f3761s = i9 - paddingBottom;
        this.f3735W = i10;
        if (this.f3732T) {
            m18103a(this.f3747c, false, 0, false);
        }
        this.f3732T = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0169  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        C1089b m18097a;
        boolean z = true;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = 1;
            i2 = 0;
        } else {
            i2 = childCount - 1;
            childCount = -1;
            i3 = -1;
        }
        while (true) {
            if (i2 == childCount) {
                z = false;
                break;
            }
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (m18097a = m18097a(childAt)) != null && m18097a.f3773b == this.f3747c && childAt.requestFocus(i, rect)) {
                break;
            }
            i2 += i3;
        }
        return z;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1096i)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1096i c1096i = (C1096i) parcelable;
        super.onRestoreInstanceState(c1096i.m20121a());
        if (this.f3746b != null) {
            this.f3746b.mo18060a(c1096i.f3786b, c1096i.f3787d);
            m18102a(c1096i.f3785a, false, true);
            return;
        }
        this.f3752j = c1096i.f3785a;
        this.f3753k = c1096i.f3786b;
        this.f3754l = c1096i.f3787d;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C1096i c1096i = new C1096i(super.onSaveInstanceState());
        c1096i.f3785a = this.f3747c;
        if (this.f3746b != null) {
            c1096i.f3786b = this.f3746b.mo18062a();
        }
        return c1096i;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            m18105a(i, i3, this.f3758p, this.f3758p);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.f3729Q) {
            z = true;
        } else if (motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) {
            z = false;
        } else if (this.f3746b == null || this.f3746b.mo868b() == 0) {
            z = false;
        } else {
            if (this.f3724L == null) {
                this.f3724L = VelocityTracker.obtain();
            }
            this.f3724L.addMovement(motionEvent);
            boolean z2 = false;
            switch (motionEvent.getAction() & 255) {
                case 0:
                    this.f3755m.abortAnimation();
                    this.f3768z = false;
                    m18083c();
                    float x = motionEvent.getX();
                    this.f3721I = x;
                    this.f3719G = x;
                    float y = motionEvent.getY();
                    this.f3722J = y;
                    this.f3720H = y;
                    this.f3723K = motionEvent.getPointerId(0);
                    z2 = false;
                    break;
                case 1:
                    z2 = false;
                    if (this.f3714B) {
                        VelocityTracker velocityTracker = this.f3724L;
                        velocityTracker.computeCurrentVelocity(1000, this.f3726N);
                        int xVelocity = (int) velocityTracker.getXVelocity(this.f3723K);
                        this.f3768z = true;
                        int clientWidth = getClientWidth();
                        int scrollX = getScrollX();
                        C1089b m18071i = m18071i();
                        m18101a(m18108a(m18071i.f3773b, ((scrollX / clientWidth) - m18071i.f3776e) / (m18071i.f3775d + (this.f3758p / clientWidth)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.f3723K)) - this.f3721I)), true, true, xVelocity);
                        z2 = m18072h();
                        break;
                    }
                    break;
                case 2:
                    if (!this.f3714B) {
                        int findPointerIndex = motionEvent.findPointerIndex(this.f3723K);
                        if (findPointerIndex == -1) {
                            z2 = m18072h();
                            break;
                        } else {
                            float x2 = motionEvent.getX(findPointerIndex);
                            float abs = Math.abs(x2 - this.f3719G);
                            float y2 = motionEvent.getY(findPointerIndex);
                            float abs2 = Math.abs(y2 - this.f3720H);
                            if (abs > this.f3718F && abs > abs2) {
                                this.f3714B = true;
                                m18080c(true);
                                this.f3719G = x2 - this.f3721I > 0.0f ? this.f3721I + this.f3718F : this.f3721I - this.f3718F;
                                this.f3720H = y2;
                                setScrollState(1);
                                setScrollingCacheEnabled(true);
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                    z2 = false;
                    if (this.f3714B) {
                        z2 = false | m18090b(motionEvent.getX(motionEvent.findPointerIndex(this.f3723K)));
                        break;
                    }
                    break;
                case 3:
                    z2 = false;
                    if (this.f3714B) {
                        m18103a(this.f3747c, true, 0, false);
                        z2 = m18072h();
                        break;
                    }
                    break;
                case 4:
                    break;
                case 5:
                    int actionIndex = motionEvent.getActionIndex();
                    this.f3719G = motionEvent.getX(actionIndex);
                    this.f3723K = motionEvent.getPointerId(actionIndex);
                    z2 = false;
                    break;
                case 6:
                    m18098a(motionEvent);
                    this.f3719G = motionEvent.getX(motionEvent.findPointerIndex(this.f3723K));
                    z2 = false;
                    break;
                default:
                    z2 = false;
                    break;
            }
            if (z2) {
                C0595u.m20324e(this);
            }
            z = true;
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f3766x) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(AbstractC1099a abstractC1099a) {
        if (this.f3746b != null) {
            this.f3746b.m18045c((DataSetObserver) null);
            this.f3746b.mo18055a((ViewGroup) this);
            for (int i = 0; i < this.f3749g.size(); i++) {
                C1089b c1089b = this.f3749g.get(i);
                this.f3746b.mo18053a((ViewGroup) this, c1089b.f3773b, c1089b.f3772a);
            }
            this.f3746b.mo18048b((ViewGroup) this);
            this.f3749g.clear();
            m18075f();
            this.f3747c = 0;
            scrollTo(0, 0);
        }
        AbstractC1099a abstractC1099a2 = this.f3746b;
        this.f3746b = abstractC1099a;
        this.f3748d = 0;
        if (this.f3746b != null) {
            if (this.f3757o == null) {
                this.f3757o = new C1095h();
            }
            this.f3746b.m18045c(this.f3757o);
            this.f3768z = false;
            boolean z = this.f3732T;
            this.f3732T = true;
            this.f3748d = this.f3746b.mo868b();
            if (this.f3752j >= 0) {
                this.f3746b.mo18060a(this.f3753k, this.f3754l);
                m18102a(this.f3752j, false, true);
                this.f3752j = -1;
                this.f3753k = null;
                this.f3754l = null;
            } else if (!z) {
                m18083c();
            } else {
                requestLayout();
            }
        }
        if (this.f3739ad == null || this.f3739ad.isEmpty()) {
            return;
        }
        int size = this.f3739ad.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f3739ad.get(i2).mo2430a(this, abstractC1099a2, abstractC1099a);
        }
    }

    public void setCurrentItem(int i) {
        this.f3768z = false;
        m18102a(i, !this.f3732T, false);
    }

    public void setOffscreenPageLimit(int i) {
        int i2 = i;
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.f3713A) {
            this.f3713A = i2;
            m18083c();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(AbstractC1093f abstractC1093f) {
        this.f3737ab = abstractC1093f;
    }

    public void setPageMargin(int i) {
        int i2 = this.f3758p;
        this.f3758p = i;
        int width = getWidth();
        m18105a(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(C0438a.m20900a(getContext(), i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f3759q = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    void setScrollState(int i) {
        if (this.f3745ak == i) {
            return;
        }
        this.f3745ak = i;
        if (this.f3740ae != null) {
            m18084b(i != 0);
        }
        m18074f(i);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f3759q;
    }
}
