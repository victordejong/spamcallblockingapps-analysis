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
import androidx.core.view.C0926v;
import com.google.android.material.C14376a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.C14619b;
import com.google.android.material.p364a.C14396h;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton.class */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AbstractC0699a {

    /* renamed from: f */
    protected ColorStateList f53080f;

    /* renamed from: l */
    private int f53081l;

    /* renamed from: m */
    private final C14572a f53082m;

    /* renamed from: n */
    private final AbstractC14593f f53083n;

    /* renamed from: o */
    private final AbstractC14593f f53084o;

    /* renamed from: p */
    private final AbstractC14593f f53085p;

    /* renamed from: q */
    private final AbstractC14593f f53086q;

    /* renamed from: r */
    private final int f53087r;

    /* renamed from: s */
    private int f53088s;

    /* renamed from: t */
    private int f53089t;

    /* renamed from: u */
    private final CoordinatorLayout.Behavior<ExtendedFloatingActionButton> f53090u;

    /* renamed from: v */
    private boolean f53091v;

    /* renamed from: w */
    private boolean f53092w;

    /* renamed from: x */
    private boolean f53093x;

    /* renamed from: k */
    private static final int f53079k = C14376a.C14387k.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;

    /* renamed from: g */
    static final Property<View, Float> f53075g = new Property<View, Float>(Float.class, "width") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.4
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

    /* renamed from: h */
    static final Property<View, Float> f53076h = new Property<View, Float>(Float.class, "height") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.5
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

    /* renamed from: i */
    static final Property<View, Float> f53077i = new Property<View, Float>(Float.class, "paddingStart") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.6
        @Override // android.util.Property
        public final /* synthetic */ Float get(View view) {
            return Float.valueOf(C0926v.m44091i(view));
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(View view, Float f) {
            View view2 = view;
            C0926v.m44109b(view2, f.intValue(), view2.getPaddingTop(), C0926v.m44089j(view2), view2.getPaddingBottom());
        }
    };

    /* renamed from: j */
    static final Property<View, Float> f53078j = new Property<View, Float>(Float.class, "paddingEnd") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.7
        @Override // android.util.Property
        public final /* synthetic */ Float get(View view) {
            return Float.valueOf(C0926v.m44089j(view));
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(View view, Float f) {
            View view2 = view;
            C0926v.m44109b(view2, C0926v.m44091i(view2), view2.getPaddingTop(), f.intValue(), view2.getPaddingBottom());
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior.class */
    public static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a */
        private Rect f53100a;

        /* renamed from: b */
        private AbstractC14565c f53101b;

        /* renamed from: c */
        private AbstractC14565c f53102c;

        /* renamed from: d */
        private boolean f53103d;

        /* renamed from: e */
        private boolean f53104e;

        public ExtendedFloatingActionButtonBehavior() {
            this.f53103d = false;
            this.f53104e = true;
        }

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C14376a.C14388l.ExtendedFloatingActionButton_Behavior_Layout);
            this.f53103d = obtainStyledAttributes.getBoolean(C14376a.C14388l.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.f53104e = obtainStyledAttributes.getBoolean(C14376a.C14388l.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        private void m10756a(ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z = this.f53104e;
            ExtendedFloatingActionButton.m10775a(extendedFloatingActionButton, z ? extendedFloatingActionButton.f53083n : extendedFloatingActionButton.f53086q, z ? this.f53102c : this.f53101b);
        }

        /* renamed from: a */
        private static boolean m10760a(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.C0702d) {
                return ((CoordinatorLayout.C0702d) layoutParams).f3200a instanceof BottomSheetBehavior;
            }
            return false;
        }

        /* renamed from: a */
        private boolean m10759a(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f53103d || this.f53104e) && ((CoordinatorLayout.C0702d) extendedFloatingActionButton.getLayoutParams()).f3205f == view.getId();
        }

        /* renamed from: a */
        private boolean m10758a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!m10759a((View) appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.f53100a == null) {
                this.f53100a = new Rect();
            }
            Rect rect = this.f53100a;
            C14619b.m10556b(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.m11308f()) {
                m10756a(extendedFloatingActionButton);
                return true;
            }
            m10754b(extendedFloatingActionButton);
            return true;
        }

        /* renamed from: a */
        public boolean mo9852a(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, int i) {
            List<View> m44656b = coordinatorLayout.m44656b(extendedFloatingActionButton);
            int size = m44656b.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = m44656b.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    if (m10760a(view) && m10755b(view, extendedFloatingActionButton)) {
                        break;
                    }
                } else if (m10758a(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.m44655b(extendedFloatingActionButton, i);
            return true;
        }

        /* renamed from: b */
        private void m10754b(ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z = this.f53104e;
            ExtendedFloatingActionButton.m10775a(extendedFloatingActionButton, z ? extendedFloatingActionButton.f53084o : extendedFloatingActionButton.f53085p, z ? this.f53102c : this.f53101b);
        }

        /* renamed from: b */
        private boolean m10755b(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!m10759a(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((CoordinatorLayout.C0702d) extendedFloatingActionButton.getLayoutParams()).topMargin) {
                m10756a(extendedFloatingActionButton);
                return true;
            }
            m10754b(extendedFloatingActionButton);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final void mo9842a(CoordinatorLayout.C0702d c0702d) {
            if (c0702d.f3207h == 0) {
                c0702d.f3207h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo10731a(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
            return super.mo10731a(coordinatorLayout, (CoordinatorLayout) ((ExtendedFloatingActionButton) view), rect);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* synthetic */ boolean mo9851a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                m10758a(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton);
                return false;
            } else if (!m10760a(view2)) {
                return false;
            } else {
                m10755b(view2, extendedFloatingActionButton);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a.class */
    public final class C14563a extends AbstractC14573b {

        /* renamed from: c */
        private final AbstractC14567e f53106c;

        /* renamed from: d */
        private final boolean f53107d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14563a(C14572a c14572a, AbstractC14567e abstractC14567e, boolean z) {
            super(r5, c14572a);
            ExtendedFloatingActionButton.this = r5;
            this.f53106c = abstractC14567e;
            this.f53107d = z;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14573b, com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: a */
        public final void mo10673a(Animator animator) {
            super.mo10673a(animator);
            ExtendedFloatingActionButton.this.f53091v = this.f53107d;
            ExtendedFloatingActionButton.this.f53092w = true;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14573b, com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: c */
        public final void mo10670c() {
            super.mo10670c();
            ExtendedFloatingActionButton.this.f53092w = false;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.f53106c.mo10749e().width;
            layoutParams.height = this.f53106c.mo10749e().height;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14573b, com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: e */
        public final AnimatorSet mo10668e() {
            C14396h a = m10723a();
            if (a.m11324b("width")) {
                PropertyValuesHolder[] m11323c = a.m11323c("width");
                m11323c[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.f53106c.mo10753a());
                a.m11327a("width", m11323c);
            }
            if (a.m11324b("height")) {
                PropertyValuesHolder[] m11323c2 = a.m11323c("height");
                m11323c2[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.f53106c.mo10752b());
                a.m11327a("height", m11323c2);
            }
            if (a.m11324b("paddingStart")) {
                PropertyValuesHolder[] m11323c3 = a.m11323c("paddingStart");
                m11323c3[0].setFloatValues(C0926v.m44091i(ExtendedFloatingActionButton.this), this.f53106c.mo10751c());
                a.m11327a("paddingStart", m11323c3);
            }
            if (a.m11324b("paddingEnd")) {
                PropertyValuesHolder[] m11323c4 = a.m11323c("paddingEnd");
                m11323c4[0].setFloatValues(C0926v.m44089j(ExtendedFloatingActionButton.this), this.f53106c.mo10750d());
                a.m11327a("paddingEnd", m11323c4);
            }
            if (a.m11324b("labelOpacity")) {
                PropertyValuesHolder[] m11323c5 = a.m11323c("labelOpacity");
                boolean z = this.f53107d;
                float f = 0.0f;
                float f2 = z ? 0.0f : 1.0f;
                if (z) {
                    f = 1.0f;
                }
                m11323c5[0].setFloatValues(f2, f);
                a.m11327a("labelOpacity", m11323c5);
            }
            return super.m10722b(a);
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: f */
        public final void mo10667f() {
            ExtendedFloatingActionButton.this.f53091v = this.f53107d;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.f53106c.mo10749e().width;
            layoutParams.height = this.f53106c.mo10749e().height;
            C0926v.m44109b(ExtendedFloatingActionButton.this, this.f53106c.mo10751c(), ExtendedFloatingActionButton.this.getPaddingTop(), this.f53106c.mo10750d(), ExtendedFloatingActionButton.this.getPaddingBottom());
            ExtendedFloatingActionButton.this.requestLayout();
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: g */
        public final int mo10666g() {
            return this.f53107d ? C14376a.C14377a.mtrl_extended_fab_change_size_expand_motion_spec : C14376a.C14377a.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: h */
        public final boolean mo10665h() {
            return this.f53107d == ExtendedFloatingActionButton.this.f53091v || ExtendedFloatingActionButton.this.f52719e == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b.class */
    public final class C14564b extends AbstractC14573b {

        /* renamed from: c */
        private boolean f53109c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14564b(C14572a c14572a) {
            super(r5, c14572a);
            ExtendedFloatingActionButton.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14573b, com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: a */
        public final void mo10673a(Animator animator) {
            super.mo10673a(animator);
            this.f53109c = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f53081l = 1;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14573b, com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: c */
        public final void mo10670c() {
            super.mo10670c();
            ExtendedFloatingActionButton.this.f53081l = 0;
            if (!this.f53109c) {
                ExtendedFloatingActionButton.this.setVisibility(8);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14573b, com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: d */
        public final void mo10669d() {
            super.mo10669d();
            this.f53109c = true;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: f */
        public final void mo10667f() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: g */
        public final int mo10666g() {
            return C14376a.C14377a.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: h */
        public final boolean mo10665h() {
            return ExtendedFloatingActionButton.m10761i(ExtendedFloatingActionButton.this);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$c */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c.class */
    public static abstract class AbstractC14565c {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$d */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d.class */
    public final class C14566d extends AbstractC14573b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14566d(C14572a c14572a) {
            super(r5, c14572a);
            ExtendedFloatingActionButton.this = r5;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14573b, com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: a */
        public final void mo10673a(Animator animator) {
            super.mo10673a(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f53081l = 2;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14573b, com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: c */
        public final void mo10670c() {
            super.mo10670c();
            ExtendedFloatingActionButton.this.f53081l = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: f */
        public final void mo10667f() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: g */
        public final int mo10666g() {
            return C14376a.C14377a.mtrl_extended_fab_show_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.AbstractC14593f
        /* renamed from: h */
        public final boolean mo10665h() {
            return ExtendedFloatingActionButton.this.m10762i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$e */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e.class */
    public interface AbstractC14567e {
        /* renamed from: a */
        int mo10753a();

        /* renamed from: b */
        int mo10752b();

        /* renamed from: c */
        int mo10751c();

        /* renamed from: d */
        int mo10750d();

        /* renamed from: e */
        ViewGroup.LayoutParams mo10749e();
    }

    public ExtendedFloatingActionButton(Context context) {
        this(context, null);
    }

    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.extendedFloatingActionButtonStyle);
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

    /* renamed from: a */
    static /* synthetic */ void m10775a(ExtendedFloatingActionButton extendedFloatingActionButton, final AbstractC14593f abstractC14593f, final AbstractC14565c abstractC14565c) {
        if (!abstractC14593f.mo10665h()) {
            if (!((C0926v.m44157B(extendedFloatingActionButton) || (!extendedFloatingActionButton.m10762i() && extendedFloatingActionButton.f53093x)) && !extendedFloatingActionButton.isInEditMode())) {
                abstractC14593f.mo10667f();
                return;
            }
            extendedFloatingActionButton.measure(0, 0);
            AnimatorSet mo10668e = abstractC14593f.mo10668e();
            mo10668e.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.3

                /* renamed from: d */
                private boolean f53099d;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    this.f53099d = true;
                    abstractC14593f.mo10669d();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    abstractC14593f.mo10670c();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    abstractC14593f.mo10673a(animator);
                    this.f53099d = false;
                }
            });
            for (Animator.AnimatorListener animatorListener : abstractC14593f.mo10671b()) {
                mo10668e.addListener(animatorListener);
            }
            mo10668e.start();
        }
    }

    /* renamed from: h */
    private void m10764h() {
        this.f53080f = getTextColors();
    }

    /* renamed from: i */
    public boolean m10762i() {
        return getVisibility() != 0 ? this.f53081l == 2 : this.f53081l != 1;
    }

    /* renamed from: i */
    static /* synthetic */ boolean m10761i(ExtendedFloatingActionButton extendedFloatingActionButton) {
        return extendedFloatingActionButton.getVisibility() == 0 ? extendedFloatingActionButton.f53081l == 1 : extendedFloatingActionButton.f53081l != 2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0699a
    /* renamed from: a */
    public final CoordinatorLayout.Behavior<ExtendedFloatingActionButton> mo10748a() {
        return this.f53090u;
    }

    /* renamed from: a */
    public final void m10778a(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    /* renamed from: f */
    final int m10768f() {
        int i = this.f53087r;
        int i2 = i;
        if (i < 0) {
            i2 = (Math.min(C0926v.m44091i(this), C0926v.m44089j(this)) * 2) + m11071b();
        }
        return i2;
    }

    /* renamed from: g */
    final int m10766g() {
        return (m10768f() - m11071b()) / 2;
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.f53091v || !TextUtils.isEmpty(getText()) || this.f52719e == null) {
            return;
        }
        this.f53091v = false;
        this.f53083n.mo10667f();
    }

    public void setAnimateShowBeforeLayout(boolean z) {
        this.f53093x = z;
    }

    public void setExtendMotionSpec(C14396h c14396h) {
        this.f53084o.mo10672a(c14396h);
    }

    public void setExtendMotionSpecResource(int i) {
        setExtendMotionSpec(C14396h.m11333a(getContext(), i));
    }

    public void setExtended(boolean z) {
        if (this.f53091v == z) {
            return;
        }
        AbstractC14593f abstractC14593f = z ? this.f53084o : this.f53083n;
        if (abstractC14593f.mo10665h()) {
            return;
        }
        abstractC14593f.mo10667f();
    }

    public void setHideMotionSpec(C14396h c14396h) {
        this.f53086q.mo10672a(c14396h);
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(C14396h.m11333a(getContext(), i));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        if (!this.f53091v || this.f53092w) {
            return;
        }
        this.f53088s = C0926v.m44091i(this);
        this.f53089t = C0926v.m44089j(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        if (!this.f53091v || this.f53092w) {
            return;
        }
        this.f53088s = i;
        this.f53089t = i3;
    }

    public void setShowMotionSpec(C14396h c14396h) {
        this.f53085p.mo10672a(c14396h);
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(C14396h.m11333a(getContext(), i));
    }

    public void setShrinkMotionSpec(C14396h c14396h) {
        this.f53083n.mo10672a(c14396h);
    }

    public void setShrinkMotionSpecResource(int i) {
        setShrinkMotionSpec(C14396h.m11333a(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        m10764h();
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        m10764h();
    }
}
