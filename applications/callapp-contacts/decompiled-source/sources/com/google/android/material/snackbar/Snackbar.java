package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.a;
import com.google.android.material.snackbar.BaseTransientBottomBar;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/Snackbar.class */
public final class Snackbar extends BaseTransientBottomBar<Snackbar> {
    private static final int[] f = {a.b.snackbarButtonStyle};
    private static final int[] g = {a.b.snackbarButtonStyle, a.b.snackbarTextViewStyle};

    /* renamed from: d  reason: collision with root package name */
    private final AccessibilityManager f30823d;
    private boolean e;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/Snackbar$SnackbarLayout.class */
    public static final class SnackbarLayout extends BaseTransientBottomBar.SnackbarBaseLayout {
        public SnackbarLayout(Context context) {
            super(context);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int childCount = getChildCount();
            int measuredWidth = getMeasuredWidth();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((measuredWidth - paddingLeft) - paddingRight, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                }
            }
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public final /* bridge */ /* synthetic */ void setBackground(Drawable drawable) {
            super.setBackground(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public final /* bridge */ /* synthetic */ void setBackgroundDrawable(Drawable drawable) {
            super.setBackgroundDrawable(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public final /* bridge */ /* synthetic */ void setBackgroundTintList(ColorStateList colorStateList) {
            super.setBackgroundTintList(colorStateList);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public final /* bridge */ /* synthetic */ void setBackgroundTintMode(PorterDuff.Mode mode) {
            super.setBackgroundTintMode(mode);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public final /* bridge */ /* synthetic */ void setOnClickListener(View.OnClickListener onClickListener) {
            super.setOnClickListener(onClickListener);
        }
    }

    private Snackbar(Context context, ViewGroup viewGroup, View view, a aVar) {
        super(context, viewGroup, view, aVar);
        this.f30823d = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    public static Snackbar a(View view, CharSequence charSequence) {
        ViewGroup viewGroup = null;
        View view2 = view;
        while (true) {
            if (!(view2 instanceof CoordinatorLayout)) {
                if (view2 instanceof FrameLayout) {
                    if (view2.getId() == 16908290) {
                        viewGroup = (ViewGroup) view2;
                        break;
                    }
                    viewGroup = (ViewGroup) view2;
                }
                View view3 = view2;
                if (view2 != null) {
                    ViewParent parent = view2.getParent();
                    view3 = parent instanceof View ? (View) parent : null;
                }
                viewGroup = viewGroup;
                view2 = view3;
                if (view3 == null) {
                    break;
                }
            } else {
                viewGroup = (ViewGroup) view2;
                break;
            }
        }
        if (viewGroup != null) {
            Context context = viewGroup.getContext();
            LayoutInflater from = LayoutInflater.from(context);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(g);
            int resourceId = obtainStyledAttributes.getResourceId(0, -1);
            boolean z = true;
            int resourceId2 = obtainStyledAttributes.getResourceId(1, -1);
            obtainStyledAttributes.recycle();
            if (resourceId == -1 || resourceId2 == -1) {
                z = false;
            }
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) from.inflate(z ? a.h.mtrl_layout_snackbar_include : a.h.design_layout_snackbar_include, viewGroup, false);
            Snackbar snackbar = new Snackbar(context, viewGroup, snackbarContentLayout, snackbarContentLayout);
            ((SnackbarContentLayout) snackbar.f30793b.getChildAt(0)).f30824a.setText(charSequence);
            snackbar.a(-2);
            return snackbar;
        }
        throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public final int a() {
        int a2 = super.a();
        if (a2 == -2) {
            return -2;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            return this.f30823d.getRecommendedTimeoutMillis(a2, (this.e ? 4 : 0) | 1 | 2);
        } else if (!this.e || !this.f30823d.isTouchExplorationEnabled()) {
            return a2;
        } else {
            return -2;
        }
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public final void c() {
        super.c();
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public final void d() {
        super.d();
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public final boolean e() {
        return super.e();
    }
}
