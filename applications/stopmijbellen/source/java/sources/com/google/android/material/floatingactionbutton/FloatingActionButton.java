package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import androidx.appcompat.widget.C0242j;
import androidx.appcompat.widget.C0260o;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.C1782d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import p019b4.AbstractC0729b;
import p029c4.AbstractC0841m;
import p029c4.C0822f;
import p029c4.C0827i;
import p079e4.C2535a;
import p090f3.AbstractC2735i;
import p090f3.C2733g;
import p098g0.C2789a;
import p102g4.C2811a;
import p124i4.C3102d;
import p134j4.C3260w0;
import p163m0.C3589v;
import p163m0.C3611y;
import p226s.C4263g;
import p240t3.AbstractC4388a;
import p240t3.C4389b;
import p251u3.C4477a;
import p251u3.C4482d;
import p251u3.ViewTreeObserver$OnPreDrawListenerC4481c;
import p262v3.C4603d;
import p262v3.C4634p;
import p262v3.C4638t;
import p262v3.C4641u;
import p304z3.C5071c;
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton.class */
public class FloatingActionButton extends C4641u implements AbstractC4388a, AbstractC0841m, CoordinatorLayout.AbstractC0320b {

    /* renamed from: b */
    public ColorStateList f6626b;

    /* renamed from: c */
    public PorterDuff.Mode f6627c;

    /* renamed from: d */
    public ColorStateList f6628d;

    /* renamed from: e */
    public PorterDuff.Mode f6629e;

    /* renamed from: f */
    public ColorStateList f6630f;

    /* renamed from: g */
    public int f6631g;

    /* renamed from: h */
    public int f6632h;

    /* renamed from: i */
    public int f6633i;

    /* renamed from: j */
    public int f6634j;

    /* renamed from: k */
    public int f6635k;

    /* renamed from: l */
    public boolean f6636l;

    /* renamed from: o */
    public final C0260o f6639o;

    /* renamed from: q */
    public C1782d f6641q;

    /* renamed from: m */
    public final Rect f6637m = new Rect();

    /* renamed from: n */
    public final Rect f6638n = new Rect();

