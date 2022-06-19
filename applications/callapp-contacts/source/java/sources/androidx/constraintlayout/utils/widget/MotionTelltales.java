package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import androidx.constraintlayout.motion.p029a.AbstractC0572b;
import androidx.constraintlayout.motion.p029a.C0580h;
import androidx.constraintlayout.motion.widget.AbstractC0598f;
import androidx.constraintlayout.motion.widget.AbstractC0631q;
import androidx.constraintlayout.motion.widget.AbstractanimationInterpolatorC0625n;
import androidx.constraintlayout.motion.widget.C0624m;
import androidx.constraintlayout.motion.widget.C0626o;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0687e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/MotionTelltales.class */
public class MotionTelltales extends MockView {

    /* renamed from: b */
    MotionLayout f2890b;

    /* renamed from: c */
    float[] f2891c;

    /* renamed from: d */
    Matrix f2892d;

    /* renamed from: e */
    int f2893e;

    /* renamed from: f */
    int f2894f;

    /* renamed from: g */
    float f2895g;

    /* renamed from: h */
    private Paint f2896h;

    public MotionTelltales(Context context) {
        super(context);
        this.f2896h = new Paint();
        this.f2891c = new float[2];
        this.f2892d = new Matrix();
        this.f2893e = 0;
        this.f2894f = -65281;
        this.f2895g = 0.25f;
        m44765a(context, null);
    }

    public MotionTelltales(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2896h = new Paint();
        this.f2891c = new float[2];
        this.f2892d = new Matrix();
        this.f2893e = 0;
        this.f2894f = -65281;
        this.f2895g = 0.25f;
        m44765a(context, attributeSet);
    }

    public MotionTelltales(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2896h = new Paint();
        this.f2891c = new float[2];
        this.f2892d = new Matrix();
        this.f2893e = 0;
        this.f2894f = -65281;
        this.f2895g = 0.25f;
        m44765a(context, attributeSet);
    }

