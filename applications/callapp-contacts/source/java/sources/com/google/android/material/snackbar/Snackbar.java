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
import com.google.android.material.C14376a;
import com.google.android.material.snackbar.BaseTransientBottomBar;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/Snackbar.class */
public final class Snackbar extends BaseTransientBottomBar<Snackbar> {

    /* renamed from: f */
    private static final int[] f53859f = {C14376a.C14378b.snackbarButtonStyle};

    /* renamed from: g */
    private static final int[] f53860g = {C14376a.C14378b.snackbarButtonStyle, C14376a.C14378b.snackbarTextViewStyle};

    /* renamed from: d */
    private final AccessibilityManager f53861d;

    /* renamed from: e */
    private boolean f53862e;

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

    private Snackbar(Context context, ViewGroup viewGroup, View view, AbstractC14763a abstractC14763a) {
        super(context, viewGroup, view, abstractC14763a);
        this.f53861d = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    /* renamed from: a */
    public static Snackbar m10169a(View view, CharSequence charSequence) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2 = null;
        View view2 = view;
        while (true) {
            if (!(view2 instanceof CoordinatorLayout)) {
                viewGroup = viewGroup2;
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
                viewGroup2 = viewGroup;
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
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f53860g);
            int resourceId = obtainStyledAttributes.getResourceId(0, -1);
            boolean z = true;
            int resourceId2 = obtainStyledAttributes.getResourceId(1, -1);
            obtainStyledAttributes.recycle();
            if (resourceId == -1 || resourceId2 == -1) {
                z = false;
            }
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) from.inflate(z ? C14376a.C14384h.mtrl_layout_snackbar_include : C14376a.C14384h.design_layout_snackbar_include, viewGroup, false);
            Snackbar snackbar = new Snackbar(context, viewGroup, snackbarContentLayout, snackbarContentLayout);
            ((SnackbarContentLayout) snackbar.f53806b.getChildAt(0)).f53863a.setText(charSequence);
            snackbar.m10212a(-2);
            return snackbar;
        }
        throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    /* renamed from: a */
    public final int mo10170a() {
        int mo10170a = super.mo10170a();
        if (mo10170a == -2) {
            return -2;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            return this.f53861d.getRecommendedTimeoutMillis(mo10170a, (this.f53862e ? 4 : 0) | 1 | 2);
        } else if (this.f53862e && this.f53861d.isTouchExplorationEnabled()) {
            return -2;
        } else {
            return mo10170a;
        }
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    /* renamed from: c */
    public final void mo10168c() {
        super.mo10168c();
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    /* renamed from: d */
    public final void mo10167d() {
        super.mo10167d();
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    /* renamed from: e */
    public final boolean mo10166e() {
        return super.mo10166e();
    }
}
