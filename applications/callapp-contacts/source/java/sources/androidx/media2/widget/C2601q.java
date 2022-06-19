package androidx.media2.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import androidx.media2.widget.C2576l;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import okhttp3.internal.http2.Http2Connection;
/* renamed from: androidx.media2.widget.q */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/q.class */
class C2601q extends View {

    /* renamed from: a */
    private final float f9827a;

    /* renamed from: b */
    private final float f9828b;

    /* renamed from: c */
    private final float f9829c;

    /* renamed from: d */
    private final float f9830d;

    /* renamed from: e */
    private final float f9831e;

    /* renamed from: f */
    private final RectF f9832f;

    /* renamed from: g */
    private final SpannableStringBuilder f9833g;

    /* renamed from: h */
    private Layout.Alignment f9834h;

    /* renamed from: i */
    private TextPaint f9835i;

    /* renamed from: j */
    private Paint f9836j;

    /* renamed from: k */
    private int f9837k;

    /* renamed from: l */
    private int f9838l;

    /* renamed from: m */
    private int f9839m;

    /* renamed from: n */
    private int f9840n;

    /* renamed from: o */
    private boolean f9841o;

    /* renamed from: p */
    private int f9842p;

    /* renamed from: q */
    private StaticLayout f9843q;

    /* renamed from: r */
    private float f9844r;

    /* renamed from: s */
    private float f9845s;

    /* renamed from: t */
    private int f9846t;

    C2601q(Context context) {
        this(context, null);
    }

