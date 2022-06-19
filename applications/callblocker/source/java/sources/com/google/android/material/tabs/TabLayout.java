package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.C0083a;
import androidx.appcompat.app.AbstractC0110a;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.appcompat.widget.C0321ar;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p025g.C0523e;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0580f;
import androidx.core.p026h.C0593s;
import androidx.core.p026h.C0595u;
import androidx.core.widget.C0628i;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.AbstractC1099a;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.C4492a;
import com.google.android.material.internal.C4702i;
import com.google.android.material.internal.C4703j;
import com.google.android.material.p142a.C4505a;
import com.google.android.material.p143b.C4529a;
import com.google.android.material.p143b.C4532b;
import com.google.android.material.p156n.C4718c;
import com.google.android.material.p157o.C4727b;
import com.google.android.material.p159q.C4736g;
import com.google.android.material.p159q.C4740h;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
@ViewPager.AbstractC1088a
/* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout.class */
public class TabLayout extends HorizontalScrollView {

    /* renamed from: w */
    private static final C0523e.AbstractC0524a<C4798f> f20645w = new C0523e.C0526c(16);

    /* renamed from: A */
    private final C4795e f20646A;

    /* renamed from: B */
    private final int f20647B;

    /* renamed from: C */
    private final int f20648C;

    /* renamed from: D */
    private final int f20649D;

    /* renamed from: E */
    private int f20650E;

    /* renamed from: F */
    private AbstractC4792b f20651F;

    /* renamed from: G */
    private final ArrayList<AbstractC4792b> f20652G;

    /* renamed from: H */
    private AbstractC4792b f20653H;

    /* renamed from: I */
    private ValueAnimator f20654I;

    /* renamed from: J */
    private AbstractC1099a f20655J;

    /* renamed from: K */
    private DataSetObserver f20656K;

    /* renamed from: L */
    private C4799g f20657L;

    /* renamed from: M */
    private C4791a f20658M;

    /* renamed from: N */
    private boolean f20659N;

    /* renamed from: O */
    private final C0523e.AbstractC0524a<C4800h> f20660O;

    /* renamed from: a */
    int f20661a;

    /* renamed from: b */
    int f20662b;

    /* renamed from: c */
    int f20663c;

    /* renamed from: d */
    int f20664d;

    /* renamed from: e */
    int f20665e;

    /* renamed from: f */
    ColorStateList f20666f;

    /* renamed from: g */
    ColorStateList f20667g;

    /* renamed from: h */
    ColorStateList f20668h;

    /* renamed from: i */
    Drawable f20669i;

    /* renamed from: j */
    PorterDuff.Mode f20670j;

    /* renamed from: k */
    float f20671k;

    /* renamed from: l */
    float f20672l;

    /* renamed from: m */
    final int f20673m;

    /* renamed from: n */
    int f20674n;

    /* renamed from: o */
    int f20675o;

    /* renamed from: p */
    int f20676p;

    /* renamed from: q */
    int f20677q;

    /* renamed from: r */
    int f20678r;

    /* renamed from: s */
    boolean f20679s;

    /* renamed from: t */
    boolean f20680t;

    /* renamed from: u */
    boolean f20681u;

    /* renamed from: v */
    ViewPager f20682v;

    /* renamed from: x */
    private final ArrayList<C4798f> f20683x;

    /* renamed from: y */
    private C4798f f20684y;

    /* renamed from: z */
    private final RectF f20685z;

    /* renamed from: com.google.android.material.tabs.TabLayout$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$a.class */
    public class C4791a implements ViewPager.AbstractC1092e {

        /* renamed from: b */
        private boolean f20688b;

        C4791a() {
            TabLayout.this = r4;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1092e
        /* renamed from: a */
        public void mo2430a(ViewPager viewPager, AbstractC1099a abstractC1099a, AbstractC1099a abstractC1099a2) {
            if (TabLayout.this.f20682v == viewPager) {
                TabLayout.this.m2457a(abstractC1099a2, this.f20688b);
            }
        }

        /* renamed from: a */
        void m2429a(boolean z) {
            this.f20688b = z;
        }
    }

    @Deprecated
    /* renamed from: com.google.android.material.tabs.TabLayout$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$b.class */
    public interface AbstractC4792b<T extends C4798f> {
        /* renamed from: a */
        void mo2378a(T t);

        /* renamed from: b */
        void mo2377b(T t);

