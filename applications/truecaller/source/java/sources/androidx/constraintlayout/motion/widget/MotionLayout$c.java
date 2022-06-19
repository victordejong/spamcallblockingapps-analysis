package androidx.constraintlayout.motion.widget;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.view.View;
import p1727n3.p1795i.p1796a.p1798b.C26310m;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$c.class */
public class MotionLayout$c {

    /* renamed from: a */
    public float[] f541a;

    /* renamed from: d */
    public Path f544d;

    /* renamed from: e */
    public Paint f545e;

    /* renamed from: f */
    public Paint f546f;

    /* renamed from: g */
    public Paint f547g;

    /* renamed from: h */
    public Paint f548h;

    /* renamed from: i */
    public Paint f549i;

    /* renamed from: k */
    public DashPathEffect f551k;

    /* renamed from: l */
    public int f552l;

    /* renamed from: o */
    public final /* synthetic */ MotionLayout f555o;

    /* renamed from: m */
    public Rect f553m = new Rect();

    /* renamed from: n */
    public int f554n = 1;

    /* renamed from: j */
    public float[] f550j = new float[8];

    /* renamed from: c */
    public float[] f543c = new float[100];

    /* renamed from: b */
    public int[] f542b = new int[50];

    public MotionLayout$c(MotionLayout motionLayout) {
        this.f555o = motionLayout;
        Paint paint = new Paint();
        this.f545e = paint;
        paint.setAntiAlias(true);
        this.f545e.setColor(-21965);
        this.f545e.setStrokeWidth(2.0f);
        this.f545e.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint();
        this.f546f = paint2;
        paint2.setAntiAlias(true);
        this.f546f.setColor(-2067046);
        this.f546f.setStrokeWidth(2.0f);
        this.f546f.setStyle(Paint.Style.STROKE);
        Paint paint3 = new Paint();
        this.f547g = paint3;
        paint3.setAntiAlias(true);
        this.f547g.setColor(-13391360);
        this.f547g.setStrokeWidth(2.0f);
        this.f547g.setStyle(Paint.Style.STROKE);
        Paint paint4 = new Paint();
        this.f548h = paint4;
        paint4.setAntiAlias(true);
        this.f548h.setColor(-13391360);
        this.f548h.setTextSize(motionLayout.getContext().getResources().getDisplayMetrics().density * 12.0f);
        Paint paint5 = new Paint();
        this.f549i = paint5;
        paint5.setAntiAlias(true);
        DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
        this.f551k = dashPathEffect;
        this.f547g.setPathEffect(dashPathEffect);
    }

