package com.bytedance.sdk.openadsdk.adapter;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/adapter/NiceImageView.class */
public class NiceImageView extends ImageView {

    /* renamed from: a */
    private Context f15959a;

    /* renamed from: b */
    private boolean f15960b;

    /* renamed from: c */
    private boolean f15961c;

    /* renamed from: d */
    private int f15962d;

    /* renamed from: e */
    private int f15963e;

    /* renamed from: f */
    private int f15964f;

    /* renamed from: g */
    private int f15965g;

    /* renamed from: h */
    private int f15966h;

    /* renamed from: i */
    private int f15967i;

    /* renamed from: j */
    private int f15968j;

    /* renamed from: k */
    private int f15969k;

    /* renamed from: l */
    private int f15970l;

    /* renamed from: m */
    private int f15971m;

    /* renamed from: n */
    private Xfermode f15972n;

    /* renamed from: o */
    private int f15973o;

    /* renamed from: p */
    private int f15974p;

    /* renamed from: q */
    private float f15975q;

    /* renamed from: r */
    private float[] f15976r;

    /* renamed from: s */
    private float[] f15977s;

    /* renamed from: t */
    private RectF f15978t;

    /* renamed from: u */
    private RectF f15979u;

    /* renamed from: v */
    private Paint f15980v;

    /* renamed from: w */
    private Path f15981w;

    /* renamed from: x */
    private Path f15982x;

    public NiceImageView(Context context) {
        this(context, null);
    }

