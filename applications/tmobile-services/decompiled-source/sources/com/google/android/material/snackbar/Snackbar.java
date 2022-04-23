package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.material.snackbar.BaseTransientBottomBar;
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/Snackbar.class */
public class Snackbar extends BaseTransientBottomBar<Snackbar> {

    /* renamed from: com.google.android.material.snackbar.Snackbar$1 */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/Snackbar$1.class */
    class View$OnClickListenerC11721 implements View.OnClickListener {

        /* renamed from: f */
        final /* synthetic */ View.OnClickListener f11298f;

        /* renamed from: g */
        final /* synthetic */ Snackbar f11299g;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f11298f.onClick(view);
            this.f11299g.m9043t(1);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/Snackbar$Callback.class */
    public static class Callback extends BaseTransientBottomBar.BaseCallback<Snackbar> {
        /* renamed from: c */
        public void mo9023a(Snackbar snackbar, int i) {
        }

        /* renamed from: d */
        public void mo9022b(Snackbar snackbar) {
        }
    }

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/Snackbar$SnackbarLayout.class */
    public static final class SnackbarLayout extends BaseTransientBottomBar.SnackbarBaseLayout {
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

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackground(@Nullable Drawable drawable) {
            super.setBackground(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundDrawable(@Nullable Drawable drawable) {
            super.setBackgroundDrawable(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            super.setBackgroundTintList(colorStateList);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            super.setBackgroundTintMode(mode);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            super.setOnClickListener(onClickListener);
        }
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    /* renamed from: s */
    public void mo9024s() {
        super.mo9024s();
    }
}
