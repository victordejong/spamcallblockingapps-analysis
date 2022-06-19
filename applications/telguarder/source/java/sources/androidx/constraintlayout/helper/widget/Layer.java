package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.C0203R;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/helper/widget/Layer.class */
public class Layer extends ConstraintHelper {
    private static final String TAG = "Layer";
    private boolean mApplyElevationOnAttach;
    private boolean mApplyVisibilityOnAttach;
    ConstraintLayout mContainer;
    private float mRotationCenterX = Float.NaN;
    private float mRotationCenterY = Float.NaN;
    private float mGroupRotateAngle = Float.NaN;
    private float mScaleX = 1.0f;
    private float mScaleY = 1.0f;
    protected float mComputedCenterX = Float.NaN;
    protected float mComputedCenterY = Float.NaN;
    protected float mComputedMaxX = Float.NaN;
    protected float mComputedMaxY = Float.NaN;
    protected float mComputedMinX = Float.NaN;
    protected float mComputedMinY = Float.NaN;
    boolean mNeedBounds = true;
    View[] mViews = null;
    private float mShiftX = 0.0f;
    private float mShiftY = 0.0f;

    public Layer(Context context) {
        super(context);
    }

    public Layer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Layer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void reCacheViews() {
        if (this.mContainer == null || this.mCount == 0) {
            return;
        }
        View[] viewArr = this.mViews;
        if (viewArr == null || viewArr.length != this.mCount) {
            this.mViews = new View[this.mCount];
        }
        for (int i = 0; i < this.mCount; i++) {
            this.mViews[i] = this.mContainer.getViewById(this.mIds[i]);
        }
    }

    /* JADX WARN: Type inference failed for: r0v54, types: [double] */
    private void transform() {
        if (this.mContainer == null) {
            return;
        }
        if (this.mViews == null) {
            reCacheViews();
        }
        calcCenters();
        char radians = Float.isNaN(this.mGroupRotateAngle) ? (char) 0 : Math.toRadians(this.mGroupRotateAngle);
        float sin = (float) Math.sin(radians);
        float cos = (float) Math.cos(radians);
        float f = this.mScaleX;
        float f2 = this.mScaleY;
        float f3 = -f2;
        for (int i = 0; i < this.mCount; i++) {
            View view = this.mViews[i];
            int left = (view.getLeft() + view.getRight()) / 2;
            int top = (view.getTop() + view.getBottom()) / 2;
            float f4 = left - this.mComputedCenterX;
            float f5 = top - this.mComputedCenterY;
            float f6 = this.mShiftX;
            float f7 = this.mShiftY;
            view.setTranslationX(((((f * cos) * f4) + ((f3 * sin) * f5)) - f4) + f6);
            view.setTranslationY((((f4 * (f * sin)) + ((f2 * cos) * f5)) - f5) + f7);
            view.setScaleY(this.mScaleY);
            view.setScaleX(this.mScaleX);
            if (!Float.isNaN(this.mGroupRotateAngle)) {
                view.setRotation(this.mGroupRotateAngle);
            }
        }
    }

    protected void calcCenters() {
        if (this.mContainer == null) {
            return;
        }
        if (!this.mNeedBounds && !Float.isNaN(this.mComputedCenterX) && !Float.isNaN(this.mComputedCenterY)) {
            return;
        }
        if (!Float.isNaN(this.mRotationCenterX) && !Float.isNaN(this.mRotationCenterY)) {
            this.mComputedCenterY = this.mRotationCenterY;
            this.mComputedCenterX = this.mRotationCenterX;
            return;
        }
        View[] views = getViews(this.mContainer);
        int left = views[0].getLeft();
        int top = views[0].getTop();
        int right = views[0].getRight();
        int bottom = views[0].getBottom();
        for (int i = 0; i < this.mCount; i++) {
            View view = views[i];
            left = Math.min(left, view.getLeft());
            top = Math.min(top, view.getTop());
            right = Math.max(right, view.getRight());
            bottom = Math.max(bottom, view.getBottom());
        }
        this.mComputedMaxX = right;
        this.mComputedMaxY = bottom;
        this.mComputedMinX = left;
        this.mComputedMinY = top;
        if (Float.isNaN(this.mRotationCenterX)) {
            this.mComputedCenterX = (left + right) / 2;
        } else {
            this.mComputedCenterX = this.mRotationCenterX;
        }
        if (Float.isNaN(this.mRotationCenterY)) {
            this.mComputedCenterY = (top + bottom) / 2;
        } else {
            this.mComputedCenterY = this.mRotationCenterY;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        this.mUseViewMeasure = false;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0203R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0203R.styleable.ConstraintLayout_Layout_android_visibility) {
                    this.mApplyVisibilityOnAttach = true;
                } else if (index == C0203R.styleable.ConstraintLayout_Layout_android_elevation) {
                    this.mApplyElevationOnAttach = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mContainer = (ConstraintLayout) getParent();
        if (this.mApplyVisibilityOnAttach || this.mApplyElevationOnAttach) {
            int visibility = getVisibility();
            float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
            for (int i = 0; i < this.mCount; i++) {
                View viewById = this.mContainer.getViewById(this.mIds[i]);
                if (viewById != null) {
                    if (this.mApplyVisibilityOnAttach) {
                        viewById.setVisibility(visibility);
                    }
                    if (this.mApplyElevationOnAttach && elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                        viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        applyLayoutFeatures();
    }

    @Override // android.view.View
    public void setPivotX(float f) {
        this.mRotationCenterX = f;
        transform();
    }

    @Override // android.view.View
    public void setPivotY(float f) {
        this.mRotationCenterY = f;
        transform();
    }

    @Override // android.view.View
    public void setRotation(float f) {
        this.mGroupRotateAngle = f;
        transform();
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        this.mScaleX = f;
        transform();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        this.mScaleY = f;
        transform();
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        this.mShiftX = f;
        transform();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        this.mShiftY = f;
        transform();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        applyLayoutFeatures();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void updatePostLayout(ConstraintLayout constraintLayout) {
        reCacheViews();
        this.mComputedCenterX = Float.NaN;
        this.mComputedCenterY = Float.NaN;
        ConstraintWidget constraintWidget = ((ConstraintLayout.LayoutParams) getLayoutParams()).getConstraintWidget();
        constraintWidget.setWidth(0);
        constraintWidget.setHeight(0);
        calcCenters();
        layout(((int) this.mComputedMinX) - getPaddingLeft(), ((int) this.mComputedMinY) - getPaddingTop(), ((int) this.mComputedMaxX) + getPaddingRight(), ((int) this.mComputedMaxY) + getPaddingBottom());
        transform();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void updatePreDraw(ConstraintLayout constraintLayout) {
        this.mContainer = constraintLayout;
        float rotation = getRotation();
        if (rotation != 0.0f) {
            this.mGroupRotateAngle = rotation;
        } else if (Float.isNaN(this.mGroupRotateAngle)) {
        } else {
            this.mGroupRotateAngle = rotation;
        }
    }
}
