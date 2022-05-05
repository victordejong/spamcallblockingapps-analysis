package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0178R;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/MotionTelltales.class */
public class MotionTelltales extends MockView {

    /* renamed from: q */
    private Paint f2478q;

    /* renamed from: r */
    MotionLayout f2479r;

    /* renamed from: s */
    float[] f2480s;

    /* renamed from: t */
    Matrix f2481t;

    /* renamed from: u */
    int f2482u;

    /* renamed from: v */
    int f2483v;

    /* renamed from: w */
    float f2484w;

    public MotionTelltales(Context context) {
        super(context);
        this.f2478q = new Paint();
        this.f2480s = new float[2];
        this.f2481t = new Matrix();
        this.f2482u = 0;
        this.f2483v = -65281;
        this.f2484w = 0.25f;
        m20078a(context, null);
    }

    public MotionTelltales(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2478q = new Paint();
        this.f2480s = new float[2];
        this.f2481t = new Matrix();
        this.f2482u = 0;
        this.f2483v = -65281;
        this.f2484w = 0.25f;
        m20078a(context, attributeSet);
    }

    public MotionTelltales(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2478q = new Paint();
        this.f2480s = new float[2];
        this.f2481t = new Matrix();
        this.f2482u = 0;
        this.f2483v = -65281;
        this.f2484w = 0.25f;
        m20078a(context, attributeSet);
    }

    /* renamed from: a */
    private void m20078a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0178R.styleable.MotionTelltales);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.MotionTelltales_telltales_tailColor) {
                    this.f2483v = obtainStyledAttributes.getColor(index, this.f2483v);
                } else if (index == C0178R.styleable.MotionTelltales_telltales_velocityMode) {
                    this.f2482u = obtainStyledAttributes.getInt(index, this.f2482u);
                } else if (index == C0178R.styleable.MotionTelltales_telltales_tailScale) {
                    this.f2484w = obtainStyledAttributes.getFloat(index, this.f2484w);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f2478q.setColor(this.f2483v);
        this.f2478q.setStrokeWidth(5.0f);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // androidx.constraintlayout.utils.widget.MockView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        getMatrix().invert(this.f2481t);
        if (this.f2479r == null) {
            ViewParent parent = getParent();
            if (parent instanceof MotionLayout) {
                this.f2479r = (MotionLayout) parent;
                return;
            }
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float[] fArr = {0.1f, 0.25f, 0.5f, 0.75f, 0.9f};
        for (int i = 0; i < 5; i++) {
            float f = fArr[i];
            for (int i2 = 0; i2 < 5; i2++) {
                float f2 = fArr[i2];
                this.f2479r.m20727f0(this, f2, f, this.f2480s, this.f2482u);
                this.f2481t.mapVectors(this.f2480s);
                float f3 = width * f2;
                float f4 = height * f;
                float[] fArr2 = this.f2480s;
                float f5 = fArr2[0];
                float f6 = this.f2484w;
                float f7 = fArr2[1];
                this.f2481t.mapVectors(fArr2);
                canvas.drawLine(f3, f4, f3 - (f5 * f6), f4 - (f7 * f6), this.f2478q);
            }
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        postInvalidate();
    }

    public void setText(CharSequence charSequence) {
        this.f2472k = charSequence.toString();
        requestLayout();
    }
}
