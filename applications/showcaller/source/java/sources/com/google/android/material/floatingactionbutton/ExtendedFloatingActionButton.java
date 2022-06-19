package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.C8177c;
import java.util.List;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1885a;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p097m.C1904h;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton.class */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AbstractC0529b {

    /* renamed from: v */
    private static final int f36706v = C1895k.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;

    /* renamed from: w */
    static final Property<View, Float> f36707w = new C8130d(Float.class, "width");

    /* renamed from: x */
    static final Property<View, Float> f36708x = new C8131e(Float.class, "height");

    /* renamed from: y */
    static final Property<View, Float> f36709y = new C8132f(Float.class, "paddingStart");

    /* renamed from: z */
    static final Property<View, Float> f36710z = new C8133g(Float.class, "paddingEnd");

    /* renamed from: A */
    private int f36711A;

    /* renamed from: B */
    private final C8143a f36712B;

    /* renamed from: C */
    private final AbstractC8164f f36713C;

    /* renamed from: D */
    private final AbstractC8164f f36714D;

    /* renamed from: E */
    private final AbstractC8164f f36715E;

    /* renamed from: F */
    private final AbstractC8164f f36716F;

    /* renamed from: G */
    private final int f36717G;

    /* renamed from: H */
    private int f36718H;

    /* renamed from: I */
    private int f36719I;

    /* renamed from: J */
    private final CoordinatorLayout.Behavior<ExtendedFloatingActionButton> f36720J;

    /* renamed from: K */
    private boolean f36721K;

    /* renamed from: L */
    private boolean f36722L;

    /* renamed from: M */
    private boolean f36723M;

    /* renamed from: N */
    protected ColorStateList f36724N;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior.class */
    public static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a */
        private Rect f36725a;

        /* renamed from: b */
        private AbstractC8136j f36726b;

        /* renamed from: c */
        private AbstractC8136j f36727c;

        /* renamed from: d */
        private boolean f36728d;

        /* renamed from: e */
        private boolean f36729e;

        public ExtendedFloatingActionButtonBehavior() {
            this.f36728d = false;
            this.f36729e = true;
        }

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1896l.ExtendedFloatingActionButton_Behavior_Layout);
            this.f36728d = obtainStyledAttributes.getBoolean(C1896l.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.f36729e = obtainStyledAttributes.getBoolean(C1896l.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: G */
        private static boolean m4807G(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.C0532e) {
                return ((CoordinatorLayout.C0532e) layoutParams).m33534f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        /* renamed from: J */
        private boolean m4804J(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f36728d || this.f36729e) && ((CoordinatorLayout.C0532e) extendedFloatingActionButton.getLayoutParams()).m33535e() == view.getId();
        }

        /* renamed from: L */
        private boolean m4802L(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!m4804J(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.f36725a == null) {
                this.f36725a = new Rect();
            }
            Rect rect = this.f36725a;
            C8177c.m4556a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                m4803K(extendedFloatingActionButton);
                return true;
            }
            m4809E(extendedFloatingActionButton);
            return true;
        }

        /* renamed from: M */
        private boolean m4801M(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!m4804J(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.C0532e) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                m4803K(extendedFloatingActionButton);
                return true;
            }
            m4809E(extendedFloatingActionButton);
            return true;
        }

        /* renamed from: E */
        protected void m4809E(ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z = this.f36729e;
            extendedFloatingActionButton.m4828A(z ? extendedFloatingActionButton.f36714D : extendedFloatingActionButton.f36715E, z ? this.f36727c : this.f36726b);
        }

        /* renamed from: F */
        public boolean mo4765b(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, Rect rect) {
            return super.mo4765b(coordinatorLayout, extendedFloatingActionButton, rect);
        }

        /* renamed from: H */
        public boolean mo3829h(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                m4802L(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            } else if (!m4807G(view)) {
                return false;
            } else {
                m4801M(view, extendedFloatingActionButton);
                return false;
            }
        }

        /* renamed from: I */
        public boolean mo3828l(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, int i) {
            List<View> m33559v = coordinatorLayout.m33559v(extendedFloatingActionButton);
            int size = m33559v.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = m33559v.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    if (m4807G(view) && m4801M(view, extendedFloatingActionButton)) {
                        break;
                    }
                } else if (m4802L(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.m33586M(extendedFloatingActionButton, i);
            return true;
        }

        /* renamed from: K */
        protected void m4803K(ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z = this.f36729e;
            extendedFloatingActionButton.m4828A(z ? extendedFloatingActionButton.f36713C : extendedFloatingActionButton.f36716F, z ? this.f36727c : this.f36726b);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: g */
        public void mo3805g(CoordinatorLayout.C0532e c0532e) {
            if (c0532e.f2769h == 0) {
                c0532e.f2769h = 80;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a.class */
    public class C8127a implements AbstractC8138l {
        C8127a() {
            ExtendedFloatingActionButton.this = r4;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.AbstractC8138l
        /* renamed from: a */
        public int mo4792a() {
            return ExtendedFloatingActionButton.this.f36719I;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.AbstractC8138l
        /* renamed from: b */
        public int mo4791b() {
            return ExtendedFloatingActionButton.this.f36718H;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.AbstractC8138l
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getMeasuredHeight();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.AbstractC8138l
        public ViewGroup.LayoutParams getLayoutParams() {
            return new ViewGroup.LayoutParams(-2, -2);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.AbstractC8138l
        public int getWidth() {
            return (ExtendedFloatingActionButton.this.getMeasuredWidth() - (ExtendedFloatingActionButton.this.getCollapsedPadding() * 2)) + ExtendedFloatingActionButton.this.f36718H + ExtendedFloatingActionButton.this.f36719I;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b.class */
    public class C8128b implements AbstractC8138l {
        C8128b() {
            ExtendedFloatingActionButton.this = r4;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.AbstractC8138l
        /* renamed from: a */
        public int mo4792a() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.AbstractC8138l
        /* renamed from: b */
        public int mo4791b() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.AbstractC8138l
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.AbstractC8138l
        public ViewGroup.LayoutParams getLayoutParams() {
            return new ViewGroup.LayoutParams(getWidth(), getHeight());
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.AbstractC8138l
        public int getWidth() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c.class */
    public class C8129c extends AnimatorListenerAdapter {

        /* renamed from: a */
        private boolean f36732a;

        /* renamed from: b */
        final /* synthetic */ AbstractC8164f f36733b;

        /* renamed from: c */
        final /* synthetic */ AbstractC8136j f36734c;

        C8129c(AbstractC8164f abstractC8164f, AbstractC8136j abstractC8136j) {
            ExtendedFloatingActionButton.this = r4;
            this.f36733b = abstractC8164f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f36732a = true;
            this.f36733b.mo4673a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f36733b.mo4668f();
            if (!this.f36732a) {
                this.f36733b.mo4664j(this.f36734c);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f36733b.onAnimationStart(animator);
            this.f36732a = false;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d.class */
    static final class C8130d extends Property<View, Float> {
        C8130d(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        /* renamed from: b */
        public void set(View view, Float f) {
            view.getLayoutParams().width = f.intValue();
            view.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e.class */
    static final class C8131e extends Property<View, Float> {
        C8131e(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        /* renamed from: b */
        public void set(View view, Float f) {
            view.getLayoutParams().height = f.intValue();
            view.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$f */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f.class */
    static final class C8132f extends Property<View, Float> {
        C8132f(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Float get(View view) {
            return Float.valueOf(C1679w.m29334I(view));
        }

        /* renamed from: b */
        public void set(View view, Float f) {
            C1679w.m29339F0(view, f.intValue(), view.getPaddingTop(), C1679w.m29336H(view), view.getPaddingBottom());
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$g */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g.class */
    static final class C8133g extends Property<View, Float> {
        C8133g(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Float get(View view) {
            return Float.valueOf(C1679w.m29336H(view));
        }

        /* renamed from: b */
        public void set(View view, Float f) {
            C1679w.m29339F0(view, C1679w.m29334I(view), view.getPaddingTop(), f.intValue(), view.getPaddingBottom());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$h */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h.class */
    public class C8134h extends AbstractC8144b {

        /* renamed from: g */
        private final AbstractC8138l f36736g;

        /* renamed from: h */
        private final boolean f36737h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8134h(C8143a c8143a, AbstractC8138l abstractC8138l, boolean z) {
            super(r5, c8143a);
            ExtendedFloatingActionButton.this = r5;
            this.f36736g = abstractC8138l;
            this.f36737h = z;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: b */
        public int mo4672b() {
            return this.f36737h ? C1885a.mtrl_extended_fab_change_size_expand_motion_spec : C1885a.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: c */
        public void mo4671c() {
            ExtendedFloatingActionButton.this.f36721K = this.f36737h;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.f36736g.getLayoutParams().width;
            layoutParams.height = this.f36736g.getLayoutParams().height;
            C1679w.m29339F0(ExtendedFloatingActionButton.this, this.f36736g.mo4791b(), ExtendedFloatingActionButton.this.getPaddingTop(), this.f36736g.mo4792a(), ExtendedFloatingActionButton.this.getPaddingBottom());
            ExtendedFloatingActionButton.this.requestLayout();
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: e */
        public boolean mo4669e() {
            return this.f36737h == ExtendedFloatingActionButton.this.f36721K || ExtendedFloatingActionButton.this.getIcon() == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8144b, com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: f */
        public void mo4668f() {
            super.mo4668f();
            ExtendedFloatingActionButton.this.f36722L = false;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.f36736g.getLayoutParams().width;
            layoutParams.height = this.f36736g.getLayoutParams().height;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8144b, com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: h */
        public AnimatorSet mo4666h() {
            C1904h m4751m = m4751m();
            if (m4751m.m28731j("width")) {
                PropertyValuesHolder[] m28734g = m4751m.m28734g("width");
                m28734g[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.f36736g.getWidth());
                m4751m.m28729l("width", m28734g);
            }
            if (m4751m.m28731j("height")) {
                PropertyValuesHolder[] m28734g2 = m4751m.m28734g("height");
                m28734g2[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.f36736g.getHeight());
                m4751m.m28729l("height", m28734g2);
            }
            if (m4751m.m28731j("paddingStart")) {
                PropertyValuesHolder[] m28734g3 = m4751m.m28734g("paddingStart");
                m28734g3[0].setFloatValues(C1679w.m29334I(ExtendedFloatingActionButton.this), this.f36736g.mo4791b());
                m4751m.m28729l("paddingStart", m28734g3);
            }
            if (m4751m.m28731j("paddingEnd")) {
                PropertyValuesHolder[] m28734g4 = m4751m.m28734g("paddingEnd");
                m28734g4[0].setFloatValues(C1679w.m29336H(ExtendedFloatingActionButton.this), this.f36736g.mo4792a());
                m4751m.m28729l("paddingEnd", m28734g4);
            }
            if (m4751m.m28731j("labelOpacity")) {
                PropertyValuesHolder[] m28734g5 = m4751m.m28734g("labelOpacity");
                boolean z = this.f36737h;
                float f = 0.0f;
                float f2 = z ? 0.0f : 1.0f;
                if (z) {
                    f = 1.0f;
                }
                m28734g5[0].setFloatValues(f2, f);
                m4751m.m28729l("labelOpacity", m28734g5);
            }
            return super.m4752l(m4751m);
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: j */
        public void mo4664j(AbstractC8136j abstractC8136j) {
            if (abstractC8136j == null) {
                return;
            }
            if (!this.f36737h) {
                throw null;
            }
            throw null;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8144b, com.google.android.material.floatingactionbutton.AbstractC8164f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.f36721K = this.f36737h;
            ExtendedFloatingActionButton.this.f36722L = true;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$i */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i.class */
    public class C8135i extends AbstractC8144b {

        /* renamed from: g */
        private boolean f36739g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8135i(C8143a c8143a) {
            super(r5, c8143a);
            ExtendedFloatingActionButton.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8144b, com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: a */
        public void mo4673a() {
            super.mo4673a();
            this.f36739g = true;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: b */
        public int mo4672b() {
            return C1885a.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: c */
        public void mo4671c() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: e */
        public boolean mo4669e() {
            return ExtendedFloatingActionButton.this.m4811y();
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8144b, com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: f */
        public void mo4668f() {
            super.mo4668f();
            ExtendedFloatingActionButton.this.f36711A = 0;
            if (!this.f36739g) {
                ExtendedFloatingActionButton.this.setVisibility(8);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: j */
        public void mo4664j(AbstractC8136j abstractC8136j) {
            if (abstractC8136j == null) {
                return;
            }
            throw null;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8144b, com.google.android.material.floatingactionbutton.AbstractC8164f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.f36739g = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f36711A = 1;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$j */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$j.class */
    public static abstract class AbstractC8136j {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$k */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$k.class */
    public class C8137k extends AbstractC8144b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8137k(C8143a c8143a) {
            super(r5, c8143a);
            ExtendedFloatingActionButton.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: b */
        public int mo4672b() {
            return C1885a.mtrl_extended_fab_show_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: c */
        public void mo4671c() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: e */
        public boolean mo4669e() {
            return ExtendedFloatingActionButton.this.m4810z();
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8144b, com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: f */
        public void mo4668f() {
            super.mo4668f();
            ExtendedFloatingActionButton.this.f36711A = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8164f
        /* renamed from: j */
        public void mo4664j(AbstractC8136j abstractC8136j) {
            if (abstractC8136j == null) {
                return;
            }
            throw null;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC8144b, com.google.android.material.floatingactionbutton.AbstractC8164f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f36711A = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$l */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$l.class */
    public interface AbstractC8138l {
        /* renamed from: a */
        int mo4792a();

        /* renamed from: b */
        int mo4791b();

        int getHeight();

        ViewGroup.LayoutParams getLayoutParams();

        int getWidth();
    }

    public ExtendedFloatingActionButton(Context context) {
        this(context, null);
    }

    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.extendedFloatingActionButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ExtendedFloatingActionButton(android.content.Context r9, android.util.AttributeSet r10, int r11) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: A */
    public void m4828A(AbstractC8164f abstractC8164f, AbstractC8136j abstractC8136j) {
        if (abstractC8164f.mo4669e()) {
            return;
        }
        if (!m4826C()) {
            abstractC8164f.mo4671c();
            abstractC8164f.mo4664j(abstractC8136j);
            return;
        }
        measure(0, 0);
        AnimatorSet mo4666h = abstractC8164f.mo4666h();
        mo4666h.addListener(new C8129c(abstractC8164f, abstractC8136j));
        for (Animator.AnimatorListener animatorListener : abstractC8164f.mo4665i()) {
            mo4666h.addListener(animatorListener);
        }
        mo4666h.start();
    }

    /* renamed from: B */
    private void m4827B() {
        this.f36724N = getTextColors();
    }

    /* renamed from: C */
    private boolean m4826C() {
        return (C1679w.m29313V(this) || (!m4810z() && this.f36723M)) && !isInEditMode();
    }

    /* renamed from: y */
    public boolean m4811y() {
        boolean z = false;
        if (getVisibility() == 0) {
            if (this.f36711A == 1) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (this.f36711A != 2) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: z */
    public boolean m4810z() {
        boolean z = false;
        if (getVisibility() != 0) {
            if (this.f36711A == 2) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (this.f36711A != 1) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: D */
    public void m4825D(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0529b
    public CoordinatorLayout.Behavior<ExtendedFloatingActionButton> getBehavior() {
        return this.f36720J;
    }

    int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    int getCollapsedSize() {
        int i = this.f36717G;
        int i2 = i;
        if (i < 0) {
            i2 = (Math.min(C1679w.m29334I(this), C1679w.m29336H(this)) * 2) + getIconSize();
        }
        return i2;
    }

    public C1904h getExtendMotionSpec() {
        return this.f36714D.mo4670d();
    }

    public C1904h getHideMotionSpec() {
        return this.f36716F.mo4670d();
    }

    public C1904h getShowMotionSpec() {
        return this.f36715E.mo4670d();
    }

    public C1904h getShrinkMotionSpec() {
        return this.f36713C.mo4670d();
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.f36721K || !TextUtils.isEmpty(getText()) || getIcon() == null) {
            return;
        }
        this.f36721K = false;
        this.f36713C.mo4671c();
    }

    public void setAnimateShowBeforeLayout(boolean z) {
        this.f36723M = z;
    }

    public void setExtendMotionSpec(C1904h c1904h) {
        this.f36714D.mo4667g(c1904h);
    }

    public void setExtendMotionSpecResource(int i) {
        setExtendMotionSpec(C1904h.m28737d(getContext(), i));
    }

    public void setExtended(boolean z) {
        if (this.f36721K == z) {
            return;
        }
        AbstractC8164f abstractC8164f = z ? this.f36714D : this.f36713C;
        if (abstractC8164f.mo4669e()) {
            return;
        }
        abstractC8164f.mo4671c();
    }

    public void setHideMotionSpec(C1904h c1904h) {
        this.f36716F.mo4667g(c1904h);
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(C1904h.m28737d(getContext(), i));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        if (!this.f36721K || this.f36722L) {
            return;
        }
        this.f36718H = C1679w.m29334I(this);
        this.f36719I = C1679w.m29336H(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        if (!this.f36721K || this.f36722L) {
            return;
        }
        this.f36718H = i;
        this.f36719I = i3;
    }

    public void setShowMotionSpec(C1904h c1904h) {
        this.f36715E.mo4667g(c1904h);
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(C1904h.m28737d(getContext(), i));
    }

    public void setShrinkMotionSpec(C1904h c1904h) {
        this.f36713C.mo4667g(c1904h);
    }

    public void setShrinkMotionSpecResource(int i) {
        setShrinkMotionSpec(C1904h.m28737d(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        m4827B();
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        m4827B();
    }
}
