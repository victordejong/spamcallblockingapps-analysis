package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Constraints.class */
public class Constraints extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    c f1598a;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Constraints$LayoutParams.class */
    public static class LayoutParams extends ConstraintLayout.LayoutParams {
        public float aA;
        public float aB;
        public float ap;
        public boolean aq;
        public float ar;
        public float as;
        public float at;
        public float au;
        public float av;
        public float aw;
        public float ax;
        public float ay;
        public float az;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.ap = 1.0f;
            this.aq = false;
            this.ar = BitmapDescriptorFactory.HUE_RED;
            this.as = BitmapDescriptorFactory.HUE_RED;
            this.at = BitmapDescriptorFactory.HUE_RED;
            this.au = BitmapDescriptorFactory.HUE_RED;
            this.av = 1.0f;
            this.aw = 1.0f;
            this.ax = BitmapDescriptorFactory.HUE_RED;
            this.ay = BitmapDescriptorFactory.HUE_RED;
            this.az = BitmapDescriptorFactory.HUE_RED;
            this.aA = BitmapDescriptorFactory.HUE_RED;
            this.aB = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.ap = 1.0f;
            this.aq = false;
            this.ar = BitmapDescriptorFactory.HUE_RED;
            this.as = BitmapDescriptorFactory.HUE_RED;
            this.at = BitmapDescriptorFactory.HUE_RED;
            this.au = BitmapDescriptorFactory.HUE_RED;
            this.av = 1.0f;
            this.aw = 1.0f;
            this.ax = BitmapDescriptorFactory.HUE_RED;
            this.ay = BitmapDescriptorFactory.HUE_RED;
            this.az = BitmapDescriptorFactory.HUE_RED;
            this.aA = BitmapDescriptorFactory.HUE_RED;
            this.aB = BitmapDescriptorFactory.HUE_RED;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.b.ConstraintSet);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.ConstraintSet_android_alpha) {
                    this.ap = obtainStyledAttributes.getFloat(index, this.ap);
                } else if (index == e.b.ConstraintSet_android_elevation) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        this.ar = obtainStyledAttributes.getFloat(index, this.ar);
                        this.aq = true;
                    }
                } else if (index == e.b.ConstraintSet_android_rotationX) {
                    this.at = obtainStyledAttributes.getFloat(index, this.at);
                } else if (index == e.b.ConstraintSet_android_rotationY) {
                    this.au = obtainStyledAttributes.getFloat(index, this.au);
                } else if (index == e.b.ConstraintSet_android_rotation) {
                    this.as = obtainStyledAttributes.getFloat(index, this.as);
                } else if (index == e.b.ConstraintSet_android_scaleX) {
                    this.av = obtainStyledAttributes.getFloat(index, this.av);
                } else if (index == e.b.ConstraintSet_android_scaleY) {
                    this.aw = obtainStyledAttributes.getFloat(index, this.aw);
                } else if (index == e.b.ConstraintSet_android_transformPivotX) {
                    this.ax = obtainStyledAttributes.getFloat(index, this.ax);
                } else if (index == e.b.ConstraintSet_android_transformPivotY) {
                    this.ay = obtainStyledAttributes.getFloat(index, this.ay);
                } else if (index == e.b.ConstraintSet_android_translationX) {
                    this.az = obtainStyledAttributes.getFloat(index, this.az);
                } else if (index == e.b.ConstraintSet_android_translationY) {
                    this.aA = obtainStyledAttributes.getFloat(index, this.aA);
                } else if (index == e.b.ConstraintSet_android_translationZ && Build.VERSION.SDK_INT >= 21) {
                    this.aB = obtainStyledAttributes.getFloat(index, this.aB);
                }
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ConstraintLayout.LayoutParams) layoutParams);
            this.ap = 1.0f;
            this.aq = false;
            this.ar = BitmapDescriptorFactory.HUE_RED;
            this.as = BitmapDescriptorFactory.HUE_RED;
            this.at = BitmapDescriptorFactory.HUE_RED;
            this.au = BitmapDescriptorFactory.HUE_RED;
            this.av = 1.0f;
            this.aw = 1.0f;
            this.ax = BitmapDescriptorFactory.HUE_RED;
            this.ay = BitmapDescriptorFactory.HUE_RED;
            this.az = BitmapDescriptorFactory.HUE_RED;
            this.aA = BitmapDescriptorFactory.HUE_RED;
            this.aB = BitmapDescriptorFactory.HUE_RED;
        }
    }

    public Constraints(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public Constraints(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Constraints(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setVisibility(8);
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}
