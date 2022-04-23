package com.google.android.material.floatingactionbutton;

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
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.appcompat.widget.f;
import androidx.appcompat.widget.h;
import androidx.b.g;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.u;
import androidx.core.view.v;
import androidx.core.widget.k;
import com.google.android.material.a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.d;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.k.i;
import com.google.android.material.k.m;
import com.google.android.material.k.q;
import com.google.android.material.stateful.ExtendableSavedState;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton.class */
public class FloatingActionButton extends VisibilityAwareImageButton implements CoordinatorLayout.a, u, k, com.google.android.material.f.a, q {
    private static final int e = a.k.Widget_Design_FloatingActionButton;

    /* renamed from: a  reason: collision with root package name */
    boolean f30514a;

    /* renamed from: b  reason: collision with root package name */
    final Rect f30515b;

    /* renamed from: c  reason: collision with root package name */
    public final com.google.android.material.f.c f30516c;
    private ColorStateList f;
    private PorterDuff.Mode g;
    private ColorStateList h;
    private PorterDuff.Mode i;
    private ColorStateList j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private final Rect p;
    private final h q;
    private d r;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior.class */
    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a  reason: collision with root package name */
        private Rect f30519a;

        /* renamed from: b  reason: collision with root package name */
        private a f30520b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f30521c;

        public BaseBehavior() {
            this.f30521c = true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.l.FloatingActionButton_Behavior_Layout);
            this.f30521c = obtainStyledAttributes.getBoolean(a.l.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            obtainStyledAttributes.recycle();
        }

        private static boolean a(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.d) {
                return ((CoordinatorLayout.d) layoutParams).f1663a instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean a(View view, FloatingActionButton floatingActionButton) {
            return this.f30521c && ((CoordinatorLayout.d) floatingActionButton.getLayoutParams()).f == view.getId() && floatingActionButton.f30607d == 0;
        }

        private boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!a((View) appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f30519a == null) {
                this.f30519a = new Rect();
            }
            Rect rect = this.f30519a;
            com.google.android.material.internal.b.b(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.f()) {
                floatingActionButton.b(this.f30520b, false);
                return true;
            }
            floatingActionButton.a(this.f30520b, false);
            return true;
        }

