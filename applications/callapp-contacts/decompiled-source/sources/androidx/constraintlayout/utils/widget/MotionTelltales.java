package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import androidx.constraintlayout.motion.a.b;
import androidx.constraintlayout.motion.a.h;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.f;
import androidx.constraintlayout.motion.widget.m;
import androidx.constraintlayout.motion.widget.n;
import androidx.constraintlayout.motion.widget.o;
import androidx.constraintlayout.motion.widget.q;
import androidx.constraintlayout.widget.e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/MotionTelltales.class */
public class MotionTelltales extends MockView {

    /* renamed from: b  reason: collision with root package name */
    MotionLayout f1576b;

    /* renamed from: c  reason: collision with root package name */
    float[] f1577c;

    /* renamed from: d  reason: collision with root package name */
    Matrix f1578d;
    int e;
    int f;
    float g;
    private Paint h;

    public MotionTelltales(Context context) {
        super(context);
        this.h = new Paint();
        this.f1577c = new float[2];
        this.f1578d = new Matrix();
        this.e = 0;
        this.f = -65281;
        this.g = 0.25f;
        a(context, null);
    }

    public MotionTelltales(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = new Paint();
        this.f1577c = new float[2];
        this.f1578d = new Matrix();
        this.e = 0;
        this.f = -65281;
        this.g = 0.25f;
        a(context, attributeSet);
    }

