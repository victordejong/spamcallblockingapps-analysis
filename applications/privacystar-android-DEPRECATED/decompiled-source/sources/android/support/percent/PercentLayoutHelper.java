package android.support.percent;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.NonNull;
import android.support.p001v4.view.MarginLayoutParamsCompat;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
@Deprecated
/* loaded from: classes-dex2jar.jar:android/support/percent/PercentLayoutHelper.class */
public class PercentLayoutHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "PercentLayout";
    private static final boolean VERBOSE = false;
    private final ViewGroup mHost;

    @Deprecated
    /* loaded from: classes-dex2jar.jar:android/support/percent/PercentLayoutHelper$PercentLayoutInfo.class */
    public static class PercentLayoutInfo {
        public float aspectRatio;
        public float widthPercent = -1.0f;
        public float heightPercent = -1.0f;
        public float leftMarginPercent = -1.0f;
        public float topMarginPercent = -1.0f;
        public float rightMarginPercent = -1.0f;
        public float bottomMarginPercent = -1.0f;
        public float startMarginPercent = -1.0f;
        public float endMarginPercent = -1.0f;
        final PercentMarginLayoutParams mPreservedParams = new PercentMarginLayoutParams(0, 0);

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0058, code lost:
            if (r4.mPreservedParams.height == 0) goto L_0x005b;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void fillLayoutParams(android.view.ViewGroup.LayoutParams r5, int r6, int r7) {
            /*
                Method dump skipped, instructions count: 223
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.percent.PercentLayoutHelper.PercentLayoutInfo.fillLayoutParams(android.view.ViewGroup$LayoutParams, int, int):void");
        }

        public void fillMarginLayoutParams(View view, ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
            fillLayoutParams(marginLayoutParams, i, i2);
            this.mPreservedParams.leftMargin = marginLayoutParams.leftMargin;
            this.mPreservedParams.topMargin = marginLayoutParams.topMargin;
            this.mPreservedParams.rightMargin = marginLayoutParams.rightMargin;
            this.mPreservedParams.bottomMargin = marginLayoutParams.bottomMargin;
            MarginLayoutParamsCompat.setMarginStart(this.mPreservedParams, MarginLayoutParamsCompat.getMarginStart(marginLayoutParams));
            MarginLayoutParamsCompat.setMarginEnd(this.mPreservedParams, MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams));
            if (this.leftMarginPercent >= 0.0f) {
                marginLayoutParams.leftMargin = Math.round(i * this.leftMarginPercent);
            }
            if (this.topMarginPercent >= 0.0f) {
                marginLayoutParams.topMargin = Math.round(i2 * this.topMarginPercent);
            }
            if (this.rightMarginPercent >= 0.0f) {
                marginLayoutParams.rightMargin = Math.round(i * this.rightMarginPercent);
            }
            if (this.bottomMarginPercent >= 0.0f) {
                marginLayoutParams.bottomMargin = Math.round(i2 * this.bottomMarginPercent);
            }
            boolean z = false;
            if (this.startMarginPercent >= 0.0f) {
                MarginLayoutParamsCompat.setMarginStart(marginLayoutParams, Math.round(i * this.startMarginPercent));
                z = true;
            }
            if (this.endMarginPercent >= 0.0f) {
                MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, Math.round(i * this.endMarginPercent));
                z = true;
            }
            if (z && view != null) {
                MarginLayoutParamsCompat.resolveLayoutDirection(marginLayoutParams, ViewCompat.getLayoutDirection(view));
            }
        }

        @Deprecated
        public void fillMarginLayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
            fillMarginLayoutParams(null, marginLayoutParams, i, i2);
        }

        public void restoreLayoutParams(ViewGroup.LayoutParams layoutParams) {
            if (!this.mPreservedParams.mIsWidthComputedFromAspectRatio) {
                layoutParams.width = this.mPreservedParams.width;
            }
            if (!this.mPreservedParams.mIsHeightComputedFromAspectRatio) {
                layoutParams.height = this.mPreservedParams.height;
            }
            this.mPreservedParams.mIsWidthComputedFromAspectRatio = false;
            this.mPreservedParams.mIsHeightComputedFromAspectRatio = false;
        }

        public void restoreMarginLayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            restoreLayoutParams(marginLayoutParams);
            marginLayoutParams.leftMargin = this.mPreservedParams.leftMargin;
            marginLayoutParams.topMargin = this.mPreservedParams.topMargin;
            marginLayoutParams.rightMargin = this.mPreservedParams.rightMargin;
            marginLayoutParams.bottomMargin = this.mPreservedParams.bottomMargin;
            MarginLayoutParamsCompat.setMarginStart(marginLayoutParams, MarginLayoutParamsCompat.getMarginStart(this.mPreservedParams));
            MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, MarginLayoutParamsCompat.getMarginEnd(this.mPreservedParams));
        }

        public String toString() {
            return String.format("PercentLayoutInformation width: %f height %f, margins (%f, %f,  %f, %f, %f, %f)", Float.valueOf(this.widthPercent), Float.valueOf(this.heightPercent), Float.valueOf(this.leftMarginPercent), Float.valueOf(this.topMarginPercent), Float.valueOf(this.rightMarginPercent), Float.valueOf(this.bottomMarginPercent), Float.valueOf(this.startMarginPercent), Float.valueOf(this.endMarginPercent));
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:android/support/percent/PercentLayoutHelper$PercentLayoutParams.class */
    public interface PercentLayoutParams {
        PercentLayoutInfo getPercentLayoutInfo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/percent/PercentLayoutHelper$PercentMarginLayoutParams.class */
    public static class PercentMarginLayoutParams extends ViewGroup.MarginLayoutParams {
        boolean mIsHeightComputedFromAspectRatio;
        boolean mIsWidthComputedFromAspectRatio;

        public PercentMarginLayoutParams(int i, int i2) {
            super(i, i2);
        }
    }

    public PercentLayoutHelper(@NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("host must be non-null");
        }
        this.mHost = viewGroup;
    }

    public static void fetchWidthAndHeight(ViewGroup.LayoutParams layoutParams, TypedArray typedArray, int i, int i2) {
        layoutParams.width = typedArray.getLayoutDimension(i, 0);
        layoutParams.height = typedArray.getLayoutDimension(i2, 0);
    }

    public static PercentLayoutInfo getPercentLayoutInfo(Context context, AttributeSet attributeSet) {
        PercentLayoutInfo percentLayoutInfo;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0217R.styleable.PercentLayout_Layout);
        float fraction = obtainStyledAttributes.getFraction(C0217R.styleable.PercentLayout_Layout_layout_widthPercent, 1, 1, -1.0f);
        if (fraction != -1.0f) {
            percentLayoutInfo = new PercentLayoutInfo();
            percentLayoutInfo.widthPercent = fraction;
        } else {
            percentLayoutInfo = null;
        }
        float fraction2 = obtainStyledAttributes.getFraction(C0217R.styleable.PercentLayout_Layout_layout_heightPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo2 = percentLayoutInfo;
        if (fraction2 != -1.0f) {
            percentLayoutInfo2 = percentLayoutInfo != null ? percentLayoutInfo : new PercentLayoutInfo();
            percentLayoutInfo2.heightPercent = fraction2;
        }
        float fraction3 = obtainStyledAttributes.getFraction(C0217R.styleable.PercentLayout_Layout_layout_marginPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo3 = percentLayoutInfo2;
        if (fraction3 != -1.0f) {
            if (percentLayoutInfo2 == null) {
                percentLayoutInfo2 = new PercentLayoutInfo();
            }
            percentLayoutInfo2.leftMarginPercent = fraction3;
            percentLayoutInfo2.topMarginPercent = fraction3;
            percentLayoutInfo2.rightMarginPercent = fraction3;
            percentLayoutInfo2.bottomMarginPercent = fraction3;
            percentLayoutInfo3 = percentLayoutInfo2;
        }
        float fraction4 = obtainStyledAttributes.getFraction(C0217R.styleable.PercentLayout_Layout_layout_marginLeftPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo4 = percentLayoutInfo3;
        if (fraction4 != -1.0f) {
            if (percentLayoutInfo3 == null) {
                percentLayoutInfo3 = new PercentLayoutInfo();
            }
            percentLayoutInfo3.leftMarginPercent = fraction4;
            percentLayoutInfo4 = percentLayoutInfo3;
        }
        float fraction5 = obtainStyledAttributes.getFraction(C0217R.styleable.PercentLayout_Layout_layout_marginTopPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo5 = percentLayoutInfo4;
        if (fraction5 != -1.0f) {
            percentLayoutInfo5 = percentLayoutInfo4 != null ? percentLayoutInfo4 : new PercentLayoutInfo();
            percentLayoutInfo5.topMarginPercent = fraction5;
        }
        float fraction6 = obtainStyledAttributes.getFraction(C0217R.styleable.PercentLayout_Layout_layout_marginRightPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo6 = percentLayoutInfo5;
        if (fraction6 != -1.0f) {
            if (percentLayoutInfo5 == null) {
                percentLayoutInfo5 = new PercentLayoutInfo();
            }
            percentLayoutInfo5.rightMarginPercent = fraction6;
            percentLayoutInfo6 = percentLayoutInfo5;
        }
        float fraction7 = obtainStyledAttributes.getFraction(C0217R.styleable.PercentLayout_Layout_layout_marginBottomPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo7 = percentLayoutInfo6;
        if (fraction7 != -1.0f) {
            percentLayoutInfo7 = percentLayoutInfo6 != null ? percentLayoutInfo6 : new PercentLayoutInfo();
            percentLayoutInfo7.bottomMarginPercent = fraction7;
        }
        float fraction8 = obtainStyledAttributes.getFraction(C0217R.styleable.PercentLayout_Layout_layout_marginStartPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo8 = percentLayoutInfo7;
        if (fraction8 != -1.0f) {
            percentLayoutInfo8 = percentLayoutInfo7 != null ? percentLayoutInfo7 : new PercentLayoutInfo();
            percentLayoutInfo8.startMarginPercent = fraction8;
        }
        float fraction9 = obtainStyledAttributes.getFraction(C0217R.styleable.PercentLayout_Layout_layout_marginEndPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo9 = percentLayoutInfo8;
        if (fraction9 != -1.0f) {
            if (percentLayoutInfo8 == null) {
                percentLayoutInfo8 = new PercentLayoutInfo();
            }
            percentLayoutInfo8.endMarginPercent = fraction9;
            percentLayoutInfo9 = percentLayoutInfo8;
        }
        float fraction10 = obtainStyledAttributes.getFraction(C0217R.styleable.PercentLayout_Layout_layout_aspectRatio, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo10 = percentLayoutInfo9;
        if (fraction10 != -1.0f) {
            if (percentLayoutInfo9 == null) {
                percentLayoutInfo9 = new PercentLayoutInfo();
            }
            percentLayoutInfo9.aspectRatio = fraction10;
            percentLayoutInfo10 = percentLayoutInfo9;
        }
        obtainStyledAttributes.recycle();
        return percentLayoutInfo10;
    }

    private static boolean shouldHandleMeasuredHeightTooSmall(View view, PercentLayoutInfo percentLayoutInfo) {
        return (view.getMeasuredHeightAndState() & ViewCompat.MEASURED_STATE_MASK) == 16777216 && percentLayoutInfo.heightPercent >= 0.0f && percentLayoutInfo.mPreservedParams.height == -2;
    }

    private static boolean shouldHandleMeasuredWidthTooSmall(View view, PercentLayoutInfo percentLayoutInfo) {
        return (view.getMeasuredWidthAndState() & ViewCompat.MEASURED_STATE_MASK) == 16777216 && percentLayoutInfo.widthPercent >= 0.0f && percentLayoutInfo.mPreservedParams.width == -2;
    }

    public void adjustChildren(int i, int i2) {
        PercentLayoutInfo percentLayoutInfo;
        int size = (View.MeasureSpec.getSize(i) - this.mHost.getPaddingLeft()) - this.mHost.getPaddingRight();
        int size2 = (View.MeasureSpec.getSize(i2) - this.mHost.getPaddingTop()) - this.mHost.getPaddingBottom();
        int childCount = this.mHost.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = this.mHost.getChildAt(i3);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof PercentLayoutParams) && (percentLayoutInfo = ((PercentLayoutParams) layoutParams).getPercentLayoutInfo()) != null) {
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    percentLayoutInfo.fillMarginLayoutParams(childAt, (ViewGroup.MarginLayoutParams) layoutParams, size, size2);
                } else {
                    percentLayoutInfo.fillLayoutParams(layoutParams, size, size2);
                }
            }
        }
    }

    public boolean handleMeasuredStateTooSmall() {
        int childCount = this.mHost.getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mHost.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            z = z;
            if (layoutParams instanceof PercentLayoutParams) {
                PercentLayoutInfo percentLayoutInfo = ((PercentLayoutParams) layoutParams).getPercentLayoutInfo();
                z = z;
                if (percentLayoutInfo != null) {
                    if (shouldHandleMeasuredWidthTooSmall(childAt, percentLayoutInfo)) {
                        layoutParams.width = -2;
                        z = true;
                    }
                    if (shouldHandleMeasuredHeightTooSmall(childAt, percentLayoutInfo)) {
                        layoutParams.height = -2;
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public void restoreOriginalParams() {
        PercentLayoutInfo percentLayoutInfo;
        int childCount = this.mHost.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ViewGroup.LayoutParams layoutParams = this.mHost.getChildAt(i).getLayoutParams();
            if ((layoutParams instanceof PercentLayoutParams) && (percentLayoutInfo = ((PercentLayoutParams) layoutParams).getPercentLayoutInfo()) != null) {
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    percentLayoutInfo.restoreMarginLayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
                } else {
                    percentLayoutInfo.restoreLayoutParams(layoutParams);
                }
            }
        }
    }
}
