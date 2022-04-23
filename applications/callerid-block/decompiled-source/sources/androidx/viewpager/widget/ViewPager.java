package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.core.content.C0265a;
import d.h.m.t;
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

    /* renamed from: h0 */
    static final int[] f2807h0 = {16842931};

    /* renamed from: i0 */
    private static final Comparator<C0527f> f2808i0 = new C0523a();

    /* renamed from: j0 */
    private static final Interpolator f2809j0 = new animationInterpolatorC0524b();

    /* renamed from: k0 */
    private static final C0532l f2810k0 = new C0532l();

    /* renamed from: A */
    private int f2811A;

    /* renamed from: B */
    private int f2812B;

    /* renamed from: C */
    private int f2813C;

    /* renamed from: D */
    private float f2814D;

    /* renamed from: E */
    private float f2815E;

    /* renamed from: F */
    private float f2816F;

    /* renamed from: G */
    private float f2817G;

    /* renamed from: I */
    private VelocityTracker f2819I;

    /* renamed from: J */
    private int f2820J;

    /* renamed from: K */
    private int f2821K;

    /* renamed from: L */
    private int f2822L;

    /* renamed from: M */
    private int f2823M;

    /* renamed from: N */
    private boolean f2824N;

    /* renamed from: O */
    private long f2825O;

    /* renamed from: P */
    private EdgeEffect f2826P;

    /* renamed from: Q */
    private EdgeEffect f2827Q;

    /* renamed from: S */
    private boolean f2829S;

    /* renamed from: T */
    private int f2830T;

    /* renamed from: U */
    private List<AbstractC0529i> f2831U;

    /* renamed from: V */
    private AbstractC0529i f2832V;

    /* renamed from: W */
    private AbstractC0529i f2833W;

    /* renamed from: a0 */
    private List<AbstractC0528h> f2834a0;

    /* renamed from: b */
    private int f2835b;

    /* renamed from: b0 */
    private AbstractC0530j f2836b0;

    /* renamed from: c0 */
    private int f2838c0;

    /* renamed from: d0 */
    private int f2840d0;

    /* renamed from: e0 */
    private ArrayList<View> f2842e0;

    /* renamed from: f */
    AbstractC0533a f2843f;

    /* renamed from: g */
    int f2845g;

    /* renamed from: k */
    private Scroller f2850k;

    /* renamed from: l */
    private boolean f2851l;

    /* renamed from: m */
    private C0531k f2852m;

    /* renamed from: n */
    private int f2853n;

    /* renamed from: o */
    private Drawable f2854o;

    /* renamed from: p */
    private int f2855p;

    /* renamed from: q */
    private int f2856q;

    /* renamed from: t */
    private int f2859t;

    /* renamed from: u */
    private boolean f2860u;

    /* renamed from: v */
    private boolean f2861v;

    /* renamed from: w */
    private boolean f2862w;

    /* renamed from: y */
    private boolean f2864y;

    /* renamed from: z */
    private boolean f2865z;

    /* renamed from: c */
    private final ArrayList<C0527f> f2837c = new ArrayList<>();

    /* renamed from: d */
    private final C0527f f2839d = new C0527f();

    /* renamed from: e */
    private final Rect f2841e = new Rect();

    /* renamed from: h */
    private int f2847h = -1;

    /* renamed from: i */
    private Parcelable f2848i = null;

    /* renamed from: j */
    private ClassLoader f2849j = null;

    /* renamed from: r */
    private float f2857r = -3.4028235E38f;

    /* renamed from: s */
    private float f2858s = Float.MAX_VALUE;

    /* renamed from: x */
    private int f2863x = 1;

    /* renamed from: H */
    private int f2818H = -1;

    /* renamed from: R */
    private boolean f2828R = true;

    /* renamed from: f0 */
    private final Runnable f2844f0 = new RunnableC0525c();

    /* renamed from: g0 */
    private int f2846g0 = 0;

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a */
        public boolean f2866a;

        /* renamed from: b */
        public int f2867b;

        /* renamed from: c */
        float f2868c = 0.0f;

        /* renamed from: d */
        boolean f2869d;

        /* renamed from: e */
        int f2870e;

        /* renamed from: f */
        int f2871f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f2807h0);
            this.f2867b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$a.class */
    static final class C0523a implements Comparator<C0527f> {
        C0523a() {
        }

        /* renamed from: a */
        public int compare(C0527f fVar, C0527f fVar2) {
            return fVar.f2874b - fVar2.f2874b;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$b  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$b.class */
    static final class animationInterpolatorC0524b implements Interpolator {
        animationInterpolatorC0524b() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$c */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$c.class */
    class RunnableC0525c implements Runnable {
        RunnableC0525c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.m11921I();
        }
    }

    @Inherited
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: androidx.viewpager.widget.ViewPager$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$e.class */
    public @interface AbstractC0526e {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager.widget.ViewPager$f */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$f.class */
    public static class C0527f {

        /* renamed from: a */
        Object f2873a;

        /* renamed from: b */
        int f2874b;

        /* renamed from: c */
        boolean f2875c;

        /* renamed from: d */
        float f2876d;

        /* renamed from: e */
        float f2877e;

        C0527f() {
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$h */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$h.class */
    public interface AbstractC0528h {
        /* renamed from: d */
        void m11877d(ViewPager viewPager, AbstractC0533a aVar, AbstractC0533a aVar2);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$i */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$i.class */
    public interface AbstractC0529i {
        /* renamed from: a */
        void mo54a(int i, float f, int i2);

        /* renamed from: b */
        void mo53b(int i);

        /* renamed from: c */
        void mo52c(int i);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$j */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$j.class */
    public interface AbstractC0530j {
        /* renamed from: a */
        void m11876a(View view, float f);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$k */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$k.class */
    private class C0531k extends DataSetObserver {
        C0531k() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.m11899i();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.m11899i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager.widget.ViewPager$l */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$l.class */
    public static class C0532l implements Comparator<View> {
        C0532l() {
        }

        /* renamed from: a */
        public int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            boolean z = layoutParams.f2866a;
            if (z == layoutParams2.f2866a) {
                return layoutParams.f2870e - layoutParams2.f2870e;
            }
            return z ? 1 : -1;
        }
    }

    public ViewPager(Context context) {
        super(context);
        m11883y();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m11883y();
    }

    /* renamed from: B */
    private boolean m11928B(float f, float f2) {
        return (f < ((float) this.f2812B) && f2 > 0.0f) || (f > ((float) (getWidth() - this.f2812B)) && f2 < 0.0f);
    }

    /* renamed from: D */
    private void m11926D(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f2818H) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f2814D = motionEvent.getX(i);
            this.f2818H = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f2819I;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* renamed from: G */
    private boolean m11923G(int i) {
        int i2;
        if (this.f2837c.size() != 0) {
            C0527f w = m11885w();
            int clientWidth = getClientWidth();
            float f = this.f2853n;
            float f2 = clientWidth;
            float f3 = f / f2;
            int i3 = w.f2874b;
            float f4 = ((i / f2) - w.f2877e) / (w.f2876d + f3);
            this.f2829S = false;
            m11927C(i3, f4, (int) ((clientWidth + i2) * f4));
            if (this.f2829S) {
                return true;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        } else if (this.f2828R) {
            return false;
        } else {
            this.f2829S = false;
            m11927C(0, 0.0f, 0);
            if (this.f2829S) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
    }

    /* renamed from: H */
    private boolean m11922H(float f) {
        boolean z;
        boolean z2;
        float f2 = this.f2814D;
        this.f2814D = f;
        float scrollX = getScrollX() + (f2 - f);
        float clientWidth = getClientWidth();
        float f3 = this.f2857r * clientWidth;
        float f4 = this.f2858s * clientWidth;
        r13 = false;
        r13 = false;
        boolean z3 = false;
        C0527f fVar = this.f2837c.get(0);
        ArrayList<C0527f> arrayList = this.f2837c;
        C0527f fVar2 = arrayList.get(arrayList.size() - 1);
        if (fVar.f2874b != 0) {
            f3 = fVar.f2877e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (fVar2.f2874b != this.f2843f.mo66e() - 1) {
            f4 = fVar2.f2877e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX >= f3) {
            f3 = scrollX;
            if (scrollX > f4) {
                if (z2) {
                    this.f2827Q.onPull(Math.abs(scrollX - f4) / clientWidth);
                    z3 = true;
                }
                f3 = f4;
            }
        } else if (z) {
            this.f2826P.onPull(Math.abs(f3 - scrollX) / clientWidth);
            z3 = true;
        }
        int i = (int) f3;
        this.f2814D += f3 - i;
        scrollTo(i, getScrollY());
        m11923G(i);
        return z3;
    }

    /* renamed from: K */
    private void m11919K(int i, int i2, int i3, int i4) {
        int min;
        if (i2 <= 0 || this.f2837c.isEmpty()) {
            C0527f x = m11884x(this.f2845g);
            min = (int) ((x != null ? Math.min(x.f2877e, this.f2858s) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
            if (min != getScrollX()) {
                m11900h(false);
            } else {
                return;
            }
        } else if (!this.f2850k.isFinished()) {
            this.f2850k.setFinalX(getCurrentItem() * getClientWidth());
            return;
        } else {
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            min = (int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - paddingLeft) - paddingRight) + i3));
        }
        scrollTo(min, getScrollY());
    }

    /* renamed from: L */
    private void m11918L() {
        int i = 0;
        while (i < getChildCount()) {
            int i2 = i;
            if (!((LayoutParams) getChildAt(i).getLayoutParams()).f2866a) {
                removeViewAt(i);
                i2 = i - 1;
            }
            i = i2 + 1;
        }
    }

    /* renamed from: O */
    private void m11915O(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    /* renamed from: P */
    private boolean m11914P() {
        this.f2818H = -1;
        m11892p();
        this.f2826P.onRelease();
        this.f2827Q.onRelease();
        return this.f2826P.isFinished() || this.f2827Q.isFinished();
    }

    /* renamed from: Q */
    private void m11913Q(int i, boolean z, int i2, boolean z2) {
        C0527f x = m11884x(i);
        int clientWidth = x != null ? (int) (getClientWidth() * Math.max(this.f2857r, Math.min(x.f2877e, this.f2858s))) : 0;
        if (z) {
            m11909U(clientWidth, 0, i2);
            if (z2) {
                m11896l(i);
                return;
            }
            return;
        }
        if (z2) {
            m11896l(i);
        }
        m11900h(false);
        scrollTo(clientWidth, 0);
        m11923G(clientWidth);
    }

    /* renamed from: V */
    private void m11908V() {
        if (this.f2840d0 != 0) {
            ArrayList<View> arrayList = this.f2842e0;
            if (arrayList == null) {
                this.f2842e0 = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.f2842e0.add(getChildAt(i));
            }
            Collections.sort(this.f2842e0, f2810k0);
        }
    }

    /* renamed from: f */
    private void m11902f(C0527f fVar, int i, C0527f fVar2) {
        int i2;
        int i3;
        C0527f fVar3;
        int i4;
        float f;
        C0527f fVar4;
        float f2;
        int e = this.f2843f.mo66e();
        int clientWidth = getClientWidth();
        float f3 = clientWidth > 0 ? this.f2853n / clientWidth : 0.0f;
        if (fVar2 != null) {
            int i5 = fVar2.f2874b;
            int i6 = fVar.f2874b;
            if (i5 < i6) {
                int i7 = 0;
                float f4 = fVar2.f2877e + fVar2.f2876d;
                float f5 = f3;
                while (true) {
                    float f6 = f4 + f5;
                    int i8 = i5 + 1;
                    if (i8 > fVar.f2874b || i7 >= this.f2837c.size()) {
                        break;
                    }
                    while (true) {
                        fVar4 = this.f2837c.get(i7);
                        i5 = i8;
                        f2 = f6;
                        if (i8 <= fVar4.f2874b) {
                            break;
                        }
                        i5 = i8;
                        f2 = f6;
                        if (i7 >= this.f2837c.size() - 1) {
                            break;
                        }
                        i7++;
                    }
                    while (i5 < fVar4.f2874b) {
                        f2 += this.f2843f.m11869h(i5) + f3;
                        i5++;
                    }
                    fVar4.f2877e = f2;
                    f4 = f2;
                    f5 = fVar4.f2876d + f3;
                }
            } else if (i5 > i6) {
                int size = this.f2837c.size() - 1;
                float f7 = fVar2.f2877e;
                for (int i9 = i5 - 1; i9 >= fVar.f2874b && size >= 0; i9 = i4 - 1) {
                    while (true) {
                        fVar3 = this.f2837c.get(size);
                        i4 = i9;
                        f = f7;
                        if (i9 >= fVar3.f2874b) {
                            break;
                        }
                        i4 = i9;
                        f = f7;
                        if (size <= 0) {
                            break;
                        }
                        size--;
                    }
                    while (i4 > fVar3.f2874b) {
                        f -= this.f2843f.m11869h(i4) + f3;
                        i4--;
                    }
                    f7 = f - (fVar3.f2876d + f3);
                    fVar3.f2877e = f7;
                }
            }
        }
        int size2 = this.f2837c.size();
        float f8 = fVar.f2877e;
        int i10 = fVar.f2874b;
        int i11 = i10 - 1;
        this.f2857r = i10 == 0 ? f8 : -3.4028235E38f;
        int i12 = e - 1;
        this.f2858s = i10 == i12 ? (fVar.f2876d + f8) - 1.0f : Float.MAX_VALUE;
        int i13 = i - 1;
        while (i13 >= 0) {
            C0527f fVar5 = this.f2837c.get(i13);
            while (true) {
                i3 = fVar5.f2874b;
                if (i11 <= i3) {
                    break;
                }
                f8 -= this.f2843f.m11869h(i11) + f3;
                i11--;
            }
            f8 -= fVar5.f2876d + f3;
            fVar5.f2877e = f8;
            if (i3 == 0) {
                this.f2857r = f8;
            }
            i13--;
            i11--;
        }
        float f9 = fVar.f2877e + fVar.f2876d + f3;
        int i14 = fVar.f2874b + 1;
        int i15 = i + 1;
        while (i15 < size2) {
            C0527f fVar6 = this.f2837c.get(i15);
            while (true) {
                i2 = fVar6.f2874b;
                if (i14 >= i2) {
                    break;
                }
                f9 += this.f2843f.m11869h(i14) + f3;
                i14++;
            }
            if (i2 == i12) {
                this.f2858s = (fVar6.f2876d + f9) - 1.0f;
            }
            fVar6.f2877e = f9;
            f9 += fVar6.f2876d + f3;
            i15++;
            i14++;
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    /* renamed from: h */
    private void m11900h(boolean z) {
        boolean z2 = this.f2846g0 == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.f2850k.isFinished()) {
                this.f2850k.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f2850k.getCurrX();
                int currY = this.f2850k.getCurrY();
                if (!(scrollX == currX && scrollY == currY)) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m11923G(currX);
                    }
                }
            }
        }
        this.f2862w = false;
        for (int i = 0; i < this.f2837c.size(); i++) {
            C0527f fVar = this.f2837c.get(i);
            if (fVar.f2875c) {
                fVar.f2875c = false;
                z2 = true;
            }
        }
        if (!z2) {
            return;
        }
        if (z) {
            t.f0(this, this.f2844f0);
        } else {
            this.f2844f0.run();
        }
    }

    /* renamed from: j */
    private int m11898j(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.f2822L || Math.abs(i2) <= this.f2820J) {
            i += (int) (f + (i >= this.f2845g ? 0.4f : 0.6f));
        } else if (i2 <= 0) {
            i++;
        }
        int i4 = i;
        if (this.f2837c.size() > 0) {
            C0527f fVar = this.f2837c.get(0);
            ArrayList<C0527f> arrayList = this.f2837c;
            i4 = Math.max(fVar.f2874b, Math.min(i, arrayList.get(arrayList.size() - 1).f2874b));
        }
        return i4;
    }

    /* renamed from: k */
    private void m11897k(int i, float f, int i2) {
        AbstractC0529i iVar = this.f2832V;
        if (iVar != null) {
            iVar.mo54a(i, f, i2);
        }
        List<AbstractC0529i> list = this.f2831U;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC0529i iVar2 = this.f2831U.get(i3);
                if (iVar2 != null) {
                    iVar2.mo54a(i, f, i2);
                }
            }
        }
        AbstractC0529i iVar3 = this.f2833W;
        if (iVar3 != null) {
            iVar3.mo54a(i, f, i2);
        }
    }

    /* renamed from: l */
    private void m11896l(int i) {
        AbstractC0529i iVar = this.f2832V;
        if (iVar != null) {
            iVar.mo52c(i);
        }
        List<AbstractC0529i> list = this.f2831U;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0529i iVar2 = this.f2831U.get(i2);
                if (iVar2 != null) {
                    iVar2.mo52c(i);
                }
            }
        }
        AbstractC0529i iVar3 = this.f2833W;
        if (iVar3 != null) {
            iVar3.mo52c(i);
        }
    }

    /* renamed from: m */
    private void m11895m(int i) {
        AbstractC0529i iVar = this.f2832V;
        if (iVar != null) {
            iVar.mo53b(i);
        }
        List<AbstractC0529i> list = this.f2831U;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0529i iVar2 = this.f2831U.get(i2);
                if (iVar2 != null) {
                    iVar2.mo53b(i);
                }
            }
        }
        AbstractC0529i iVar3 = this.f2833W;
        if (iVar3 != null) {
            iVar3.mo53b(i);
        }
    }

    /* renamed from: o */
    private void m11893o(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setLayerType(z ? this.f2838c0 : 0, null);
        }
    }

    /* renamed from: p */
    private void m11892p() {
        this.f2864y = false;
        this.f2865z = false;
        VelocityTracker velocityTracker = this.f2819I;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f2819I = null;
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.f2861v != z) {
            this.f2861v = z;
        }
    }

    /* renamed from: t */
    private Rect m11888t(Rect rect, View view) {
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
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    /* renamed from: w */
    private C0527f m11885w() {
        int clientWidth = getClientWidth();
        float f = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.f2853n / clientWidth : 0.0f;
        C0527f fVar = null;
        float f3 = 0.0f;
        int i = -1;
        int i2 = 0;
        boolean z = true;
        while (i2 < this.f2837c.size()) {
            C0527f fVar2 = this.f2837c.get(i2);
            int i3 = i2;
            C0527f fVar3 = fVar2;
            if (!z) {
                int i4 = i + 1;
                i3 = i2;
                fVar3 = fVar2;
                if (fVar2.f2874b != i4) {
                    fVar3 = this.f2839d;
                    fVar3.f2877e = f + f3 + f2;
                    fVar3.f2874b = i4;
                    fVar3.f2876d = this.f2843f.m11869h(i4);
                    i3 = i2 - 1;
                }
            }
            f = fVar3.f2877e;
            float f4 = fVar3.f2876d;
            if (!z && scrollX < f) {
                return fVar;
            }
            if (scrollX < f4 + f + f2 || i3 == this.f2837c.size() - 1) {
                return fVar3;
            }
            i = fVar3.f2874b;
            f3 = fVar3.f2876d;
            i2 = i3 + 1;
            z = false;
            fVar = fVar3;
        }
        return fVar;
    }

    /* renamed from: z */
    private static boolean m11882z(View view) {
        return view.getClass().getAnnotation(AbstractC0526e.class) != null;
    }

    /* renamed from: A */
    public boolean m11929A() {
        return this.f2824N;
    }

    /* renamed from: C */
    protected void m11927C(int i, float f, int i2) {
        int i3;
        if (this.f2830T > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f2866a) {
                    int i5 = layoutParams.f2867b & 7;
                    if (i5 == 1) {
                        i3 = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    } else if (i5 == 3) {
                        paddingLeft = childAt.getWidth() + paddingLeft;
                        i3 = paddingLeft;
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
        m11897k(i, f, i2);
        if (this.f2836b0 != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i6 = 0; i6 < childCount2; i6++) {
                View childAt2 = getChildAt(i6);
                if (!((LayoutParams) childAt2.getLayoutParams()).f2866a) {
                    this.f2836b0.m11876a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.f2829S = true;
    }

    /* renamed from: E */
    boolean m11925E() {
        int i = this.f2845g;
        if (i <= 0) {
            return false;
        }
        setCurrentItem(i - 1, true);
        return true;
    }

    /* renamed from: F */
    boolean m11924F() {
        AbstractC0533a aVar = this.f2843f;
        if (aVar == null || this.f2845g >= aVar.mo66e() - 1) {
            return false;
        }
        setCurrentItem(this.f2845g + 1, true);
        return true;
    }

    /* renamed from: I */
    void m11921I() {
        m11920J(this.f2845g);
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x033a, code lost:
        if (r8 < r6.f2837c.size()) goto L_0x02f2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0365, code lost:
        if (r8 < r6.f2837c.size()) goto L_0x02f2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a3, code lost:
        if (r0 == r0) goto L_0x00b2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x019a, code lost:
        if (r14 >= 0) goto L_0x01f2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01c8, code lost:
        if (r14 >= 0) goto L_0x01f2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01ef, code lost:
        if (r14 >= 0) goto L_0x01f2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01f2, code lost:
        r13 = r6.f2837c.get(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0207, code lost:
        r13 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x02ef, code lost:
        if (r8 < r6.f2837c.size()) goto L_0x02f2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x02f2, code lost:
        r13 = r6.f2837c.get(r8);
        r14 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0309, code lost:
        r13 = null;
     */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m11920J(int r7) {
        /*
            Method dump skipped, instructions count: 1263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m11920J(int):void");
    }

    /* renamed from: M */
    public void m11917M(AbstractC0528h hVar) {
        List<AbstractC0528h> list = this.f2834a0;
        if (list != null) {
            list.remove(hVar);
        }
    }

    /* renamed from: N */
    public void m11916N(AbstractC0529i iVar) {
        List<AbstractC0529i> list = this.f2831U;
        if (list != null) {
            list.remove(iVar);
        }
    }

    /* renamed from: R */
    void m11912R(int i, boolean z, boolean z2) {
        m11911S(i, z, z2, 0);
    }

    /* renamed from: S */
    void m11911S(int i, boolean z, boolean z2, int i2) {
        int i3;
        AbstractC0533a aVar = this.f2843f;
        boolean z3 = false;
        if (aVar == null || aVar.mo66e() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.f2845g != i || this.f2837c.size() == 0) {
            if (i < 0) {
                i3 = 0;
            } else {
                i3 = i;
                if (i >= this.f2843f.mo66e()) {
                    i3 = this.f2843f.mo66e() - 1;
                }
            }
            int i4 = this.f2863x;
            int i5 = this.f2845g;
            if (i3 > i5 + i4 || i3 < i5 - i4) {
                for (int i6 = 0; i6 < this.f2837c.size(); i6++) {
                    this.f2837c.get(i6).f2875c = true;
                }
            }
            if (this.f2845g != i3) {
                z3 = true;
            }
            if (this.f2828R) {
                this.f2845g = i3;
                if (z3) {
                    m11896l(i3);
                }
                requestLayout();
                return;
            }
            m11920J(i3);
            m11913Q(i3, z, i2, z3);
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: T */
    public AbstractC0529i m11910T(AbstractC0529i iVar) {
        AbstractC0529i iVar2 = this.f2833W;
        this.f2833W = iVar;
        return iVar2;
    }

    /* renamed from: U */
    void m11909U(int i, int i2, int i3) {
        int i4;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.f2850k;
        if (scroller != null && !scroller.isFinished()) {
            i4 = this.f2851l ? this.f2850k.getCurrX() : this.f2850k.getStartX();
            this.f2850k.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            i4 = getScrollX();
        }
        int scrollY = getScrollY();
        int i5 = i - i4;
        int i6 = i2 - scrollY;
        if (i5 == 0 && i6 == 0) {
            m11900h(false);
            m11921I();
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
        float n = m11894n(Math.min(1.0f, (abs * 1.0f) / f));
        int abs2 = Math.abs(i3);
        int min = Math.min(abs2 > 0 ? Math.round(Math.abs((f2 + (n * f2)) / abs2) * 1000.0f) * 4 : (int) (((Math.abs(i5) / ((f * this.f2843f.m11869h(this.f2845g)) + this.f2853n)) + 1.0f) * 100.0f), 600);
        this.f2851l = false;
        this.f2850k.startScroll(i4, scrollY, i5, i6, min);
        t.d0(this);
    }

    /* renamed from: a */
    C0527f m11907a(int i, int i2) {
        C0527f fVar = new C0527f();
        fVar.f2874b = i;
        fVar.f2873a = this.f2843f.mo65j(this, i);
        fVar.f2876d = this.f2843f.m11869h(i);
        if (i2 < 0 || i2 >= this.f2837c.size()) {
            this.f2837c.add(fVar);
        } else {
            this.f2837c.add(i2, fVar);
        }
        return fVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        C0527f v;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (v = m11886v(childAt)) != null && v.f2874b == this.f2845g) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability == 262144 && size != arrayList.size()) || !isFocusable()) {
            return;
        }
        if (((i2 & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) && arrayList != null) {
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        C0527f v;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (v = m11886v(childAt)) != null && v.f2874b == this.f2845g) {
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
        LayoutParams layoutParams3 = (LayoutParams) layoutParams2;
        boolean z = layoutParams3.f2866a | m11882z(view);
        layoutParams3.f2866a = z;
        if (!this.f2860u) {
            super.addView(view, i, layoutParams2);
        } else if (layoutParams3 == null || !z) {
            layoutParams3.f2869d = true;
            addViewInLayout(view, i, layoutParams2);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    /* renamed from: b */
    public void m11906b(AbstractC0528h hVar) {
        if (this.f2834a0 == null) {
            this.f2834a0 = new ArrayList();
        }
        this.f2834a0.add(hVar);
    }

    /* renamed from: c */
    public void m11905c(AbstractC0529i iVar) {
        if (this.f2831U == null) {
            this.f2831U = new ArrayList();
        }
        this.f2831U.add(iVar);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        boolean z = false;
        if (this.f2843f == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            if (scrollX > ((int) (clientWidth * this.f2857r))) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (i > 0) {
            z2 = false;
            if (scrollX < ((int) (clientWidth * this.f2858s))) {
                z2 = true;
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f2851l = true;
        if (this.f2850k.isFinished() || !this.f2850k.computeScrollOffset()) {
            m11900h(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f2850k.getCurrX();
        int currY = this.f2850k.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!m11923G(currX)) {
                this.f2850k.abortAnimation();
                scrollTo(0, currY);
            }
        }
        t.d0(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0172  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m11904d(int r6) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m11904d(int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m11890r(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C0527f v;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (v = m11886v(childAt)) != null && v.f2874b == this.f2845g && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        AbstractC0533a aVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        boolean z2 = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (aVar = this.f2843f) != null && aVar.mo66e() > 1)) {
            if (!this.f2826P.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.f2857r * width);
                this.f2826P.setSize(height, width);
                z2 = false | this.f2826P.draw(canvas);
                canvas.restoreToCount(save);
            }
            z = z2;
            if (!this.f2827Q.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f2858s + 1.0f)) * width2);
                this.f2827Q.setSize((height2 - paddingTop) - paddingBottom, width2);
                z = z2 | this.f2827Q.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.f2826P.finish();
            this.f2827Q.finish();
        }
        if (z) {
            t.d0(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f2854o;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    /* renamed from: e */
    public boolean m11903e() {
        if (this.f2864y) {
            return false;
        }
        this.f2824N = true;
        setScrollState(1);
        this.f2814D = 0.0f;
        this.f2816F = 0.0f;
        VelocityTracker velocityTracker = this.f2819I;
        if (velocityTracker == null) {
            this.f2819I = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, 0.0f, 0.0f, 0);
        this.f2819I.addMovement(obtain);
        obtain.recycle();
        this.f2825O = uptimeMillis;
        return true;
    }

    /* renamed from: g */
    protected boolean m11901g(View view, boolean z, int i, int i2, int i3) {
        int i4;
        boolean z2 = true;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && m11901g(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        if (!z || !view.canScrollHorizontally(-i)) {
            z2 = false;
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public AbstractC0533a getAdapter() {
        return this.f2843f;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = i2;
        if (this.f2840d0 == 2) {
            i3 = (i - 1) - i2;
        }
        return ((LayoutParams) this.f2842e0.get(i3).getLayoutParams()).f2871f;
    }

    public int getCurrentItem() {
        return this.f2845g;
    }

    public int getOffscreenPageLimit() {
        return this.f2863x;
    }

    public int getPageMargin() {
        return this.f2853n;
    }

    /* renamed from: i */
    void m11899i() {
        int e = this.f2843f.mo66e();
        this.f2835b = e;
        boolean z = this.f2837c.size() < (this.f2863x * 2) + 1 && this.f2837c.size() < e;
        int i = this.f2845g;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < this.f2837c.size()) {
            C0527f fVar = this.f2837c.get(i2);
            int f = this.f2843f.m11871f(fVar.f2873a);
            if (f == -1) {
                i = i;
                i2 = i2;
                z2 = z2;
            } else {
                if (f == -2) {
                    this.f2837c.remove(i2);
                    int i3 = i2 - 1;
                    boolean z3 = z2;
                    if (!z2) {
                        this.f2843f.m11860s(this);
                        z3 = true;
                    }
                    this.f2843f.mo67b(this, fVar.f2874b, fVar.f2873a);
                    int i4 = this.f2845g;
                    i2 = i3;
                    z2 = z3;
                    if (i4 == fVar.f2874b) {
                        i = Math.max(0, Math.min(i4, e - 1));
                        z2 = z3;
                        i2 = i3;
                    }
                } else {
                    int i5 = fVar.f2874b;
                    i = i;
                    i2 = i2;
                    z2 = z2;
                    if (i5 != f) {
                        if (i5 == this.f2845g) {
                            i = f;
                        }
                        fVar.f2874b = f;
                    }
                }
                z = true;
            }
            i2++;
        }
        if (z2) {
            this.f2843f.m11872d(this);
        }
        Collections.sort(this.f2837c, f2808i0);
        if (z) {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i6).getLayoutParams();
                if (!layoutParams.f2866a) {
                    layoutParams.f2868c = 0.0f;
                }
            }
            m11912R(i, false, true);
            requestLayout();
        }
    }

    /* renamed from: n */
    float m11894n(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2828R = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f2844f0);
        Scroller scroller = this.f2850k;
        if (scroller != null && !scroller.isFinished()) {
            this.f2850k.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        int i;
        float f;
        super.onDraw(canvas);
        if (this.f2853n > 0 && this.f2854o != null && this.f2837c.size() > 0 && this.f2843f != null) {
            int scrollX = getScrollX();
            float width2 = getWidth();
            float f2 = this.f2853n / width2;
            int i2 = 0;
            C0527f fVar = this.f2837c.get(0);
            float f3 = fVar.f2877e;
            int size = this.f2837c.size();
            int i3 = this.f2837c.get(size - 1).f2874b;
            for (int i4 = fVar.f2874b; i4 < i3; i4++) {
                while (true) {
                    i = fVar.f2874b;
                    if (i4 <= i || i2 >= size) {
                        break;
                    }
                    i2++;
                    fVar = this.f2837c.get(i2);
                }
                if (i4 == i) {
                    float f4 = fVar.f2877e;
                    float f5 = fVar.f2876d;
                    f = (f4 + f5) * width2;
                    f3 = f4 + f5 + f2;
                } else {
                    float h = this.f2843f.m11869h(i4);
                    f = (f3 + h) * width2;
                    f3 += h + f2;
                }
                if (this.f2853n + f > scrollX) {
                    this.f2854o.setBounds(Math.round(f), this.f2855p, Math.round(this.f2853n + f), this.f2856q);
                    this.f2854o.draw(canvas);
                }
                if (f > scrollX + width) {
                    return;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            m11914P();
            return false;
        }
        if (action != 0) {
            if (this.f2864y) {
                return true;
            }
            if (this.f2865z) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.f2816F = x;
            this.f2814D = x;
            float y = motionEvent.getY();
            this.f2817G = y;
            this.f2815E = y;
            this.f2818H = motionEvent.getPointerId(0);
            this.f2865z = false;
            this.f2851l = true;
            this.f2850k.computeScrollOffset();
            if (this.f2846g0 != 2 || Math.abs(this.f2850k.getFinalX() - this.f2850k.getCurrX()) <= this.f2823M) {
                m11900h(false);
                this.f2864y = false;
            } else {
                this.f2850k.abortAnimation();
                this.f2862w = false;
                m11921I();
                this.f2864y = true;
                m11915O(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i = this.f2818H;
            if (i != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(findPointerIndex);
                float f = x2 - this.f2814D;
                float abs = Math.abs(f);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.f2817G);
                if (f == 0.0f || m11928B(this.f2814D, f) || !m11901g(this, false, (int) f, (int) x2, (int) y2)) {
                    int i2 = this.f2813C;
                    if (abs > i2 && abs * 0.5f > abs2) {
                        this.f2864y = true;
                        m11915O(true);
                        setScrollState(1);
                        this.f2814D = f > 0.0f ? this.f2816F + this.f2813C : this.f2816F - this.f2813C;
                        this.f2815E = y2;
                        setScrollingCacheEnabled(true);
                    } else if (abs2 > i2) {
                        this.f2865z = true;
                    }
                    if (this.f2864y && m11922H(x2)) {
                        t.d0(this);
                    }
                } else {
                    this.f2814D = x2;
                    this.f2815E = y2;
                    this.f2865z = true;
                    return false;
                }
            }
        } else if (action == 6) {
            m11926D(motionEvent);
        }
        if (this.f2819I == null) {
            this.f2819I = VelocityTracker.obtain();
        }
        this.f2819I.addMovement(motionEvent);
        return this.f2864y;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0143  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        C0527f v;
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
            if (childAt.getVisibility() == 0 && (v = m11886v(childAt)) != null && v.f2874b == this.f2845g && childAt.requestFocus(i, rect)) {
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
        super.onRestoreInstanceState(savedState.m13379a());
        AbstractC0533a aVar = this.f2843f;
        if (aVar != null) {
            aVar.m11866m(savedState.e, savedState.f);
            m11912R(savedState.d, false, true);
            return;
        }
        this.f2847h = savedState.d;
        this.f2848i = savedState.e;
        this.f2849j = savedState.f;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.d = this.f2845g;
        AbstractC0533a aVar = this.f2843f;
        if (aVar != null) {
            savedState.e = aVar.m11865n();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.f2853n;
            m11919K(i, i3, i5, i5);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: q */
    public void m11891q() {
        if (this.f2824N) {
            if (this.f2843f != null) {
                VelocityTracker velocityTracker = this.f2819I;
                velocityTracker.computeCurrentVelocity(1000, this.f2821K);
                int xVelocity = (int) velocityTracker.getXVelocity(this.f2818H);
                this.f2862w = true;
                int clientWidth = getClientWidth();
                int scrollX = getScrollX();
                C0527f w = m11885w();
                m11911S(m11898j(w.f2874b, ((scrollX / clientWidth) - w.f2877e) / w.f2876d, xVelocity, (int) (this.f2814D - this.f2816F)), true, true, xVelocity);
            }
            m11892p();
            this.f2824N = false;
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    /* renamed from: r */
    public boolean m11890r(KeyEvent keyEvent) {
        boolean z;
        int i;
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 21) {
                if (keyCode != 22) {
                    if (keyCode == 61) {
                        if (keyEvent.hasNoModifiers()) {
                            z = m11904d(2);
                        } else if (keyEvent.hasModifiers(1)) {
                            z = m11904d(1);
                        }
                    }
                } else if (keyEvent.hasModifiers(2)) {
                    z = m11924F();
                } else {
                    i = 66;
                    z = m11904d(i);
                }
            } else if (keyEvent.hasModifiers(2)) {
                z = m11925E();
            } else {
                i = 17;
                z = m11904d(i);
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f2860u) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* renamed from: s */
    public void m11889s(float f) {
        if (!this.f2824N) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        } else if (this.f2843f != null) {
            this.f2814D += f;
            float scrollX = getScrollX() - f;
            float clientWidth = getClientWidth();
            float f2 = this.f2857r * clientWidth;
            float f3 = this.f2858s * clientWidth;
            C0527f fVar = this.f2837c.get(0);
            ArrayList<C0527f> arrayList = this.f2837c;
            C0527f fVar2 = arrayList.get(arrayList.size() - 1);
            if (fVar.f2874b != 0) {
                f2 = fVar.f2877e * clientWidth;
            }
            if (fVar2.f2874b != this.f2843f.mo66e() - 1) {
                f3 = fVar2.f2877e * clientWidth;
            }
            if (scrollX >= f2) {
                f2 = scrollX;
                if (scrollX > f3) {
                    f2 = f3;
                }
            }
            int i = (int) f2;
            this.f2814D += f2 - i;
            scrollTo(i, getScrollY());
            m11923G(i);
            MotionEvent obtain = MotionEvent.obtain(this.f2825O, SystemClock.uptimeMillis(), 2, this.f2814D, 0.0f, 0);
            this.f2819I.addMovement(obtain);
            obtain.recycle();
        }
    }

    public void setAdapter(AbstractC0533a aVar) {
        AbstractC0533a aVar2 = this.f2843f;
        if (aVar2 != null) {
            aVar2.m11862q(null);
            this.f2843f.m11860s(this);
            for (int i = 0; i < this.f2837c.size(); i++) {
                C0527f fVar = this.f2837c.get(i);
                this.f2843f.mo67b(this, fVar.f2874b, fVar.f2873a);
            }
            this.f2843f.m11872d(this);
            this.f2837c.clear();
            m11918L();
            this.f2845g = 0;
            scrollTo(0, 0);
        }
        AbstractC0533a aVar3 = this.f2843f;
        this.f2843f = aVar;
        this.f2835b = 0;
        if (aVar != null) {
            if (this.f2852m == null) {
                this.f2852m = new C0531k();
            }
            this.f2843f.m11862q(this.f2852m);
            this.f2862w = false;
            boolean z = this.f2828R;
            this.f2828R = true;
            this.f2835b = this.f2843f.mo66e();
            if (this.f2847h >= 0) {
                this.f2843f.m11866m(this.f2848i, this.f2849j);
                m11912R(this.f2847h, false, true);
                this.f2847h = -1;
                this.f2848i = null;
                this.f2849j = null;
            } else if (!z) {
                m11921I();
            } else {
                requestLayout();
            }
        }
        List<AbstractC0528h> list = this.f2834a0;
        if (!(list == null || list.isEmpty())) {
            int size = this.f2834a0.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f2834a0.get(i2).m11877d(this, aVar3, aVar);
            }
        }
    }

    public void setCurrentItem(int i) {
        this.f2862w = false;
        m11912R(i, !this.f2828R, false);
    }

    public void setCurrentItem(int i, boolean z) {
        this.f2862w = false;
        m11912R(i, z, false);
    }

    public void setOffscreenPageLimit(int i) {
        int i2 = i;
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.f2863x) {
            this.f2863x = i2;
            m11921I();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(AbstractC0529i iVar) {
        this.f2832V = iVar;
    }

    public void setPageMargin(int i) {
        int i2 = this.f2853n;
        this.f2853n = i;
        int width = getWidth();
        m11919K(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(C0265a.m13551f(getContext(), i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f2854o = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageTransformer(boolean z, AbstractC0530j jVar) {
        setPageTransformer(z, jVar, 2);
    }

    public void setPageTransformer(boolean z, AbstractC0530j jVar, int i) {
        int i2 = 1;
        boolean z2 = jVar != null;
        boolean z3 = z2 != (this.f2836b0 != null);
        this.f2836b0 = jVar;
        setChildrenDrawingOrderEnabled(z2);
        if (z2) {
            if (z) {
                i2 = 2;
            }
            this.f2840d0 = i2;
            this.f2838c0 = i;
        } else {
            this.f2840d0 = 0;
        }
        if (z3) {
            m11921I();
        }
    }

    void setScrollState(int i) {
        if (this.f2846g0 != i) {
            this.f2846g0 = i;
            if (this.f2836b0 != null) {
                m11893o(i != 0);
            }
            m11895m(i);
        }
    }

    /* renamed from: u */
    C0527f m11887u(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent == this) {
                return m11886v(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    /* renamed from: v */
    C0527f m11886v(View view) {
        for (int i = 0; i < this.f2837c.size(); i++) {
            C0527f fVar = this.f2837c.get(i);
            if (this.f2843f.mo64k(view, fVar.f2873a)) {
                return fVar;
            }
        }
        return null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2854o;
    }

    /* renamed from: x */
    C0527f m11884x(int i) {
        for (int i2 = 0; i2 < this.f2837c.size(); i2++) {
            C0527f fVar = this.f2837c.get(i2);
            if (fVar.f2874b == i) {
                return fVar;
            }
        }
        return null;
    }

    /* renamed from: y */
    void m11883y() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f2850k = new Scroller(context, f2809j0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.f2813C = viewConfiguration.getScaledPagingTouchSlop();
        this.f2820J = (int) (400.0f * f);
        this.f2821K = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f2826P = new EdgeEffect(context);
        this.f2827Q = new EdgeEffect(context);
        this.f2822L = (int) (25.0f * f);
        this.f2823M = (int) (2.0f * f);
        this.f2811A = (int) (f * 16.0f);
        t.n0(this, new g(this));
        if (t.z(this) == 0) {
            t.x0(this, 1);
        }
        t.B0(this, new d(this));
    }
}