    /* renamed from: p */
    public final C4389b f6640p = new C4389b(this);

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior.class */
    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.AbstractC0321c<T> {

        /* renamed from: a */
        public Rect f6642a;

        /* renamed from: b */
        public boolean f6643b;

        public BaseBehavior() {
            this.f6643b = true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3260w0.f11032m);
            this.f6643b = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: a */
        public boolean mo4573a(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            Rect rect2 = floatingActionButton.f6637m;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: c */
        public void mo4487c(CoordinatorLayout.C0324f c0324f) {
            if (c0324f.f1465h == 0) {
                c0324f.f1465h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: d */
        public boolean mo4490d(CoordinatorLayout coordinatorLayout, View view, View view2) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                m4571t(coordinatorLayout, (AppBarLayout) view2, floatingActionButton);
                return false;
            }
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            if (!(layoutParams instanceof CoordinatorLayout.C0324f ? ((CoordinatorLayout.C0324f) layoutParams).f1458a instanceof BottomSheetBehavior : false)) {
                return false;
            }
            m4570u(view2, floatingActionButton);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: h */
        public boolean mo2976h(CoordinatorLayout coordinatorLayout, View view, int i) {
            int i2;
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            List<View> m8336e = coordinatorLayout.m8336e(floatingActionButton);
            int size = m8336e.size();
            for (int i3 = 0; i3 < size; i3++) {
                View view2 = m8336e.get(i3);
                if (!(view2 instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof CoordinatorLayout.C0324f ? ((CoordinatorLayout.C0324f) layoutParams).f1458a instanceof BottomSheetBehavior : false) && m4570u(view2, floatingActionButton)) {
                        break;
                    }
                } else if (m4571t(coordinatorLayout, (AppBarLayout) view2, floatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.m8328s(floatingActionButton, i);
            Rect rect = floatingActionButton.f6637m;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return true;
            }
            CoordinatorLayout.C0324f c0324f = (CoordinatorLayout.C0324f) floatingActionButton.getLayoutParams();
            int i4 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) c0324f).rightMargin ? rect.right : floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) c0324f).leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) c0324f).bottomMargin) {
                i2 = rect.bottom;
            } else {
                i2 = 0;
                if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) c0324f).topMargin) {
                    i2 = -rect.top;
                }
            }
            if (i2 != 0) {
                C3589v.m2109o(floatingActionButton, i2);
            }
            if (i4 == 0) {
                return true;
            }
            C3589v.m2110n(floatingActionButton, i4);
            return true;
        }

        /* renamed from: s */
        public final boolean m4572s(View view, FloatingActionButton floatingActionButton) {
            return this.f6643b && ((CoordinatorLayout.C0324f) floatingActionButton.getLayoutParams()).f1463f == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        /* renamed from: t */
        public final boolean m4571t(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!m4572s(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f6642a == null) {
                this.f6642a = new Rect();
            }
            Rect rect = this.f6642a;
            C4603d.m720a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.m4580i(null, false);
                return true;
            }
            floatingActionButton.m4574o(null, false);
            return true;
        }

        /* renamed from: u */
        public final boolean m4570u(View view, FloatingActionButton floatingActionButton) {
            if (!m4572s(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.C0324f) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.m4580i(null, false);
                return true;
            }
            floatingActionButton.m4574o(null, false);
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$Behavior.class */
    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$a.class */
    public static abstract class AbstractC1776a {
        /* renamed from: a */
        public void mo2656a(FloatingActionButton floatingActionButton) {
        }

        /* renamed from: b */
        public void mo2655b(FloatingActionButton floatingActionButton) {
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$b.class */
    public class C1777b implements AbstractC0729b {
        public C1777b() {
            FloatingActionButton.this = r4;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$c.class */
    public class C1778c<T extends FloatingActionButton> implements C1782d.AbstractC1788f {

        /* renamed from: a */
        public final AbstractC2735i<T> f6645a;

        public C1778c(AbstractC2735i<T> abstractC2735i) {
            FloatingActionButton.this = r4;
            this.f6645a = abstractC2735i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.C1782d.AbstractC1788f
        /* renamed from: a */
        public void mo4555a() {
            this.f6645a.m3188a(FloatingActionButton.this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.C1782d.AbstractC1788f
        /* renamed from: b */
        public void mo4554b() {
            this.f6645a.m3187b(FloatingActionButton.this);
        }

        public boolean equals(Object obj) {
            return (obj instanceof C1778c) && ((C1778c) obj).f6645a.equals(this.f6645a);
        }

        public int hashCode() {
            return this.f6645a.hashCode();
        }
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        super(C2811a.m2970a(context, attributeSet, 2130969039, 2131886887), attributeSet, 2130969039);
        Context context2 = getContext();
        TypedArray m687d = C4634p.m687d(context2, attributeSet, C3260w0.f11031l, 2130969039, 2131886887, new int[0]);
        this.f6626b = C5071c.m72a(context2, m687d, 1);
        this.f6627c = C4638t.m684b(m687d.getInt(2, -1), null);
        this.f6630f = C5071c.m72a(context2, m687d, 32);
        this.f6632h = m687d.getInt(7, -1);
        this.f6633i = m687d.getDimensionPixelSize(6, 0);
        this.f6631g = m687d.getDimensionPixelSize(3, 0);
        float dimension = m687d.getDimension(4, 0.0f);
        float dimension2 = m687d.getDimension(29, 0.0f);
        float dimension3 = m687d.getDimension(31, 0.0f);
        this.f6636l = m687d.getBoolean(36, false);
        int dimensionPixelSize = getResources().getDimensionPixelSize(2131165733);
        setMaxImageSize(m687d.getDimensionPixelSize(30, 0));
        C2733g m3194a = C2733g.m3194a(context2, m687d, 35);
        C2733g m3194a2 = C2733g.m3194a(context2, m687d, 28);
        C0827i m7299a = C0827i.m7303c(context2, attributeSet, 2130969039, 2131886887, C0827i.f3057m).m7299a();
        boolean z = m687d.getBoolean(5, false);
        setEnabled(m687d.getBoolean(0, true));
        m687d.recycle();
        C0260o c0260o = new C0260o(this);
        this.f6639o = c0260o;
        c0260o.m8456b(attributeSet, 2130969039);
        getImpl().m4560r(m7299a);
        getImpl().mo877g(this.f6626b, this.f6627c, this.f6630f, this.f6631g);
        getImpl().f6676k = dimensionPixelSize;
        C1782d impl = getImpl();
        if (impl.f6673h != dimension) {
            impl.f6673h = dimension;
            impl.mo873m(dimension, impl.f6674i, impl.f6675j);
        }
        C1782d impl2 = getImpl();
        if (impl2.f6674i != dimension2) {
            impl2.f6674i = dimension2;
            impl2.mo873m(impl2.f6673h, dimension2, impl2.f6675j);
        }
        C1782d impl3 = getImpl();
        if (impl3.f6675j != dimension3) {
            impl3.f6675j = dimension3;
            impl3.mo873m(impl3.f6673h, impl3.f6674i, dimension3);
        }
        getImpl().f6679n = m3194a;
        getImpl().f6680o = m3194a2;
        getImpl().f6671f = z;
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    private C1782d getImpl() {
        if (this.f6641q == null) {
            this.f6641q = new C4482d(this, new C1777b());
        }
        return this.f6641q;
    }

    /* renamed from: n */
    public static int m4575n(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            i = Math.min(i, size);
        } else if (mode != 0) {
            if (mode != 1073741824) {
                throw new IllegalArgumentException();
            }
            i = size;
        }
        return i;
    }

    @Override // p240t3.AbstractC4388a
    /* renamed from: a */
    public boolean mo975a() {
        return this.f6640p.f13681b;
    }

    /* renamed from: d */
    public void m4585d(Animator.AnimatorListener animatorListener) {
        C1782d impl = getImpl();
        if (impl.f6686u == null) {
            impl.f6686u = new ArrayList<>();
        }
        impl.f6686u.add(null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().mo874l(getDrawableState());
    }

    /* renamed from: e */
    public void m4584e(Animator.AnimatorListener animatorListener) {
        C1782d impl = getImpl();
        if (impl.f6685t == null) {
            impl.f6685t = new ArrayList<>();
        }
        impl.f6685t.add(animatorListener);
    }

    /* renamed from: f */
    public void m4583f(AbstractC2735i<? extends FloatingActionButton> abstractC2735i) {
        C1782d impl = getImpl();
        C1778c c1778c = new C1778c(null);
        if (impl.f6687v == null) {
            impl.f6687v = new ArrayList<>();
        }
        impl.f6687v.add(c1778c);
    }

    @Deprecated
    /* renamed from: g */
    public boolean m4582g(Rect rect) {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (C3589v.C3596g.m2058c(this)) {
            rect.set(0, 0, getWidth(), getHeight());
            m4577l(rect);
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.f6626b;
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f6627c;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0320b
    public CoordinatorLayout.AbstractC0321c<FloatingActionButton> getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().mo879e();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().f6674i;
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().f6675j;
    }

    public Drawable getContentBackground() {
        return getImpl().f6670e;
    }

    public int getCustomSize() {
        return this.f6633i;
    }

    public int getExpandedComponentIdHint() {
        return this.f6640p.f13682c;
    }

    public C2733g getHideMotionSpec() {
        return getImpl().f6680o;
    }

    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f6630f;
        return colorStateList != null ? colorStateList.getDefaultColor() : 0;
    }

    public ColorStateList getRippleColorStateList() {
        return this.f6630f;
    }

    public C0827i getShapeAppearanceModel() {
        C0827i c0827i = getImpl().f6666a;
        Objects.requireNonNull(c0827i);
        return c0827i;
    }

    public C2733g getShowMotionSpec() {
        return getImpl().f6679n;
    }

    public int getSize() {
        return this.f6632h;
    }

    public int getSizeDimension() {
        return m4581h(this.f6632h);
    }

    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    public ColorStateList getSupportImageTintList() {
        return this.f6628d;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f6629e;
    }

    public boolean getUseCompatPadding() {
        return this.f6636l;
    }

    /* renamed from: h */
    public final int m4581h(int i) {
        int i2 = this.f6633i;
        if (i2 != 0) {
            return i2;
        }
        Resources resources = getResources();
        if (i != -1) {
            return i != 1 ? resources.getDimensionPixelSize(2131165331) : resources.getDimensionPixelSize(2131165330);
        }
        return Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? m4581h(1) : m4581h(0);
    }

    /* renamed from: i */
    public void m4580i(AbstractC1776a abstractC1776a, boolean z) {
        C1782d impl = getImpl();
        C1779a c1779a = abstractC1776a == null ? null : new C1779a(this, abstractC1776a);
        if (impl.m4565h()) {
            return;
        }
        Animator animator = impl.f6678m;
        if (animator != null) {
            animator.cancel();
        }
        if (!impl.m4559t()) {
            impl.f6688w.m683b(z ? 8 : 4, z);
            if (c1779a == null) {
                return;
            }
            c1779a.f6647a.mo2656a(c1779a.f6648b);
            return;
        }
        C2733g c2733g = impl.f6680o;
        AnimatorSet m4568b = c2733g != null ? impl.m4568b(c2733g, 0.0f, 0.0f, 0.0f) : impl.m4567c(0.0f, 0.4f, 0.4f);
        m4568b.addListener(new C1780b(impl, z, c1779a));
        ArrayList<Animator.AnimatorListener> arrayList = impl.f6686u;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                m4568b.addListener(it2.next());
            }
        }
        m4568b.start();
    }

    /* renamed from: j */
    public boolean m4579j() {
        return getImpl().m4565h();
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().mo876j();
    }

    /* renamed from: k */
    public boolean m4578k() {
        return getImpl().m4564i();
    }

    /* renamed from: l */
    public final void m4577l(Rect rect) {
        int i = rect.left;
        Rect rect2 = this.f6637m;
        rect.left = i + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    /* renamed from: m */
    public final void m4576m() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f6628d;
        if (colorStateList == null) {
            C2789a.m3014a(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f6629e;
        PorterDuff.Mode mode2 = mode;
        if (mode == null) {
            mode2 = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(C0242j.m8484c(colorForState, mode2));
    }

    /* renamed from: o */
    public void m4574o(AbstractC1776a abstractC1776a, boolean z) {
        C1782d impl = getImpl();
        C1779a c1779a = abstractC1776a == null ? null : new C1779a(this, abstractC1776a);
        if (impl.m4564i()) {
            return;
        }
        Animator animator = impl.f6678m;
        if (animator != null) {
            animator.cancel();
        }
        boolean z2 = impl.f6679n == null;
        if (!impl.m4559t()) {
            impl.f6688w.m683b(0, z);
            impl.f6688w.setAlpha(1.0f);
            impl.f6688w.setScaleY(1.0f);
            impl.f6688w.setScaleX(1.0f);
            impl.m4561p(1.0f);
            if (c1779a == null) {
                return;
            }
            c1779a.f6647a.mo2655b(c1779a.f6648b);
            return;
        }
        if (impl.f6688w.getVisibility() != 0) {
            impl.f6688w.setAlpha(0.0f);
            impl.f6688w.setScaleY(z2 ? 0.4f : 0.0f);
            impl.f6688w.setScaleX(z2 ? 0.4f : 0.0f);
            float f = 0.0f;
            if (z2) {
                f = 0.4f;
            }
            impl.m4561p(f);
        }
        C2733g c2733g = impl.f6679n;
        AnimatorSet m4568b = c2733g != null ? impl.m4568b(c2733g, 1.0f, 1.0f, 1.0f) : impl.m4567c(1.0f, 1.0f, 1.0f);
        m4568b.addListener(new C1781c(impl, z, c1779a));
        ArrayList<Animator.AnimatorListener> arrayList = impl.f6685t;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                m4568b.addListener(it2.next());
            }
        }
        m4568b.start();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1782d impl = getImpl();
        C0822f c0822f = impl.f6667b;
        if (c0822f != null) {
            C3102d.m2644H(impl.f6688w, c0822f);
        }
        if (!(impl instanceof C4482d)) {
            ViewTreeObserver viewTreeObserver = impl.f6688w.getViewTreeObserver();
            if (impl.f6665C == null) {
                impl.f6665C = new ViewTreeObserver$OnPreDrawListenerC4481c(impl);
            }
            viewTreeObserver.addOnPreDrawListener(impl.f6665C);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C1782d impl = getImpl();
        ViewTreeObserver viewTreeObserver = impl.f6688w.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = impl.f6665C;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            impl.f6665C = null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        int sizeDimension = getSizeDimension();
        this.f6634j = (sizeDimension - this.f6635k) / 2;
        getImpl().m4557w();
        int min = Math.min(m4575n(sizeDimension, i), m4575n(sizeDimension, i2));
        Rect rect = this.f6637m;
        setMeasuredDimension(rect.left + min + rect.right, min + rect.top + rect.bottom);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C2535a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C2535a c2535a = (C2535a) parcelable;
        super.onRestoreInstanceState(c2535a.f13167a);
        C4389b c4389b = this.f6640p;
        Bundle orDefault = c2535a.f8880c.getOrDefault("expandableWidgetHelper", null);
        Objects.requireNonNull(orDefault);
        Bundle bundle = orDefault;
        Objects.requireNonNull(c4389b);
        c4389b.f13681b = bundle.getBoolean("expanded", false);
        c4389b.f13682c = bundle.getInt("expandedComponentIdHint", 0);
        if (!c4389b.f13681b) {
            return;
        }
        ViewParent parent = c4389b.f13680a.getParent();
        if (!(parent instanceof CoordinatorLayout)) {
            return;
        }
        ((CoordinatorLayout) parent).m8338c(c4389b.f13680a);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = onSaveInstanceState;
        if (onSaveInstanceState == null) {
            bundle = new Bundle();
        }
        C2535a c2535a = new C2535a(bundle);
        C4263g<String, Bundle> c4263g = c2535a.f8880c;
        C4389b c4389b = this.f6640p;
        Objects.requireNonNull(c4389b);
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean("expanded", c4389b.f13681b);
        bundle2.putInt("expandedComponentIdHint", c4389b.f13682c);
        c4263g.put("expandableWidgetHelper", bundle2);
        return c2535a;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || !m4582g(this.f6638n) || this.f6638n.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.f6626b != colorStateList) {
            this.f6626b = colorStateList;
            C1782d impl = getImpl();
            C0822f c0822f = impl.f6667b;
            if (c0822f != null) {
                c0822f.setTintList(colorStateList);
            }
            C4477a c4477a = impl.f6669d;
            if (c4477a == null) {
                return;
            }
            c4477a.m880b(colorStateList);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f6627c != mode) {
            this.f6627c = mode;
            C0822f c0822f = getImpl().f6667b;
            if (c0822f == null) {
                return;
            }
            c0822f.setTintMode(mode);
        }
    }

    public void setCompatElevation(float f) {
        C1782d impl = getImpl();
        if (impl.f6673h != f) {
            impl.f6673h = f;
            impl.mo873m(f, impl.f6674i, impl.f6675j);
        }
    }

    public void setCompatElevationResource(int i) {
        setCompatElevation(getResources().getDimension(i));
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        C1782d impl = getImpl();
        if (impl.f6674i != f) {
            impl.f6674i = f;
            impl.mo873m(impl.f6673h, f, impl.f6675j);
        }
    }

    public void setCompatHoveredFocusedTranslationZResource(int i) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i));
    }

    public void setCompatPressedTranslationZ(float f) {
        C1782d impl = getImpl();
        if (impl.f6675j != f) {
            impl.f6675j = f;
            impl.mo873m(impl.f6673h, impl.f6674i, f);
        }
    }

    public void setCompatPressedTranslationZResource(int i) {
        setCompatPressedTranslationZ(getResources().getDimension(i));
    }

    public void setCustomSize(int i) {
        if (i >= 0) {
            if (i == this.f6633i) {
                return;
            }
            this.f6633i = i;
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("Custom size must be non-negative");
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        getImpl().m4556x(f);
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        if (z != getImpl().f6671f) {
            getImpl().f6671f = z;
            requestLayout();
        }
    }

    public void setExpandedComponentIdHint(int i) {
        this.f6640p.f13682c = i;
    }

    public void setHideMotionSpec(C2733g c2733g) {
        getImpl().f6680o = c2733g;
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(C2733g.m3193b(getContext(), i));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            C1782d impl = getImpl();
            impl.m4561p(impl.f6682q);
            if (this.f6628d == null) {
                return;
            }
            m4576m();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.f6639o.m8455c(i);
        m4576m();
    }

    public void setMaxImageSize(int i) {
        this.f6635k = i;
        C1782d impl = getImpl();
        if (impl.f6683r != i) {
            impl.f6683r = i;
            impl.m4561p(impl.f6682q);
        }
    }

    public void setRippleColor(int i) {
        setRippleColor(ColorStateList.valueOf(i));
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.f6630f != colorStateList) {
            this.f6630f = colorStateList;
            getImpl().mo872q(this.f6630f);
        }
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        getImpl().m4563n();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        super.setScaleY(f);
        getImpl().m4563n();
    }

    public void setShadowPaddingEnabled(boolean z) {
        C1782d impl = getImpl();
        impl.f6672g = z;
        impl.m4557w();
    }

    @Override // p029c4.AbstractC0841m
    public void setShapeAppearanceModel(C0827i c0827i) {
        getImpl().m4560r(c0827i);
    }

    public void setShowMotionSpec(C2733g c2733g) {
        getImpl().f6679n = c2733g;
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(C2733g.m3193b(getContext(), i));
    }

    public void setSize(int i) {
        this.f6633i = 0;
        if (i != this.f6632h) {
            this.f6632h = i;
            requestLayout();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.f6628d != colorStateList) {
            this.f6628d = colorStateList;
            m4576m();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.f6629e != mode) {
            this.f6629e = mode;
            m4576m();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        super.setTranslationX(f);
        getImpl().m4562o();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        getImpl().m4562o();
    }

    @Override // android.view.View
    public void setTranslationZ(float f) {
        super.setTranslationZ(f);
        getImpl().m4562o();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f6636l != z) {
            this.f6636l = z;
            getImpl().mo875k();
        }
    }

    @Override // p262v3.C4641u, android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
    }
}
