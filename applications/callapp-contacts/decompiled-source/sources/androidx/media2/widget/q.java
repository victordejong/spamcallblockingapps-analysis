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
import androidx.media2.widget.l;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/q.class */
class q extends View {

    /* renamed from: a  reason: collision with root package name */
    private final float f5284a;

    /* renamed from: b  reason: collision with root package name */
    private final float f5285b;

    /* renamed from: c  reason: collision with root package name */
    private final float f5286c;

    /* renamed from: d  reason: collision with root package name */
    private final float f5287d;
    private final float e;
    private final RectF f;
    private final SpannableStringBuilder g;
    private Layout.Alignment h;
    private TextPaint i;
    private Paint j;
    private int k;
    private int l;
    private int m;
    private int n;
    private boolean o;
    private int p;
    private StaticLayout q;
    private float r;
    private float s;
    private int t;

    q(Context context) {
        this(context, null);
    }

    q(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = new RectF();
        this.g = new SpannableStringBuilder();
        this.r = 1.0f;
        this.s = BitmapDescriptorFactory.HUE_RED;
        this.t = 0;
        Resources resources = getContext().getResources();
        this.f5284a = resources.getDimensionPixelSize(l.c.media2_widget_subtitle_corner_radius);
        this.f5285b = resources.getDimensionPixelSize(l.c.media2_widget_subtitle_outline_width);
        this.f5286c = resources.getDimensionPixelSize(l.c.media2_widget_subtitle_shadow_radius);
        float dimensionPixelSize = resources.getDimensionPixelSize(l.c.media2_widget_subtitle_shadow_offset);
        this.f5287d = dimensionPixelSize;
        this.e = dimensionPixelSize;
        TextPaint textPaint = new TextPaint();
        this.i = textPaint;
        textPaint.setAntiAlias(true);
        this.i.setSubpixelText(true);
        Paint paint = new Paint();
        this.j = paint;
        paint.setAntiAlias(true);
    }

    private boolean d(int i) {
        if (this.o && i == this.p) {
            return true;
        }
        int paddingLeft = i - ((getPaddingLeft() + getPaddingRight()) + (this.t * 2));
        if (paddingLeft <= 0) {
            return false;
        }
        this.o = true;
        this.p = paddingLeft;
        if (Build.VERSION.SDK_INT >= 23) {
            SpannableStringBuilder spannableStringBuilder = this.g;
            StaticLayout.Builder lineSpacing = StaticLayout.Builder.obtain(spannableStringBuilder, 0, spannableStringBuilder.length(), this.i, paddingLeft).setAlignment(this.h).setLineSpacing(this.s, this.r);
            if (Build.VERSION.SDK_INT >= 28) {
                lineSpacing.setUseLineSpacingFromFallbacks(true);
            }
            this.q = lineSpacing.build();
            return true;
        }
        SpannableStringBuilder spannableStringBuilder2 = this.g;
        this.q = new StaticLayout(spannableStringBuilder2, 0, spannableStringBuilder2.length(), this.i, paddingLeft, this.h, this.r, this.s, true);
        return true;
    }

    public final void a(float f) {
        if (this.i.getTextSize() != f) {
            this.i.setTextSize(f);
            this.t = (int) ((f * 0.125f) + 0.5f);
            this.o = false;
            requestLayout();
            invalidate();
        }
    }

    public final void a(int i) {
        this.k = i;
        invalidate();
    }

    public final void a(Typeface typeface) {
        if (typeface != null && !typeface.equals(this.i.getTypeface())) {
            this.i.setTypeface(typeface);
            this.o = false;
            requestLayout();
            invalidate();
        }
    }

    public final void a(Layout.Alignment alignment) {
        if (this.h != alignment) {
            this.h = alignment;
            this.o = false;
            requestLayout();
            invalidate();
        }
    }

    public final void a(CharSequence charSequence) {
        this.g.clear();
        this.g.append(charSequence);
        this.o = false;
        requestLayout();
        invalidate();
    }

    public final void b(int i) {
        this.n = i;
        invalidate();
    }

    public final void c(int i) {
        this.m = i;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        StaticLayout staticLayout = this.q;
        if (staticLayout != null) {
            int save = canvas.save();
            int i = this.t;
            canvas.translate(getPaddingLeft() + i, getPaddingTop());
            int lineCount = staticLayout.getLineCount();
            TextPaint textPaint = this.i;
            Paint paint = this.j;
            RectF rectF = this.f;
            if (Color.alpha(this.l) > 0) {
                float f = this.f5284a;
                float lineTop = staticLayout.getLineTop(0);
                paint.setColor(this.l);
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
            int i3 = this.n;
            boolean z = true;
            if (i3 == 1) {
                textPaint.setStrokeJoin(Paint.Join.ROUND);
                textPaint.setStrokeWidth(this.f5285b);
                textPaint.setColor(this.m);
                textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
                staticLayout.draw(canvas);
            } else if (i3 == 2) {
                textPaint.setShadowLayer(this.f5286c, this.f5287d, this.e, this.m);
            } else if (i3 == 3 || i3 == 4) {
                if (i3 != 3) {
                    z = false;
                }
                int i4 = -1;
                int i5 = z ? -1 : this.m;
                if (z) {
                    i4 = this.m;
                }
                float f3 = this.f5286c / 2.0f;
                textPaint.setColor(this.k);
                textPaint.setStyle(Paint.Style.FILL);
                float f4 = -f3;
                textPaint.setShadowLayer(this.f5286c, f4, f4, i5);
                staticLayout.draw(canvas);
                textPaint.setShadowLayer(this.f5286c, f3, f3, i4);
            }
            textPaint.setColor(this.k);
            textPaint.setStyle(Paint.Style.FILL);
            staticLayout.draw(canvas);
            textPaint.setShadowLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        d(i3 - i);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (d(View.MeasureSpec.getSize(i))) {
            StaticLayout staticLayout = this.q;
            setMeasuredDimension(staticLayout.getWidth() + getPaddingLeft() + getPaddingRight() + (this.t * 2), staticLayout.getHeight() + getPaddingTop() + getPaddingBottom());
            return;
        }
        setMeasuredDimension(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE, Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.l = i;
        invalidate();
    }
}
