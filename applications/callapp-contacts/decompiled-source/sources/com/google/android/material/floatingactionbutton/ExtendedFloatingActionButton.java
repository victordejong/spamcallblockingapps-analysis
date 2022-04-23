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
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.a.h;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton.class */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.a {
    protected ColorStateList f;
    private int l;
    private final com.google.android.material.floatingactionbutton.a m;
    private final f n;
    private final f o;
    private final f p;
    private final f q;
    private final int r;
    private int s;
    private int t;
    private final CoordinatorLayout.Behavior<ExtendedFloatingActionButton> u;
    private boolean v;
    private boolean w;
    private boolean x;
    private static final int k = a.k.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;
    static final Property<View, Float> g = new Property<View, Float>(Float.class, "width") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.4
        @Override // android.util.Property
        public final /* synthetic */ Float get(View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(View view, Float f) {
            View view2 = view;
            view2.getLayoutParams().width = f.intValue();
            view2.requestLayout();
        }
    };
    static final Property<View, Float> h = new Property<View, Float>(Float.class, "height") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.5
        @Override // android.util.Property
        public final /* synthetic */ Float get(View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(View view, Float f) {
            View view2 = view;
            view2.getLayoutParams().height = f.intValue();
            view2.requestLayout();
        }
    };
    static final Property<View, Float> i = new Property<View, Float>(Float.class, "paddingStart") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.6
        @Override // android.util.Property
        public final /* synthetic */ Float get(View view) {
            return Float.valueOf(v.i(view));
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(View view, Float f) {
            View view2 = view;
            v.b(view2, f.intValue(), view2.getPaddingTop(), v.j(view2), view2.getPaddingBottom());
        }
    };
    static final Property<View, Float> j = new Property<View, Float>(Float.class, "paddingEnd") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.7
        @Override // android.util.Property
        public final /* synthetic */ Float get(View view) {
            return Float.valueOf(v.j(view));
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(View view, Float f) {
            View view2 = view;
            v.b(view2, v.i(view2), view2.getPaddingTop(), f.intValue(), view2.getPaddingBottom());
        }
    };

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior.class */
    protected static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a  reason: collision with root package name */
        private Rect f30504a;

        /* renamed from: b  reason: collision with root package name */
        private c f30505b;

        /* renamed from: c  reason: collision with root package name */
        private c f30506c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f30507d;
        private boolean e;

        public ExtendedFloatingActionButtonBehavior() {
            this.f30507d = false;
            this.e = true;
        }

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.l.ExtendedFloatingActionButton_Behavior_Layout);
            this.f30507d = obtainStyledAttributes.getBoolean(a.l.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.e = obtainStyledAttributes.getBoolean(a.l.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            obtainStyledAttributes.recycle();
        }

        private void a(ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z = this.e;
            ExtendedFloatingActionButton.a(extendedFloatingActionButton, z ? extendedFloatingActionButton.n : extendedFloatingActionButton.q, z ? this.f30506c : this.f30505b);
        }

        private static boolean a(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.d) {
                return ((CoordinatorLayout.d) layoutParams).f1663a instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean a(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f30507d || this.e) && ((CoordinatorLayout.d) extendedFloatingActionButton.getLayoutParams()).f == view.getId();
        }

        private boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!a((View) appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.f30504a == null) {
                this.f30504a = new Rect();
            }
            Rect rect = this.f30504a;
            com.google.android.material.internal.b.b(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.f()) {
                a(extendedFloatingActionButton);
                return true;
            }
            b(extendedFloatingActionButton);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, int i) {
            List<View> b2 = coordinatorLayout.b(extendedFloatingActionButton);
            int size = b2.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = b2.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    if (a(view) && b(view, extendedFloatingActionButton)) {
                        break;
                    }
                } else if (a(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.b(extendedFloatingActionButton, i);
            return true;
        }

        private void b(ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z = this.e;
            ExtendedFloatingActionButton.a(extendedFloatingActionButton, z ? extendedFloatingActionButton.o : extendedFloatingActionButton.p, z ? this.f30506c : this.f30505b);
        }

        private boolean b(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!a(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((CoordinatorLayout.d) extendedFloatingActionButton.getLayoutParams()).topMargin) {
                a(extendedFloatingActionButton);
                return true;
            }
            b(extendedFloatingActionButton);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void a(CoordinatorLayout.d dVar) {
            if (dVar.h == 0) {
                dVar.h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
            return super.a(coordinatorLayout, (CoordinatorLayout) ((ExtendedFloatingActionButton) view), rect);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                a(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton);
                return false;
            } else if (!a(view2)) {
                return false;
            } else {
                b(view2, extendedFloatingActionButton);
                return false;
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a.class */
    final class a extends com.google.android.material.floatingactionbutton.b {

        /* renamed from: c  reason: collision with root package name */
        private final e f30509c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f30510d;

        a(com.google.android.material.floatingactionbutton.a aVar, e eVar, boolean z) {
            super(ExtendedFloatingActionButton.this, aVar);
            this.f30509c = eVar;
            this.f30510d = z;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public final void a(Animator animator) {
            super.a(animator);
            ExtendedFloatingActionButton.this.v = this.f30510d;
            ExtendedFloatingActionButton.this.w = true;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public final void c() {
            super.c();
            ExtendedFloatingActionButton.this.w = false;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = this.f30509c.e().width;
                layoutParams.height = this.f30509c.e().height;
            }
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public final AnimatorSet e() {
            h a2 = a();
            if (a2.b("width")) {
                PropertyValuesHolder[] c2 = a2.c("width");
                c2[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.f30509c.a());
                a2.a("width", c2);
            }
            if (a2.b("height")) {
                PropertyValuesHolder[] c3 = a2.c("height");
                c3[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.f30509c.b());
                a2.a("height", c3);
            }
            if (a2.b("paddingStart")) {
                PropertyValuesHolder[] c4 = a2.c("paddingStart");
                c4[0].setFloatValues(v.i(ExtendedFloatingActionButton.this), this.f30509c.c());
                a2.a("paddingStart", c4);
            }
            if (a2.b("paddingEnd")) {
                PropertyValuesHolder[] c5 = a2.c("paddingEnd");
                c5[0].setFloatValues(v.j(ExtendedFloatingActionButton.this), this.f30509c.d());
                a2.a("paddingEnd", c5);
            }
            if (a2.b("labelOpacity")) {
                PropertyValuesHolder[] c6 = a2.c("labelOpacity");
                boolean z = this.f30510d;
                float f = BitmapDescriptorFactory.HUE_RED;
                float f2 = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                if (z) {
                    f = 1.0f;
                }
                c6[0].setFloatValues(f2, f);
                a2.a("labelOpacity", c6);
            }
            return super.b(a2);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public final void f() {
            ExtendedFloatingActionButton.this.v = this.f30510d;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = this.f30509c.e().width;
                layoutParams.height = this.f30509c.e().height;
                v.b(ExtendedFloatingActionButton.this, this.f30509c.c(), ExtendedFloatingActionButton.this.getPaddingTop(), this.f30509c.d(), ExtendedFloatingActionButton.this.getPaddingBottom());
                ExtendedFloatingActionButton.this.requestLayout();
            }
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public final int g() {
            return this.f30510d ? a.C0485a.mtrl_extended_fab_change_size_expand_motion_spec : a.C0485a.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public final boolean h() {
            return this.f30510d == ExtendedFloatingActionButton.this.v || ExtendedFloatingActionButton.this.e == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b.class */
    final class b extends com.google.android.material.floatingactionbutton.b {

        /* renamed from: c  reason: collision with root package name */
        private boolean f30512c;

        public b(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public final void a(Animator animator) {
            super.a(animator);
            this.f30512c = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.l = 1;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public final void c() {
            super.c();
            ExtendedFloatingActionButton.this.l = 0;
            if (!this.f30512c) {
                ExtendedFloatingActionButton.this.setVisibility(8);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public final void d() {
            super.d();
            this.f30512c = true;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public final void f() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public final int g() {
            return a.C0485a.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public final boolean h() {
            return ExtendedFloatingActionButton.i(ExtendedFloatingActionButton.this);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c.class */
    public static abstract class c {
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d.class */
    final class d extends com.google.android.material.floatingactionbutton.b {
        public d(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public final void a(Animator animator) {
            super.a(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.l = 2;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public final void c() {
            super.c();
            ExtendedFloatingActionButton.this.l = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public final void f() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public final int g() {
            return a.C0485a.mtrl_extended_fab_show_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public final boolean h() {
            return ExtendedFloatingActionButton.this.i();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e.class */
    interface e {
        int a();

        int b();

        int c();

        int d();

        ViewGroup.LayoutParams e();
    }

    public ExtendedFloatingActionButton(Context context) {
        this(context, null);
    }

    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.extendedFloatingActionButtonStyle);
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

    static /* synthetic */ void a(ExtendedFloatingActionButton extendedFloatingActionButton, final f fVar, final c cVar) {
        if (!fVar.h()) {
            if (!((v.B(extendedFloatingActionButton) || (!extendedFloatingActionButton.i() && extendedFloatingActionButton.x)) && !extendedFloatingActionButton.isInEditMode())) {
                fVar.f();
                return;
            }
            extendedFloatingActionButton.measure(0, 0);
            AnimatorSet e2 = fVar.e();
            e2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.3

                /* renamed from: d  reason: collision with root package name */
                private boolean f30503d;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    this.f30503d = true;
                    fVar.d();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    fVar.c();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    fVar.a(animator);
                    this.f30503d = false;
                }
            });
            for (Animator.AnimatorListener animatorListener : fVar.b()) {
                e2.addListener(animatorListener);
            }
            e2.start();
        }
    }

    private void h() {
        this.f = getTextColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i() {
        return getVisibility() != 0 ? this.l == 2 : this.l != 1;
    }

    static /* synthetic */ boolean i(ExtendedFloatingActionButton extendedFloatingActionButton) {
        return extendedFloatingActionButton.getVisibility() == 0 ? extendedFloatingActionButton.l == 1 : extendedFloatingActionButton.l != 2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.a
    public final CoordinatorLayout.Behavior<ExtendedFloatingActionButton> a() {
        return this.u;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    final int f() {
        int i2 = this.r;
        int i3 = i2;
        if (i2 < 0) {
            i3 = (Math.min(v.i(this), v.j(this)) * 2) + b();
        }
        return i3;
    }

    final int g() {
        return (f() - b()) / 2;
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.v && TextUtils.isEmpty(getText()) && this.e != null) {
            this.v = false;
            this.n.f();
        }
    }

    public void setAnimateShowBeforeLayout(boolean z) {
        this.x = z;
    }

    public void setExtendMotionSpec(h hVar) {
        this.o.a(hVar);
    }

    public void setExtendMotionSpecResource(int i2) {
        setExtendMotionSpec(h.a(getContext(), i2));
    }

    public void setExtended(boolean z) {
        if (this.v != z) {
            f fVar = z ? this.o : this.n;
            if (!fVar.h()) {
                fVar.f();
            }
        }
    }

    public void setHideMotionSpec(h hVar) {
        this.q.a(hVar);
    }

    public void setHideMotionSpecResource(int i2) {
        setHideMotionSpec(h.a(getContext(), i2));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i2, int i3, int i4, int i5) {
        super.setPadding(i2, i3, i4, i5);
        if (this.v && !this.w) {
            this.s = v.i(this);
            this.t = v.j(this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i2, int i3, int i4, int i5) {
        super.setPaddingRelative(i2, i3, i4, i5);
        if (this.v && !this.w) {
            this.s = i2;
            this.t = i4;
        }
    }

    public void setShowMotionSpec(h hVar) {
        this.p.a(hVar);
    }

    public void setShowMotionSpecResource(int i2) {
        setShowMotionSpec(h.a(getContext(), i2));
    }

    public void setShrinkMotionSpec(h hVar) {
        this.n.a(hVar);
    }

    public void setShrinkMotionSpecResource(int i2) {
        setShrinkMotionSpec(h.a(getContext(), i2));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i2) {
        super.setTextColor(i2);
        h();
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        h();
    }
}
