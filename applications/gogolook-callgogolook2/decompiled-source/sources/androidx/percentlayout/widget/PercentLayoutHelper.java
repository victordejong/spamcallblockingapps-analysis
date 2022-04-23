package androidx.percentlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.percentlayout.C1020R;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/percentlayout/widget/PercentLayoutHelper.class */
public class PercentLayoutHelper {
    public static final boolean DEBUG = false;
    public static final String TAG = "PercentLayout";
    public static final boolean VERBOSE = false;
    public final ViewGroup mHost;

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo.class */
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
        public final PercentMarginLayoutParams mPreservedParams = new PercentMarginLayoutParams(0, 0);

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0058, code lost:
            if (((android.view.ViewGroup.MarginLayoutParams) r0).height == 0) goto L_0x005b;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void fillLayoutParams(android.view.ViewGroup.LayoutParams r5, int r6, int r7) {
            /*
                Method dump skipped, instructions count: 229
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.percentlayout.widget.PercentLayoutHelper.PercentLayoutInfo.fillLayoutParams(android.view.ViewGroup$LayoutParams, int, int):void");
        }

        public void fillMarginLayoutParams(View view, ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
            fillLayoutParams(marginLayoutParams, i, i2);
            PercentMarginLayoutParams percentMarginLayoutParams = this.mPreservedParams;
            ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).bottomMargin = marginLayoutParams.bottomMargin;
            MarginLayoutParamsCompat.setMarginStart(percentMarginLayoutParams, MarginLayoutParamsCompat.getMarginStart(marginLayoutParams));
            MarginLayoutParamsCompat.setMarginEnd(this.mPreservedParams, MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams));
            float f = this.leftMarginPercent;
            if (f >= 0.0f) {
                marginLayoutParams.leftMargin = Math.round(i * f);
            }
            float f2 = this.topMarginPercent;
            if (f2 >= 0.0f) {
                marginLayoutParams.topMargin = Math.round(i2 * f2);
            }
            float f3 = this.rightMarginPercent;
            if (f3 >= 0.0f) {
                marginLayoutParams.rightMargin = Math.round(i * f3);
            }
            float f4 = this.bottomMarginPercent;
            if (f4 >= 0.0f) {
                marginLayoutParams.bottomMargin = Math.round(i2 * f4);
            }
            boolean z = false;
            float f5 = this.startMarginPercent;
            if (f5 >= 0.0f) {
                MarginLayoutParamsCompat.setMarginStart(marginLayoutParams, Math.round(i * f5));
                z = true;
            }
            float f6 = this.endMarginPercent;
            if (f6 >= 0.0f) {
                MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, Math.round(i * f6));
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
            PercentMarginLayoutParams percentMarginLayoutParams = this.mPreservedParams;
            if (!percentMarginLayoutParams.mIsWidthComputedFromAspectRatio) {
                layoutParams.width = ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).width;
            }
            PercentMarginLayoutParams percentMarginLayoutParams2 = this.mPreservedParams;
            if (!percentMarginLayoutParams2.mIsHeightComputedFromAspectRatio) {
                layoutParams.height = ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams2).height;
            }
            PercentMarginLayoutParams percentMarginLayoutParams3 = this.mPreservedParams;
            percentMarginLayoutParams3.mIsWidthComputedFromAspectRatio = false;
            percentMarginLayoutParams3.mIsHeightComputedFromAspectRatio = false;
        }

        public void restoreMarginLayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            restoreLayoutParams(marginLayoutParams);
            PercentMarginLayoutParams percentMarginLayoutParams = this.mPreservedParams;
            marginLayoutParams.leftMargin = ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).leftMargin;
            marginLayoutParams.topMargin = ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).topMargin;
            marginLayoutParams.rightMargin = ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).rightMargin;
            marginLayoutParams.bottomMargin = ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).bottomMargin;
            MarginLayoutParamsCompat.setMarginStart(marginLayoutParams, MarginLayoutParamsCompat.getMarginStart(percentMarginLayoutParams));
            MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, MarginLayoutParamsCompat.getMarginEnd(this.mPreservedParams));
        }

        public String toString() {
            return String.format("PercentLayoutInformation width: %f height %f, margins (%f, %f,  %f, %f, %f, %f)", Float.valueOf(this.widthPercent), Float.valueOf(this.heightPercent), Float.valueOf(this.leftMarginPercent), Float.valueOf(this.topMarginPercent), Float.valueOf(this.rightMarginPercent), Float.valueOf(this.bottomMarginPercent), Float.valueOf(this.startMarginPercent), Float.valueOf(this.endMarginPercent));
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutParams.class */
    public interface PercentLayoutParams {
        PercentLayoutInfo getPercentLayoutInfo();
    }

    /* loaded from: classes-dex2jar.jar:androidx/percentlayout/widget/PercentLayoutHelper$PercentMarginLayoutParams.class */
    public static class PercentMarginLayoutParams extends ViewGroup.MarginLayoutParams {
        public boolean mIsHeightComputedFromAspectRatio;
        public boolean mIsWidthComputedFromAspectRatio;

        public PercentMarginLayoutParams(int i, int i2) {
            super(i, i2);
        }
    }

    public PercentLayoutHelper(@NonNull ViewGroup viewGroup) {
        if (viewGroup != null) {
            this.mHost = viewGroup;
            return;
        }
        throw new IllegalArgumentException("host must be non-null");
    }

    public static void fetchWidthAndHeight(ViewGroup.LayoutParams layoutParams, TypedArray typedArray, int i, int i2) {
        layoutParams.width = typedArray.getLayoutDimension(i, 0);
        layoutParams.height = typedArray.getLayoutDimension(i2, 0);
    }

    public static PercentLayoutInfo getPercentLayoutInfo(Context context, AttributeSet attributeSet) {
        PercentLayoutInfo percentLayoutInfo;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1020R.styleable.PercentLayout_Layout);
        float fraction = obtainStyledAttributes.getFraction(C1020R.styleable.PercentLayout_Layout_layout_widthPercent, 1, 1, -1.0f);
        if (fraction != -1.0f) {
            percentLayoutInfo = new PercentLayoutInfo();
            percentLayoutInfo.widthPercent = fraction;
        } else {
            percentLayoutInfo = null;
        }
        float fraction2 = obtainStyledAttributes.getFraction(C1020R.styleable.PercentLayout_Layout_layout_heightPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo2 = percentLayoutInfo;
        if (fraction2 != -1.0f) {
            percentLayoutInfo2 = percentLayoutInfo != null ? percentLayoutInfo : new PercentLayoutInfo();
            percentLayoutInfo2.heightPercent = fraction2;
        }
        float fraction3 = obtainStyledAttributes.getFraction(C1020R.styleable.PercentLayout_Layout_layout_marginPercent, 1, 1, -1.0f);
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
        float fraction4 = obtainStyledAttributes.getFraction(C1020R.styleable.PercentLayout_Layout_layout_marginLeftPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo4 = percentLayoutInfo3;
        if (fraction4 != -1.0f) {
            percentLayoutInfo4 = percentLayoutInfo3 != null ? percentLayoutInfo3 : new PercentLayoutInfo();
            percentLayoutInfo4.leftMarginPercent = fraction4;
        }
        float fraction5 = obtainStyledAttributes.getFraction(C1020R.styleable.PercentLayout_Layout_layout_marginTopPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo5 = percentLayoutInfo4;
        if (fraction5 != -1.0f) {
            if (percentLayoutInfo4 == null) {
                percentLayoutInfo4 = new PercentLayoutInfo();
            }
            percentLayoutInfo4.topMarginPercent = fraction5;
            percentLayoutInfo5 = percentLayoutInfo4;
        }
        float fraction6 = obtainStyledAttributes.getFraction(C1020R.styleable.PercentLayout_Layout_layout_marginRightPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo6 = percentLayoutInfo5;
        if (fraction6 != -1.0f) {
            percentLayoutInfo6 = percentLayoutInfo5 != null ? percentLayoutInfo5 : new PercentLayoutInfo();
            percentLayoutInfo6.rightMarginPercent = fraction6;
        }
        float fraction7 = obtainStyledAttributes.getFraction(C1020R.styleable.PercentLayout_Layout_layout_marginBottomPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo7 = percentLayoutInfo6;
        if (fraction7 != -1.0f) {
            if (percentLayoutInfo6 == null) {
                percentLayoutInfo6 = new PercentLayoutInfo();
            }
            percentLayoutInfo6.bottomMarginPercent = fraction7;
            percentLayoutInfo7 = percentLayoutInfo6;
        }
        float fraction8 = obtainStyledAttributes.getFraction(C1020R.styleable.PercentLayout_Layout_layout_marginStartPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo8 = percentLayoutInfo7;
        if (fraction8 != -1.0f) {
            percentLayoutInfo8 = percentLayoutInfo7 != null ? percentLayoutInfo7 : new PercentLayoutInfo();
            percentLayoutInfo8.startMarginPercent = fraction8;
        }
        float fraction9 = obtainStyledAttributes.getFraction(C1020R.styleable.PercentLayout_Layout_layout_marginEndPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo9 = percentLayoutInfo8;
        if (fraction9 != -1.0f) {
            if (percentLayoutInfo8 == null) {
                percentLayoutInfo8 = new PercentLayoutInfo();
            }
            percentLayoutInfo8.endMarginPercent = fraction9;
            percentLayoutInfo9 = percentLayoutInfo8;
        }
        float fraction10 = obtainStyledAttributes.getFraction(C1020R.styleable.PercentLayout_Layout_layout_aspectRatio, 1, 1, -1.0f);
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

    public static boolean shouldHandleMeasuredHeightTooSmall(View view, PercentLayoutInfo percentLayoutInfo) {
        return (view.getMeasuredHeightAndState() & (-16777216)) == 16777216 && percentLayoutInfo.heightPercent >= 0.0f && ((ViewGroup.MarginLayoutParams) percentLayoutInfo.mPreservedParams).height == -2;
    }

    public static boolean shouldHandleMeasuredWidthTooSmall(View view, PercentLayoutInfo percentLayoutInfo) {
        return (view.getMeasuredWidthAndState() & (-16777216)) == 16777216 && percentLayoutInfo.widthPercent >= 0.0f && ((ViewGroup.MarginLayoutParams) percentLayoutInfo.mPreservedParams).width == -2;
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
