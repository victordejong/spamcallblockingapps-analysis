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
import androidx.appcompat.widget.C0287f;
import androidx.appcompat.widget.C0294h;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.C0615a;
import androidx.core.widget.AbstractC0656o;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.C8149d;
import com.google.android.material.internal.C8177c;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.stateful.ExtendableSavedState;
import java.util.List;
import p020b.p041h.p049k.C1597h;
import p020b.p041h.p050l.AbstractC1678v;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p097m.AbstractC1907k;
import p078c.p084c.p085a.p096b.p097m.C1904h;
import p078c.p084c.p085a.p096b.p103s.AbstractC1913a;
import p078c.p084c.p085a.p096b.p103s.C1914b;
import p078c.p084c.p085a.p096b.p107w.AbstractC1930b;
import p078c.p084c.p085a.p096b.p108x.AbstractC1962p;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton.class */
public class FloatingActionButton extends VisibilityAwareImageButton implements AbstractC1678v, AbstractC0656o, AbstractC1913a, AbstractC1962p, CoordinatorLayout.AbstractC0529b {

    /* renamed from: e */
    private static final int f36742e = C1895k.Widget_Design_FloatingActionButton;

    /* renamed from: f */
    private ColorStateList f36743f;

    /* renamed from: g */
    private PorterDuff.Mode f36744g;

    /* renamed from: h */
    private ColorStateList f36745h;

    /* renamed from: i */
    private PorterDuff.Mode f36746i;

    /* renamed from: j */
    private ColorStateList f36747j;

    /* renamed from: k */
    private int f36748k;

    /* renamed from: l */
    private int f36749l;

    /* renamed from: m */
    private int f36750m;

    /* renamed from: n */
    private int f36751n;

    /* renamed from: o */
    private int f36752o;

    /* renamed from: p */
    boolean f36753p;

    /* renamed from: q */
    final Rect f36754q;

    /* renamed from: r */
    private final Rect f36755r;

    /* renamed from: s */
    private final C0294h f36756s;

    /* renamed from: t */
    private final C1914b f36757t;

    /* renamed from: u */
    private C8149d f36758u;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior.class */
    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a */
        private Rect f36759a;

        /* renamed from: b */
        private AbstractC8140b f36760b;

        /* renamed from: c */
        private boolean f36761c;

