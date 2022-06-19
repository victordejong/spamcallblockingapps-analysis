package androidx.constraintlayout.motion.widget;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.view.View;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$d.class */
public class MotionLayout$d {

    /* renamed from: a */
    public float[] f626a;

    /* renamed from: d */
    public Path f629d;

    /* renamed from: e */
    public Paint f630e;

    /* renamed from: f */
    public Paint f631f;

    /* renamed from: g */
    public Paint f632g;

    /* renamed from: h */
    public Paint f633h;

    /* renamed from: i */
    public Paint f634i;

    /* renamed from: k */
    public DashPathEffect f636k;

    /* renamed from: l */
    public int f637l;

    /* renamed from: o */
    public int f640o;

    /* renamed from: p */
    public final /* synthetic */ MotionLayout f641p;

    /* renamed from: m */
    public Rect f638m = new Rect();

    /* renamed from: n */
    public boolean f639n = false;

    /* renamed from: j */
    public float[] f635j = new float[8];

    /* renamed from: c */
    public float[] f628c = new float[100];

    /* renamed from: b */
    public int[] f627b = new int[50];

    public MotionLayout$d(MotionLayout motionLayout) {
        this.f641p = motionLayout;
        this.f640o = 1;
        Paint paint = new Paint();
        this.f630e = paint;
        paint.setAntiAlias(true);
        this.f630e.setColor(-21965);
        this.f630e.setStrokeWidth(2.0f);
        this.f630e.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint();
        this.f631f = paint2;
        paint2.setAntiAlias(true);
        this.f631f.setColor(-2067046);
        this.f631f.setStrokeWidth(2.0f);
        this.f631f.setStyle(Paint.Style.STROKE);
        Paint paint3 = new Paint();
        this.f632g = paint3;
        paint3.setAntiAlias(true);
        this.f632g.setColor(-13391360);
        this.f632g.setStrokeWidth(2.0f);
        this.f632g.setStyle(Paint.Style.STROKE);
        Paint paint4 = new Paint();
        this.f633h = paint4;
        paint4.setAntiAlias(true);
        this.f633h.setColor(-13391360);
        this.f633h.setTextSize(motionLayout.getContext().getResources().getDisplayMetrics().density * 12.0f);
        Paint paint5 = new Paint();
        this.f634i = paint5;
        paint5.setAntiAlias(true);
        DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
        this.f636k = dashPathEffect;
        this.f632g.setPathEffect(dashPathEffect);
        if (this.f639n) {
            this.f630e.setStrokeWidth(8.0f);
            this.f634i.setStrokeWidth(8.0f);
            this.f631f.setStrokeWidth(8.0f);
            this.f640o = 4;
        }
    }

    /* renamed from: a */
    public void m6906a(Canvas canvas, HashMap<View, C1345e5> hashMap, int i, int i2) {
        if (hashMap == null || hashMap.size() == 0) {
            return;
        }
        canvas.save();
        if (!this.f641p.isInEditMode() && (i2 & 1) == 2) {
            String str = this.f641p.getContext().getResources().getResourceName(MotionLayout.i(this.f641p)) + ":" + this.f641p.getProgress();
            canvas.drawText(str, 10.0f, this.f641p.getHeight() - 30, this.f633h);
            canvas.drawText(str, 11.0f, this.f641p.getHeight() - 29, this.f630e);
        }
        for (C1345e5 c1345e5 : hashMap.values()) {
            int m2234h = c1345e5.m2234h();
            int i3 = m2234h;
            if (i2 > 0) {
                i3 = m2234h;
                if (m2234h == 0) {
                    i3 = 1;
                }
            }
            if (i3 != 0) {
                this.f637l = c1345e5.m2239c(this.f628c, this.f627b);
                if (i3 >= 1) {
                    int i4 = i / 16;
                    float[] fArr = this.f626a;
                    if (fArr == null || fArr.length != i4 * 2) {
                        this.f626a = new float[i4 * 2];
                        this.f629d = new Path();
                    }
                    int i5 = this.f640o;
                    canvas.translate(i5, i5);
                    this.f630e.setColor(1996488704);
                    this.f634i.setColor(1996488704);
                    this.f631f.setColor(1996488704);
                    this.f632g.setColor(1996488704);
                    c1345e5.m2238d(this.f626a, i4);
                    m6905b(canvas, i3, this.f637l, c1345e5);
                    this.f630e.setColor(-21965);
                    this.f631f.setColor(-2067046);
                    this.f634i.setColor(-2067046);
                    this.f632g.setColor(-13391360);
                    int i6 = this.f640o;
                    canvas.translate(-i6, -i6);
                    m6905b(canvas, i3, this.f637l, c1345e5);
                    if (i3 == 5) {
                        m6897j(canvas, c1345e5);
                    }
                }
            }
        }
        canvas.restore();
    }