        private boolean b(View view, FloatingActionButton floatingActionButton) {
            if (!a(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((CoordinatorLayout.d) floatingActionButton.getLayoutParams()).topMargin) {
                floatingActionButton.b(this.f30520b, false);
                return true;
            }
            floatingActionButton.a(this.f30520b, false);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void a(CoordinatorLayout.d dVar) {
            if (dVar.h == 0) {
                dVar.h = 80;
            }
        }

        public boolean a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            List<View> b2 = coordinatorLayout.b(floatingActionButton);
            int size = b2.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                View view = b2.get(i3);
                if (!(view instanceof AppBarLayout)) {
                    if (a(view) && b(view, floatingActionButton)) {
                        break;
                    }
                } else if (a(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.b(floatingActionButton, i);
            Rect rect = floatingActionButton.f30515b;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return true;
            }
            CoordinatorLayout.d dVar = (CoordinatorLayout.d) floatingActionButton.getLayoutParams();
            int i4 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - dVar.rightMargin ? rect.right : floatingActionButton.getLeft() <= dVar.leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - dVar.bottomMargin) {
                i2 = rect.bottom;
            } else if (floatingActionButton.getTop() <= dVar.topMargin) {
                i2 = -rect.top;
            }
            if (i2 != 0) {
                v.e(floatingActionButton, i2);
            }
            if (i4 == 0) {
                return true;
            }
            v.f(floatingActionButton, i4);
            return true;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            Rect rect2 = floatingActionButton.f30515b;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                a(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            } else if (!a(view)) {
                return false;
            } else {
                b(view, floatingActionButton);
                return false;
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$Behavior.class */
    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ void a(CoordinatorLayout.d dVar) {
            super.a(dVar);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public final /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            return super.a(coordinatorLayout, floatingActionButton, i);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public final /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            return super.a(coordinatorLayout, floatingActionButton, rect);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public final /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            return super.a(coordinatorLayout, floatingActionButton, view);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$a.class */
    public static abstract class a {
        public void a(FloatingActionButton floatingActionButton) {
        }

        public void b(FloatingActionButton floatingActionButton) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$b.class */
    public final class b implements com.google.android.material.j.b {
        b() {
        }

        @Override // com.google.android.material.j.b
        public final void a(int i, int i2, int i3, int i4) {
            FloatingActionButton.this.f30515b.set(i, i2, i3, i4);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i + floatingActionButton.n, i2 + FloatingActionButton.this.n, i3 + FloatingActionButton.this.n, i4 + FloatingActionButton.this.n);
        }

        @Override // com.google.android.material.j.b
        public final void a(Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }

        @Override // com.google.android.material.j.b
        public final boolean a() {
            return FloatingActionButton.this.f30514a;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$c.class */
    public final class c<T extends FloatingActionButton> implements d.AbstractC0488d {

        /* renamed from: b  reason: collision with root package name */
        private final com.google.android.material.a.k<T> f30524b;

        public c(com.google.android.material.a.k<T> kVar) {
            this.f30524b = kVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.d.AbstractC0488d
        public final void a() {
            this.f30524b.a(FloatingActionButton.this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.d.AbstractC0488d
        public final void b() {
            this.f30524b.b(FloatingActionButton.this);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof c) && ((c) obj).f30524b.equals(this.f30524b);
        }

        public final int hashCode() {
            return this.f30524b.hashCode();
        }
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.floatingActionButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FloatingActionButton(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.floatingactionbutton.FloatingActionButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private int a(int i) {
        while (true) {
            int i2 = this.m;
            if (i2 != 0) {
                return i2;
            }
            Resources resources = getResources();
            if (i != -1) {
                return i != 1 ? resources.getDimensionPixelSize(a.d.design_fab_size_normal) : resources.getDimensionPixelSize(a.d.design_fab_size_mini);
            }
            i = Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? 1 : 0;
        }
    }

    private static int a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            i = Math.min(i, size);
        } else if (mode != 0) {
            if (mode == 1073741824) {
                i = size;
            } else {
                throw new IllegalArgumentException();
            }
        }
        return i;
    }

    private d.e a(final a aVar) {
        if (aVar == null) {
            return null;
        }
        return new d.e() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButton.1
            @Override // com.google.android.material.floatingactionbutton.d.e
            public final void a() {
                aVar.a(FloatingActionButton.this);
            }

            @Override // com.google.android.material.floatingactionbutton.d.e
            public final void b() {
                aVar.b(FloatingActionButton.this);
            }
        };
    }

    private void e() {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            ColorStateList colorStateList = this.h;
            if (colorStateList == null) {
                androidx.core.graphics.drawable.a.e(drawable);
                return;
            }
            int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
            PorterDuff.Mode mode = this.i;
            PorterDuff.Mode mode2 = mode;
            if (mode == null) {
                mode2 = PorterDuff.Mode.SRC_IN;
            }
            drawable.mutate().setColorFilter(f.a(colorForState, mode2));
        }
    }

    private d f() {
        return Build.VERSION.SDK_INT >= 21 ? new e(this, new b()) : new d(this, new b());
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.a
    public final CoordinatorLayout.Behavior<FloatingActionButton> a() {
        return new Behavior();
    }

    public final void a(a aVar, boolean z) {
        d().b(a(aVar), z);
    }

    @Deprecated
    public final boolean a(Rect rect) {
        if (!v.B(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        b(rect);
        return true;
    }

    public final void b(Rect rect) {
        rect.left += this.f30515b.left;
        rect.top += this.f30515b.top;
        rect.right -= this.f30515b.right;
        rect.bottom -= this.f30515b.bottom;
    }

    public final void b(a aVar, boolean z) {
        d().a(a(aVar), z);
    }

    @Override // com.google.android.material.f.b
    public final boolean b() {
        return this.f30516c.f30496b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int c() {
        return a(this.l);
    }

    public final d d() {
        if (this.r == null) {
            this.r = f();
        }
        return this.r;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d().a(getDrawableState());
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.f;
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.g;
    }

    @Override // androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // androidx.core.widget.k
    public ColorStateList getSupportImageTintList() {
        return this.h;
    }

    @Override // androidx.core.widget.k
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.i;
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        d().d();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        final d d2 = d();
        if (d2.f30538c != null) {
            i.a(d2.z, d2.f30538c);
        }
        if (d2.j()) {
            ViewTreeObserver viewTreeObserver = d2.z.getViewTreeObserver();
            if (d2.B == null) {
                d2.B = new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.floatingactionbutton.d.5
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public final boolean onPreDraw() {
                        d dVar = d.this;
                        float rotation = dVar.z.getRotation();
                        if (dVar.o == rotation) {
                            return true;
                        }
                        dVar.o = rotation;
                        dVar.n();
                        return true;
                    }
                };
            }
            viewTreeObserver.addOnPreDrawListener(d2.B);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d d2 = d();
        ViewTreeObserver viewTreeObserver = d2.z.getViewTreeObserver();
        if (d2.B != null) {
            viewTreeObserver.removeOnPreDrawListener(d2.B);
            d2.B = null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int c2 = c();
        this.n = (c2 - this.o) / 2;
        d().h();
        int min = Math.min(a(c2, i), a(c2, i2));
        setMeasuredDimension(this.f30515b.left + min + this.f30515b.right, min + this.f30515b.top + this.f30515b.bottom);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.getSuperState());
        com.google.android.material.f.c cVar = this.f30516c;
        Bundle bundle = (Bundle) androidx.core.e.d.a(extendableSavedState.extendableStates.get("expandableWidgetHelper"));
        cVar.f30496b = bundle.getBoolean("expanded", false);
        cVar.f30497c = bundle.getInt("expandedComponentIdHint", 0);
        if (cVar.f30496b) {
            ViewParent parent = cVar.f30495a.getParent();
            if (parent instanceof CoordinatorLayout) {
                ((CoordinatorLayout) parent).a(cVar.f30495a);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Parcelable parcelable = onSaveInstanceState;
        if (onSaveInstanceState == null) {
            parcelable = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(parcelable);
        g<String, Bundle> gVar = extendableSavedState.extendableStates;
        com.google.android.material.f.c cVar = this.f30516c;
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", cVar.f30496b);
        bundle.putInt("expandedComponentIdHint", cVar.f30497c);
        gVar.put("expandableWidgetHelper", bundle);
        return extendableSavedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || !a(this.p) || this.p.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.f != colorStateList) {
            this.f = colorStateList;
            d d2 = d();
            if (d2.f30538c != null) {
                d2.f30538c.setTintList(colorStateList);
            }
            if (d2.e != null) {
                d2.e.a(colorStateList);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.g != mode) {
            this.g = mode;
            d d2 = d();
            if (d2.f30538c != null) {
                d2.f30538c.setTintMode(mode);
            }
        }
    }

    public void setCompatElevation(float f) {
        d().a(f);
    }

    public void setCompatElevationResource(int i) {
        setCompatElevation(getResources().getDimension(i));
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        d().b(f);
    }

    public void setCompatHoveredFocusedTranslationZResource(int i) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i));
    }

    public void setCompatPressedTranslationZ(float f) {
        d().c(f);
    }

    public void setCompatPressedTranslationZResource(int i) {
        setCompatPressedTranslationZ(getResources().getDimension(i));
    }

    public void setCustomSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        } else if (i != this.m) {
            this.m = i;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        d().d(f);
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        if (z != d().g) {
            d().g = z;
            requestLayout();
        }
    }

    public void setExpandedComponentIdHint(int i) {
        this.f30516c.f30497c = i;
    }

    public void setHideMotionSpec(com.google.android.material.a.h hVar) {
        d().n = hVar;
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(com.google.android.material.a.h.a(getContext(), i));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            d().b();
            if (this.h != null) {
                e();
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.q.a(i);
        e();
    }

    public void setRippleColor(int i) {
        setRippleColor(ColorStateList.valueOf(i));
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.j != colorStateList) {
            this.j = colorStateList;
            d().a(this.j);
        }
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        d().f();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        super.setScaleY(f);
        d().f();
    }

    public void setShadowPaddingEnabled(boolean z) {
        d d2 = d();
        d2.h = z;
        d2.h();
    }

    @Override // com.google.android.material.k.q
    public void setShapeAppearanceModel(m mVar) {
        d().a(mVar);
    }

    public void setShowMotionSpec(com.google.android.material.a.h hVar) {
        d().m = hVar;
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(com.google.android.material.a.h.a(getContext(), i));
    }

    public void setSize(int i) {
        this.m = 0;
        if (i != this.l) {
            this.l = i;
            requestLayout();
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // androidx.core.widget.k
    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.h != colorStateList) {
            this.h = colorStateList;
            e();
        }
    }

    @Override // androidx.core.widget.k
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.i != mode) {
            this.i = mode;
            e();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        super.setTranslationX(f);
        d().e();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        d().e();
    }

    @Override // android.view.View
    public void setTranslationZ(float f) {
        super.setTranslationZ(f);
        d().e();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f30514a != z) {
            this.f30514a = z;
            d().g();
        }
    }

    @Override // com.google.android.material.internal.VisibilityAwareImageButton, android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
    }
}
