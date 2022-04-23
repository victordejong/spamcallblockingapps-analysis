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
import com.bytedance.sdk.openadsdk.utils.ag;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/adapter/NiceImageView.class */
public class NiceImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private Context f8530a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f8531b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f8532c;

    /* renamed from: d  reason: collision with root package name */
    private int f8533d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private Xfermode n;
    private int o;
    private int p;
    private float q;
    private float[] r;
    private float[] s;
    private RectF t;
    private RectF u;
    private Paint v;
    private Path w;
    private Path x;

    public NiceImageView(Context context) {
        this(context, null);
    }

    public NiceImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NiceImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = -1;
        this.g = -1;
        this.f8530a = context;
        this.h = ag.c(context, 10.0f);
        this.r = new float[8];
        this.s = new float[8];
        this.u = new RectF();
        this.t = new RectF();
        this.v = new Paint();
        this.w = new Path();
        if (Build.VERSION.SDK_INT <= 27) {
            this.n = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        } else {
            this.n = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
            this.x = new Path();
        }
        c();
        d();
    }

    private void a() {
        if (!this.f8531b) {
            RectF rectF = this.u;
            int i = this.f8533d;
            rectF.set(i / 2.0f, i / 2.0f, this.o - (i / 2.0f), this.p - (i / 2.0f));
        }
    }

    private void a(int i, int i2) {
        this.w.reset();
        this.v.setStrokeWidth(i);
        this.v.setColor(i2);
        this.v.setStyle(Paint.Style.STROKE);
    }

    private void a(Canvas canvas) {
        if (this.f8531b) {
            int i = this.f8533d;
            if (i > 0) {
                a(canvas, i, this.e, this.q - (i / 2.0f));
            }
            int i2 = this.f;
            if (i2 > 0) {
                a(canvas, i2, this.g, (this.q - this.f8533d) - (i2 / 2.0f));
                return;
            }
            return;
        }
        int i3 = this.f8533d;
        if (i3 > 0) {
            a(canvas, i3, this.e, this.u, this.r);
        }
    }

    private void a(Canvas canvas, int i, int i2, float f) {
        a(i, i2);
        this.w.addCircle(this.o / 2.0f, this.p / 2.0f, f, Path.Direction.CCW);
        canvas.drawPath(this.w, this.v);
    }

    private void a(Canvas canvas, int i, int i2, RectF rectF, float[] fArr) {
        a(i, i2);
        this.w.addRoundRect(rectF, fArr, Path.Direction.CCW);
        canvas.drawPath(this.w, this.v);
    }

    private void a(boolean z) {
        if (z) {
            this.h = 0;
        }
        c();
        a();
        invalidate();
    }

    private void b() {
        if (this.f8531b) {
            float min = Math.min(this.o, this.p) / 2.0f;
            this.q = min;
            RectF rectF = this.t;
            int i = this.o;
            float f = i / 2.0f;
            int i2 = this.p;
            rectF.set(f - min, (i2 / 2.0f) - min, (i / 2.0f) + min, (i2 / 2.0f) + min);
            return;
        }
        this.t.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.o, this.p);
        if (this.f8532c) {
            this.t = this.u;
        }
    }

    private void c() {
        if (!this.f8531b) {
            int i = 0;
            if (this.h > 0) {
                while (true) {
                    float[] fArr = this.r;
                    if (i < fArr.length) {
                        int i2 = this.h;
                        fArr[i] = i2;
                        this.s[i] = i2 - (this.f8533d / 2.0f);
                        i++;
                    } else {
                        return;
                    }
                }
            } else {
                float[] fArr2 = this.r;
                int i3 = this.i;
                float f = i3;
                fArr2[1] = f;
                fArr2[0] = f;
                int i4 = this.j;
                float f2 = i4;
                fArr2[3] = f2;
                fArr2[2] = f2;
                int i5 = this.l;
                float f3 = i5;
                fArr2[5] = f3;
                fArr2[4] = f3;
                int i6 = this.k;
                float f4 = i6;
                fArr2[7] = f4;
                fArr2[6] = f4;
                float[] fArr3 = this.s;
                float f5 = i3;
                int i7 = this.f8533d;
                float f6 = f5 - (i7 / 2.0f);
                fArr3[1] = f6;
                fArr3[0] = f6;
                float f7 = i4 - (i7 / 2.0f);
                fArr3[3] = f7;
                fArr3[2] = f7;
                float f8 = i5 - (i7 / 2.0f);
                fArr3[5] = f8;
                fArr3[4] = f8;
                float f9 = i6 - (i7 / 2.0f);
                fArr3[7] = f9;
                fArr3[6] = f9;
            }
        }
    }

    private void d() {
        if (!this.f8531b) {
            this.f = 0;
        }
    }

    public void isCircle(boolean z) {
        this.f8531b = z;
        d();
        b();
        invalidate();
    }

    public void isCoverSrc(boolean z) {
        this.f8532c = z;
        b();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.saveLayer(this.t, null, 31);
        if (!this.f8532c) {
            int i = this.o;
            int i2 = this.f8533d;
            int i3 = this.f;
            float f = (((i - (i2 * 2)) - (i3 * 2)) * 1.0f) / i;
            int i4 = this.p;
            canvas.scale(f, (((i4 - (i2 * 2)) - (i3 * 2)) * 1.0f) / i4, i / 2.0f, i4 / 2.0f);
        }
        super.onDraw(canvas);
        this.v.reset();
        this.w.reset();
        if (this.f8531b) {
            this.w.addCircle(this.o / 2.0f, this.p / 2.0f, this.q, Path.Direction.CCW);
        } else {
            this.w.addRoundRect(this.t, this.s, Path.Direction.CCW);
        }
        this.v.setAntiAlias(true);
        this.v.setStyle(Paint.Style.FILL);
        this.v.setXfermode(this.n);
        if (Build.VERSION.SDK_INT <= 27) {
            canvas.drawPath(this.w, this.v);
        } else {
            this.x.addRect(this.t, Path.Direction.CCW);
            this.x.op(this.w, Path.Op.DIFFERENCE);
            canvas.drawPath(this.x, this.v);
        }
        this.v.setXfermode(null);
        int i5 = this.m;
        if (i5 != 0) {
            this.v.setColor(i5);
            canvas.drawPath(this.w, this.v);
        }
        canvas.restore();
        a(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.o = i;
        this.p = i2;
        a();
        b();
    }

    public void setBorderColor(int i) {
        this.e = i;
        invalidate();
    }

    public void setBorderWidth(int i) {
        this.f8533d = ag.c(this.f8530a, i);
        a(false);
    }

    public void setCornerBottomLeftRadius(int i) {
        this.k = ag.c(this.f8530a, i);
        a(true);
    }

    public void setCornerBottomRightRadius(int i) {
        this.l = ag.c(this.f8530a, i);
        a(true);
    }

    public void setCornerRadius(int i) {
        this.h = ag.c(this.f8530a, i);
        a(false);
    }

    public void setCornerTopLeftRadius(int i) {
        this.i = ag.c(this.f8530a, i);
        a(true);
    }

    public void setCornerTopRightRadius(int i) {
        this.j = ag.c(this.f8530a, i);
        a(true);
    }

    public void setInnerBorderColor(int i) {
        this.g = i;
        invalidate();
    }

    public void setInnerBorderWidth(int i) {
        this.f = ag.c(this.f8530a, i);
        d();
        invalidate();
    }

    public void setMaskColor(int i) {
        this.m = i;
        invalidate();
    }
}