        /* renamed from: c */
        void mo2376c(T t);
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$c.class */
    public interface AbstractC4793c extends AbstractC4792b<C4798f> {
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$d.class */
    public class C4794d extends DataSetObserver {
        C4794d() {
            TabLayout.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.m2440d();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.m2440d();
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$e.class */
    public class C4795e extends LinearLayout {

        /* renamed from: b */
        float f20691b;

        /* renamed from: d */
        private int f20693d;

        /* renamed from: j */
        private ValueAnimator f20699j;

        /* renamed from: a */
        int f20690a = -1;

        /* renamed from: g */
        private int f20696g = -1;

        /* renamed from: h */
        private int f20697h = -1;

        /* renamed from: i */
        private int f20698i = -1;

        /* renamed from: e */
        private final Paint f20694e = new Paint();

        /* renamed from: f */
        private final GradientDrawable f20695f = new GradientDrawable();

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4795e(Context context) {
            super(context);
            TabLayout.this = r5;
            setWillNotDraw(false);
        }

        /* renamed from: a */
        private void m2424a(C4800h c4800h, RectF rectF) {
            int contentWidth = c4800h.getContentWidth();
            int m2815a = (int) C4703j.m2815a(getContext(), 24);
            if (contentWidth < m2815a) {
                contentWidth = m2815a;
            }
            int left = (c4800h.getLeft() + c4800h.getRight()) / 2;
            rectF.set(left - (contentWidth / 2), 0.0f, (contentWidth / 2) + left, 0.0f);
        }

        /* renamed from: b */
        private void m2423b() {
            int i;
            int i2;
            View childAt = getChildAt(this.f20690a);
            if (childAt == null || childAt.getWidth() <= 0) {
                i = -1;
                i2 = -1;
            } else {
                int left = childAt.getLeft();
                int right = childAt.getRight();
                int i3 = right;
                int i4 = left;
                if (!TabLayout.this.f20680t) {
                    i3 = right;
                    i4 = left;
                    if (childAt instanceof C4800h) {
                        m2424a((C4800h) childAt, TabLayout.this.f20685z);
                        i4 = (int) TabLayout.this.f20685z.left;
                        i3 = (int) TabLayout.this.f20685z.right;
                    }
                }
                i = i3;
                i2 = i4;
                if (this.f20691b > 0.0f) {
                    i = i3;
                    i2 = i4;
                    if (this.f20690a < getChildCount() - 1) {
                        View childAt2 = getChildAt(this.f20690a + 1);
                        int left2 = childAt2.getLeft();
                        int right2 = childAt2.getRight();
                        if (!TabLayout.this.f20680t && (childAt2 instanceof C4800h)) {
                            m2424a((C4800h) childAt2, TabLayout.this.f20685z);
                            left2 = (int) TabLayout.this.f20685z.left;
                            right2 = (int) TabLayout.this.f20685z.right;
                        }
                        int i5 = (int) ((i4 * (1.0f - this.f20691b)) + (this.f20691b * left2));
                        i = (int) ((right2 * this.f20691b) + (i3 * (1.0f - this.f20691b)));
                        i2 = i5;
                    }
                }
            }
            m2425a(i2, i);
        }

        /* renamed from: a */
        void m2427a(int i) {
            if (this.f20694e.getColor() != i) {
                this.f20694e.setColor(i);
                C0595u.m20324e(this);
            }
        }

        /* renamed from: a */
        void m2426a(int i, float f) {
            if (this.f20699j != null && this.f20699j.isRunning()) {
                this.f20699j.cancel();
            }
            this.f20690a = i;
            this.f20691b = f;
            m2423b();
        }

        /* renamed from: a */
        void m2425a(int i, int i2) {
            if (i == this.f20697h && i2 == this.f20698i) {
                return;
            }
            this.f20697h = i;
            this.f20698i = i2;
            C0595u.m20324e(this);
        }

        /* renamed from: a */
        boolean m2428a() {
            boolean z;
            int childCount = getChildCount();
            int i = 0;
            while (true) {
                z = false;
                if (i >= childCount) {
                    break;
                } else if (getChildAt(i).getWidth() <= 0) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            return z;
        }

        /* renamed from: b */
        void m2422b(int i) {
            if (this.f20693d != i) {
                this.f20693d = i;
                C0595u.m20324e(this);
            }
        }

        /* renamed from: b */
        void m2421b(final int i, int i2) {
            if (this.f20699j != null && this.f20699j.isRunning()) {
                this.f20699j.cancel();
            }
            View childAt = getChildAt(i);
            if (childAt == null) {
                m2423b();
                return;
            }
            int left = childAt.getLeft();
            int right = childAt.getRight();
            int i3 = left;
            int i4 = right;
            if (!TabLayout.this.f20680t) {
                i3 = left;
                i4 = right;
                if (childAt instanceof C4800h) {
                    m2424a((C4800h) childAt, TabLayout.this.f20685z);
                    i3 = (int) TabLayout.this.f20685z.left;
                    i4 = (int) TabLayout.this.f20685z.right;
                }
            }
            final int i5 = this.f20697h;
            final int i6 = this.f20698i;
            if (i5 == i3 && i6 == i4) {
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f20699j = valueAnimator;
            valueAnimator.setInterpolator(C4505a.f19570b);
            valueAnimator.setDuration(i2);
            valueAnimator.setFloatValues(0.0f, 1.0f);
            final int i7 = i3;
            final int i8 = i4;
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.e.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    float animatedFraction = valueAnimator2.getAnimatedFraction();
                    C4795e.this.m2425a(C4505a.m3855a(i5, i7, animatedFraction), C4505a.m3855a(i6, i8, animatedFraction));
                }
            });
            valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.tabs.TabLayout.e.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    C4795e.this.f20690a = i;
                    C4795e.this.f20691b = 0.0f;
                }
            });
            valueAnimator.start();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v49, types: [android.graphics.drawable.Drawable] */
        @Override // android.view.View
        public void draw(Canvas canvas) {
            int i;
            int intrinsicHeight = TabLayout.this.f20669i != null ? TabLayout.this.f20669i.getIntrinsicHeight() : 0;
            if (this.f20693d >= 0) {
                intrinsicHeight = this.f20693d;
            }
            switch (TabLayout.this.f20677q) {
                case 0:
                    int height = getHeight();
                    intrinsicHeight = getHeight();
                    i = height - intrinsicHeight;
                    break;
                case 1:
                    i = (getHeight() - intrinsicHeight) / 2;
                    intrinsicHeight = (intrinsicHeight + getHeight()) / 2;
                    break;
                case 2:
                    i = 0;
                    break;
                case 3:
                    intrinsicHeight = getHeight();
                    i = 0;
                    break;
                default:
                    intrinsicHeight = 0;
                    i = 0;
                    break;
            }
            if (this.f20697h >= 0 && this.f20698i > this.f20697h) {
                Drawable m20584g = C0535a.m20584g(TabLayout.this.f20669i != null ? TabLayout.this.f20669i : this.f20695f);
                m20584g.setBounds(this.f20697h, i, this.f20698i, intrinsicHeight);
                if (this.f20694e != null) {
                    if (Build.VERSION.SDK_INT == 21) {
                        m20584g.setColorFilter(this.f20694e.getColor(), PorterDuff.Mode.SRC_IN);
                    } else {
                        C0535a.m20597a(m20584g, this.f20694e.getColor());
                    }
                }
                m20584g.draw(canvas);
            }
            super.draw(canvas);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.f20699j == null || !this.f20699j.isRunning()) {
                m2423b();
                return;
            }
            this.f20699j.cancel();
            m2421b(this.f20690a, Math.round(((float) this.f20699j.getDuration()) * (1.0f - this.f20699j.getAnimatedFraction())));
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            boolean z;
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            if (TabLayout.this.f20675o != 1 && TabLayout.this.f20678r != 2) {
                return;
            }
            int childCount = getChildCount();
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i3 = i5;
                if (i4 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i4);
                i4++;
                i5 = childAt.getVisibility() == 0 ? Math.max(i3, childAt.getMeasuredWidth()) : i3;
            }
            if (i3 <= 0) {
                return;
            }
            if (i3 * childCount <= getMeasuredWidth() - (((int) C4703j.m2815a(getContext(), 16)) * 2)) {
                int i6 = 0;
                boolean z2 = false;
                while (true) {
                    z = z2;
                    if (i6 >= childCount) {
                        break;
                    }
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i6).getLayoutParams();
                    if (layoutParams.width != i3 || layoutParams.weight != 0.0f) {
                        layoutParams.width = i3;
                        layoutParams.weight = 0.0f;
                        z2 = true;
                    }
                    i6++;
                }
            } else {
                TabLayout.this.f20675o = 0;
                TabLayout.this.m2449a(false);
                z = true;
            }
            if (!z) {
                return;
            }
            super.onMeasure(i, i2);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT >= 23 || this.f20696g == i) {
                return;
            }
            requestLayout();
            this.f20696g = i;
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$f.class */
    public static class C4798f {

        /* renamed from: a */
        public TabLayout f20707a;

        /* renamed from: b */
        public C4800h f20708b;

        /* renamed from: c */
        private Object f20709c;

        /* renamed from: d */
        private Drawable f20710d;

        /* renamed from: e */
        private CharSequence f20711e;

        /* renamed from: f */
        private CharSequence f20712f;

        /* renamed from: h */
        private View f20714h;

