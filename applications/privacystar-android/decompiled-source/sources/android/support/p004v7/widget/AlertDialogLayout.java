package android.support.p004v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.p001v4.view.GravityCompat;
import android.support.p001v4.view.ViewCompat;
import android.support.p004v7.appcompat.C0479R;
import android.support.p004v7.widget.LinearLayoutCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.AlertDialogLayout */
/* loaded from: classes-dex2jar.jar:android/support/v7/widget/AlertDialogLayout.class */
public class AlertDialogLayout extends LinearLayoutCompat {
    public AlertDialogLayout(@Nullable Context context) {
        super(context);
    }

    public AlertDialogLayout(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void forceUniformWidth(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) childAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i4 = layoutParams.height;
                    layoutParams.height = childAt.getMeasuredHeight();
                    measureChildWithMargins(childAt, makeMeasureSpec, 0, i2, 0);
                    layoutParams.height = i4;
                }
            }
        }
    }

    private static int resolveMinimumHeight(View view) {
        int minimumHeight = ViewCompat.getMinimumHeight(view);
        if (minimumHeight > 0) {
            return minimumHeight;
        }
        if (!(view instanceof ViewGroup)) {
            return 0;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup.getChildCount() == 1) {
            return resolveMinimumHeight(viewGroup.getChildAt(0));
        }
        return 0;
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    private boolean tryOnMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int childCount = getChildCount();
        View view = null;
        View view2 = null;
        View view3 = null;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                int id = childAt.getId();
                if (id == C0479R.C0482id.topPanel) {
                    view = childAt;
                } else if (id == C0479R.C0482id.buttonPanel) {
                    view3 = childAt;
                } else if ((id != C0479R.C0482id.contentPanel && id != C0479R.C0482id.customPanel) || view2 != null) {
                    return false;
                } else {
                    view2 = childAt;
                }
            }
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (view != null) {
            view.measure(i, 0);
            paddingTop += view.getMeasuredHeight();
            i3 = View.combineMeasuredStates(0, view.getMeasuredState());
        } else {
            i3 = 0;
        }
        if (view3 != null) {
            view3.measure(i, 0);
            i5 = resolveMinimumHeight(view3);
            i4 = view3.getMeasuredHeight() - i5;
            paddingTop += i5;
            i3 = View.combineMeasuredStates(i3, view3.getMeasuredState());
        } else {
            i5 = 0;
            i4 = 0;
        }
        if (view2 != null) {
            view2.measure(i, mode == 0 ? 0 : View.MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingTop), mode));
            i6 = view2.getMeasuredHeight();
            paddingTop += i6;
            i3 = View.combineMeasuredStates(i3, view2.getMeasuredState());
        } else {
            i6 = 0;
        }
        int i8 = size - paddingTop;
        int i9 = i3;
        int i10 = i8;
        int i11 = paddingTop;
        if (view3 != null) {
            int min = Math.min(i8, i4);
            i10 = i8;
            int i12 = i5;
            if (min > 0) {
                i10 = i8 - min;
                i12 = i5 + min;
            }
            view3.measure(i, View.MeasureSpec.makeMeasureSpec(i12, 1073741824));
            i11 = (paddingTop - i5) + view3.getMeasuredHeight();
            i9 = View.combineMeasuredStates(i3, view3.getMeasuredState());
        }
        int i13 = i9;
        int i14 = i11;
        if (view2 != null) {
            i13 = i9;
            i14 = i11;
            if (i10 > 0) {
                view2.measure(i, View.MeasureSpec.makeMeasureSpec(i6 + i10, mode));
                i14 = (i11 - i6) + view2.getMeasuredHeight();
                i13 = View.combineMeasuredStates(i9, view2.getMeasuredState());
            }
        }
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt2 = getChildAt(i16);
            i15 = i15;
            if (childAt2.getVisibility() != 8) {
                i15 = Math.max(i15, childAt2.getMeasuredWidth());
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i15 + getPaddingLeft() + getPaddingRight(), i, i13), View.resolveSizeAndState(i14, i2, 0));
        if (mode2 == 1073741824) {
            return true;
        }
        forceUniformWidth(childCount, i2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int i5 = i3 - i;
        int paddingRight = getPaddingRight();
        int paddingRight2 = getPaddingRight();
        int measuredHeight = getMeasuredHeight();
        int childCount = getChildCount();
        int gravity = getGravity();
        int i6 = gravity & 112;
        int paddingTop = i6 != 16 ? i6 != 80 ? getPaddingTop() : ((getPaddingTop() + i4) - i2) - measuredHeight : (((i4 - i2) - measuredHeight) / 2) + getPaddingTop();
        Drawable dividerDrawable = getDividerDrawable();
        int intrinsicHeight = dividerDrawable == null ? 0 : dividerDrawable.getIntrinsicHeight();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            paddingTop = paddingTop;
            if (childAt != null) {
                paddingTop = paddingTop;
                if (childAt.getVisibility() != 8) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight2 = childAt.getMeasuredHeight();
                    LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) childAt.getLayoutParams();
                    int i8 = layoutParams.gravity;
                    int i9 = i8;
                    if (i8 < 0) {
                        i9 = gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
                    }
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(i9, ViewCompat.getLayoutDirection(this)) & 7;
                    int i10 = absoluteGravity != 1 ? absoluteGravity != 5 ? layoutParams.leftMargin + paddingLeft : ((i5 - paddingRight) - measuredWidth) - layoutParams.rightMargin : ((((((i5 - paddingLeft) - paddingRight2) - measuredWidth) / 2) + paddingLeft) + layoutParams.leftMargin) - layoutParams.rightMargin;
                    int i11 = paddingTop;
                    if (hasDividerBeforeChildAt(i7)) {
                        i11 = paddingTop + intrinsicHeight;
                    }
                    int i12 = i11 + layoutParams.topMargin;
                    setChildFrame(childAt, i10, i12, measuredWidth, measuredHeight2);
                    paddingTop = i12 + measuredHeight2 + layoutParams.bottomMargin;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        if (!tryOnMeasure(i, i2)) {
            super.onMeasure(i, i2);
        }
    }
}
