package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.C0350i;
import androidx.appcompat.widget.C0353k;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p025g.C0527f;
import androidx.core.p026h.AbstractC0594t;
import androidx.core.p026h.C0595u;
import androidx.core.widget.AbstractC0632l;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C4492a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.C4664b;
import com.google.android.material.internal.C4689b;
import com.google.android.material.internal.C4702i;
import com.google.android.material.internal.C4703j;
import com.google.android.material.internal.C4708k;
import com.google.android.material.p142a.AbstractC4515k;
import com.google.android.material.p142a.C4512h;
import com.google.android.material.p153k.AbstractC4710a;
import com.google.android.material.p153k.C4712c;
import com.google.android.material.p156n.C4718c;
import com.google.android.material.p158p.AbstractC4729b;
import com.google.android.material.p159q.AbstractC4758n;
import com.google.android.material.p159q.C4743k;
import com.google.android.material.p160r.C4759a;
import java.util.List;
@CoordinatorLayout.AbstractC0424c(m20940a = Behavior.class)
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton.class */
public class FloatingActionButton extends C4708k implements AbstractC0594t, AbstractC0632l, AbstractC4710a, AbstractC4758n {

    /* renamed from: c */
    private static final int f20189c = C4492a.C4503k.Widget_Design_FloatingActionButton;

    /* renamed from: a */
    boolean f20190a;

    /* renamed from: b */
    final Rect f20191b;

    /* renamed from: d */
    private ColorStateList f20192d;

    /* renamed from: e */
    private PorterDuff.Mode f20193e;

    /* renamed from: f */
    private ColorStateList f20194f;

    /* renamed from: g */
    private PorterDuff.Mode f20195g;

    /* renamed from: h */
    private ColorStateList f20196h;

    /* renamed from: i */
    private int f20197i;

    /* renamed from: j */
    private int f20198j;

    /* renamed from: k */
    private int f20199k;

    /* renamed from: l */
    private int f20200l;

    /* renamed from: m */
    private int f20201m;

    /* renamed from: n */
    private final Rect f20202n;

    /* renamed from: o */
    private final C0353k f20203o;

    /* renamed from: p */
    private final C4712c f20204p;