        /* renamed from: g */
        private int f20713g = -1;

        /* renamed from: i */
        private int f20715i = 1;

        /* renamed from: a */
        public View m2420a() {
            return this.f20714h;
        }

        /* renamed from: a */
        public C4798f m2419a(int i) {
            return m2417a(LayoutInflater.from(this.f20708b.getContext()).inflate(i, (ViewGroup) this.f20708b, false));
        }

        /* renamed from: a */
        public C4798f m2418a(Drawable drawable) {
            this.f20710d = drawable;
            if (this.f20707a.f20675o == 1 || this.f20707a.f20678r == 2) {
                this.f20707a.m2449a(true);
            }
            m2404h();
            if (C4532b.f19679a && this.f20708b.m2379i() && this.f20708b.f20724f.isVisible()) {
                this.f20708b.invalidate();
            }
            return this;
        }

        /* renamed from: a */
        public C4798f m2417a(View view) {
            this.f20714h = view;
            m2404h();
            return this;
        }

        /* renamed from: a */
        public C4798f m2415a(CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f20712f) && !TextUtils.isEmpty(charSequence)) {
                this.f20708b.setContentDescription(charSequence);
            }
            this.f20711e = charSequence;
            m2404h();
            return this;
        }

        /* renamed from: b */
        public Drawable m2414b() {
            return this.f20710d;
        }

        /* renamed from: b */
        public C4798f m2411b(CharSequence charSequence) {
            this.f20712f = charSequence;
            m2404h();
            return this;
        }

        /* renamed from: b */
        void m2413b(int i) {
            this.f20713g = i;
        }

        /* renamed from: c */
        public int m2410c() {
            return this.f20713g;
        }

        /* renamed from: d */
        public CharSequence m2408d() {
            return this.f20711e;
        }

        /* renamed from: e */
        public int m2407e() {
            return this.f20715i;
        }

        /* renamed from: f */
        public void m2406f() {
            if (this.f20707a == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            this.f20707a.m2441c(this);
        }

        /* renamed from: g */
        public boolean m2405g() {
            if (this.f20707a == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            return this.f20707a.getSelectedTabPosition() == this.f20713g;
        }

        /* renamed from: h */
        void m2404h() {
            if (this.f20708b != null) {
                this.f20708b.m2391b();
            }
        }

        /* renamed from: i */
        void m2403i() {
            this.f20707a = null;
            this.f20708b = null;
            this.f20709c = null;
            this.f20710d = null;
            this.f20711e = null;
            this.f20712f = null;
            this.f20713g = -1;
            this.f20714h = null;
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$g.class */
    public static class C4799g implements ViewPager.AbstractC1093f {

        /* renamed from: a */
        private final WeakReference<TabLayout> f20716a;

        /* renamed from: b */
        private int f20717b;

        /* renamed from: c */
        private int f20718c;

        public C4799g(TabLayout tabLayout) {
            this.f20716a = new WeakReference<>(tabLayout);
        }

        /* renamed from: a */
        void m2402a() {
            this.f20718c = 0;
            this.f20717b = 0;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1093f
        /* renamed from: a */
        public void mo909a(int i) {
            TabLayout tabLayout = this.f20716a.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i || i >= tabLayout.getTabCount()) {
                return;
            }
            tabLayout.m2444b(tabLayout.m2466a(i), this.f20718c == 0 || (this.f20718c == 2 && this.f20717b == 0));
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1093f
        /* renamed from: a */
        public void mo908a(int i, float f, int i2) {
            boolean z = false;
            TabLayout tabLayout = this.f20716a.get();
            if (tabLayout != null) {
                boolean z2 = this.f20718c != 2 || this.f20717b == 1;
                if (this.f20718c != 2 || this.f20717b != 0) {
                    z = true;
                }
                tabLayout.m2463a(i, f, z2, z);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1093f
        /* renamed from: b */
        public void mo904b(int i) {
            this.f20717b = this.f20718c;
            this.f20718c = i;
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$h */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$h.class */
    public final class C4800h extends LinearLayout {

        /* renamed from: b */
        private C4798f f20720b;

        /* renamed from: c */
        private TextView f20721c;

        /* renamed from: d */
        private ImageView f20722d;

        /* renamed from: e */
        private View f20723e;

        /* renamed from: f */
        private C4529a f20724f;

        /* renamed from: g */
        private View f20725g;

        /* renamed from: h */
        private TextView f20726h;

        /* renamed from: i */
        private ImageView f20727i;

        /* renamed from: j */
        private Drawable f20728j;

        /* renamed from: k */
        private int f20729k = 2;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4800h(Context context) {
            super(context);
            TabLayout.this = r7;
            m2400a(context);
            C0595u.m20355a(this, r7.f20661a, r7.f20662b, r7.f20663c, r7.f20664d);
            setGravity(17);
            setOrientation(r7.f20679s ? 0 : 1);
            setClickable(true);
            C0595u.m20342a(this, C0593s.m20372a(getContext(), 1002));
            C0595u.m20345a(this, (C0549a) null);
        }

        /* renamed from: a */
        private float m2398a(Layout layout, int i, float f) {
            return layout.getLineWidth(i) * (f / layout.getPaint().getTextSize());
        }

        /* renamed from: a */
        public void m2400a(Context context) {
            GradientDrawable gradientDrawable = null;
            if (TabLayout.this.f20673m != 0) {
                this.f20728j = C0094a.m22275b(context, TabLayout.this.f20673m);
                if (this.f20728j != null && this.f20728j.isStateful()) {
                    this.f20728j.setState(getDrawableState());
                }
            } else {
                this.f20728j = null;
            }
            Drawable gradientDrawable2 = new GradientDrawable();
            ((GradientDrawable) gradientDrawable2).setColor(0);
            if (TabLayout.this.f20668h != null) {
                GradientDrawable gradientDrawable3 = new GradientDrawable();
                gradientDrawable3.setCornerRadius(1.0E-5f);
                gradientDrawable3.setColor(-1);
                ColorStateList m2759a = C4727b.m2759a(TabLayout.this.f20668h);
                if (Build.VERSION.SDK_INT >= 21) {
                    if (TabLayout.this.f20681u) {
                        gradientDrawable2 = null;
                    }
                    if (!TabLayout.this.f20681u) {
                        gradientDrawable = gradientDrawable3;
                    }
                    gradientDrawable2 = new RippleDrawable(m2759a, gradientDrawable2, gradientDrawable);
                } else {
                    Drawable m20584g = C0535a.m20584g(gradientDrawable3);
                    C0535a.m20595a(m20584g, m2759a);
                    gradientDrawable2 = new LayerDrawable(new Drawable[]{gradientDrawable2, m20584g});
                }
            }
            C0595u.m20350a(this, gradientDrawable2);
            TabLayout.this.invalidate();
        }

        /* renamed from: a */
        public void m2399a(Canvas canvas) {
            if (this.f20728j != null) {
                this.f20728j.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.f20728j.draw(canvas);
            }
        }

        /* renamed from: a */
        private void m2397a(final View view) {
            if (view == null) {
                return;
            }
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.tabs.TabLayout.h.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    if (view.getVisibility() == 0) {
                        C4800h.this.m2387c(view);
                    }
                }
            });
        }

        /* renamed from: a */
        private void m2396a(TextView textView, ImageView imageView) {
            Drawable mutate = (this.f20720b == null || this.f20720b.m2414b() == null) ? null : C0535a.m20584g(this.f20720b.m2414b()).mutate();
            CharSequence m2408d = this.f20720b != null ? this.f20720b.m2408d() : null;
            if (imageView != null) {
                if (mutate != null) {
                    imageView.setImageDrawable(mutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(m2408d);
            if (textView != null) {
                if (z) {
                    textView.setText(m2408d);
                    if (this.f20720b.f20715i == 1) {
                        textView.setVisibility(0);
                    } else {
                        textView.setVisibility(8);
                    }
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int m2815a = (!z || imageView.getVisibility() != 0) ? 0 : (int) C4703j.m2815a(getContext(), 8);
                if (TabLayout.this.f20679s) {
                    if (m2815a != C0580f.m20408b(marginLayoutParams)) {
                        C0580f.m20409a(marginLayoutParams, m2815a);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (m2815a != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = m2815a;
                    C0580f.m20409a(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            CharSequence charSequence = this.f20720b != null ? this.f20720b.f20712f : null;
            if (z) {
                charSequence = null;
            }
            C0321ar.m21406a(this, charSequence);
        }

        /* renamed from: b */
        private void m2390b(View view) {
            if (m2379i() && view != null) {
                setClipChildren(false);
                setClipToPadding(false);
                C4532b.m3694a(this.f20724f, view, m2384d(view));
                this.f20723e = view;
            }
        }

        /* renamed from: c */
        public void m2387c(View view) {
            if (!m2379i() || view != this.f20723e) {
                return;
            }
            C4532b.m3692c(this.f20724f, view, m2384d(view));
        }

        /* renamed from: d */
        private FrameLayout m2384d(View view) {
            FrameLayout frameLayout = null;
            if ((view == this.f20722d || view == this.f20721c) && C4532b.f19679a) {
                frameLayout = (FrameLayout) view.getParent();
            }
            return frameLayout;
        }

        /* renamed from: d */
        private void m2385d() {
            FrameLayout frameLayout;
            if (C4532b.f19679a) {
                frameLayout = m2382f();
                addView(frameLayout, 0);
            } else {
                frameLayout = this;
            }
            this.f20722d = (ImageView) LayoutInflater.from(getContext()).inflate(C4492a.C4500h.design_layout_tab_icon, (ViewGroup) frameLayout, false);
            frameLayout.addView(this.f20722d, 0);
        }

        /* renamed from: e */
        private void m2383e() {
            FrameLayout frameLayout;
            if (C4532b.f19679a) {
                frameLayout = m2382f();
                addView(frameLayout);
            } else {
                frameLayout = this;
            }
            this.f20721c = (TextView) LayoutInflater.from(getContext()).inflate(C4492a.C4500h.design_layout_tab_text, (ViewGroup) frameLayout, false);
            frameLayout.addView(this.f20721c);
        }

        /* renamed from: f */
        private FrameLayout m2382f() {
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            return frameLayout;
        }

        /* renamed from: g */
        private void m2381g() {
            if (!m2379i()) {
                return;
            }
            if (this.f20725g != null) {
                m2380h();
            } else if (this.f20722d != null && this.f20720b != null && this.f20720b.m2414b() != null) {
                if (this.f20723e == this.f20722d) {
                    m2387c(this.f20722d);
                    return;
                }
                m2380h();
                m2390b(this.f20722d);
            } else if (this.f20721c == null || this.f20720b == null || this.f20720b.m2407e() != 1) {
                m2380h();
            } else if (this.f20723e == this.f20721c) {
                m2387c(this.f20721c);
            } else {
                m2380h();
                m2390b(this.f20721c);
            }
        }

        private C4529a getBadge() {
            return this.f20724f;
        }

        public int getContentWidth() {
            View[] viewArr = {this.f20721c, this.f20722d, this.f20725g};
            int length = viewArr.length;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            boolean z = false;
            while (true) {
                boolean z2 = z;
                if (i < length) {
                    View view = viewArr[i];
                    int i4 = i2;
                    int i5 = i3;
                    boolean z3 = z2;
                    if (view != null) {
                        i4 = i2;
                        i5 = i3;
                        z3 = z2;
                        if (view.getVisibility() == 0) {
                            i5 = z2 ? Math.min(i3, view.getLeft()) : view.getLeft();
                            z3 = true;
                            i4 = z2 ? Math.max(i2, view.getRight()) : view.getRight();
                        }
                    }
                    i++;
                    i2 = i4;
                    i3 = i5;
                    z = z3;
                } else {
                    return i2 - i3;
                }
            }
        }

        private C4529a getOrCreateBadge() {
            if (this.f20724f == null) {
                this.f20724f = C4529a.m3735a(getContext());
            }
            m2381g();
            if (this.f20724f == null) {
                throw new IllegalStateException("Unable to create badge");
            }
            return this.f20724f;
        }

        /* renamed from: h */
        private void m2380h() {
            if (m2379i() && this.f20723e != null) {
                setClipChildren(true);
                setClipToPadding(true);
                C4532b.m3693b(this.f20724f, this.f20723e, m2384d(this.f20723e));
                this.f20723e = null;
            }
        }

        /* renamed from: i */
        public boolean m2379i() {
            return this.f20724f != null;
        }

        /* renamed from: a */
        void m2401a() {
            setTab(null);
            setSelected(false);
        }

        /* renamed from: b */
        final void m2391b() {
            C4798f c4798f = this.f20720b;
            View m2420a = c4798f != null ? c4798f.m2420a() : null;
            if (m2420a != null) {
                ViewParent parent = m2420a.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(m2420a);
                    }
                    addView(m2420a);
                }
                this.f20725g = m2420a;
                if (this.f20721c != null) {
                    this.f20721c.setVisibility(8);
                }
                if (this.f20722d != null) {
                    this.f20722d.setVisibility(8);
                    this.f20722d.setImageDrawable(null);
                }
                this.f20726h = (TextView) m2420a.findViewById(16908308);
                if (this.f20726h != null) {
                    this.f20729k = C0628i.m20145a(this.f20726h);
                }
                this.f20727i = (ImageView) m2420a.findViewById(16908294);
            } else {
                if (this.f20725g != null) {
                    removeView(this.f20725g);
                    this.f20725g = null;
                }
                this.f20726h = null;
                this.f20727i = null;
            }
            if (this.f20725g == null) {
                if (this.f20722d == null) {
                    m2385d();
                }
                Drawable mutate = (c4798f == null || c4798f.m2414b() == null) ? null : C0535a.m20584g(c4798f.m2414b()).mutate();
                if (mutate != null) {
                    C0535a.m20595a(mutate, TabLayout.this.f20667g);
                    if (TabLayout.this.f20670j != null) {
                        C0535a.m20592a(mutate, TabLayout.this.f20670j);
                    }
                }
                if (this.f20721c == null) {
                    m2383e();
                    this.f20729k = C0628i.m20145a(this.f20721c);
                }
                C0628i.m20144a(this.f20721c, TabLayout.this.f20665e);
                if (TabLayout.this.f20666f != null) {
                    this.f20721c.setTextColor(TabLayout.this.f20666f);
                }
                m2396a(this.f20721c, this.f20722d);
                m2381g();
                m2397a(this.f20722d);
                m2397a(this.f20721c);
            } else if (this.f20726h != null || this.f20727i != null) {
                m2396a(this.f20726h, this.f20727i);
            }
            if (c4798f != null && !TextUtils.isEmpty(c4798f.f20712f)) {
                setContentDescription(c4798f.f20712f);
            }
            setSelected(c4798f != null && c4798f.m2405g());
        }

        /* renamed from: c */
        final void m2388c() {
            setOrientation(TabLayout.this.f20679s ? 0 : 1);
            if (this.f20726h == null && this.f20727i == null) {
                m2396a(this.f20721c, this.f20722d);
            } else {
                m2396a(this.f20726h, this.f20727i);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            boolean z = false;
            if (this.f20728j != null) {
                z = false;
                if (this.f20728j.isStateful()) {
                    z = false | this.f20728j.setState(drawableState);
                }
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        public C4798f getTab() {
            return this.f20720b;
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(AbstractC0110a.AbstractC0113c.class.getName());
        }

        @Override // android.view.View
        @TargetApi(14)
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(AbstractC0110a.AbstractC0113c.class.getName());
            if (this.f20724f == null || !this.f20724f.isVisible()) {
                return;
            }
            accessibilityNodeInfo.setContentDescription(((Object) getContentDescription()) + ", " + ((Object) this.f20724f.m3718f()));
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x00eb, code lost:
            if (m2398a(r0, 0, r14) > ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x002b, code lost:
            if (r0 > r0) goto L8;
         */
        @Override // android.widget.LinearLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onMeasure(int r6, int r7) {
            /*
                Method dump skipped, instructions count: 319
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.C4800h.onMeasure(int, int):void");
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean performClick = super.performClick();
            boolean z = performClick;
            if (this.f20720b != null) {
                if (!performClick) {
                    playSoundEffect(0);
                }
                this.f20720b.m2406f();
                z = true;
            }
            return z;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            if (this.f20721c != null) {
                this.f20721c.setSelected(z);
            }
            if (this.f20722d != null) {
                this.f20722d.setSelected(z);
            }
            if (this.f20725g != null) {
                this.f20725g.setSelected(z);
            }
        }

        void setTab(C4798f c4798f) {
            if (c4798f != this.f20720b) {
                this.f20720b = c4798f;
                m2391b();
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$i */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$i.class */
    public static class C4802i implements AbstractC4793c {

        /* renamed from: a */
        private final ViewPager f20732a;

        public C4802i(ViewPager viewPager) {
            this.f20732a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.AbstractC4792b
        /* renamed from: a */
        public void mo2378a(C4798f c4798f) {
            this.f20732a.setCurrentItem(c4798f.m2410c());
        }

        @Override // com.google.android.material.tabs.TabLayout.AbstractC4792b
        /* renamed from: b */
        public void mo2377b(C4798f c4798f) {
        }

        @Override // com.google.android.material.tabs.TabLayout.AbstractC4792b
        /* renamed from: c */
        public void mo2376c(C4798f c4798f) {
        }
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C4492a.C4494b.tabStyle);
    }

    /* JADX WARN: Finally extract failed */
    public TabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f20683x = new ArrayList<>();
        this.f20685z = new RectF();
        this.f20674n = Integer.MAX_VALUE;
        this.f20652G = new ArrayList<>();
        this.f20660O = new C0523e.C0525b(12);
        setHorizontalScrollBarEnabled(false);
        this.f20646A = new C4795e(context);
        super.addView(this.f20646A, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray m2825a = C4702i.m2825a(context, attributeSet, C4492a.C4504l.TabLayout, i, C4492a.C4503k.Widget_Design_TabLayout, C4492a.C4504l.TabLayout_tabTextAppearance);
        if (getBackground() instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) getBackground();
            C4736g c4736g = new C4736g();
            c4736g.m2697f(ColorStateList.valueOf(colorDrawable.getColor()));
            c4736g.m2722a(context);
            c4736g.m2687r(C0595u.m20310n(this));
            C0595u.m20350a(this, c4736g);
        }
        this.f20646A.m2422b(m2825a.getDimensionPixelSize(C4492a.C4504l.TabLayout_tabIndicatorHeight, -1));
        this.f20646A.m2427a(m2825a.getColor(C4492a.C4504l.TabLayout_tabIndicatorColor, 0));
        setSelectedTabIndicator(C4718c.m2780b(context, m2825a, C4492a.C4504l.TabLayout_tabIndicator));
        setSelectedTabIndicatorGravity(m2825a.getInt(C4492a.C4504l.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorFullWidth(m2825a.getBoolean(C4492a.C4504l.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = m2825a.getDimensionPixelSize(C4492a.C4504l.TabLayout_tabPadding, 0);
        this.f20664d = dimensionPixelSize;
        this.f20663c = dimensionPixelSize;
        this.f20662b = dimensionPixelSize;
        this.f20661a = dimensionPixelSize;
        this.f20661a = m2825a.getDimensionPixelSize(C4492a.C4504l.TabLayout_tabPaddingStart, this.f20661a);
        this.f20662b = m2825a.getDimensionPixelSize(C4492a.C4504l.TabLayout_tabPaddingTop, this.f20662b);
        this.f20663c = m2825a.getDimensionPixelSize(C4492a.C4504l.TabLayout_tabPaddingEnd, this.f20663c);
        this.f20664d = m2825a.getDimensionPixelSize(C4492a.C4504l.TabLayout_tabPaddingBottom, this.f20664d);
        this.f20665e = m2825a.getResourceId(C4492a.C4504l.TabLayout_tabTextAppearance, C4492a.C4503k.TextAppearance_Design_Tab);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(this.f20665e, C0083a.C0093j.TextAppearance);
        try {
            this.f20671k = obtainStyledAttributes.getDimensionPixelSize(C0083a.C0093j.TextAppearance_android_textSize, 0);
            this.f20666f = C4718c.m2784a(context, obtainStyledAttributes, C0083a.C0093j.TextAppearance_android_textColor);
            obtainStyledAttributes.recycle();
            if (m2825a.hasValue(C4492a.C4504l.TabLayout_tabTextColor)) {
                this.f20666f = C4718c.m2784a(context, m2825a, C4492a.C4504l.TabLayout_tabTextColor);
            }
            if (m2825a.hasValue(C4492a.C4504l.TabLayout_tabSelectedTextColor)) {
                this.f20666f = m2462a(this.f20666f.getDefaultColor(), m2825a.getColor(C4492a.C4504l.TabLayout_tabSelectedTextColor, 0));
            }
            this.f20667g = C4718c.m2784a(context, m2825a, C4492a.C4504l.TabLayout_tabIconTint);
            this.f20670j = C4703j.m2816a(m2825a.getInt(C4492a.C4504l.TabLayout_tabIconTintMode, -1), (PorterDuff.Mode) null);
            this.f20668h = C4718c.m2784a(context, m2825a, C4492a.C4504l.TabLayout_tabRippleColor);
            this.f20676p = m2825a.getInt(C4492a.C4504l.TabLayout_tabIndicatorAnimationDuration, 300);
            this.f20647B = m2825a.getDimensionPixelSize(C4492a.C4504l.TabLayout_tabMinWidth, -1);
            this.f20648C = m2825a.getDimensionPixelSize(C4492a.C4504l.TabLayout_tabMaxWidth, -1);
            this.f20673m = m2825a.getResourceId(C4492a.C4504l.TabLayout_tabBackground, 0);
            this.f20650E = m2825a.getDimensionPixelSize(C4492a.C4504l.TabLayout_tabContentStart, 0);
            this.f20678r = m2825a.getInt(C4492a.C4504l.TabLayout_tabMode, 1);
            this.f20675o = m2825a.getInt(C4492a.C4504l.TabLayout_tabGravity, 0);
            this.f20679s = m2825a.getBoolean(C4492a.C4504l.TabLayout_tabInlineLabel, false);
            this.f20681u = m2825a.getBoolean(C4492a.C4504l.TabLayout_tabUnboundedRipple, false);
            m2825a.recycle();
            Resources resources = getResources();
            this.f20672l = resources.getDimensionPixelSize(C4492a.C4496d.design_tab_text_size_2line);
            this.f20649D = resources.getDimensionPixelSize(C4492a.C4496d.design_tab_scrollable_min_width);
            m2432h();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    private int m2465a(int i, float f) {
        int i2 = 0;
        if (this.f20678r == 0 || this.f20678r == 2) {
            View childAt = this.f20646A.getChildAt(i);
            View childAt2 = i + 1 < this.f20646A.getChildCount() ? this.f20646A.getChildAt(i + 1) : null;
            int width = childAt != null ? childAt.getWidth() : 0;
            int i3 = 0;
            if (childAt2 != null) {
                i3 = childAt2.getWidth();
            }
            int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
            int i4 = (int) ((i3 + width) * 0.5f * f);
            i2 = C0595u.m20320g(this) == 0 ? i4 + left : left - i4;
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    /* renamed from: a */
    private static ColorStateList m2462a(int i, int i2) {
        return new ColorStateList(new int[]{SELECTED_STATE_SET, EMPTY_STATE_SET}, new int[]{i2, i});
    }

    /* renamed from: a */
    private void m2461a(View view) {
        if (view instanceof C4803a) {
            m2450a((C4803a) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    /* renamed from: a */
    private void m2460a(LinearLayout.LayoutParams layoutParams) {
        if (this.f20678r == 1 && this.f20675o == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = 0.0f;
    }

    /* renamed from: a */
    private void m2458a(ViewPager viewPager, boolean z, boolean z2) {
        if (this.f20682v != null) {
            if (this.f20657L != null) {
                this.f20682v.m18085b(this.f20657L);
            }
            if (this.f20658M != null) {
                this.f20682v.m18086b(this.f20658M);
            }
        }
        if (this.f20653H != null) {
            m2446b(this.f20653H);
            this.f20653H = null;
        }
        if (viewPager != null) {
            this.f20682v = viewPager;
            if (this.f20657L == null) {
                this.f20657L = new C4799g(this);
            }
            this.f20657L.m2402a();
            viewPager.m18093a(this.f20657L);
            this.f20653H = new C4802i(viewPager);
            m2456a(this.f20653H);
            AbstractC1099a adapter = viewPager.getAdapter();
            if (adapter != null) {
                m2457a(adapter, z);
            }
            if (this.f20658M == null) {
                this.f20658M = new C4791a();
            }
            this.f20658M.m2429a(z);
            viewPager.m18094a(this.f20658M);
            m2464a(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.f20682v = null;
            m2457a((AbstractC1099a) null, false);
        }
        this.f20659N = z2;
    }

    /* renamed from: a */
    private void m2454a(C4798f c4798f, int i) {
        c4798f.m2413b(i);
        this.f20683x.add(i, c4798f);
        int size = this.f20683x.size();
        while (true) {
            i++;
            if (i < size) {
                this.f20683x.get(i).m2413b(i);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private void m2450a(C4803a c4803a) {
        C4798f m2467a = m2467a();
        if (c4803a.f20733a != null) {
            m2467a.m2415a(c4803a.f20733a);
        }
        if (c4803a.f20734b != null) {
            m2467a.m2418a(c4803a.f20734b);
        }
        if (c4803a.f20735c != 0) {
            m2467a.m2419a(c4803a.f20735c);
        }
        if (!TextUtils.isEmpty(c4803a.getContentDescription())) {
            m2467a.m2411b(c4803a.getContentDescription());
        }
        m2455a(m2467a);
    }

    /* renamed from: b */
    private void m2447b(int i) {
        C4800h c4800h = (C4800h) this.f20646A.getChildAt(i);
        this.f20646A.removeViewAt(i);
        if (c4800h != null) {
            c4800h.m2401a();
            this.f20660O.mo17020a(c4800h);
        }
        requestLayout();
    }

    /* renamed from: c */
    private void m2442c(int i) {
        if (i == -1) {
            return;
        }
        if (getWindowToken() == null || !C0595u.m20299y(this) || this.f20646A.m2428a()) {
            m2464a(i, 0.0f, true);
            return;
        }
        int scrollX = getScrollX();
        int m2465a = m2465a(i, 0.0f);
        if (scrollX != m2465a) {
            m2434g();
            this.f20654I.setIntValues(scrollX, m2465a);
            this.f20654I.start();
        }
        this.f20646A.m2421b(i, this.f20676p);
    }

    /* renamed from: d */
    private C4800h m2439d(C4798f c4798f) {
        C4800h mo17021a = this.f20660O != null ? this.f20660O.mo17021a() : null;
        C4800h c4800h = mo17021a;
        if (mo17021a == null) {
            c4800h = new C4800h(getContext());
        }
        c4800h.setTab(c4798f);
        c4800h.setFocusable(true);
        c4800h.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(c4798f.f20712f)) {
            c4800h.setContentDescription(c4798f.f20711e);
        } else {
            c4800h.setContentDescription(c4798f.f20712f);
        }
        return c4800h;
    }

    /* renamed from: e */
    private void m2438e() {
        int size = this.f20683x.size();
        for (int i = 0; i < size; i++) {
            this.f20683x.get(i).m2404h();
        }
    }

    /* renamed from: e */
    private void m2437e(C4798f c4798f) {
        C4800h c4800h = c4798f.f20708b;
        c4800h.setSelected(false);
        c4800h.setActivated(false);
        this.f20646A.addView(c4800h, c4798f.m2410c(), m2436f());
    }

    /* renamed from: f */
    private LinearLayout.LayoutParams m2436f() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        m2460a(layoutParams);
        return layoutParams;
    }

    /* renamed from: f */
    private void m2435f(C4798f c4798f) {
        for (int size = this.f20652G.size() - 1; size >= 0; size--) {
            this.f20652G.get(size).mo2378a(c4798f);
        }
    }

    /* renamed from: g */
    private void m2434g() {
        if (this.f20654I == null) {
            this.f20654I = new ValueAnimator();
            this.f20654I.setInterpolator(C4505a.f19570b);
            this.f20654I.setDuration(this.f20676p);
            this.f20654I.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
                }
            });
        }
    }

    /* renamed from: g */
    private void m2433g(C4798f c4798f) {
        for (int size = this.f20652G.size() - 1; size >= 0; size--) {
            this.f20652G.get(size).mo2377b(c4798f);
        }
    }

    private int getDefaultHeight() {
        boolean z;
        int size = this.f20683x.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = false;
                break;
            }
            C4798f c4798f = this.f20683x.get(i);
            if (c4798f != null && c4798f.m2414b() != null && !TextUtils.isEmpty(c4798f.m2408d())) {
                z = true;
                break;
            }
            i++;
        }
        return (!z || this.f20679s) ? 48 : 72;
    }

    private int getTabMinWidth() {
        return this.f20647B != -1 ? this.f20647B : (this.f20678r == 0 || this.f20678r == 2) ? this.f20649D : 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f20646A.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    /* renamed from: h */
    private void m2432h() {
        C0595u.m20355a(this.f20646A, (this.f20678r == 0 || this.f20678r == 2) ? Math.max(0, this.f20650E - this.f20661a) : 0, 0, 0, 0);
        switch (this.f20678r) {
            case 0:
                this.f20646A.setGravity(8388611);
                break;
            case 1:
            case 2:
                this.f20646A.setGravity(1);
                break;
        }
        m2449a(true);
    }

    /* renamed from: h */
    private void m2431h(C4798f c4798f) {
        for (int size = this.f20652G.size() - 1; size >= 0; size--) {
            this.f20652G.get(size).mo2376c(c4798f);
        }
    }

    private void setSelectedTabView(int i) {
        int childCount = this.f20646A.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f20646A.getChildAt(i2);
                childAt.setSelected(i2 == i);
                childAt.setActivated(i2 == i);
                i2++;
            }
        }
    }

    /* renamed from: a */
    public C4798f m2467a() {
        C4798f m2448b = m2448b();
        m2448b.f20707a = this;
        m2448b.f20708b = m2439d(m2448b);
        return m2448b;
    }

    /* renamed from: a */
    public C4798f m2466a(int i) {
        return (i < 0 || i >= getTabCount()) ? null : this.f20683x.get(i);
    }

    /* renamed from: a */
    public void m2464a(int i, float f, boolean z) {
        m2463a(i, f, z, true);
    }

    /* renamed from: a */
    public void m2463a(int i, float f, boolean z, boolean z2) {
        int round = Math.round(i + f);
        if (round < 0 || round >= this.f20646A.getChildCount()) {
            return;
        }
        if (z2) {
            this.f20646A.m2426a(i, f);
        }
        if (this.f20654I != null && this.f20654I.isRunning()) {
            this.f20654I.cancel();
        }
        scrollTo(m2465a(i, f), 0);
        if (!z) {
            return;
        }
        setSelectedTabView(round);
    }

    /* renamed from: a */
    public void m2459a(ViewPager viewPager, boolean z) {
        m2458a(viewPager, z, false);
    }

    /* renamed from: a */
    void m2457a(AbstractC1099a abstractC1099a, boolean z) {
        if (this.f20655J != null && this.f20656K != null) {
            this.f20655J.m18051b(this.f20656K);
        }
        this.f20655J = abstractC1099a;
        if (z && abstractC1099a != null) {
            if (this.f20656K == null) {
                this.f20656K = new C4794d();
            }
            abstractC1099a.m18061a(this.f20656K);
        }
        m2440d();
    }

    @Deprecated
    /* renamed from: a */
    public void m2456a(AbstractC4792b abstractC4792b) {
        if (!this.f20652G.contains(abstractC4792b)) {
            this.f20652G.add(abstractC4792b);
        }
    }

    /* renamed from: a */
    public void m2455a(C4798f c4798f) {
        m2452a(c4798f, this.f20683x.isEmpty());
    }

    /* renamed from: a */
    public void m2453a(C4798f c4798f, int i, boolean z) {
        if (c4798f.f20707a != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        m2454a(c4798f, i);
        m2437e(c4798f);
        if (!z) {
            return;
        }
        c4798f.m2406f();
    }

    /* renamed from: a */
    public void m2452a(C4798f c4798f, boolean z) {
        m2453a(c4798f, this.f20683x.size(), z);
    }

    /* renamed from: a */
    void m2449a(boolean z) {
        for (int i = 0; i < this.f20646A.getChildCount(); i++) {
            View childAt = this.f20646A.getChildAt(i);
            childAt.setMinimumWidth(getTabMinWidth());
            m2460a((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        m2461a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i) {
        m2461a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        m2461a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        m2461a(view);
    }

    /* renamed from: b */
    protected C4798f m2448b() {
        C4798f mo17021a = f20645w.mo17021a();
        C4798f c4798f = mo17021a;
        if (mo17021a == null) {
            c4798f = new C4798f();
        }
        return c4798f;
    }

    @Deprecated
    /* renamed from: b */
    public void m2446b(AbstractC4792b abstractC4792b) {
        this.f20652G.remove(abstractC4792b);
    }

    /* renamed from: b */
    public void m2444b(C4798f c4798f, boolean z) {
        C4798f c4798f2 = this.f20684y;
        if (c4798f2 == c4798f) {
            if (c4798f2 == null) {
                return;
            }
            m2431h(c4798f);
            m2442c(c4798f.m2410c());
            return;
        }
        int m2410c = c4798f != null ? c4798f.m2410c() : -1;
        if (z) {
            if ((c4798f2 == null || c4798f2.m2410c() == -1) && m2410c != -1) {
                m2464a(m2410c, 0.0f, true);
            } else {
                m2442c(m2410c);
            }
            if (m2410c != -1) {
                setSelectedTabView(m2410c);
            }
        }
        this.f20684y = c4798f;
        if (c4798f2 != null) {
            m2433g(c4798f2);
        }
        if (c4798f == null) {
            return;
        }
        m2435f(c4798f);
    }

    /* renamed from: b */
    protected boolean m2445b(C4798f c4798f) {
        return f20645w.mo17020a(c4798f);
    }

    /* renamed from: c */
    public void m2443c() {
        for (int childCount = this.f20646A.getChildCount() - 1; childCount >= 0; childCount--) {
            m2447b(childCount);
        }
        Iterator<C4798f> it = this.f20683x.iterator();
        while (it.hasNext()) {
            C4798f next = it.next();
            it.remove();
            next.m2403i();
            m2445b(next);
        }
        this.f20684y = null;
    }

    /* renamed from: c */
    public void m2441c(C4798f c4798f) {
        m2444b(c4798f, true);
    }

    /* renamed from: d */
    void m2440d() {
        int currentItem;
        m2443c();
        if (this.f20655J != null) {
            int mo868b = this.f20655J.mo868b();
            for (int i = 0; i < mo868b; i++) {
                m2452a(m2467a().m2415a(this.f20655J.m18046c(i)), false);
            }
            if (this.f20682v == null || mo868b <= 0 || (currentItem = this.f20682v.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            m2441c(m2466a(currentItem));
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public int getSelectedTabPosition() {
        return this.f20684y != null ? this.f20684y.m2410c() : -1;
    }

    public int getTabCount() {
        return this.f20683x.size();
    }

    public int getTabGravity() {
        return this.f20675o;
    }

    public ColorStateList getTabIconTint() {
        return this.f20667g;
    }

    public int getTabIndicatorGravity() {
        return this.f20677q;
    }

    int getTabMaxWidth() {
        return this.f20674n;
    }

    public int getTabMode() {
        return this.f20678r;
    }

    public ColorStateList getTabRippleColor() {
        return this.f20668h;
    }

    public Drawable getTabSelectedIndicator() {
        return this.f20669i;
    }

    public ColorStateList getTabTextColors() {
        return this.f20666f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C4740h.m2684a(this);
        if (this.f20682v == null) {
            ViewParent parent = getParent();
            if (!(parent instanceof ViewPager)) {
                return;
            }
            m2458a((ViewPager) parent, true, true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f20659N) {
            setupWithViewPager(null);
            this.f20659N = false;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        for (int i = 0; i < this.f20646A.getChildCount(); i++) {
            View childAt = this.f20646A.getChildAt(i);
            if (childAt instanceof C4800h) {
                ((C4800h) childAt).m2399a(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int makeMeasureSpec;
        boolean z;
        int m2815a = (int) C4703j.m2815a(getContext(), getDefaultHeight());
        switch (View.MeasureSpec.getMode(i2)) {
            case RecyclerView.UNDEFINED_DURATION /* -2147483648 */:
                makeMeasureSpec = i2;
                if (getChildCount() == 1) {
                    makeMeasureSpec = i2;
                    if (View.MeasureSpec.getSize(i2) >= m2815a) {
                        getChildAt(0).setMinimumHeight(m2815a);
                        makeMeasureSpec = i2;
                        break;
                    }
                }
                break;
            case 0:
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(m2815a + getPaddingTop() + getPaddingBottom(), 1073741824);
                break;
            default:
                makeMeasureSpec = i2;
                break;
        }
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) != 0) {
            this.f20674n = this.f20648C > 0 ? this.f20648C : (int) (size - C4703j.m2815a(getContext(), 56));
        }
        super.onMeasure(i, makeMeasureSpec);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            switch (this.f20678r) {
                case 0:
                case 2:
                    if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 1:
                    if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                default:
                    z = false;
                    break;
            }
            if (!z) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), getChildMeasureSpec(makeMeasureSpec, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C4740h.m2683a(this, f);
    }

    public void setInlineLabel(boolean z) {
        if (this.f20679s != z) {
            this.f20679s = z;
            for (int i = 0; i < this.f20646A.getChildCount(); i++) {
                View childAt = this.f20646A.getChildAt(i);
                if (childAt instanceof C4800h) {
                    ((C4800h) childAt).m2388c();
                }
            }
            m2432h();
        }
    }

    public void setInlineLabelResource(int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    @Deprecated
    public void setOnTabSelectedListener(AbstractC4792b abstractC4792b) {
        if (this.f20651F != null) {
            m2446b(this.f20651F);
        }
        this.f20651F = abstractC4792b;
        if (abstractC4792b != null) {
            m2456a(abstractC4792b);
        }
    }

    @Deprecated
    public void setOnTabSelectedListener(AbstractC4793c abstractC4793c) {
        setOnTabSelectedListener((AbstractC4792b) abstractC4793c);
    }

    void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        m2434g();
        this.f20654I.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(int i) {
        if (i != 0) {
            setSelectedTabIndicator(C0094a.m22275b(getContext(), i));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (this.f20669i != drawable) {
            this.f20669i = drawable;
            C0595u.m20324e(this.f20646A);
        }
    }

    public void setSelectedTabIndicatorColor(int i) {
        this.f20646A.m2427a(i);
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.f20677q != i) {
            this.f20677q = i;
            C0595u.m20324e(this.f20646A);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.f20646A.m2422b(i);
    }

    public void setTabGravity(int i) {
        if (this.f20675o != i) {
            this.f20675o = i;
            m2432h();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.f20667g != colorStateList) {
            this.f20667g = colorStateList;
            m2438e();
        }
    }

    public void setTabIconTintResource(int i) {
        setTabIconTint(C0094a.m22277a(getContext(), i));
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.f20680t = z;
        C0595u.m20324e(this.f20646A);
    }

    public void setTabMode(int i) {
        if (i != this.f20678r) {
            this.f20678r = i;
            m2432h();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.f20668h != colorStateList) {
            this.f20668h = colorStateList;
            for (int i = 0; i < this.f20646A.getChildCount(); i++) {
                View childAt = this.f20646A.getChildAt(i);
                if (childAt instanceof C4800h) {
                    ((C4800h) childAt).m2400a(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(int i) {
        setTabRippleColor(C0094a.m22277a(getContext(), i));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.f20666f != colorStateList) {
            this.f20666f = colorStateList;
            m2438e();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(AbstractC1099a abstractC1099a) {
        m2457a(abstractC1099a, false);
    }

    public void setUnboundedRipple(boolean z) {
        if (this.f20681u != z) {
            this.f20681u = z;
            for (int i = 0; i < this.f20646A.getChildCount(); i++) {
                View childAt = this.f20646A.getChildAt(i);
                if (childAt instanceof C4800h) {
                    ((C4800h) childAt).m2400a(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(int i) {
        setUnboundedRipple(getResources().getBoolean(i));
    }

    public void setupWithViewPager(ViewPager viewPager) {
        m2459a(viewPager, true);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }
}