    /* renamed from: a */
    private void m44765a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0687e.C0689b.MotionTelltales);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.MotionTelltales_telltales_tailColor) {
                    this.f2894f = obtainStyledAttributes.getColor(index, this.f2894f);
                } else if (index == C0687e.C0689b.MotionTelltales_telltales_velocityMode) {
                    this.f2893e = obtainStyledAttributes.getInt(index, this.f2893e);
                } else if (index == C0687e.C0689b.MotionTelltales_telltales_tailScale) {
                    this.f2895g = obtainStyledAttributes.getFloat(index, this.f2895g);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f2896h.setColor(this.f2894f);
        this.f2896h.setStrokeWidth(5.0f);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // androidx.constraintlayout.utils.widget.MockView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        getMatrix().invert(this.f2892d);
        if (this.f2890b == null) {
            ViewParent parent = getParent();
            if (!(parent instanceof MotionLayout)) {
                return;
            }
            this.f2890b = (MotionLayout) parent;
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float[] fArr = {0.1f, 0.25f, 0.5f, 0.75f, 0.9f};
        int i = 0;
        MotionTelltales motionTelltales = this;
        while (i < 5) {
            float f = fArr[i];
            float[] fArr2 = fArr;
            for (int i2 = 0; i2 < 5; i2++) {
                float f2 = fArr2[i2];
                MotionLayout motionLayout = motionTelltales.f2890b;
                float[] fArr3 = motionTelltales.f2891c;
                int i3 = motionTelltales.f2893e;
                float f3 = motionLayout.f2481d;
                float f4 = motionLayout.f2489l;
                if (motionLayout.f2480c != null) {
                    float signum = Math.signum(motionLayout.f2490m - motionLayout.f2489l);
                    float interpolation = motionLayout.f2480c.getInterpolation(motionLayout.f2489l + 1.0E-5f);
                    f4 = motionLayout.f2480c.getInterpolation(motionLayout.f2489l);
                    f3 = (signum * ((interpolation - f4) / 1.0E-5f)) / motionLayout.f2487j;
                }
                if (motionLayout.f2480c instanceof AbstractanimationInterpolatorC0625n) {
                    f3 = ((AbstractanimationInterpolatorC0625n) motionLayout.f2480c).mo44833a();
                }
                C0624m c0624m = motionLayout.f2486i.get(motionTelltales);
                if ((i3 & 1) == 0) {
                    int width2 = getWidth();
                    int height2 = getHeight();
                    float m44843a = c0624m.m44843a(f4, c0624m.f2726o);
                    AbstractC0598f abstractC0598f = null;
                    AbstractC0631q abstractC0631q = c0624m.f2728q == null ? null : c0624m.f2728q.get("translationX");
                    AbstractC0631q abstractC0631q2 = c0624m.f2728q == null ? null : c0624m.f2728q.get("translationY");
                    AbstractC0631q abstractC0631q3 = c0624m.f2728q == null ? null : c0624m.f2728q.get("rotation");
                    AbstractC0631q abstractC0631q4 = c0624m.f2728q == null ? null : c0624m.f2728q.get("scaleX");
                    AbstractC0631q abstractC0631q5 = c0624m.f2728q == null ? null : c0624m.f2728q.get("scaleY");
                    AbstractC0598f abstractC0598f2 = c0624m.f2729r == null ? null : c0624m.f2729r.get("translationX");
                    AbstractC0598f abstractC0598f3 = c0624m.f2729r == null ? null : c0624m.f2729r.get("translationY");
                    AbstractC0598f abstractC0598f4 = c0624m.f2729r == null ? null : c0624m.f2729r.get("rotation");
                    AbstractC0598f abstractC0598f5 = c0624m.f2729r == null ? null : c0624m.f2729r.get("scaleX");
                    if (c0624m.f2729r != null) {
                        abstractC0598f = c0624m.f2729r.get("scaleY");
                    }
                    C0580h c0580h = new C0580h();
                    c0580h.m45057a();
                    c0580h.m45053a(abstractC0631q3, m44843a);
                    c0580h.m45052a(abstractC0631q, abstractC0631q2, m44843a);
                    c0580h.m45050b(abstractC0631q4, abstractC0631q5, m44843a);
                    c0580h.m45055a(abstractC0598f4, m44843a);
                    c0580h.m45054a(abstractC0598f2, abstractC0598f3, m44843a);
                    c0580h.m45051b(abstractC0598f5, abstractC0598f, m44843a);
                    if (c0624m.f2719h != null) {
                        if (c0624m.f2724m.length > 0) {
                            AbstractC0572b abstractC0572b = c0624m.f2719h;
                            double d = m44843a;
                            abstractC0572b.mo45070a(d, c0624m.f2724m);
                            c0624m.f2719h.mo45066b(d, c0624m.f2725n);
                            C0626o.m44830a(f2, f, fArr3, c0624m.f2723l, c0624m.f2725n);
                        }
                        c0580h.m45056a(f2, f, width2, height2, fArr3);
                    } else if (c0624m.f2718g != null) {
                        float m44843a2 = c0624m.m44843a(m44843a, c0624m.f2726o);
                        AbstractC0572b abstractC0572b2 = c0624m.f2718g[0];
                        double d2 = m44843a2;
                        abstractC0572b2.mo45066b(d2, c0624m.f2725n);
                        c0624m.f2718g[0].mo45070a(d2, c0624m.f2724m);
                        float f5 = c0624m.f2726o[0];
                        for (int i4 = 0; i4 < c0624m.f2725n.length; i4++) {
                            double[] dArr = c0624m.f2725n;
                            dArr[i4] = dArr[i4] * f5;
                        }
                        C0626o.m44830a(f2, f, fArr3, c0624m.f2723l, c0624m.f2725n);
                        c0580h.m45056a(f2, f, width2, height2, fArr3);
                    } else {
                        float f6 = c0624m.f2716e.f2743f - c0624m.f2715d.f2743f;
                        float f7 = c0624m.f2716e.f2744g - c0624m.f2715d.f2744g;
                        float f8 = c0624m.f2716e.f2745h;
                        float f9 = c0624m.f2715d.f2745h;
                        float f10 = c0624m.f2716e.f2746i;
                        float f11 = c0624m.f2715d.f2746i;
                        fArr3[0] = (f6 * (1.0f - f2)) + (((f8 - f9) + f6) * f2);
                        fArr3[1] = (f7 * (1.0f - f)) + (((f10 - f11) + f7) * f);
                        c0580h.m45057a();
                        c0580h.m45053a(abstractC0631q3, m44843a);
                        c0580h.m45052a(abstractC0631q, abstractC0631q2, m44843a);
                        c0580h.m45050b(abstractC0631q4, abstractC0631q5, m44843a);
                        c0580h.m45055a(abstractC0598f4, m44843a);
                        c0580h.m45054a(abstractC0598f2, abstractC0598f3, m44843a);
                        c0580h.m45051b(abstractC0598f5, abstractC0598f, m44843a);
                        c0580h.m45056a(f2, f, width2, height2, fArr3);
                    }
                } else {
                    c0624m.m44844a(f4, f2, f, fArr3);
                }
                if (i3 < 2) {
                    fArr3[0] = fArr3[0] * f3;
                    fArr3[1] = fArr3[1] * f3;
                }
                motionTelltales = this;
                motionTelltales.f2892d.mapVectors(motionTelltales.f2891c);
                float f12 = width * f2;
                float f13 = height * f;
                float[] fArr4 = motionTelltales.f2891c;
                float f14 = fArr4[0];
                float f15 = motionTelltales.f2895g;
                float f16 = fArr4[1];
                motionTelltales.f2892d.mapVectors(fArr4);
                canvas.drawLine(f12, f13, f12 - (f14 * f15), f13 - (f16 * f15), motionTelltales.f2896h);
            }
            i++;
            fArr = fArr2;
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        postInvalidate();
    }

    public void setText(CharSequence charSequence) {
        this.f2879a = charSequence.toString();
        requestLayout();
    }
}