        public BaseBehavior() {
            this.f36761c = true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1896l.FloatingActionButton_Behavior_Layout);
            this.f36761c = obtainStyledAttributes.getBoolean(C1896l.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: F */
        private static boolean m4770F(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.C0532e) {
                return ((CoordinatorLayout.C0532e) layoutParams).m33534f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        /* renamed from: G */
        private void m4769G(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton) {
            Rect rect = floatingActionButton.f36754q;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return;
            }
            CoordinatorLayout.C0532e c0532e = (CoordinatorLayout.C0532e) floatingActionButton.getLayoutParams();
            int i = 0;
            int i2 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) c0532e).rightMargin ? rect.right : floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) c0532e).leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) c0532e).bottomMargin) {
                i = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) c0532e).topMargin) {
                i = -rect.top;
            }
            if (i != 0) {
                C1679w.m29305b0(floatingActionButton, i);
            }
            if (i2 == 0) {
                return;
            }
            C1679w.m29307a0(floatingActionButton, i2);
        }

        /* renamed from: J */
        private boolean m4768J(View view, FloatingActionButton floatingActionButton) {
            return this.f36761c && ((CoordinatorLayout.C0532e) floatingActionButton.getLayoutParams()).m33535e() == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        /* renamed from: K */
        private boolean m4767K(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!m4768J(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f36759a == null) {
                this.f36759a = new Rect();
            }
            Rect rect = this.f36759a;
            C8177c.m4556a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.m4779m(this.f36760b, false);
                return true;
            }
            floatingActionButton.m4772t(this.f36760b, false);
            return true;
        }

        /* renamed from: L */
        private boolean m4766L(View view, FloatingActionButton floatingActionButton) {
            if (!m4768J(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.C0532e) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.m4779m(this.f36760b, false);
                return true;
            }
            floatingActionButton.m4772t(this.f36760b, false);
            return true;
        }

        /* renamed from: E */
        public boolean mo4765b(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            Rect rect2 = floatingActionButton.f36754q;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        /* renamed from: H */
        public boolean mo3829h(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                m4767K(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            } else if (!m4770F(view)) {
                return false;
            } else {
                m4766L(view, floatingActionButton);
                return false;
            }
        }

        /* renamed from: I */
        public boolean mo3828l(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            List<View> m33559v = coordinatorLayout.m33559v(floatingActionButton);
            int size = m33559v.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = m33559v.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    if (m4770F(view) && m4766L(view, floatingActionButton)) {
                        break;
                    }
                } else if (m4767K(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.m33586M(floatingActionButton, i);
            m4769G(coordinatorLayout, floatingActionButton);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: g */
        public void mo3805g(CoordinatorLayout.C0532e c0532e) {
            if (c0532e.f2769h == 0) {
                c0532e.f2769h = 80;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$Behavior.class */
    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: E */
        public /* bridge */ /* synthetic */ boolean mo4764E(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            return super.mo4765b(coordinatorLayout, floatingActionButton, rect);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: H */
        public /* bridge */ /* synthetic */ boolean mo4763H(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            return super.mo3829h(coordinatorLayout, floatingActionButton, view);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: I */
        public /* bridge */ /* synthetic */ boolean mo4762I(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            return super.mo3828l(coordinatorLayout, floatingActionButton, i);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: g */
        public /* bridge */ /* synthetic */ void mo3805g(CoordinatorLayout.C0532e c0532e) {
            super.mo3805g(c0532e);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$a.class */
    public class C8139a implements C8149d.AbstractC8159j {

        /* renamed from: a */
        final /* synthetic */ AbstractC8140b f36762a;

        C8139a(AbstractC8140b abstractC8140b) {
            FloatingActionButton.this = r4;
            this.f36762a = abstractC8140b;
        }

        @Override // com.google.android.material.floatingactionbutton.C8149d.AbstractC8159j
        /* renamed from: a */
        public void mo4690a() {
            this.f36762a.mo4760b(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.C8149d.AbstractC8159j
        /* renamed from: b */
        public void mo4689b() {
            this.f36762a.mo4761a(FloatingActionButton.this);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$b.class */
    public static abstract class AbstractC8140b {
        /* renamed from: a */
        public void mo4761a(FloatingActionButton floatingActionButton) {
        }

        /* renamed from: b */
        public void mo4760b(FloatingActionButton floatingActionButton) {
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$c.class */
    public class C8141c implements AbstractC1930b {
        C8141c() {
            FloatingActionButton.this = r4;
        }

        @Override // p078c.p084c.p085a.p096b.p107w.AbstractC1930b
        /* renamed from: a */
        public void mo4759a(int i, int i2, int i3, int i4) {
            FloatingActionButton.this.f36754q.set(i, i2, i3, i4);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i + floatingActionButton.f36751n, i2 + FloatingActionButton.this.f36751n, i3 + FloatingActionButton.this.f36751n, i4 + FloatingActionButton.this.f36751n);
        }

        @Override // p078c.p084c.p085a.p096b.p107w.AbstractC1930b
        /* renamed from: b */
        public void mo4758b(Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }

        @Override // p078c.p084c.p085a.p096b.p107w.AbstractC1930b
        /* renamed from: c */
        public boolean mo4757c() {
            return FloatingActionButton.this.f36753p;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$d.class */
    public class C8142d<T extends FloatingActionButton> implements C8149d.AbstractC8158i {

        /* renamed from: a */
        private final AbstractC1907k<T> f36765a;

        C8142d(AbstractC1907k<T> abstractC1907k) {
            FloatingActionButton.this = r4;
            this.f36765a = abstractC1907k;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.C8149d.AbstractC8158i
        /* renamed from: a */
        public void mo4692a() {
            this.f36765a.mo5519b(FloatingActionButton.this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.C8149d.AbstractC8158i
        /* renamed from: b */
        public void mo4691b() {
            this.f36765a.mo5520a(FloatingActionButton.this);
        }

        public boolean equals(Object obj) {
            return (obj instanceof C8142d) && ((C8142d) obj).f36765a.equals(this.f36765a);
        }

        public int hashCode() {
            return this.f36765a.hashCode();
        }
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.floatingActionButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FloatingActionButton(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.floatingactionbutton.FloatingActionButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private C8149d getImpl() {
        if (this.f36758u == null) {
            this.f36758u = m4784h();
        }
        return this.f36758u;
    }

    /* renamed from: h */
    private C8149d m4784h() {
        return Build.VERSION.SDK_INT >= 21 ? new C8162e(this, new C8141c()) : new C8149d(this, new C8141c());
    }

    /* renamed from: k */
    private int m4781k(int i) {
        int i2 = this.f36750m;
        if (i2 != 0) {
            return i2;
        }
        Resources resources = getResources();
        if (i != -1) {
            return i != 1 ? resources.getDimensionPixelSize(C1888d.design_fab_size_normal) : resources.getDimensionPixelSize(C1888d.design_fab_size_mini);
        }
        return Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? m4781k(1) : m4781k(0);
    }

    /* renamed from: p */
    private void m4776p(Rect rect) {
        int i = rect.left;
        Rect rect2 = this.f36754q;
        rect.left = i + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    /* renamed from: q */
    private void m4775q() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f36745h;
        if (colorStateList == null) {
            C0615a.m33227c(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f36746i;
        PorterDuff.Mode mode2 = mode;
        if (mode == null) {
            mode2 = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(C0287f.m34940e(colorForState, mode2));
    }

    /* renamed from: r */
    private static int m4774r(int i, int i2) {
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

    /* renamed from: u */
    private C8149d.AbstractC8159j m4771u(AbstractC8140b abstractC8140b) {
        if (abstractC8140b == null) {
            return null;
        }
        return new C8139a(abstractC8140b);
    }

    @Override // p078c.p084c.p085a.p096b.p103s.AbstractC1913a
    /* renamed from: a */
    public boolean mo4790a() {
        return this.f36757t.m28701c();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().mo4685E(getDrawableState());
    }

    /* renamed from: e */
    public void m4787e(Animator.AnimatorListener animatorListener) {
        getImpl().m4717d(animatorListener);
    }

    /* renamed from: f */
    public void m4786f(Animator.AnimatorListener animatorListener) {
        getImpl().m4716e(animatorListener);
    }

    /* renamed from: g */
    public void m4785g(AbstractC1907k<? extends FloatingActionButton> abstractC1907k) {
        getImpl().m4714f(new C8142d(abstractC1907k));
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.f36743f;
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f36744g;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0529b
    public CoordinatorLayout.Behavior<FloatingActionButton> getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().mo4676n();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().m4702q();
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().m4700t();
    }

    public Drawable getContentBackground() {
        return getImpl().m4707k();
    }

    public int getCustomSize() {
        return this.f36750m;
    }

    public int getExpandedComponentIdHint() {
        return this.f36757t.m28702b();
    }

    public C1904h getHideMotionSpec() {
        return getImpl().m4703p();
    }

    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f36747j;
        return colorStateList != null ? colorStateList.getDefaultColor() : 0;
    }

    public ColorStateList getRippleColorStateList() {
        return this.f36747j;
    }

    public C1946m getShapeAppearanceModel() {
        return (C1946m) C1597h.m29659e(getImpl().m4699u());
    }

    public C1904h getShowMotionSpec() {
        return getImpl().m4698v();
    }

    public int getSize() {
        return this.f36749l;
    }

    public int getSizeDimension() {
        return m4781k(this.f36749l);
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // androidx.core.widget.AbstractC0656o
    public ColorStateList getSupportImageTintList() {
        return this.f36745h;
    }

    @Override // androidx.core.widget.AbstractC0656o
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f36746i;
    }

    public boolean getUseCompatPadding() {
        return this.f36753p;
    }

    @Deprecated
    /* renamed from: i */
    public boolean m4783i(Rect rect) {
        if (C1679w.m29313V(this)) {
            rect.set(0, 0, getWidth(), getHeight());
            m4776p(rect);
            return true;
        }
        return false;
    }

    /* renamed from: j */
    public void m4782j(Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        m4776p(rect);
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().mo4687A();
    }

    /* renamed from: l */
    public void m4780l(AbstractC8140b abstractC8140b) {
        m4779m(abstractC8140b, true);
    }

    /* renamed from: m */
    void m4779m(AbstractC8140b abstractC8140b, boolean z) {
        getImpl().m4697w(m4771u(abstractC8140b), z);
    }

    /* renamed from: n */
    public boolean m4778n() {
        return getImpl().m4696y();
    }

    /* renamed from: o */
    public boolean m4777o() {
        return getImpl().m4695z();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().m4742B();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().m4741D();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int sizeDimension = getSizeDimension();
        this.f36751n = (sizeDimension - this.f36752o) / 2;
        getImpl().m4713f0();
        int min = Math.min(m4774r(sizeDimension, i), m4774r(sizeDimension, i2));
        Rect rect = this.f36754q;
        setMeasuredDimension(rect.left + min + rect.right, min + rect.top + rect.bottom);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.m33061a());
        this.f36757t.m28700d((Bundle) C1597h.m29659e(extendableSavedState.f37264f.get("expandableWidgetHelper")));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = onSaveInstanceState;
        if (onSaveInstanceState == null) {
            bundle = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(bundle);
        extendableSavedState.f37264f.put("expandableWidgetHelper", this.f36757t.m28699e());
        return extendableSavedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || !m4783i(this.f36755r) || this.f36755r.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    /* renamed from: s */
    public void m4773s(AbstractC8140b abstractC8140b) {
        m4772t(abstractC8140b, true);
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
        if (this.f36743f != colorStateList) {
            this.f36743f = colorStateList;
            getImpl().m4736L(colorStateList);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f36744g != mode) {
            this.f36744g = mode;
            getImpl().m4735M(mode);
        }
    }

    public void setCompatElevation(float f) {
        getImpl().m4734N(f);
    }

    public void setCompatElevationResource(int i) {
        setCompatElevation(getResources().getDimension(i));
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        getImpl().m4731Q(f);
    }

    public void setCompatHoveredFocusedTranslationZResource(int i) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i));
    }

    public void setCompatPressedTranslationZ(float f) {
        getImpl().m4727U(f);
    }

    public void setCompatPressedTranslationZResource(int i) {
        setCompatPressedTranslationZ(getResources().getDimension(i));
    }

    public void setCustomSize(int i) {
        if (i >= 0) {
            if (i == this.f36750m) {
                return;
            }
            this.f36750m = i;
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("Custom size must be non-negative");
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        getImpl().m4711g0(f);
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        if (z != getImpl().m4704o()) {
            getImpl().m4733O(z);
            requestLayout();
        }
    }

    public void setExpandedComponentIdHint(int i) {
        this.f36757t.m28698f(i);
    }

    public void setHideMotionSpec(C1904h c1904h) {
        getImpl().m4732P(c1904h);
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(C1904h.m28737d(getContext(), i));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            getImpl().m4715e0();
            if (this.f36745h == null) {
                return;
            }
            m4775q();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.f36756s.m34906g(i);
        m4775q();
    }

    public void setRippleColor(int i) {
        setRippleColor(ColorStateList.valueOf(i));
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.f36747j != colorStateList) {
            this.f36747j = colorStateList;
            getImpl().mo4682V(this.f36747j);
        }
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        getImpl().m4738I();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        super.setScaleY(f);
        getImpl().m4738I();
    }

    public void setShadowPaddingEnabled(boolean z) {
        getImpl().m4726W(z);
    }

    @Override // p078c.p084c.p085a.p096b.p108x.AbstractC1962p
    public void setShapeAppearanceModel(C1946m c1946m) {
        getImpl().m4725X(c1946m);
    }

    public void setShowMotionSpec(C1904h c1904h) {
        getImpl().m4724Y(c1904h);
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(C1904h.m28737d(getContext(), i));
    }

    public void setSize(int i) {
        this.f36750m = 0;
        if (i != this.f36749l) {
            this.f36749l = i;
            requestLayout();
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // androidx.core.widget.AbstractC0656o
    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.f36745h != colorStateList) {
            this.f36745h = colorStateList;
            m4775q();
        }
    }

    @Override // androidx.core.widget.AbstractC0656o
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.f36746i != mode) {
            this.f36746i = mode;
            m4775q();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        super.setTranslationX(f);
        getImpl().m4737J();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        getImpl().m4737J();
    }

    @Override // android.view.View
    public void setTranslationZ(float f) {
        super.setTranslationZ(f);
        getImpl().m4737J();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f36753p != z) {
            this.f36753p = z;
            getImpl().mo4686C();
        }
    }

    @Override // com.google.android.material.internal.VisibilityAwareImageButton, android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
    }

    /* renamed from: t */
    void m4772t(AbstractC8140b abstractC8140b, boolean z) {
        getImpl().m4718c0(m4771u(abstractC8140b), z);
    }
}
