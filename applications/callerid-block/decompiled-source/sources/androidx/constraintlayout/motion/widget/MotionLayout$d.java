package androidx.constraintlayout.motion.widget;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.view.View;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$d.class */
class MotionLayout$d {

    /* renamed from: a */
    float[] f808a;

    /* renamed from: d */
    Path f811d;

    /* renamed from: e */
    Paint f812e;

    /* renamed from: f */
    Paint f813f;

    /* renamed from: g */
    Paint f814g;

    /* renamed from: h */
    Paint f815h;

    /* renamed from: i */
    Paint f816i;

    /* renamed from: k */
    DashPathEffect f818k;

    /* renamed from: l */
    int f819l;

    /* renamed from: o */
    int f822o;

    /* renamed from: p */
    final /* synthetic */ MotionLayout f823p;

    /* renamed from: m */
    Rect f820m = new Rect();

    /* renamed from: n */
    boolean f821n = false;

    /* renamed from: j */
    private float[] f817j = new float[8];

    /* renamed from: c */
    float[] f810c = new float[100];

    /* renamed from: b */
    int[] f809b = new int[50];

    public MotionLayout$d(MotionLayout motionLayout) {
        this.f823p = motionLayout;
        this.f822o = 1;
        Paint paint = new Paint();
        this.f812e = paint;
        paint.setAntiAlias(true);
        this.f812e.setColor(-21965);
        this.f812e.setStrokeWidth(2.0f);
        this.f812e.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint();
        this.f813f = paint2;
        paint2.setAntiAlias(true);
        this.f813f.setColor(-2067046);
        this.f813f.setStrokeWidth(2.0f);
        this.f813f.setStyle(Paint.Style.STROKE);
        Paint paint3 = new Paint();
        this.f814g = paint3;
        paint3.setAntiAlias(true);
        this.f814g.setColor(-13391360);
        this.f814g.setStrokeWidth(2.0f);
        this.f814g.setStyle(Paint.Style.STROKE);
        Paint paint4 = new Paint();
        this.f815h = paint4;
        paint4.setAntiAlias(true);
        this.f815h.setColor(-13391360);
        this.f815h.setTextSize(motionLayout.getContext().getResources().getDisplayMetrics().density * 12.0f);
        Paint paint5 = new Paint();
        this.f816i = paint5;
        paint5.setAntiAlias(true);
        DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
        this.f818k = dashPathEffect;
        this.f814g.setPathEffect(dashPathEffect);
        if (this.f821n) {
            this.f812e.setStrokeWidth(8.0f);
            this.f816i.setStrokeWidth(8.0f);
            this.f813f.setStrokeWidth(8.0f);
            this.f822o = 4;
        }
    }

    /* renamed from: c */
    private void m14320c(Canvas canvas) {
        canvas.drawLines(this.f808a, this.f812e);
    }

