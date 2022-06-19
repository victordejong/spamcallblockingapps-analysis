package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.C4492a;
import com.google.android.material.snackbar.BaseTransientBottomBar;
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/Snackbar.class */
public class Snackbar extends BaseTransientBottomBar<Snackbar> {

    /* renamed from: f */
    private static final int[] f20629f = {C4492a.C4494b.snackbarButtonStyle};

    /* renamed from: d */
    private final AccessibilityManager f20630d;

    /* renamed from: e */
    private boolean f20631e;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/Snackbar$SnackbarLayout.class */
    public static final class SnackbarLayout extends BaseTransientBottomBar.C4783e {
        public SnackbarLayout(Context context) {
            super(context);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
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

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.C4783e, android.view.View
        public /* bridge */ /* synthetic */ void setOnClickListener(View.OnClickListener onClickListener) {
            super.setOnClickListener(onClickListener);
        }
    }

    private Snackbar(ViewGroup viewGroup, View view, AbstractC4785a abstractC4785a) {
        super(viewGroup, view, abstractC4785a);
        this.f20630d = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    /* renamed from: a */
    private static ViewGroup m2496a(View view) {
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
                view2 = view3;
                viewGroup2 = viewGroup;
                if (view3 == null) {
                    break;
                }
            } else {
                viewGroup = (ViewGroup) view2;
                break;
            }
        }
        return viewGroup;
    }

    /* renamed from: a */
    public static Snackbar m2495a(View view, int i, int i2) {
        return m2494a(view, view.getResources().getText(i), i2);
    }

    /* renamed from: a */
    public static Snackbar m2494a(View view, CharSequence charSequence, int i) {
        ViewGroup m2496a = m2496a(view);
        if (m2496a == null) {
            throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
        }
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) LayoutInflater.from(m2496a.getContext()).inflate(m2497a(m2496a.getContext()) ? C4492a.C4500h.mtrl_layout_snackbar_include : C4492a.C4500h.design_layout_snackbar_include, m2496a, false);
        Snackbar snackbar = new Snackbar(m2496a, snackbarContentLayout, snackbarContentLayout);
        snackbar.m2493a(charSequence);
        snackbar.m2556a(i);
        return snackbar;
    }

    /* renamed from: a */
    protected static boolean m2497a(Context context) {
        boolean z = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f20629f);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        if (resourceId != -1) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public Snackbar m2493a(CharSequence charSequence) {
        ((SnackbarContentLayout) this.f20581b.getChildAt(0)).getMessageView().setText(charSequence);
        return this;
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    /* renamed from: c */
    public int mo2492c() {
        int i = -2;
        int mo2492c = super.mo2492c();
        if (mo2492c != -2) {
            if (Build.VERSION.SDK_INT >= 29) {
                i = this.f20630d.getRecommendedTimeoutMillis(mo2492c, (this.f20631e ? 4 : 0) | 1 | 2);
            } else if (!this.f20631e || !this.f20630d.isTouchExplorationEnabled()) {
                i = mo2492c;
            }
        }
        return i;
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    /* renamed from: d */
    public void mo2491d() {
        super.mo2491d();
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    /* renamed from: e */
    public void mo2490e() {
        super.mo2490e();
    }
}
