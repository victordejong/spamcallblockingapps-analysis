package p1727n3.p1874y.p1908e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import androidx.media2.widget.C0285R;
/* renamed from: n3.y.e.c0 */
/* loaded from: classes-dex2jar.jar:n3/y/e/c0.class */
public class C27512c0 extends View {

    /* renamed from: a */
    public final float f77465a;

    /* renamed from: b */
    public final float f77466b;

    /* renamed from: c */
    public final float f77467c;

    /* renamed from: d */
    public final float f77468d;

    /* renamed from: e */
    public final float f77469e;

    /* renamed from: h */
    public Layout.Alignment f77472h;

    /* renamed from: i */
    public TextPaint f77473i;

    /* renamed from: j */
    public Paint f77474j;

    /* renamed from: k */
    public int f77475k;

    /* renamed from: l */
    public int f77476l;

    /* renamed from: m */
    public int f77477m;

    /* renamed from: n */
    public int f77478n;

    /* renamed from: o */
    public boolean f77479o;

    /* renamed from: p */
    public int f77480p;

    /* renamed from: q */
    public StaticLayout f77481q;

    /* renamed from: f */
    public final RectF f77470f = new RectF();

    /* renamed from: g */
    public final SpannableStringBuilder f77471g = new SpannableStringBuilder();

    /* renamed from: r */
    public float f77482r = 1.0f;

    /* renamed from: s */
    public int f77483s = 0;

    public C27512c0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = getContext().getResources();
        this.f77465a = resources.getDimensionPixelSize(C0285R.dimen.media2_widget_subtitle_corner_radius);
        this.f77466b = resources.getDimensionPixelSize(C0285R.dimen.media2_widget_subtitle_outline_width);
        this.f77467c = resources.getDimensionPixelSize(C0285R.dimen.media2_widget_subtitle_shadow_radius);
        float dimensionPixelSize = resources.getDimensionPixelSize(C0285R.dimen.media2_widget_subtitle_shadow_offset);
        this.f77468d = dimensionPixelSize;
        this.f77469e = dimensionPixelSize;
        TextPaint textPaint = new TextPaint();
        this.f77473i = textPaint;
        textPaint.setAntiAlias(true);
        this.f77473i.setSubpixelText(true);
        Paint paint = new Paint();
        this.f77474j = paint;
        paint.setAntiAlias(true);
    }

    /* renamed from: a */
    public final boolean m173a(int i) {
        if (!this.f77479o || i != this.f77480p) {
            int paddingLeft = getPaddingLeft();
            int paddingRight = i - ((this.f77483s * 2) + (getPaddingRight() + paddingLeft));
            if (paddingRight <= 0) {
                return false;
            }
            this.f77479o = true;
            this.f77480p = paddingRight;
            int i2 = Build.VERSION.SDK_INT;
            SpannableStringBuilder spannableStringBuilder = this.f77471g;
            StaticLayout.Builder lineSpacing = StaticLayout.Builder.obtain(spannableStringBuilder, 0, spannableStringBuilder.length(), this.f77473i, paddingRight).setAlignment(this.f77472h).setLineSpacing(0.0f, this.f77482r);
            if (i2 >= 28) {
                lineSpacing.setUseLineSpacingFromFallbacks(true);
            }
            this.f77481q = lineSpacing.build();
            return true;
        }
        return true;
    }

    /* renamed from: b */
    public void m172b(Layout.Alignment alignment) {
        if (this.f77472h != alignment) {
            this.f77472h = alignment;
            this.f77479o = false;
            requestLayout();
            invalidate();
        }
    }

    /* renamed from: c */
    public void m171c(CharSequence charSequence) {
        this.f77471g.clear();
        this.f77471g.append(charSequence);
        this.f77479o = false;
        requestLayout();
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        StaticLayout staticLayout = this.f77481q;
        if (staticLayout == null) {
            return;
        }
        int save = canvas.save();
        int i = this.f77483s;
        canvas.translate(getPaddingLeft() + i, getPaddingTop());
        int lineCount = staticLayout.getLineCount();
        TextPaint textPaint = this.f77473i;
        Paint paint = this.f77474j;
        RectF rectF = this.f77470f;
        if (Color.alpha(this.f77476l) > 0) {
            float f = this.f77465a;
            float lineTop = staticLayout.getLineTop(0);
            paint.setColor(this.f77476l);
            paint.setStyle(Paint.Style.FILL);
            for (int i2 = 0; i2 < lineCount; i2++) {
                float lineLeft = staticLayout.getLineLeft(i2);
                float f2 = i;
                rectF.left = lineLeft - f2;
                rectF.right = staticLayout.getLineRight(i2) + f2;
                rectF.top = lineTop;
                lineTop = staticLayout.getLineBottom(i2);
                rectF.bottom = lineTop;
                canvas.drawRoundRect(rectF, f, f, paint);
            }
        }
        int i3 = this.f77478n;
        boolean z = true;
        if (i3 == 1) {
            textPaint.setStrokeJoin(Paint.Join.ROUND);
            textPaint.setStrokeWidth(this.f77466b);
            textPaint.setColor(this.f77477m);
            textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout.draw(canvas);
        } else if (i3 == 2) {
            textPaint.setShadowLayer(this.f77467c, this.f77468d, this.f77469e, this.f77477m);
        } else if (i3 == 3 || i3 == 4) {
            if (i3 != 3) {
                z = false;
            }
            int i4 = -1;
            int i5 = z ? -1 : this.f77477m;
            if (z) {
                i4 = this.f77477m;
            }
            float f3 = this.f77467c / 2.0f;
            textPaint.setColor(this.f77475k);
            textPaint.setStyle(Paint.Style.FILL);
            float f4 = -f3;
            textPaint.setShadowLayer(this.f77467c, f4, f4, i5);
            staticLayout.draw(canvas);
            textPaint.setShadowLayer(this.f77467c, f3, f3, i4);
        }
        textPaint.setColor(this.f77475k);
        textPaint.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        textPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(save);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        m173a(i3 - i);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (!m173a(View.MeasureSpec.getSize(i))) {
            setMeasuredDimension(16777216, 16777216);
            return;
        }
        StaticLayout staticLayout = this.f77481q;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i3 = this.f77483s;
        int width = staticLayout.getWidth();
        int height = staticLayout.getHeight();
        setMeasuredDimension(width + (i3 * 2) + paddingRight + paddingLeft, getPaddingBottom() + getPaddingTop() + height);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f77476l = i;
        invalidate();
    }
}
