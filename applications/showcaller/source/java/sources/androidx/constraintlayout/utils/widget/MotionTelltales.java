package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0523e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/MotionTelltales.class */
public class MotionTelltales extends MockView {

    /* renamed from: o */
    private Paint f2444o;

    /* renamed from: p */
    MotionLayout f2445p;

    /* renamed from: q */
    float[] f2446q;

    /* renamed from: r */
    Matrix f2447r;

    /* renamed from: s */
    int f2448s;

    /* renamed from: t */
    int f2449t;

    /* renamed from: u */
    float f2450u;

    public MotionTelltales(Context context) {
        super(context);
        this.f2444o = new Paint();
        this.f2446q = new float[2];
        this.f2447r = new Matrix();
        this.f2448s = 0;
        this.f2449t = -65281;
        this.f2450u = 0.25f;
        m33721a(context, null);
    }

    public MotionTelltales(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2444o = new Paint();
        this.f2446q = new float[2];
        this.f2447r = new Matrix();
        this.f2448s = 0;
        this.f2449t = -65281;
        this.f2450u = 0.25f;
        m33721a(context, attributeSet);
    }

    public MotionTelltales(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2444o = new Paint();
        this.f2446q = new float[2];
        this.f2447r = new Matrix();
        this.f2448s = 0;
        this.f2449t = -65281;
        this.f2450u = 0.25f;
        m33721a(context, attributeSet);
    }

    /* renamed from: a */
    private void m33721a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0523e.MotionTelltales);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.MotionTelltales_telltales_tailColor) {
                    this.f2449t = obtainStyledAttributes.getColor(index, this.f2449t);
                } else if (index == C0523e.MotionTelltales_telltales_velocityMode) {
                    this.f2448s = obtainStyledAttributes.getInt(index, this.f2448s);
                } else if (index == C0523e.MotionTelltales_telltales_tailScale) {
                    this.f2450u = obtainStyledAttributes.getFloat(index, this.f2450u);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f2444o.setColor(this.f2449t);
        this.f2444o.setStrokeWidth(5.0f);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // androidx.constraintlayout.utils.widget.MockView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        getMatrix().invert(this.f2447r);
        if (this.f2445p == null) {
            ViewParent parent = getParent();
            if (!(parent instanceof MotionLayout)) {
                return;
            }
            this.f2445p = (MotionLayout) parent;
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float[] fArr = {0.1f, 0.25f, 0.5f, 0.75f, 0.9f};
        for (int i = 0; i < 5; i++) {
            float f = fArr[i];
            for (int i2 = 0; i2 < 5; i2++) {
                float f2 = fArr[i2];
                this.f2445p.m34549g0(this, f2, f, this.f2446q, this.f2448s);
                this.f2447r.mapVectors(this.f2446q);
                float f3 = width * f2;
                float f4 = height * f;
                float[] fArr2 = this.f2446q;
                float f5 = fArr2[0];
                float f6 = this.f2450u;
                float f7 = fArr2[1];
                this.f2447r.mapVectors(fArr2);
                canvas.drawLine(f3, f4, f3 - (f5 * f6), f4 - (f7 * f6), this.f2444o);
            }
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        postInvalidate();
    }

    public void setText(CharSequence charSequence) {
        this.f2438i = charSequence.toString();
        requestLayout();
    }
}
