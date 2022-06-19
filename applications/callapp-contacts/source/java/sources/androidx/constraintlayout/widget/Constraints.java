package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.C0687e;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Constraints.class */
public class Constraints extends ViewGroup {

    /* renamed from: a */
    C0680c f3010a;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Constraints$LayoutParams.class */
    public static class LayoutParams extends ConstraintLayout.LayoutParams {

        /* renamed from: aA */
        public float f3011aA;

        /* renamed from: aB */
        public float f3012aB;

        /* renamed from: ap */
        public float f3013ap;

        /* renamed from: aq */
        public boolean f3014aq;

        /* renamed from: ar */
        public float f3015ar;

        /* renamed from: as */
        public float f3016as;

        /* renamed from: at */
        public float f3017at;

        /* renamed from: au */
        public float f3018au;

        /* renamed from: av */
        public float f3019av;

        /* renamed from: aw */
        public float f3020aw;

        /* renamed from: ax */
        public float f3021ax;

        /* renamed from: ay */
        public float f3022ay;

        /* renamed from: az */
        public float f3023az;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f3013ap = 1.0f;
            this.f3014aq = false;
            this.f3015ar = BitmapDescriptorFactory.HUE_RED;
            this.f3016as = BitmapDescriptorFactory.HUE_RED;
            this.f3017at = BitmapDescriptorFactory.HUE_RED;
            this.f3018au = BitmapDescriptorFactory.HUE_RED;
            this.f3019av = 1.0f;
            this.f3020aw = 1.0f;
            this.f3021ax = BitmapDescriptorFactory.HUE_RED;
            this.f3022ay = BitmapDescriptorFactory.HUE_RED;
            this.f3023az = BitmapDescriptorFactory.HUE_RED;
            this.f3011aA = BitmapDescriptorFactory.HUE_RED;
            this.f3012aB = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3013ap = 1.0f;
            this.f3014aq = false;
            this.f3015ar = BitmapDescriptorFactory.HUE_RED;
            this.f3016as = BitmapDescriptorFactory.HUE_RED;
            this.f3017at = BitmapDescriptorFactory.HUE_RED;
            this.f3018au = BitmapDescriptorFactory.HUE_RED;
            this.f3019av = 1.0f;
            this.f3020aw = 1.0f;
            this.f3021ax = BitmapDescriptorFactory.HUE_RED;
            this.f3022ay = BitmapDescriptorFactory.HUE_RED;
            this.f3023az = BitmapDescriptorFactory.HUE_RED;
            this.f3011aA = BitmapDescriptorFactory.HUE_RED;
            this.f3012aB = BitmapDescriptorFactory.HUE_RED;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0687e.C0689b.ConstraintSet);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.ConstraintSet_android_alpha) {
                    this.f3013ap = obtainStyledAttributes.getFloat(index, this.f3013ap);
                } else if (index == C0687e.C0689b.ConstraintSet_android_elevation) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        this.f3015ar = obtainStyledAttributes.getFloat(index, this.f3015ar);
                        this.f3014aq = true;
                    }
                } else if (index == C0687e.C0689b.ConstraintSet_android_rotationX) {
                    this.f3017at = obtainStyledAttributes.getFloat(index, this.f3017at);
                } else if (index == C0687e.C0689b.ConstraintSet_android_rotationY) {
                    this.f3018au = obtainStyledAttributes.getFloat(index, this.f3018au);
                } else if (index == C0687e.C0689b.ConstraintSet_android_rotation) {
                    this.f3016as = obtainStyledAttributes.getFloat(index, this.f3016as);
                } else if (index == C0687e.C0689b.ConstraintSet_android_scaleX) {
                    this.f3019av = obtainStyledAttributes.getFloat(index, this.f3019av);
                } else if (index == C0687e.C0689b.ConstraintSet_android_scaleY) {
                    this.f3020aw = obtainStyledAttributes.getFloat(index, this.f3020aw);
                } else if (index == C0687e.C0689b.ConstraintSet_android_transformPivotX) {
                    this.f3021ax = obtainStyledAttributes.getFloat(index, this.f3021ax);
                } else if (index == C0687e.C0689b.ConstraintSet_android_transformPivotY) {
                    this.f3022ay = obtainStyledAttributes.getFloat(index, this.f3022ay);
                } else if (index == C0687e.C0689b.ConstraintSet_android_translationX) {
                    this.f3023az = obtainStyledAttributes.getFloat(index, this.f3023az);
                } else if (index == C0687e.C0689b.ConstraintSet_android_translationY) {
                    this.f3011aA = obtainStyledAttributes.getFloat(index, this.f3011aA);
                } else if (index == C0687e.C0689b.ConstraintSet_android_translationZ && Build.VERSION.SDK_INT >= 21) {
                    this.f3012aB = obtainStyledAttributes.getFloat(index, this.f3012aB);
                }
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ConstraintLayout.LayoutParams) layoutParams);
            this.f3013ap = 1.0f;
            this.f3014aq = false;
            this.f3015ar = BitmapDescriptorFactory.HUE_RED;
            this.f3016as = BitmapDescriptorFactory.HUE_RED;
            this.f3017at = BitmapDescriptorFactory.HUE_RED;
            this.f3018au = BitmapDescriptorFactory.HUE_RED;
            this.f3019av = 1.0f;
            this.f3020aw = 1.0f;
            this.f3021ax = BitmapDescriptorFactory.HUE_RED;
            this.f3022ay = BitmapDescriptorFactory.HUE_RED;
            this.f3023az = BitmapDescriptorFactory.HUE_RED;
            this.f3011aA = BitmapDescriptorFactory.HUE_RED;
            this.f3012aB = BitmapDescriptorFactory.HUE_RED;
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
