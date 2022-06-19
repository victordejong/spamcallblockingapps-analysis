package com.truecaller.common.p156ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.truecaller.common.C3656R;
/* renamed from: com.truecaller.common.ui.view.RoundedCornerImageView */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/view/RoundedCornerImageView.class */
public class RoundedCornerImageView extends AppCompatImageView {

    /* renamed from: d */
    public RectF f11304d;

    /* renamed from: c */
    public final Path f11303c = new Path();

    /* renamed from: e */
    public float[] f11305e = new float[8];

    public RoundedCornerImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C3656R.styleable.RoundedCornerImageView, 0, 0);
            this.f11305e[0] = obtainStyledAttributes.getDimensionPixelSize(C3656R.styleable.RoundedCornerImageView_topLeftRadius, 0);
            float[] fArr = this.f11305e;
            fArr[1] = fArr[0];
            fArr[2] = obtainStyledAttributes.getDimensionPixelSize(C3656R.styleable.RoundedCornerImageView_topRightRadius, 0);
            float[] fArr2 = this.f11305e;
            fArr2[3] = fArr2[2];
            fArr2[4] = obtainStyledAttributes.getDimensionPixelSize(C3656R.styleable.RoundedCornerImageView_bottomRightRadius, 0);
            float[] fArr3 = this.f11305e;
            fArr3[5] = fArr3[4];
            fArr3[6] = obtainStyledAttributes.getDimensionPixelSize(C3656R.styleable.RoundedCornerImageView_bottomLeftRadius, 0);
            float[] fArr4 = this.f11305e;
            fArr4[7] = fArr4[6];
            obtainStyledAttributes.recycle();
        }
        setLayerType(1, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        this.f11303c.addRoundRect(this.f11304d, this.f11305e, Path.Direction.CW);
        canvas.clipPath(this.f11303c);
        super.onDraw(canvas);
        this.f11303c.rewind();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f11304d = new RectF(0.0f, 0.0f, i, i2);
    }
}
