package com.explorestack.iab.vast.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.utils.g;
import com.explorestack.iab.utils.h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/view/CircleCountdownView.class */
public class CircleCountdownView extends View implements g {

    /* renamed from: a  reason: collision with root package name */
    private Bitmap f19325a;

    /* renamed from: b  reason: collision with root package name */
    private int f19326b;
    private Paint m;
    private Paint n;
    private Rect o;
    private RectF p;
    private Paint q;
    private Paint r;
    private int t;

    /* renamed from: c  reason: collision with root package name */
    private int f19327c = Assets.mainAssetsColor;

    /* renamed from: d  reason: collision with root package name */
    private int f19328d = Assets.backgroundColor;
    private boolean e = false;
    private float f = BitmapDescriptorFactory.HUE_RED;
    private float g = 0.071428575f;
    private final RectF h = new RectF();
    private final RectF i = new RectF();
    private float j = 54.0f;
    private float k = 54.0f;
    private float l = 5.0f;
    private float s = 100.0f;

    public CircleCountdownView(Context context) {
        super(context);
        a(context);
    }

    public CircleCountdownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    private float a(float f, boolean z) {
        float width = this.h.width();
        float f2 = width;
        if (z) {
            f2 = width - (this.l * 2.0f);
        }
        float sqrt = (float) ((f2 / 2.0f) * Math.sqrt(2.0d));
        return sqrt - ((f * sqrt) * 2.0f);
    }

    private void a() {
        float min = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        float f = min / 2.0f;
        float width = (getWidth() / 2.0f) - f;
        float height = (getHeight() / 2.0f) - f;
        this.h.set(width, height, width + min, min + height);
        this.j = this.h.centerX();
        this.k = this.h.centerY();
        this.i.set(this.h.left + (this.l / 2.0f), this.h.top + (this.l / 2.0f), this.h.right - (this.l / 2.0f), this.h.bottom - (this.l / 2.0f));
    }

    private void a(Context context) {
        setLayerType(1, null);
        this.l = Utils.a(context, 3.0f);
    }

    public final void a(float f, int i) {
        if (this.f19325a == null || f == 100.0f) {
            this.s = f;
            this.t = i;
            postInvalidate();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getWidth() != 0 && getHeight() != 0) {
            if (this.t != 0 || this.f19325a != null) {
                if (this.m == null) {
                    this.m = new Paint(1);
                }
                float f = this.s;
                this.m.setColor(this.f19328d);
                this.m.setStyle(Paint.Style.FILL);
                canvas.drawArc(this.h, BitmapDescriptorFactory.HUE_RED, 360.0f, false, this.m);
                this.m.setColor(this.f19327c);
                this.m.setStyle(Paint.Style.STROKE);
                this.m.setStrokeWidth(this.l);
                canvas.drawArc(this.i, 270.0f, 360.0f - ((f * 360.0f) * 0.01f), false, this.m);
                if (this.f19325a != null) {
                    if (this.q == null) {
                        Paint paint = new Paint(7);
                        this.q = paint;
                        paint.setStyle(Paint.Style.FILL);
                        this.q.setAntiAlias(true);
                    }
                    if (this.o == null) {
                        this.o = new Rect();
                    }
                    if (this.p == null) {
                        this.p = new RectF();
                    }
                    float a2 = a(this.f, this.e);
                    float f2 = a2 / 2.0f;
                    float f3 = this.j - f2;
                    float f4 = this.k - f2;
                    this.o.set(0, 0, this.f19325a.getWidth(), this.f19325a.getHeight());
                    this.p.set(f3, f4, f3 + a2, a2 + f4);
                    this.q.setColorFilter(new PorterDuffColorFilter(this.f19327c, PorterDuff.Mode.SRC_IN));
                    canvas.drawBitmap(this.f19325a, this.o, this.p, this.q);
                    if (this.e) {
                        if (this.r == null) {
                            Paint paint2 = new Paint(1);
                            this.r = paint2;
                            paint2.setStyle(Paint.Style.STROKE);
                        }
                        this.r.setStrokeWidth(this.l);
                        this.r.setColor(this.f19327c);
                        canvas.drawArc(this.i, BitmapDescriptorFactory.HUE_RED, 360.0f, false, this.r);
                        return;
                    }
                    return;
                }
                if (this.n == null) {
                    Paint paint3 = new Paint(1);
                    this.n = paint3;
                    paint3.setAntiAlias(true);
                    this.n.setStyle(Paint.Style.FILL);
                    this.n.setTextAlign(Paint.Align.CENTER);
                }
                int i = this.t;
                this.n.setColor(this.f19327c);
                this.n.setTypeface(Typeface.create(Typeface.DEFAULT, this.f19326b));
                this.n.setTextSize(a(this.g, true));
                canvas.drawText(String.valueOf(i), this.j, this.k - ((this.n.descent() + this.n.ascent()) / 2.0f), this.n);
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a();
    }

    public void setColors(int i, int i2) {
        this.f19327c = i;
        this.f19328d = i2;
        a();
    }

    public void setImage(Bitmap bitmap) {
        if (bitmap != null) {
            this.f19325a = bitmap;
            this.s = 100.0f;
        } else {
            this.f19325a = bitmap;
        }
        postInvalidate();
    }

    @Override // com.explorestack.iab.utils.g
    public void setStyle(h hVar) {
        this.f19326b = hVar.h().intValue();
        this.f19327c = hVar.a().intValue();
        this.f19328d = hVar.b().intValue();
        this.e = hVar.c().booleanValue();
        this.l = hVar.e(getContext()).floatValue();
        setPadding(hVar.a(getContext()).intValue(), hVar.c(getContext()).intValue(), hVar.b(getContext()).intValue(), hVar.d(getContext()).intValue());
        setAlpha(hVar.g().floatValue());
        a();
        postInvalidate();
    }
}