    /* renamed from: b */
    public void m6905b(Canvas canvas, int i, int i2, C1345e5 c1345e5) {
        if (i == 4) {
            m6903d(canvas);
        }
        if (i == 2) {
            m6900g(canvas);
        }
        if (i == 3) {
            m6902e(canvas);
        }
        m6904c(canvas);
        m6896k(canvas, i, i2, c1345e5);
    }

    /* renamed from: c */
    public final void m6904c(Canvas canvas) {
        canvas.drawLines(this.f626a, this.f630e);
    }

    /* renamed from: d */
    public final void m6903d(Canvas canvas) {
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < this.f637l; i++) {
            int[] iArr = this.f627b;
            if (iArr[i] == 1) {
                z = true;
            }
            if (iArr[i] == 2) {
                z2 = true;
            }
        }
        if (z) {
            m6900g(canvas);
        }
        if (z2) {
            m6902e(canvas);
        }
    }

    /* renamed from: e */
    public final void m6902e(Canvas canvas) {
        float[] fArr = this.f626a;
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[fArr.length - 2];
        float f4 = fArr[fArr.length - 1];
        canvas.drawLine(Math.min(f, f3), Math.max(f2, f4), Math.max(f, f3), Math.max(f2, f4), this.f632g);
        canvas.drawLine(Math.min(f, f3), Math.min(f2, f4), Math.min(f, f3), Math.max(f2, f4), this.f632g);
    }

    /* renamed from: f */
    public final void m6901f(Canvas canvas, float f, float f2) {
        float[] fArr = this.f626a;
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = fArr[fArr.length - 2];
        float f6 = fArr[fArr.length - 1];
        float min = Math.min(f3, f5);
        float max = Math.max(f4, f6);
        float min2 = f - Math.min(f3, f5);
        float max2 = Math.max(f4, f6) - f2;
        String str = "" + (((int) (((min2 * 100.0f) / Math.abs(f5 - f3)) + 0.5d)) / 100.0f);
        m6895l(str, this.f633h);
        canvas.drawText(str, ((min2 / 2.0f) - (this.f638m.width() / 2)) + min, f2 - 20.0f, this.f633h);
        canvas.drawLine(f, f2, Math.min(f3, f5), f2, this.f632g);
        String str2 = "" + (((int) (((max2 * 100.0f) / Math.abs(f6 - f4)) + 0.5d)) / 100.0f);
        m6895l(str2, this.f633h);
        canvas.drawText(str2, f + 5.0f, max - ((max2 / 2.0f) - (this.f638m.height() / 2)), this.f633h);
        canvas.drawLine(f, f2, f, Math.max(f4, f6), this.f632g);
    }

    /* renamed from: g */
    public final void m6900g(Canvas canvas) {
        float[] fArr = this.f626a;
        canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.f632g);
    }

    /* renamed from: h */
    public final void m6899h(Canvas canvas, float f, float f2) {
        float[] fArr = this.f626a;
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = fArr[fArr.length - 2];
        float f6 = fArr[fArr.length - 1];
        float hypot = (float) Math.hypot(f3 - f5, f4 - f6);
        float f7 = f5 - f3;
        float f8 = f6 - f4;
        float f9 = (((f - f3) * f7) + ((f2 - f4) * f8)) / (hypot * hypot);
        float f10 = f3 + (f7 * f9);
        float f11 = f4 + (f9 * f8);
        Path path = new Path();
        path.moveTo(f, f2);
        path.lineTo(f10, f11);
        float hypot2 = (float) Math.hypot(f10 - f, f11 - f2);
        String str = "" + (((int) ((hypot2 * 100.0f) / hypot)) / 100.0f);
        m6895l(str, this.f633h);
        canvas.drawTextOnPath(str, path, (hypot2 / 2.0f) - (this.f638m.width() / 2), -20.0f, this.f633h);
        canvas.drawLine(f, f2, f10, f11, this.f632g);
    }

    /* renamed from: i */
    public final void m6898i(Canvas canvas, float f, float f2, int i, int i2) {
        String str = "" + (((int) ((((f - (i / 2)) * 100.0f) / (this.f641p.getWidth() - i)) + 0.5d)) / 100.0f);
        m6895l(str, this.f633h);
        canvas.drawText(str, ((f / 2.0f) - (this.f638m.width() / 2)) + 0.0f, f2 - 20.0f, this.f633h);
        canvas.drawLine(f, f2, Math.min(0.0f, 1.0f), f2, this.f632g);
        String str2 = "" + (((int) ((((f2 - (i2 / 2)) * 100.0f) / (this.f641p.getHeight() - i2)) + 0.5d)) / 100.0f);
        m6895l(str2, this.f633h);
        canvas.drawText(str2, f + 5.0f, 0.0f - ((f2 / 2.0f) - (this.f638m.height() / 2)), this.f633h);
        canvas.drawLine(f, f2, f, Math.max(0.0f, 1.0f), this.f632g);
    }

    /* renamed from: j */
    public final void m6897j(Canvas canvas, C1345e5 c1345e5) {
        this.f629d.reset();
        for (int i = 0; i <= 50; i++) {
            c1345e5.m2237e(i / 50, this.f635j, 0);
            Path path = this.f629d;
            float[] fArr = this.f635j;
            path.moveTo(fArr[0], fArr[1]);
            Path path2 = this.f629d;
            float[] fArr2 = this.f635j;
            path2.lineTo(fArr2[2], fArr2[3]);
            Path path3 = this.f629d;
            float[] fArr3 = this.f635j;
            path3.lineTo(fArr3[4], fArr3[5]);
            Path path4 = this.f629d;
            float[] fArr4 = this.f635j;
            path4.lineTo(fArr4[6], fArr4[7]);
            this.f629d.close();
        }
        this.f630e.setColor(1140850688);
        canvas.translate(2.0f, 2.0f);
        canvas.drawPath(this.f629d, this.f630e);
        canvas.translate(-2.0f, -2.0f);
        this.f630e.setColor(-65536);
        canvas.drawPath(this.f629d, this.f630e);
    }

    /* renamed from: k */
    public final void m6896k(Canvas canvas, int i, int i2, C1345e5 c1345e5) {
        int i3;
        int i4;
        View view = c1345e5.f6270a;
        if (view != null) {
            i4 = view.getWidth();
            i3 = c1345e5.f6270a.getHeight();
        } else {
            i4 = 0;
            i3 = 0;
        }
        for (int i5 = 1; i5 < i2 - 1; i5++) {
            if (i != 4 || this.f627b[i5 - 1] != 0) {
                float[] fArr = this.f628c;
                int i6 = i5 * 2;
                float f = fArr[i6];
                float f2 = fArr[i6 + 1];
                this.f629d.reset();
                this.f629d.moveTo(f, f2 + 10.0f);
                this.f629d.lineTo(f + 10.0f, f2);
                this.f629d.lineTo(f, f2 - 10.0f);
                this.f629d.lineTo(f - 10.0f, f2);
                this.f629d.close();
                int i7 = i5 - 1;
                c1345e5.m2231k(i7);
                if (i == 4) {
                    int[] iArr = this.f627b;
                    if (iArr[i7] == 1) {
                        m6899h(canvas, f - 0.0f, f2 - 0.0f);
                    } else if (iArr[i7] == 2) {
                        m6901f(canvas, f - 0.0f, f2 - 0.0f);
                    } else if (iArr[i7] == 3) {
                        m6898i(canvas, f - 0.0f, f2 - 0.0f, i4, i3);
                    }
                    canvas.drawPath(this.f629d, this.f634i);
                }
                if (i == 2) {
                    m6899h(canvas, f - 0.0f, f2 - 0.0f);
                }
                if (i == 3) {
                    m6901f(canvas, f - 0.0f, f2 - 0.0f);
                }
                if (i == 6) {
                    m6898i(canvas, f - 0.0f, f2 - 0.0f, i4, i3);
                }
                canvas.drawPath(this.f629d, this.f634i);
            }
        }
        float[] fArr2 = this.f626a;
        if (fArr2.length > 1) {
            canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.f631f);
            float[] fArr3 = this.f626a;
            canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.f631f);
        }
    }

    /* renamed from: l */
    public void m6895l(String str, Paint paint) {
        paint.getTextBounds(str, 0, str.length(), this.f638m);
    }
}
