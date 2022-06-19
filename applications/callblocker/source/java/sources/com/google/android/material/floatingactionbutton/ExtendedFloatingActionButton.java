package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p026h.C0595u;
import com.google.android.material.C4492a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.C4689b;
import com.google.android.material.p142a.C4512h;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton.class */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AbstractC0422a {

    /* renamed from: e */
    private final Rect f20173e;

    /* renamed from: f */
    private final AbstractC4679d f20174f;

    /* renamed from: g */
    private final AbstractC4679d f20175g;

    /* renamed from: h */
    private final AbstractC4679d f20176h;

    /* renamed from: i */
    private final AbstractC4679d f20177i;

    /* renamed from: j */
    private final CoordinatorLayout.AbstractC0423b<ExtendedFloatingActionButton> f20178j;

    /* renamed from: k */
    private boolean f20179k;

    /* renamed from: c */
    private static final int f20172c = C4492a.C4503k.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;

    /* renamed from: a */
    static final Property<View, Float> f20170a = new Property<View, Float>(Float.class, "width") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.2
        /* renamed from: a */
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        /* renamed from: a */
        public void set(View view, Float f) {
            view.getLayoutParams().width = f.intValue();
            view.requestLayout();
        }
    };

    /* renamed from: b */
    static final Property<View, Float> f20171b = new Property<View, Float>(Float.class, "height") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.3
        /* renamed from: a */
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        /* renamed from: a */
        public void set(View view, Float f) {
            view.getLayoutParams().height = f.intValue();
            view.requestLayout();
        }
    };

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior.class */
    protected static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.AbstractC0423b<T> {

        /* renamed from: a */
        private Rect f20184a;

        /* renamed from: b */
        private AbstractC4656a f20185b;

        /* renamed from: c */
        private AbstractC4656a f20186c;

        /* renamed from: d */
        private boolean f20187d;

        /* renamed from: e */
        private boolean f20188e;

        public ExtendedFloatingActionButtonBehavior() {
            this.f20187d = false;
            this.f20188e = true;
        }

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C4492a.C4504l.ExtendedFloatingActionButton_Behavior_Layout);
            this.f20187d = obtainStyledAttributes.getBoolean(C4492a.C4504l.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.f20188e = obtainStyledAttributes.getBoolean(C4492a.C4504l.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        private void m3046a(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            int i = 0;
            Rect rect = extendedFloatingActionButton.f20173e;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return;
            }
            CoordinatorLayout.C0426e c0426e = (CoordinatorLayout.C0426e) extendedFloatingActionButton.getLayoutParams();
            int i2 = extendedFloatingActionButton.getRight() >= coordinatorLayout.getWidth() - c0426e.rightMargin ? rect.right : extendedFloatingActionButton.getLeft() <= c0426e.leftMargin ? -rect.left : 0;
            if (extendedFloatingActionButton.getBottom() >= coordinatorLayout.getHeight() - c0426e.bottomMargin) {
                i = rect.bottom;
            } else if (extendedFloatingActionButton.getTop() <= c0426e.topMargin) {
                i = -rect.top;
            }
            if (i != 0) {
                C0595u.m20323e(extendedFloatingActionButton, i);
            }
            if (i2 == 0) {
                return;
            }
            C0595u.m20321f(extendedFloatingActionButton, i2);
        }

        /* renamed from: a */
        private static boolean m3049a(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            return layoutParams instanceof CoordinatorLayout.C0426e ? ((CoordinatorLayout.C0426e) layoutParams).m20929b() instanceof BottomSheetBehavior : false;
        }

        /* renamed from: a */
        private boolean m3048a(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f20187d || this.f20188e) ? ((CoordinatorLayout.C0426e) extendedFloatingActionButton.getLayoutParams()).m20939a() == view.getId() : false;
        }

        /* renamed from: a */
        private boolean m3047a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z;
            if (!m3048a(appBarLayout, extendedFloatingActionButton)) {
                z = false;
            } else {
                if (this.f20184a == null) {
                    this.f20184a = new Rect();
                }
                Rect rect = this.f20184a;
                C4689b.m2855b(coordinatorLayout, appBarLayout, rect);
                if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                    m3042a(extendedFloatingActionButton);
                } else {
                    m3040b(extendedFloatingActionButton);
                }
                z = true;
            }
            return z;
        }

        /* renamed from: b */
        private boolean m3041b(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z;
            if (!m3048a(view, extendedFloatingActionButton)) {
                z = false;
            } else {
                if (view.getTop() < ((CoordinatorLayout.C0426e) extendedFloatingActionButton.getLayoutParams()).topMargin + (extendedFloatingActionButton.getHeight() / 2)) {
                    m3042a(extendedFloatingActionButton);
                } else {
                    m3040b(extendedFloatingActionButton);
                }
                z = true;
            }
            return z;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: a */
        public void mo2202a(CoordinatorLayout.C0426e c0426e) {
            if (c0426e.f1709h == 0) {
                c0426e.f1709h = 80;
            }
        }

        /* renamed from: a */
        protected void m3042a(ExtendedFloatingActionButton extendedFloatingActionButton) {
            extendedFloatingActionButton.m3059a(this.f20188e ? extendedFloatingActionButton.f20174f : extendedFloatingActionButton.f20177i, this.f20188e ? this.f20186c : this.f20185b);
        }

        /* renamed from: a */
        public boolean mo2219a(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, int i) {
            List<View> m20965c = coordinatorLayout.m20965c(extendedFloatingActionButton);
            int size = m20965c.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = m20965c.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    if (m3049a(view) && m3041b(view, extendedFloatingActionButton)) {
                        break;
                    }
                } else if (m3047a(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.m20971b(extendedFloatingActionButton, i);
            m3046a(coordinatorLayout, extendedFloatingActionButton);
            return true;
        }

        /* renamed from: a */
        public boolean mo3018a(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, Rect rect) {
            Rect rect2 = extendedFloatingActionButton.f20173e;
            rect.set(extendedFloatingActionButton.getLeft() + rect2.left, extendedFloatingActionButton.getTop() + rect2.top, extendedFloatingActionButton.getRight() - rect2.right, extendedFloatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        /* renamed from: a */
        public boolean mo2216b(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                m3047a(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            } else if (!m3049a(view)) {
                return false;
            } else {
                m3041b(view, extendedFloatingActionButton);
                return false;
            }
        }

        /* renamed from: b */
        protected void m3040b(ExtendedFloatingActionButton extendedFloatingActionButton) {
            extendedFloatingActionButton.m3059a(this.f20188e ? extendedFloatingActionButton.f20175g : extendedFloatingActionButton.f20176h, this.f20188e ? this.f20186c : this.f20185b);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a.class */
    public static abstract class AbstractC4656a {
    }

    /* renamed from: a */
    public void m3059a(final AbstractC4679d abstractC4679d, final AbstractC4656a abstractC4656a) {
        if (abstractC4679d.m2925g()) {
            return;
        }
        if (!m3058b()) {
            abstractC4679d.m2934a();
            abstractC4679d.m2931a(abstractC4656a);
            return;
        }
        measure(0, 0);
        AnimatorSet m2929c = abstractC4679d.m2929c();
        m2929c.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.1

            /* renamed from: d */
            private boolean f20183d;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.f20183d = true;
                abstractC4679d.m2926f();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                abstractC4679d.m2927e();
                if (!this.f20183d) {
                    abstractC4679d.m2931a(abstractC4656a);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                abstractC4679d.m2933a(animator);
                this.f20183d = false;
            }
        });
        for (Animator.AnimatorListener animatorListener : abstractC4679d.m2928d()) {
            m2929c.addListener(animatorListener);
        }
        m2929c.start();
    }

    /* renamed from: b */
    private boolean m3058b() {
        return C0595u.m20299y(this) && !isInEditMode();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0422a
    public CoordinatorLayout.AbstractC0423b<ExtendedFloatingActionButton> getBehavior() {
        return this.f20178j;
    }

    int getCollapsedSize() {
        return (Math.min(C0595u.m20316i(this), C0595u.m20314j(this)) * 2) + getIconSize();
    }

    public C4512h getExtendMotionSpec() {
        return this.f20175g.m2930b();
    }

    public C4512h getHideMotionSpec() {
        return this.f20177i.m2930b();
    }

    public C4512h getShowMotionSpec() {
        return this.f20176h.m2930b();
    }

    public C4512h getShrinkMotionSpec() {
        return this.f20174f.m2930b();
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.f20179k || !TextUtils.isEmpty(getText()) || getIcon() == null) {
            return;
        }
        this.f20179k = false;
        this.f20174f.m2934a();
    }

    public void setExtendMotionSpec(C4512h c4512h) {
        this.f20175g.m2932a(c4512h);
    }

    public void setExtendMotionSpecResource(int i) {
        setExtendMotionSpec(C4512h.m3844a(getContext(), i));
    }

    public void setExtended(boolean z) {
        if (this.f20179k == z) {
            return;
        }
        AbstractC4679d abstractC4679d = z ? this.f20175g : this.f20174f;
        if (abstractC4679d.m2925g()) {
            return;
        }
        abstractC4679d.m2934a();
    }

    public void setHideMotionSpec(C4512h c4512h) {
        this.f20177i.m2932a(c4512h);
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(C4512h.m3844a(getContext(), i));
    }

    public void setShowMotionSpec(C4512h c4512h) {
        this.f20176h.m2932a(c4512h);
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(C4512h.m3844a(getContext(), i));
    }

    public void setShrinkMotionSpec(C4512h c4512h) {
        this.f20174f.m2932a(c4512h);
    }

    public void setShrinkMotionSpecResource(int i) {
        setShrinkMotionSpec(C4512h.m3844a(getContext(), i));
    }
}