    C2601q(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C2601q(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f9832f = new RectF();
        this.f9833g = new SpannableStringBuilder();
        this.f9844r = 1.0f;
        this.f9845s = BitmapDescriptorFactory.HUE_RED;
        this.f9846t = 0;
        Resources resources = getContext().getResources();
        this.f9827a = resources.getDimensionPixelSize(C2576l.C2579c.media2_widget_subtitle_corner_radius);
        this.f9828b = resources.getDimensionPixelSize(C2576l.C2579c.media2_widget_subtitle_outline_width);
        this.f9829c = resources.getDimensionPixelSize(C2576l.C2579c.media2_widget_subtitle_shadow_radius);
        float dimensionPixelSize = resources.getDimensionPixelSize(C2576l.C2579c.media2_widget_subtitle_shadow_offset);
        this.f9830d = dimensionPixelSize;
        this.f9831e = dimensionPixelSize;
        TextPaint textPaint = new TextPaint();
        this.f9835i = textPaint;
        textPaint.setAntiAlias(true);
        this.f9835i.setSubpixelText(true);
        Paint paint = new Paint();
        this.f9836j = paint;
        paint.setAntiAlias(true);
    }

    /* renamed from: d */
    private boolean m40569d(int i) {
        if (!this.f9841o || i != this.f9842p) {
            int paddingLeft = i - ((getPaddingLeft() + getPaddingRight()) + (this.f9846t * 2));
            if (paddingLeft <= 0) {
                return false;
            }
            this.f9841o = true;
            this.f9842p = paddingLeft;
            if (Build.VERSION.SDK_INT < 23) {
                SpannableStringBuilder spannableStringBuilder = this.f9833g;
                this.f9843q = new StaticLayout(spannableStringBuilder, 0, spannableStringBuilder.length(), this.f9835i, paddingLeft, this.f9834h, this.f9844r, this.f9845s, true);
                return true;
            }
            SpannableStringBuilder spannableStringBuilder2 = this.f9833g;
            StaticLayout.Builder lineSpacing = StaticLayout.Builder.obtain(spannableStringBuilder2, 0, spannableStringBuilder2.length(), this.f9835i, paddingLeft).setAlignment(this.f9834h).setLineSpacing(this.f9845s, this.f9844r);
            if (Build.VERSION.SDK_INT >= 28) {
                lineSpacing.setUseLineSpacingFromFallbacks(true);
            }
            this.f9843q = lineSpacing.build();
            return true;
        }
        return true;
    }

    /* renamed from: a */
    public final void m40576a(float f) {
        if (this.f9835i.getTextSize() != f) {
            this.f9835i.setTextSize(f);
            this.f9846t = (int) ((f * 0.125f) + 0.5f);
            this.f9841o = false;
            requestLayout();
            invalidate();
        }
    }

    /* renamed from: a */
    public final void m40575a(int i) {
        this.f9837k = i;
        invalidate();
    }

    /* renamed from: a */
    public final void m40574a(Typeface typeface) {
        if (typeface == null || typeface.equals(this.f9835i.getTypeface())) {
            return;
        }
        this.f9835i.setTypeface(typeface);
        this.f9841o = false;
        requestLayout();
        invalidate();
    }

    /* renamed from: a */
    public final void m40573a(Layout.Alignment alignment) {
        if (this.f9834h != alignment) {
            this.f9834h = alignment;
            this.f9841o = false;
            requestLayout();
            invalidate();
        }
    }

    /* renamed from: a */
    public final void m40572a(CharSequence charSequence) {
        this.f9833g.clear();
        this.f9833g.append(charSequence);
        this.f9841o = false;
        requestLayout();
        invalidate();
    }

    /* renamed from: b */
    public final void m40571b(int i) {
        this.f9840n = i;
        invalidate();
    }

    /* renamed from: c */
    public final void m40570c(int i) {
        this.f9839m = i;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        StaticLayout staticLayout = this.f9843q;
        if (staticLayout == null) {
            return;
        }
        int save = canvas.save();
        int i = this.f9846t;
        canvas.translate(getPaddingLeft() + i, getPaddingTop());
        int lineCount = staticLayout.getLineCount();
        TextPaint textPaint = this.f9835i;
        Paint paint = this.f9836j;
        RectF rectF = this.f9832f;
        if (Color.alpha(this.f9838l) > 0) {
            float f = this.f9827a;
            float lineTop = staticLayout.getLineTop(0);
            paint.setColor(this.f9838l);
            paint.setStyle(Paint.Style.FILL);
            for (int i2 = 0; i2 < lineCount; i2++) {
                float lineLeft = staticLayout.getLineLeft(i2);
                float f2 = i;
                rectF.left = lineLeft - f2;
                rectF.right = staticLayout.getLineRight(i2) + f2;
                rectF.top = lineTop;
                rectF.bottom = staticLayout.getLineBottom(i2);
                lineTop = rectF.bottom;
                canvas.drawRoundRect(rectF, f, f, paint);
            }
        }
        int i3 = this.f9840n;
        boolean z = true;
        if (i3 == 1) {
            textPaint.setStrokeJoin(Paint.Join.ROUND);
            textPaint.setStrokeWidth(this.f9828b);
            textPaint.setColor(this.f9839m);
            textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout.draw(canvas);
        } else if (i3 == 2) {
            textPaint.setShadowLayer(this.f9829c, this.f9830d, this.f9831e, this.f9839m);
        } else if (i3 == 3 || i3 == 4) {
            if (i3 != 3) {
                z = false;
            }
            int i4 = -1;
            int i5 = z ? -1 : this.f9839m;
            if (z) {
                i4 = this.f9839m;
            }
            float f3 = this.f9829c / 2.0f;
            textPaint.setColor(this.f9837k);
            textPaint.setStyle(Paint.Style.FILL);
            float f4 = -f3;
            textPaint.setShadowLayer(this.f9829c, f4, f4, i5);
            staticLayout.draw(canvas);
            textPaint.setShadowLayer(this.f9829c, f3, f3, i4);
        }
        textPaint.setColor(this.f9837k);
        textPaint.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        textPaint.setShadowLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
        canvas.restoreToCount(save);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        m40569d(i3 - i);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (!m40569d(View.MeasureSpec.getSize(i))) {
            setMeasuredDimension(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE, Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
            return;
        }
        StaticLayout staticLayout = this.f9843q;
        setMeasuredDimension(staticLayout.getWidth() + getPaddingLeft() + getPaddingRight() + (this.f9846t * 2), staticLayout.getHeight() + getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f9838l = i;
        invalidate();
    }
}