    /* renamed from: q */
    private C4664b f20205q;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior.class */
    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.AbstractC0423b<T> {

        /* renamed from: a */
        private Rect f20208a;

        /* renamed from: b */
        private AbstractC4658a f20209b;

        /* renamed from: c */
        private boolean f20210c;

        public BaseBehavior() {
            this.f20210c = true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C4492a.C4504l.FloatingActionButton_Behavior_Layout);
            this.f20210c = obtainStyledAttributes.getBoolean(C4492a.C4504l.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        private void m3016a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton) {
            int i = 0;
            Rect rect = floatingActionButton.f20191b;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return;
            }
            CoordinatorLayout.C0426e c0426e = (CoordinatorLayout.C0426e) floatingActionButton.getLayoutParams();
            int i2 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - c0426e.rightMargin ? rect.right : floatingActionButton.getLeft() <= c0426e.leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - c0426e.bottomMargin) {
                i = rect.bottom;
            } else if (floatingActionButton.getTop() <= c0426e.topMargin) {
                i = -rect.top;
            }
            if (i != 0) {
                C0595u.m20323e(floatingActionButton, i);
            }
            if (i2 == 0) {
                return;
            }
            C0595u.m20321f(floatingActionButton, i2);
        }

        /* renamed from: a */
        private static boolean m3020a(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            return layoutParams instanceof CoordinatorLayout.C0426e ? ((CoordinatorLayout.C0426e) layoutParams).m20929b() instanceof BottomSheetBehavior : false;
        }

        /* renamed from: a */
        private boolean m3019a(View view, FloatingActionButton floatingActionButton) {
            return !this.f20210c ? false : ((CoordinatorLayout.C0426e) floatingActionButton.getLayoutParams()).m20939a() != view.getId() ? false : floatingActionButton.getUserSetVisibility() == 0;
        }

        /* renamed from: a */
        private boolean m3017a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            boolean z = false;
            if (m3019a(appBarLayout, floatingActionButton)) {
                if (this.f20208a == null) {
                    this.f20208a = new Rect();
                }
                Rect rect = this.f20208a;
                C4689b.m2855b(coordinatorLayout, appBarLayout, rect);
                if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                    floatingActionButton.m3026b(this.f20209b, false);
                } else {
                    floatingActionButton.m3033a(this.f20209b, false);
                }
                z = true;
            }
            return z;
        }

        /* renamed from: b */
        private boolean m3015b(View view, FloatingActionButton floatingActionButton) {
            boolean z;
            if (!m3019a(view, floatingActionButton)) {
                z = false;
            } else {
                if (view.getTop() < ((CoordinatorLayout.C0426e) floatingActionButton.getLayoutParams()).topMargin + (floatingActionButton.getHeight() / 2)) {
                    floatingActionButton.m3026b(this.f20209b, false);
                } else {
                    floatingActionButton.m3033a(this.f20209b, false);
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
        public boolean mo2219a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            List<View> m20965c = coordinatorLayout.m20965c(floatingActionButton);
            int size = m20965c.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = m20965c.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    if (m3020a(view) && m3015b(view, floatingActionButton)) {
                        break;
                    }
                } else if (m3017a(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.m20971b(floatingActionButton, i);
            m3016a(coordinatorLayout, floatingActionButton);
            return true;
        }

        /* renamed from: a */
        public boolean mo3018a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            Rect rect2 = floatingActionButton.f20191b;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        /* renamed from: a */
        public boolean mo2216b(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                m3017a(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            } else if (!m3020a(view)) {
                return false;
            } else {
                m3015b(view, floatingActionButton);
                return false;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$Behavior.class */
    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo2202a(CoordinatorLayout.C0426e c0426e) {
            super.mo2202a(c0426e);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo3014a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            return super.mo2219a(coordinatorLayout, floatingActionButton, i);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo3013a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            return super.mo3018a(coordinatorLayout, floatingActionButton, rect);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: a */
        public /* bridge */ /* synthetic */ boolean mo3012a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            return super.mo2216b(coordinatorLayout, floatingActionButton, view);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$a.class */
    public static abstract class AbstractC4658a {
        /* renamed from: a */
        public void mo3011a(FloatingActionButton floatingActionButton) {
        }

        /* renamed from: b */
        public void mo3010b(FloatingActionButton floatingActionButton) {
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$b.class */
    public class C4659b implements AbstractC4729b {
        C4659b() {
            FloatingActionButton.this = r4;
        }

        @Override // com.google.android.material.p158p.AbstractC4729b
        /* renamed from: a */
        public void mo2750a(int i, int i2, int i3, int i4) {
            FloatingActionButton.this.f20191b.set(i, i2, i3, i4);
            FloatingActionButton.this.setPadding(FloatingActionButton.this.f20200l + i, FloatingActionButton.this.f20200l + i2, FloatingActionButton.this.f20200l + i3, FloatingActionButton.this.f20200l + i4);
        }

        @Override // com.google.android.material.p158p.AbstractC4729b
        /* renamed from: a */
        public void mo2749a(Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }

        @Override // com.google.android.material.p158p.AbstractC4729b
        /* renamed from: a */
        public boolean mo2751a() {
            return FloatingActionButton.this.f20190a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$c.class */
    public class C4660c<T extends FloatingActionButton> implements C4664b.AbstractC4673d {

        /* renamed from: b */
        private final AbstractC4515k<T> f20213b;

        C4660c(AbstractC4515k<T> abstractC4515k) {
            FloatingActionButton.this = r4;
            this.f20213b = abstractC4515k;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.C4664b.AbstractC4673d
        /* renamed from: a */
        public void mo2953a() {
            this.f20213b.m3828a(FloatingActionButton.this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.C4664b.AbstractC4673d
        /* renamed from: b */
        public void mo2952b() {
            this.f20213b.m3827b(FloatingActionButton.this);
        }

        public boolean equals(Object obj) {
            return (obj instanceof C4660c) && ((C4660c) obj).f20213b.equals(this.f20213b);
        }

        public int hashCode() {
            return this.f20213b.hashCode();
        }
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C4492a.C4494b.floatingActionButtonStyle);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(C4702i.m2826a(context, attributeSet, i, f20189c), attributeSet, i);
        this.f20191b = new Rect();
        this.f20202n = new Rect();
        Context context2 = getContext();
        TypedArray m2825a = C4702i.m2825a(context2, attributeSet, C4492a.C4504l.FloatingActionButton, i, f20189c, new int[0]);
        this.f20192d = C4718c.m2784a(context2, m2825a, C4492a.C4504l.FloatingActionButton_backgroundTint);
        this.f20193e = C4703j.m2816a(m2825a.getInt(C4492a.C4504l.FloatingActionButton_backgroundTintMode, -1), (PorterDuff.Mode) null);
        this.f20196h = C4718c.m2784a(context2, m2825a, C4492a.C4504l.FloatingActionButton_rippleColor);
        this.f20198j = m2825a.getInt(C4492a.C4504l.FloatingActionButton_fabSize, -1);
        this.f20199k = m2825a.getDimensionPixelSize(C4492a.C4504l.FloatingActionButton_fabCustomSize, 0);
        this.f20197i = m2825a.getDimensionPixelSize(C4492a.C4504l.FloatingActionButton_borderWidth, 0);
        float dimension = m2825a.getDimension(C4492a.C4504l.FloatingActionButton_elevation, 0.0f);
        float dimension2 = m2825a.getDimension(C4492a.C4504l.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = m2825a.getDimension(C4492a.C4504l.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.f20190a = m2825a.getBoolean(C4492a.C4504l.FloatingActionButton_useCompatPadding, false);
        int dimensionPixelSize = getResources().getDimensionPixelSize(C4492a.C4496d.mtrl_fab_min_touch_target);
        this.f20201m = m2825a.getDimensionPixelSize(C4492a.C4504l.FloatingActionButton_maxImageSize, 0);
        C4512h m3843a = C4512h.m3843a(context2, m2825a, C4492a.C4504l.FloatingActionButton_showMotionSpec);
        C4512h m3843a2 = C4512h.m3843a(context2, m2825a, C4492a.C4504l.FloatingActionButton_hideMotionSpec);
        C4743k m2654a = C4743k.m2671a(context2, attributeSet, i, f20189c, C4743k.f20513a).m2654a();
        boolean z = m2825a.getBoolean(C4492a.C4504l.FloatingActionButton_ensureMinTouchTargetSize, false);
        m2825a.recycle();
        this.f20203o = new C0353k(this);
        this.f20203o.m21286a(attributeSet, i);
        this.f20204p = new C4712c(this);
        getImpl().m2986a(m2654a);
        getImpl().mo2944a(this.f20192d, this.f20193e, this.f20196h, this.f20197i);
        getImpl().m2999a(dimensionPixelSize);
        getImpl().m3001a(dimension);
        getImpl().m2983b(dimension2);
        getImpl().m2975c(dimension3);
        getImpl().m2982b(this.f20201m);
        getImpl().m2994a(m3843a);
        getImpl().m2979b(m3843a2);
        getImpl().m2985a(z);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    /* renamed from: a */
    private int m3039a(int i) {
        int dimensionPixelSize;
        if (this.f20199k == 0) {
            Resources resources = getResources();
            switch (i) {
                case -1:
                    if (Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) >= 470) {
                        dimensionPixelSize = m3039a(0);
                        break;
                    } else {
                        dimensionPixelSize = m3039a(1);
                        break;
                    }
                case 0:
                default:
                    dimensionPixelSize = resources.getDimensionPixelSize(C4492a.C4496d.design_fab_size_normal);
                    break;
                case 1:
                    dimensionPixelSize = resources.getDimensionPixelSize(C4492a.C4496d.design_fab_size_mini);
                    break;
            }
        } else {
            dimensionPixelSize = this.f20199k;
        }
        return dimensionPixelSize;
    }

    /* renamed from: a */
    private static int m3038a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int i3 = i;
        switch (mode) {
            case RecyclerView.UNDEFINED_DURATION /* -2147483648 */:
                i3 = Math.min(i, size);
                break;
            case 0:
                break;
            case 1073741824:
                i3 = size;
                break;
            default:
                throw new IllegalArgumentException();
        }
        return i3;
    }

    /* renamed from: c */
    private C4664b.AbstractC4674e m3023c(final AbstractC4658a abstractC4658a) {
        return abstractC4658a == null ? null : new C4664b.AbstractC4674e() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButton.1
            @Override // com.google.android.material.floatingactionbutton.C4664b.AbstractC4674e
            /* renamed from: a */
            public void mo2951a() {
                abstractC4658a.mo3010b(FloatingActionButton.this);
            }

            @Override // com.google.android.material.floatingactionbutton.C4664b.AbstractC4674e
            /* renamed from: b */
            public void mo2950b() {
                abstractC4658a.mo3011a(FloatingActionButton.this);
            }
        };
    }

    /* renamed from: c */
    private void m3024c(Rect rect) {
        rect.left += this.f20191b.left;
        rect.top += this.f20191b.top;
        rect.right -= this.f20191b.right;
        rect.bottom -= this.f20191b.bottom;
    }

    /* renamed from: d */
    private void m3022d() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        if (this.f20194f == null) {
            C0535a.m20585f(drawable);
            return;
        }
        int colorForState = this.f20194f.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f20195g;
        PorterDuff.Mode mode2 = mode;
        if (mode == null) {
            mode2 = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(C0350i.m21312a(colorForState, mode2));
    }

    /* renamed from: e */
    private C4664b m3021e() {
        return Build.VERSION.SDK_INT >= 21 ? new C4677c(this, new C4659b()) : new C4664b(this, new C4659b());
    }

    private C4664b getImpl() {
        if (this.f20205q == null) {
            this.f20205q = m3021e();
        }
        return this.f20205q;
    }

    /* renamed from: a */
    public void m3037a(Animator.AnimatorListener animatorListener) {
        getImpl().m2998a(animatorListener);
    }

    /* renamed from: a */
    public void m3035a(AbstractC4515k<? extends FloatingActionButton> abstractC4515k) {
        getImpl().m2992a(new C4660c(abstractC4515k));
    }

    /* renamed from: a */
    public void m3034a(AbstractC4658a abstractC4658a) {
        m3033a(abstractC4658a, true);
    }

    /* renamed from: a */
    void m3033a(AbstractC4658a abstractC4658a, boolean z) {
        getImpl().m2978b(m3023c(abstractC4658a), z);
    }

    @Override // com.google.android.material.p153k.AbstractC4711b
    /* renamed from: a */
    public boolean mo2803a() {
        return this.f20204p.m2802a();
    }

    @Deprecated
    /* renamed from: a */
    public boolean m3036a(Rect rect) {
        boolean z = false;
        if (C0595u.m20299y(this)) {
            rect.set(0, 0, getWidth(), getHeight());
            m3024c(rect);
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public void m3029b(Animator.AnimatorListener animatorListener) {
        getImpl().m2981b(animatorListener);
    }

    /* renamed from: b */
    public void m3028b(Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        m3024c(rect);
    }

    /* renamed from: b */
    public void m3027b(AbstractC4658a abstractC4658a) {
        m3026b(abstractC4658a, true);
    }

    /* renamed from: b */
    void m3026b(AbstractC4658a abstractC4658a, boolean z) {
        getImpl().m2991a(m3023c(abstractC4658a), z);
    }

    /* renamed from: b */
    public boolean m3030b() {
        return getImpl().m2958w();
    }

    /* renamed from: c */
    public boolean m3025c() {
        return getImpl().m2959v();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().mo2942a(getDrawableState());
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.f20192d;
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f20193e;
    }

    public float getCompatElevation() {
        return getImpl().mo2948a();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().m2984b();
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().m2976c();
    }

    public Drawable getContentBackground() {
        return getImpl().m2964m();
    }

    public int getCustomSize() {
        return this.f20199k;
    }

    public int getExpandedComponentIdHint() {
        return this.f20204p.m2798c();
    }

    public C4512h getHideMotionSpec() {
        return getImpl().m2969g();
    }

    @Deprecated
    public int getRippleColor() {
        return this.f20196h != null ? this.f20196h.getDefaultColor() : 0;
    }

    public ColorStateList getRippleColorStateList() {
        return this.f20196h;
    }

    public C4743k getShapeAppearanceModel() {
        return (C4743k) C0527f.m20644a(getImpl().m2972e());
    }

    public C4512h getShowMotionSpec() {
        return getImpl().m2970f();
    }

    public int getSize() {
        return this.f20198j;
    }

    public int getSizeDimension() {
        return m3039a(this.f20198j);
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // androidx.core.widget.AbstractC0632l
    public ColorStateList getSupportImageTintList() {
        return this.f20194f;
    }

    @Override // androidx.core.widget.AbstractC0632l
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f20195g;
    }

    public boolean getUseCompatPadding() {
        return this.f20190a;
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().mo2940j();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().m2962q();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().m2961r();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int sizeDimension = getSizeDimension();
        this.f20200l = (sizeDimension - this.f20201m) / 2;
        getImpl().m2963o();
        int min = Math.min(m3038a(sizeDimension, i), m3038a(sizeDimension, i2));
        setMeasuredDimension(this.f20191b.left + min + this.f20191b.right, min + this.f20191b.top + this.f20191b.bottom);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C4759a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C4759a c4759a = (C4759a) parcelable;
        super.onRestoreInstanceState(c4759a.m20121a());
        this.f20204p.m2800a((Bundle) C0527f.m20644a(c4759a.f20576a.get("expandableWidgetHelper")));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = onSaveInstanceState;
        if (onSaveInstanceState == null) {
            bundle = new Bundle();
        }
        C4759a c4759a = new C4759a(bundle);
        c4759a.f20576a.put("expandableWidgetHelper", this.f20204p.m2799b());
        return c4759a;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return (motionEvent.getAction() != 0 || !m3036a(this.f20202n) || this.f20202n.contains((int) motionEvent.getX(), (int) motionEvent.getY())) ? super.onTouchEvent(motionEvent) : false;
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
        if (this.f20192d != colorStateList) {
            this.f20192d = colorStateList;
            getImpl().m2996a(colorStateList);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f20193e != mode) {
            this.f20193e = mode;
            getImpl().m2995a(mode);
        }
    }

    public void setCompatElevation(float f) {
        getImpl().m3001a(f);
    }

    public void setCompatElevationResource(int i) {
        setCompatElevation(getResources().getDimension(i));
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        getImpl().m2983b(f);
    }

    public void setCompatHoveredFocusedTranslationZResource(int i) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i));
    }

    public void setCompatPressedTranslationZ(float f) {
        getImpl().m2975c(f);
    }

    public void setCompatPressedTranslationZResource(int i) {
        setCompatPressedTranslationZ(getResources().getDimension(i));
    }

    public void setCustomSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        if (i == this.f20199k) {
            return;
        }
        this.f20199k = i;
        requestLayout();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        getImpl().m2971e(f);
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        if (z != getImpl().m2967i()) {
            getImpl().m2985a(z);
            requestLayout();
        }
    }

    public void setExpandedComponentIdHint(int i) {
        this.f20204p.m2801a(i);
    }

    public void setHideMotionSpec(C4512h c4512h) {
        getImpl().m2979b(c4512h);
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(C4512h.m3844a(getContext(), i));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            getImpl().m2974d();
            if (this.f20194f == null) {
                return;
            }
            m3022d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.f20203o.m21290a(i);
        m3022d();
    }

    public void setRippleColor(int i) {
        setRippleColor(ColorStateList.valueOf(i));
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.f20196h != colorStateList) {
            this.f20196h = colorStateList;
            getImpl().mo2941b(this.f20196h);
        }
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        getImpl().m2965l();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        super.setScaleY(f);
        getImpl().m2965l();
    }

    public void setShadowPaddingEnabled(boolean z) {
        getImpl().m2977b(z);
    }

    @Override // com.google.android.material.p159q.AbstractC4758n
    public void setShapeAppearanceModel(C4743k c4743k) {
        getImpl().m2986a(c4743k);
    }

    public void setShowMotionSpec(C4512h c4512h) {
        getImpl().m2994a(c4512h);
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(C4512h.m3844a(getContext(), i));
    }

    public void setSize(int i) {
        this.f20199k = 0;
        if (i != this.f20198j) {
            this.f20198j = i;
            requestLayout();
        }
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // androidx.core.widget.AbstractC0632l
    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.f20194f != colorStateList) {
            this.f20194f = colorStateList;
            m3022d();
        }
    }

    @Override // androidx.core.widget.AbstractC0632l
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.f20195g != mode) {
            this.f20195g = mode;
            m3022d();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        super.setTranslationX(f);
        getImpl().m2966k();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        getImpl().m2966k();
    }

    @Override // android.view.View
    public void setTranslationZ(float f) {
        super.setTranslationZ(f);
        getImpl().m2966k();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f20190a != z) {
            this.f20190a = z;
            getImpl().mo2939n();
        }
    }

    @Override // com.google.android.material.internal.C4708k, android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
    }
}
