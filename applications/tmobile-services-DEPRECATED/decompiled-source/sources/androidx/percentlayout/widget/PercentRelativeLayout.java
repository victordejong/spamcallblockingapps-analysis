package androidx.percentlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import androidx.percentlayout.widget.PercentLayoutHelper;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/percentlayout/widget/PercentRelativeLayout.class */
public class PercentRelativeLayout extends RelativeLayout {

    /* renamed from: f */
    private final PercentLayoutHelper f4350f = new PercentLayoutHelper(this);

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/percentlayout/widget/PercentRelativeLayout$LayoutParams.class */
    public static class LayoutParams extends RelativeLayout.LayoutParams implements PercentLayoutHelper.PercentLayoutParams {

        /* renamed from: f */
        private PercentLayoutHelper.PercentLayoutInfo f4351f;

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4351f = PercentLayoutHelper.m17917c(context, attributeSet);
        }

        @Override // androidx.percentlayout.widget.PercentLayoutHelper.PercentLayoutParams
        /* renamed from: a */
        public PercentLayoutHelper.PercentLayoutInfo mo17906a() {
            if (this.f4351f == null) {
                this.f4351f = new PercentLayoutHelper.PercentLayoutInfo();
            }
            return this.f4351f;
        }

        @Override // android.view.ViewGroup.LayoutParams
        protected void setBaseAttributes(TypedArray typedArray, int i, int i2) {
            PercentLayoutHelper.m17918b(this, typedArray, i, i2);
        }
    }

    public PercentRelativeLayout(Context context) {
        super(context);
    }

    public PercentRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PercentRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    /* renamed from: b */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f4350f.m17915e();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        this.f4350f.m17919a(i, i2);
        super.onMeasure(i, i2);
        if (this.f4350f.m17916d()) {
            super.onMeasure(i, i2);
        }
    }
}