    public NiceImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NiceImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f15963e = -1;
        this.f15965g = -1;
        this.f15959a = context;
        this.f15966h = C5443ag.m32217c(context, 10.0f);
        this.f15976r = new float[8];
        this.f15977s = new float[8];
        this.f15979u = new RectF();
        this.f15978t = new RectF();
        this.f15980v = new Paint();
        this.f15981w = new Path();
        if (Build.VERSION.SDK_INT <= 27) {
            this.f15972n = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        } else {
            this.f15972n = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
            this.f15982x = new Path();
        }
        m35755c();
        m35754d();
    }

    /* renamed from: a */
    private void m35762a() {
        if (!this.f15960b) {
            RectF rectF = this.f15979u;
            int i = this.f15962d;
            rectF.set(i / 2.0f, i / 2.0f, this.f15973o - (i / 2.0f), this.f15974p - (i / 2.0f));
        }
    }

    /* renamed from: a */
    private void m35761a(int i, int i2) {
        this.f15981w.reset();
        this.f15980v.setStrokeWidth(i);
        this.f15980v.setColor(i2);
        this.f15980v.setStyle(Paint.Style.STROKE);
    }

    /* renamed from: a */
    private void m35760a(Canvas canvas) {
        if (!this.f15960b) {
            int i = this.f15962d;
            if (i <= 0) {
                return;
            }
            m35758a(canvas, i, this.f15963e, this.f15979u, this.f15976r);
            return;
        }
        int i2 = this.f15962d;
        if (i2 > 0) {
            m35759a(canvas, i2, this.f15963e, this.f15975q - (i2 / 2.0f));
        }
        int i3 = this.f15964f;
        if (i3 <= 0) {
            return;
        }
        m35759a(canvas, i3, this.f15965g, (this.f15975q - this.f15962d) - (i3 / 2.0f));
    }

    /* renamed from: a */
    private void m35759a(Canvas canvas, int i, int i2, float f) {
        m35761a(i, i2);
        this.f15981w.addCircle(this.f15973o / 2.0f, this.f15974p / 2.0f, f, Path.Direction.CCW);
        canvas.drawPath(this.f15981w, this.f15980v);
    }

    /* renamed from: a */
    private void m35758a(Canvas canvas, int i, int i2, RectF rectF, float[] fArr) {
        m35761a(i, i2);
        this.f15981w.addRoundRect(rectF, fArr, Path.Direction.CCW);
        canvas.drawPath(this.f15981w, this.f15980v);
    }

    /* renamed from: a */
    private void m35757a(boolean z) {
        if (z) {
            this.f15966h = 0;
        }
        m35755c();
        m35762a();
        invalidate();
    }

    /* renamed from: b */
    private void m35756b() {
        if (!this.f15960b) {
            this.f15978t.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f15973o, this.f15974p);
            if (!this.f15961c) {
                return;
            }
            this.f15978t = this.f15979u;
            return;
        }
        float min = Math.min(this.f15973o, this.f15974p) / 2.0f;
        this.f15975q = min;
        RectF rectF = this.f15978t;
        int i = this.f15973o;
        float f = i / 2.0f;
        int i2 = this.f15974p;
        rectF.set(f - min, (i2 / 2.0f) - min, (i / 2.0f) + min, (i2 / 2.0f) + min);
    }

    /* renamed from: c */
    private void m35755c() {
        if (this.f15960b) {
            return;
        }
        int i = 0;
        if (this.f15966h <= 0) {
            float[] fArr = this.f15976r;
            int i2 = this.f15967i;
            float f = i2;
            fArr[1] = f;
            fArr[0] = f;
            int i3 = this.f15968j;
            float f2 = i3;
            fArr[3] = f2;
            fArr[2] = f2;
            int i4 = this.f15970l;
            float f3 = i4;
            fArr[5] = f3;
            fArr[4] = f3;
            int i5 = this.f15969k;
            float f4 = i5;
            fArr[7] = f4;
            fArr[6] = f4;
            float[] fArr2 = this.f15977s;
            float f5 = i2;
            int i6 = this.f15962d;
            float f6 = f5 - (i6 / 2.0f);
            fArr2[1] = f6;
            fArr2[0] = f6;
            float f7 = i3 - (i6 / 2.0f);
            fArr2[3] = f7;
            fArr2[2] = f7;
            float f8 = i4 - (i6 / 2.0f);
            fArr2[5] = f8;
            fArr2[4] = f8;
            float f9 = i5 - (i6 / 2.0f);
            fArr2[7] = f9;
            fArr2[6] = f9;
            return;
        }
        while (true) {
            float[] fArr3 = this.f15976r;
            if (i >= fArr3.length) {
                return;
            }
            int i7 = this.f15966h;
            fArr3[i] = i7;
            this.f15977s[i] = i7 - (this.f15962d / 2.0f);
            i++;
        }
    }

    /* renamed from: d */
    private void m35754d() {
        if (!this.f15960b) {
            this.f15964f = 0;
        }
    }

    public void isCircle(boolean z) {
        this.f15960b = z;
        m35754d();
        m35756b();
        invalidate();
    }

    public void isCoverSrc(boolean z) {
        this.f15961c = z;
        m35756b();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.saveLayer(this.f15978t, null, 31);
        if (!this.f15961c) {
            int i = this.f15973o;
            int i2 = this.f15962d;
            int i3 = this.f15964f;
            float f = (((i - (i2 * 2)) - (i3 * 2)) * 1.0f) / i;
            int i4 = this.f15974p;
            canvas.scale(f, (((i4 - (i2 * 2)) - (i3 * 2)) * 1.0f) / i4, i / 2.0f, i4 / 2.0f);
        }
        super.onDraw(canvas);
        this.f15980v.reset();
        this.f15981w.reset();
        if (this.f15960b) {
            this.f15981w.addCircle(this.f15973o / 2.0f, this.f15974p / 2.0f, this.f15975q, Path.Direction.CCW);
        } else {
            this.f15981w.addRoundRect(this.f15978t, this.f15977s, Path.Direction.CCW);
        }
        this.f15980v.setAntiAlias(true);
        this.f15980v.setStyle(Paint.Style.FILL);
        this.f15980v.setXfermode(this.f15972n);
        if (Build.VERSION.SDK_INT <= 27) {
            canvas.drawPath(this.f15981w, this.f15980v);
        } else {
            this.f15982x.addRect(this.f15978t, Path.Direction.CCW);
            this.f15982x.op(this.f15981w, Path.Op.DIFFERENCE);
            canvas.drawPath(this.f15982x, this.f15980v);
        }
        this.f15980v.setXfermode(null);
        int i5 = this.f15971m;
        if (i5 != 0) {
            this.f15980v.setColor(i5);
            canvas.drawPath(this.f15981w, this.f15980v);
        }
        canvas.restore();
        m35760a(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f15973o = i;
        this.f15974p = i2;
        m35762a();
        m35756b();
    }

    public void setBorderColor(int i) {
        this.f15963e = i;
        invalidate();
    }

    public void setBorderWidth(int i) {
        this.f15962d = C5443ag.m32217c(this.f15959a, i);
        m35757a(false);
    }

    public void setCornerBottomLeftRadius(int i) {
        this.f15969k = C5443ag.m32217c(this.f15959a, i);
        m35757a(true);
    }

    public void setCornerBottomRightRadius(int i) {
        this.f15970l = C5443ag.m32217c(this.f15959a, i);
        m35757a(true);
    }

    public void setCornerRadius(int i) {
        this.f15966h = C5443ag.m32217c(this.f15959a, i);
        m35757a(false);
    }

    public void setCornerTopLeftRadius(int i) {
        this.f15967i = C5443ag.m32217c(this.f15959a, i);
        m35757a(true);
    }

    public void setCornerTopRightRadius(int i) {
        this.f15968j = C5443ag.m32217c(this.f15959a, i);
        m35757a(true);
    }

    public void setInnerBorderColor(int i) {
        this.f15965g = i;
        invalidate();
    }

    public void setInnerBorderWidth(int i) {
        this.f15964f = C5443ag.m32217c(this.f15959a, i);
        m35754d();
        invalidate();
    }

    public void setMaskColor(int i) {
        this.f15971m = i;
        invalidate();
    }
}