    /* renamed from: d */
    private void m14319d(Canvas canvas) {
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < this.f819l; i++) {
            int[] iArr = this.f809b;
            if (iArr[i] == 1) {
                z = true;
            }
            if (iArr[i] == 2) {
                z2 = true;
            }
        }
        if (z) {
            m14316g(canvas);
        }
        if (z2) {
            m14318e(canvas);
        }
    }

    /* renamed from: e */
    private void m14318e(Canvas canvas) {
        float[] fArr = this.f808a;
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[fArr.length - 2];
        float f4 = fArr[fArr.length - 1];
        canvas.drawLine(Math.min(f, f3), Math.max(f2, f4), Math.max(f, f3), Math.max(f2, f4), this.f814g);
        canvas.drawLine(Math.min(f, f3), Math.min(f2, f4), Math.min(f, f3), Math.max(f2, f4), this.f814g);
    }

    /* renamed from: f */
    private void m14317f(Canvas canvas, float f, float f2) {
        double d;
        double d2;
        float[] fArr = this.f808a;
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = fArr[fArr.length - 2];
        float f6 = fArr[fArr.length - 1];
        float min = Math.min(f3, f5);
        float max = Math.max(f4, f6);
        float min2 = f - Math.min(f3, f5);
        float max2 = Math.max(f4, f6) - f2;
        StringBuilder sb = new StringBuilder();
        sb.append("");
        Double.isNaN((min2 * 100.0f) / Math.abs(f5 - f3));
        sb.append(((int) (d + 0.5d)) / 100.0f);
        String sb2 = sb.toString();
        m14311l(sb2, this.f815h);
        canvas.drawText(sb2, ((min2 / 2.0f) - (this.f820m.width() / 2)) + min, f2 - 20.0f, this.f815h);
        canvas.drawLine(f, f2, Math.min(f3, f5), f2, this.f814g);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("");
        Double.isNaN((max2 * 100.0f) / Math.abs(f6 - f4));
        sb3.append(((int) (d2 + 0.5d)) / 100.0f);
        String sb4 = sb3.toString();
        m14311l(sb4, this.f815h);
        canvas.drawText(sb4, f + 5.0f, max - ((max2 / 2.0f) - (this.f820m.height() / 2)), this.f815h);
        canvas.drawLine(f, f2, f, Math.max(f4, f6), this.f814g);
    }

    /* renamed from: g */
    private void m14316g(Canvas canvas) {
        float[] fArr = this.f808a;
        canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.f814g);
    }

    /* renamed from: h */
    private void m14315h(Canvas canvas, float f, float f2) {
        float[] fArr = this.f808a;
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
        m14311l(str, this.f815h);
        canvas.drawTextOnPath(str, path, (hypot2 / 2.0f) - (this.f820m.width() / 2), -20.0f, this.f815h);
        canvas.drawLine(f, f2, f10, f11, this.f814g);
    }

    /* renamed from: i */
    private void m14314i(Canvas canvas, float f, float f2, int i, int i2) {
        double d;
        double d2;
        StringBuilder sb = new StringBuilder();
        sb.append("");
        Double.isNaN(((f - (i / 2)) * 100.0f) / (this.f823p.getWidth() - i));
        sb.append(((int) (d + 0.5d)) / 100.0f);
        String sb2 = sb.toString();
        m14311l(sb2, this.f815h);
        canvas.drawText(sb2, ((f / 2.0f) - (this.f820m.width() / 2)) + 0.0f, f2 - 20.0f, this.f815h);
        canvas.drawLine(f, f2, Math.min(0.0f, 1.0f), f2, this.f814g);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("");
        Double.isNaN(((f2 - (i2 / 2)) * 100.0f) / (this.f823p.getHeight() - i2));
        sb3.append(((int) (d2 + 0.5d)) / 100.0f);
        String sb4 = sb3.toString();
        m14311l(sb4, this.f815h);
        canvas.drawText(sb4, f + 5.0f, 0.0f - ((f2 / 2.0f) - (this.f820m.height() / 2)), this.f815h);
        canvas.drawLine(f, f2, f, Math.max(0.0f, 1.0f), this.f814g);
    }

    /* renamed from: j */
    private void m14313j(Canvas canvas, C0185n nVar) {
        this.f811d.reset();
        for (int i = 0; i <= 50; i++) {
            nVar.m14236e(i / 50, this.f817j, 0);
            Path path = this.f811d;
            float[] fArr = this.f817j;
            path.moveTo(fArr[0], fArr[1]);
            Path path2 = this.f811d;
            float[] fArr2 = this.f817j;
            path2.lineTo(fArr2[2], fArr2[3]);
            Path path3 = this.f811d;
            float[] fArr3 = this.f817j;
            path3.lineTo(fArr3[4], fArr3[5]);
            Path path4 = this.f811d;
            float[] fArr4 = this.f817j;
            path4.lineTo(fArr4[6], fArr4[7]);
            this.f811d.close();
        }
        this.f812e.setColor(1140850688);
        canvas.translate(2.0f, 2.0f);
        canvas.drawPath(this.f811d, this.f812e);
        canvas.translate(-2.0f, -2.0f);
        this.f812e.setColor(-65536);
        canvas.drawPath(this.f811d, this.f812e);
    }

    /* renamed from: k */
    private void m14312k(Canvas canvas, int i, int i2, C0185n nVar) {
        int i3;
        int i4;
        View view = nVar.f888a;
        if (view != null) {
            i4 = view.getWidth();
            i3 = nVar.f888a.getHeight();
        } else {
            i4 = 0;
            i3 = 0;
        }
        for (int i5 = 1; i5 < i2 - 1; i5++) {
            if (i != 4 || this.f809b[i5 - 1] != 0) {
                float[] fArr = this.f810c;
                int i6 = i5 * 2;
                float f = fArr[i6];
                float f2 = fArr[i6 + 1];
                this.f811d.reset();
                this.f811d.moveTo(f, f2 + 10.0f);
                this.f811d.lineTo(f + 10.0f, f2);
                this.f811d.lineTo(f, f2 - 10.0f);
                this.f811d.lineTo(f - 10.0f, f2);
                this.f811d.close();
                int i7 = i5 - 1;
                nVar.m14230k(i7);
                if (i == 4) {
                    int[] iArr = this.f809b;
                    if (iArr[i7] == 1) {
                        m14315h(canvas, f - 0.0f, f2 - 0.0f);
                    } else if (iArr[i7] == 2) {
                        m14317f(canvas, f - 0.0f, f2 - 0.0f);
                    } else if (iArr[i7] == 3) {
                        m14314i(canvas, f - 0.0f, f2 - 0.0f, i4, i3);
                    }
                    canvas.drawPath(this.f811d, this.f816i);
                }
                if (i == 2) {
                    m14315h(canvas, f - 0.0f, f2 - 0.0f);
                }
                if (i == 3) {
                    m14317f(canvas, f - 0.0f, f2 - 0.0f);
                }
                if (i == 6) {
                    m14314i(canvas, f - 0.0f, f2 - 0.0f, i4, i3);
                }
                canvas.drawPath(this.f811d, this.f816i);
            }
        }
        float[] fArr2 = this.f808a;
        if (fArr2.length > 1) {
            canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.f813f);
            float[] fArr3 = this.f808a;
            canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.f813f);
        }
    }

    /* renamed from: a */
    public void m14322a(Canvas canvas, HashMap<View, C0185n> hashMap, int i, int i2) {
        if (!(hashMap == null || hashMap.size() == 0)) {
            canvas.save();
            if (!this.f823p.isInEditMode() && (i2 & 1) == 2) {
                String str = this.f823p.getContext().getResources().getResourceName(MotionLayout.y(this.f823p)) + ":" + this.f823p.getProgress();
                canvas.drawText(str, 10.0f, this.f823p.getHeight() - 30, this.f815h);
                canvas.drawText(str, 11.0f, this.f823p.getHeight() - 29, this.f812e);
            }
            for (C0185n nVar : hashMap.values()) {
                int h = nVar.m14233h();
                int i3 = h;
                if (i2 > 0) {
                    i3 = h;
                    if (h == 0) {
                        i3 = 1;
                    }
                }
                if (i3 != 0) {
                    this.f819l = nVar.m14238c(this.f810c, this.f809b);
                    if (i3 >= 1) {
                        int i4 = i / 16;
                        float[] fArr = this.f808a;
                        if (fArr == null || fArr.length != i4 * 2) {
                            this.f808a = new float[i4 * 2];
                            this.f811d = new Path();
                        }
                        int i5 = this.f822o;
                        canvas.translate(i5, i5);
                        this.f812e.setColor(1996488704);
                        this.f816i.setColor(1996488704);
                        this.f813f.setColor(1996488704);
                        this.f814g.setColor(1996488704);
                        nVar.m14237d(this.f808a, i4);
                        m14321b(canvas, i3, this.f819l, nVar);
                        this.f812e.setColor(-21965);
                        this.f813f.setColor(-2067046);
                        this.f816i.setColor(-2067046);
                        this.f814g.setColor(-13391360);
                        int i6 = this.f822o;
                        canvas.translate(-i6, -i6);
                        m14321b(canvas, i3, this.f819l, nVar);
                        if (i3 == 5) {
                            m14313j(canvas, nVar);
                        }
                    }
                }
            }
            canvas.restore();
        }
    }

    /* renamed from: b */
    public void m14321b(Canvas canvas, int i, int i2, C0185n nVar) {
        if (i == 4) {
            m14319d(canvas);
        }
        if (i == 2) {
            m14316g(canvas);
        }
        if (i == 3) {
            m14318e(canvas);
        }
        m14320c(canvas);
        m14312k(canvas, i, i2, nVar);
    }

    /* renamed from: l */
    void m14311l(String str, Paint paint) {
        paint.getTextBounds(str, 0, str.length(), this.f820m);
    }
}
