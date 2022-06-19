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
import com.explorestack.iab.utils.AbstractC9592g;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.utils.C9593h;
import com.explorestack.iab.utils.Utils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/view/CircleCountdownView.class */
public class CircleCountdownView extends View implements AbstractC9592g {

    /* renamed from: a */
    private Bitmap f32848a;

    /* renamed from: b */
    private int f32849b;

    /* renamed from: m */
    private Paint f32860m;

    /* renamed from: n */
    private Paint f32861n;

    /* renamed from: o */
    private Rect f32862o;

    /* renamed from: p */
    private RectF f32863p;

    /* renamed from: q */
    private Paint f32864q;

    /* renamed from: r */
    private Paint f32865r;

    /* renamed from: t */
    private int f32867t;

    /* renamed from: c */
    private int f32850c = Assets.mainAssetsColor;

    /* renamed from: d */
    private int f32851d = Assets.backgroundColor;

    /* renamed from: e */
    private boolean f32852e = false;

    /* renamed from: f */
    private float f32853f = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: g */
    private float f32854g = 0.071428575f;

    /* renamed from: h */
    private final RectF f32855h = new RectF();

    /* renamed from: i */
    private final RectF f32856i = new RectF();

    /* renamed from: j */
    private float f32857j = 54.0f;

    /* renamed from: k */
    private float f32858k = 54.0f;

    /* renamed from: l */
    private float f32859l = 5.0f;

    /* renamed from: s */
    private float f32866s = 100.0f;

    public CircleCountdownView(Context context) {
        super(context);
        m23825a(context);
    }

    public CircleCountdownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m23825a(context);
    }

    /* renamed from: a */
    private float m23826a(float f, boolean z) {
        float width = this.f32855h.width();
        float f2 = width;
        if (z) {
            f2 = width - (this.f32859l * 2.0f);
        }
        float sqrt = (float) ((f2 / 2.0f) * Math.sqrt(2.0d));
        return sqrt - ((f * sqrt) * 2.0f);
    }

    /* renamed from: a */
    private void m23828a() {
        float min = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        float f = min / 2.0f;
        float width = (getWidth() / 2.0f) - f;
        float height = (getHeight() / 2.0f) - f;
        this.f32855h.set(width, height, width + min, min + height);
        this.f32857j = this.f32855h.centerX();
        this.f32858k = this.f32855h.centerY();
        this.f32856i.set(this.f32855h.left + (this.f32859l / 2.0f), this.f32855h.top + (this.f32859l / 2.0f), this.f32855h.right - (this.f32859l / 2.0f), this.f32855h.bottom - (this.f32859l / 2.0f));
    }

    /* renamed from: a */
    private void m23825a(Context context) {
        setLayerType(1, null);
        this.f32859l = Utils.m24117a(context, 3.0f);
    }

    /* renamed from: a */
    public final void m23827a(float f, int i) {
        if (this.f32848a == null || f == 100.0f) {
            this.f32866s = f;
            this.f32867t = i;
            postInvalidate();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getWidth() == 0 || getHeight() == 0) {
            return;
        }
        if (this.f32867t == 0 && this.f32848a == null) {
            return;
        }
        if (this.f32860m == null) {
            this.f32860m = new Paint(1);
        }
        float f = this.f32866s;
        this.f32860m.setColor(this.f32851d);
        this.f32860m.setStyle(Paint.Style.FILL);
        canvas.drawArc(this.f32855h, BitmapDescriptorFactory.HUE_RED, 360.0f, false, this.f32860m);
        this.f32860m.setColor(this.f32850c);
        this.f32860m.setStyle(Paint.Style.STROKE);
        this.f32860m.setStrokeWidth(this.f32859l);
        canvas.drawArc(this.f32856i, 270.0f, 360.0f - ((f * 360.0f) * 0.01f), false, this.f32860m);
        if (this.f32848a == null) {
            if (this.f32861n == null) {
                Paint paint = new Paint(1);
                this.f32861n = paint;
                paint.setAntiAlias(true);
                this.f32861n.setStyle(Paint.Style.FILL);
                this.f32861n.setTextAlign(Paint.Align.CENTER);
            }
            int i = this.f32867t;
            this.f32861n.setColor(this.f32850c);
            this.f32861n.setTypeface(Typeface.create(Typeface.DEFAULT, this.f32849b));
            this.f32861n.setTextSize(m23826a(this.f32854g, true));
            canvas.drawText(String.valueOf(i), this.f32857j, this.f32858k - ((this.f32861n.descent() + this.f32861n.ascent()) / 2.0f), this.f32861n);
            return;
        }
        if (this.f32864q == null) {
            Paint paint2 = new Paint(7);
            this.f32864q = paint2;
            paint2.setStyle(Paint.Style.FILL);
            this.f32864q.setAntiAlias(true);
        }
        if (this.f32862o == null) {
            this.f32862o = new Rect();
        }
        if (this.f32863p == null) {
            this.f32863p = new RectF();
        }
        float m23826a = m23826a(this.f32853f, this.f32852e);
        float f2 = m23826a / 2.0f;
        float f3 = this.f32857j - f2;
        float f4 = this.f32858k - f2;
        this.f32862o.set(0, 0, this.f32848a.getWidth(), this.f32848a.getHeight());
        this.f32863p.set(f3, f4, f3 + m23826a, m23826a + f4);
        this.f32864q.setColorFilter(new PorterDuffColorFilter(this.f32850c, PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(this.f32848a, this.f32862o, this.f32863p, this.f32864q);
        if (!this.f32852e) {
            return;
        }
        if (this.f32865r == null) {
            Paint paint3 = new Paint(1);
            this.f32865r = paint3;
            paint3.setStyle(Paint.Style.STROKE);
        }
        this.f32865r.setStrokeWidth(this.f32859l);
        this.f32865r.setColor(this.f32850c);
        canvas.drawArc(this.f32856i, BitmapDescriptorFactory.HUE_RED, 360.0f, false, this.f32865r);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m23828a();
    }

    public void setColors(int i, int i2) {
        this.f32850c = i;
        this.f32851d = i2;
        m23828a();
    }

    public void setImage(Bitmap bitmap) {
        if (bitmap != null) {
            this.f32848a = bitmap;
            this.f32866s = 100.0f;
        } else {
            this.f32848a = bitmap;
        }
        postInvalidate();
    }

    @Override // com.explorestack.iab.utils.AbstractC9592g
    public void setStyle(C9593h c9593h) {
        this.f32849b = c9593h.m24050h().intValue();
        this.f32850c = c9593h.m24073a().intValue();
        this.f32851d = c9593h.m24064b().intValue();
        this.f32852e = c9593h.m24058c().booleanValue();
        this.f32859l = c9593h.m24053e(getContext()).floatValue();
        setPadding(c9593h.m24072a(getContext()).intValue(), c9593h.m24057c(getContext()).intValue(), c9593h.m24063b(getContext()).intValue(), c9593h.m24055d(getContext()).intValue());
        setAlpha(c9593h.m24051g().floatValue());
        m23828a();
        postInvalidate();
    }
}