    /* renamed from: a */
    public void m43053a(Canvas canvas, int i, int i2, C26310m c26310m) {
        int i3;
        int i4;
        if (i == 4) {
            boolean z = false;
            boolean z2 = false;
            for (int i5 = 0; i5 < this.f552l; i5++) {
                int[] iArr = this.f542b;
                if (iArr[i5] == 1) {
                    z2 = true;
                }
                if (iArr[i5] == 2) {
                    z = true;
                }
            }
            if (z2) {
                m43050d(canvas);
            }
            if (z) {
                m43052b(canvas);
            }
        }
        if (i == 2) {
            m43050d(canvas);
        }
        if (i == 3) {
            m43052b(canvas);
        }
        canvas.drawLines(this.f541a, this.f545e);
        View view = c26310m.f73428a;
        if (view != null) {
            i3 = view.getWidth();
            i4 = c26310m.f73428a.getHeight();
        } else {
            i3 = 0;
            i4 = 0;
        }
        for (int i6 = 1; i6 < i2 - 1; i6++) {
            if (i != 4 || this.f542b[i6 - 1] != 0) {
                float[] fArr = this.f543c;
                int i7 = i6 * 2;
                float f = fArr[i7];
                float f2 = fArr[i7 + 1];
                this.f544d.reset();
                this.f544d.moveTo(f, f2 + 10.0f);
                this.f544d.lineTo(f + 10.0f, f2);
                this.f544d.lineTo(f, f2 - 10.0f);
                this.f544d.lineTo(f - 10.0f, f2);
                this.f544d.close();
                int i8 = i6 - 1;
                c26310m.f73447t.get(i8);
                if (i == 4) {
                    int[] iArr2 = this.f542b;
                    if (iArr2[i8] == 1) {
                        m43049e(canvas, f - 0.0f, f2 - 0.0f);
                    } else if (iArr2[i8] == 2) {
                        m43051c(canvas, f - 0.0f, f2 - 0.0f);
                    } else if (iArr2[i8] == 3) {
                        m43048f(canvas, f - 0.0f, f2 - 0.0f, i3, i4);
                    }
                    canvas.drawPath(this.f544d, this.f549i);
                }
                if (i == 2) {
                    m43049e(canvas, f - 0.0f, f2 - 0.0f);
                }
                if (i == 3) {
                    m43051c(canvas, f - 0.0f, f2 - 0.0f);
                }
                if (i == 6) {
                    m43048f(canvas, f - 0.0f, f2 - 0.0f, i3, i4);
                }
                canvas.drawPath(this.f544d, this.f549i);
            }
        }
        float[] fArr2 = this.f541a;
        if (fArr2.length > 1) {
            canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.f546f);
            float[] fArr3 = this.f541a;
            canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.f546f);
        }
    }

    /* renamed from: b */
    public final void m43052b(Canvas canvas) {
        float[] fArr = this.f541a;
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[fArr.length - 2];
        float f4 = fArr[fArr.length - 1];
        canvas.drawLine(Math.min(f, f3), Math.max(f2, f4), Math.max(f, f3), Math.max(f2, f4), this.f547g);
        canvas.drawLine(Math.min(f, f3), Math.min(f2, f4), Math.min(f, f3), Math.max(f2, f4), this.f547g);
    }

    /* renamed from: c */
    public final void m43051c(Canvas canvas, float f, float f2) {
        float[] fArr = this.f541a;
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = fArr[fArr.length - 2];
        float f6 = fArr[fArr.length - 1];
        float min = Math.min(f3, f5);
        float max = Math.max(f4, f6);
        float min2 = f - Math.min(f3, f5);
        float max2 = Math.max(f4, f6) - f2;
        StringBuilder m8728C = C22128a.m8728C("");
        m8728C.append(((int) (((min2 * 100.0f) / Math.abs(f5 - f3)) + 0.5d)) / 100.0f);
        String sb = m8728C.toString();
        m43047g(sb, this.f548h);
        canvas.drawText(sb, ((min2 / 2.0f) - (this.f553m.width() / 2)) + min, f2 - 20.0f, this.f548h);
        canvas.drawLine(f, f2, Math.min(f3, f5), f2, this.f547g);
        StringBuilder m8728C2 = C22128a.m8728C("");
        m8728C2.append(((int) (((max2 * 100.0f) / Math.abs(f6 - f4)) + 0.5d)) / 100.0f);
        String sb2 = m8728C2.toString();
        m43047g(sb2, this.f548h);
        canvas.drawText(sb2, f + 5.0f, max - ((max2 / 2.0f) - (this.f553m.height() / 2)), this.f548h);
        canvas.drawLine(f, f2, f, Math.max(f4, f6), this.f547g);
    }

    /* renamed from: d */
    public final void m43050d(Canvas canvas) {
        float[] fArr = this.f541a;
        canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.f547g);
    }

    /* renamed from: e */
    public final void m43049e(Canvas canvas, float f, float f2) {
        float[] fArr = this.f541a;
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = fArr[fArr.length - 2];
        float f6 = fArr[fArr.length - 1];
        float hypot = (float) Math.hypot(f3 - f5, f4 - f6);
        float f7 = f5 - f3;
        float f8 = f6 - f4;
        float f9 = (((f2 - f4) * f8) + ((f - f3) * f7)) / (hypot * hypot);
        float f10 = f3 + (f7 * f9);
        float f11 = f4 + (f9 * f8);
        Path path = new Path();
        path.moveTo(f, f2);
        path.lineTo(f10, f11);
        float hypot2 = (float) Math.hypot(f10 - f, f11 - f2);
        StringBuilder m8728C = C22128a.m8728C("");
        m8728C.append(((int) ((hypot2 * 100.0f) / hypot)) / 100.0f);
        String sb = m8728C.toString();
        m43047g(sb, this.f548h);
        canvas.drawTextOnPath(sb, path, (hypot2 / 2.0f) - (this.f553m.width() / 2), -20.0f, this.f548h);
        canvas.drawLine(f, f2, f10, f11, this.f547g);
    }

    /* renamed from: f */
    public final void m43048f(Canvas canvas, float f, float f2, int i, int i2) {
        StringBuilder m8728C = C22128a.m8728C("");
        m8728C.append(((int) ((((f - (i / 2)) * 100.0f) / (this.f555o.getWidth() - i)) + 0.5d)) / 100.0f);
        String sb = m8728C.toString();
        m43047g(sb, this.f548h);
        canvas.drawText(sb, ((f / 2.0f) - (this.f553m.width() / 2)) + 0.0f, f2 - 20.0f, this.f548h);
        canvas.drawLine(f, f2, Math.min(0.0f, 1.0f), f2, this.f547g);
        StringBuilder m8728C2 = C22128a.m8728C("");
        m8728C2.append(((int) ((((f2 - (i2 / 2)) * 100.0f) / (this.f555o.getHeight() - i2)) + 0.5d)) / 100.0f);
        String sb2 = m8728C2.toString();
        m43047g(sb2, this.f548h);
        canvas.drawText(sb2, f + 5.0f, 0.0f - ((f2 / 2.0f) - (this.f553m.height() / 2)), this.f548h);
        canvas.drawLine(f, f2, f, Math.max(0.0f, 1.0f), this.f547g);
    }

    /* renamed from: g */
    public void m43047g(String str, Paint paint) {
        paint.getTextBounds(str, 0, str.length(), this.f553m);
    }
}