    public MotionTelltales(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = new Paint();
        this.f1577c = new float[2];
        this.f1578d = new Matrix();
        this.e = 0;
        this.f = -65281;
        this.g = 0.25f;
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.b.MotionTelltales);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.MotionTelltales_telltales_tailColor) {
                    this.f = obtainStyledAttributes.getColor(index, this.f);
                } else if (index == e.b.MotionTelltales_telltales_velocityMode) {
                    this.e = obtainStyledAttributes.getInt(index, this.e);
                } else if (index == e.b.MotionTelltales_telltales_tailScale) {
                    this.g = obtainStyledAttributes.getFloat(index, this.g);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.h.setColor(this.f);
        this.h.setStrokeWidth(5.0f);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // androidx.constraintlayout.utils.widget.MockView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        getMatrix().invert(this.f1578d);
        if (this.f1576b == null) {
            ViewParent parent = getParent();
            if (parent instanceof MotionLayout) {
                this.f1576b = (MotionLayout) parent;
                return;
            }
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float[] fArr = {0.1f, 0.25f, 0.5f, 0.75f, 0.9f};
        int i = 0;
        MotionTelltales motionTelltales = this;
        while (i < 5) {
            float f = fArr[i];
            for (int i2 = 0; i2 < 5; i2++) {
                float f2 = fArr[i2];
                MotionLayout motionLayout = motionTelltales.f1576b;
                float[] fArr2 = motionTelltales.f1577c;
                int i3 = motionTelltales.e;
                float f3 = motionLayout.f1466d;
                float f4 = motionLayout.l;
                if (motionLayout.f1465c != null) {
                    float signum = Math.signum(motionLayout.m - motionLayout.l);
                    float interpolation = motionLayout.f1465c.getInterpolation(motionLayout.l + 1.0E-5f);
                    f4 = motionLayout.f1465c.getInterpolation(motionLayout.l);
                    f3 = (signum * ((interpolation - f4) / 1.0E-5f)) / motionLayout.j;
                }
                if (motionLayout.f1465c instanceof n) {
                    f3 = ((n) motionLayout.f1465c).a();
                }
                m mVar = motionLayout.i.get(motionTelltales);
                if ((i3 & 1) == 0) {
                    int width2 = getWidth();
                    int height2 = getHeight();
                    float a2 = mVar.a(f4, mVar.o);
                    f fVar = null;
                    q qVar = mVar.q == null ? null : mVar.q.get("translationX");
                    q qVar2 = mVar.q == null ? null : mVar.q.get("translationY");
                    q qVar3 = mVar.q == null ? null : mVar.q.get("rotation");
                    q qVar4 = mVar.q == null ? null : mVar.q.get("scaleX");
                    q qVar5 = mVar.q == null ? null : mVar.q.get("scaleY");
                    f fVar2 = mVar.r == null ? null : mVar.r.get("translationX");
                    f fVar3 = mVar.r == null ? null : mVar.r.get("translationY");
                    f fVar4 = mVar.r == null ? null : mVar.r.get("rotation");
                    f fVar5 = mVar.r == null ? null : mVar.r.get("scaleX");
                    if (mVar.r != null) {
                        fVar = mVar.r.get("scaleY");
                    }
                    h hVar = new h();
                    hVar.a();
                    hVar.a(qVar3, a2);
                    hVar.a(qVar, qVar2, a2);
                    hVar.b(qVar4, qVar5, a2);
                    hVar.a(fVar4, a2);
                    hVar.a(fVar2, fVar3, a2);
                    hVar.b(fVar5, fVar, a2);
                    if (mVar.h != null) {
                        if (mVar.m.length > 0) {
                            b bVar = mVar.h;
                            double d2 = a2;
                            bVar.a(d2, mVar.m);
                            mVar.h.b(d2, mVar.n);
                            o.a(f2, f, fArr2, mVar.l, mVar.n);
                        }
                        hVar.a(f2, f, width2, height2, fArr2);
                    } else if (mVar.g != null) {
                        float a3 = mVar.a(a2, mVar.o);
                        b bVar2 = mVar.g[0];
                        double d3 = a3;
                        bVar2.b(d3, mVar.n);
                        mVar.g[0].a(d3, mVar.m);
                        float f5 = mVar.o[0];
                        for (int i4 = 0; i4 < mVar.n.length; i4++) {
                            double[] dArr = mVar.n;
                            dArr[i4] = dArr[i4] * f5;
                        }
                        o.a(f2, f, fArr2, mVar.l, mVar.n);
                        hVar.a(f2, f, width2, height2, fArr2);
                    } else {
                        float f6 = mVar.e.f - mVar.f1524d.f;
                        float f7 = mVar.e.g - mVar.f1524d.g;
                        float f8 = mVar.e.h;
                        float f9 = mVar.f1524d.h;
                        float f10 = mVar.e.i;
                        float f11 = mVar.f1524d.i;
                        fArr2[0] = (f6 * (1.0f - f2)) + (((f8 - f9) + f6) * f2);
                        fArr2[1] = (f7 * (1.0f - f)) + (((f10 - f11) + f7) * f);
                        hVar.a();
                        hVar.a(qVar3, a2);
                        hVar.a(qVar, qVar2, a2);
                        hVar.b(qVar4, qVar5, a2);
                        hVar.a(fVar4, a2);
                        hVar.a(fVar2, fVar3, a2);
                        hVar.b(fVar5, fVar, a2);
                        hVar.a(f2, f, width2, height2, fArr2);
                    }
                } else {
                    mVar.a(f4, f2, f, fArr2);
                }
                if (i3 < 2) {
                    fArr2[0] = fArr2[0] * f3;
                    fArr2[1] = fArr2[1] * f3;
                }
                motionTelltales = this;
                motionTelltales.f1578d.mapVectors(motionTelltales.f1577c);
                float f12 = width * f2;
                float f13 = height * f;
                float[] fArr3 = motionTelltales.f1577c;
                float f14 = fArr3[0];
                float f15 = motionTelltales.g;
                float f16 = fArr3[1];
                motionTelltales.f1578d.mapVectors(fArr3);
                canvas.drawLine(f12, f13, f12 - (f14 * f15), f13 - (f16 * f15), motionTelltales.h);
            }
            i++;
            fArr = fArr;
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        postInvalidate();
    }

    public void setText(CharSequence charSequence) {
        this.f1572a = charSequence.toString();
        requestLayout();
    }
}
