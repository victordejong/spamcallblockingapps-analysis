package p012b.p076s.p118e;

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
/* renamed from: b.s.e.u */
/* loaded from: classes-dex2jar.jar:b/s/e/u.class */
public class C1872u extends View {

    /* renamed from: a */
    public final float f7412a;

    /* renamed from: b */
    public final float f7413b;

    /* renamed from: c */
    public final float f7414c;

    /* renamed from: d */
    public final float f7415d;

    /* renamed from: e */
    public final float f7416e;

    /* renamed from: h */
    public Layout.Alignment f7419h;

    /* renamed from: i */
    public TextPaint f7420i;

    /* renamed from: j */
    public Paint f7421j;

    /* renamed from: k */
    public int f7422k;

    /* renamed from: l */
    public int f7423l;

    /* renamed from: m */
    public int f7424m;

    /* renamed from: n */
    public int f7425n;

    /* renamed from: o */
    public boolean f7426o;

    /* renamed from: p */
    public int f7427p;

    /* renamed from: q */
    public StaticLayout f7428q;

    /* renamed from: f */
    public final RectF f7417f = new RectF();

    /* renamed from: g */
    public final SpannableStringBuilder f7418g = new SpannableStringBuilder();

    /* renamed from: r */
    public float f7429r = 1.0f;

    /* renamed from: s */
    public float f7430s = 0.0f;

    /* renamed from: t */
    public int f7431t = 0;

    public C1872u(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = getContext().getResources();
        this.f7412a = resources.getDimensionPixelSize(C1850l.subtitle_corner_radius);
        this.f7413b = resources.getDimensionPixelSize(C1850l.subtitle_outline_width);
        this.f7414c = resources.getDimensionPixelSize(C1850l.subtitle_shadow_radius);
        float dimensionPixelSize = resources.getDimensionPixelSize(C1850l.subtitle_shadow_offset);
        this.f7415d = dimensionPixelSize;
        this.f7416e = dimensionPixelSize;
        TextPaint textPaint = new TextPaint();
        this.f7420i = textPaint;
        textPaint.setAntiAlias(true);
        this.f7420i.setSubpixelText(true);
        Paint paint = new Paint();
        this.f7421j = paint;
        paint.setAntiAlias(true);
    }

    /* renamed from: a */
    public void m31856a(float f) {
        if (this.f7420i.getTextSize() != f) {
            this.f7420i.setTextSize(f);
            this.f7431t = (int) ((f * 0.125f) + 0.5f);
            this.f7426o = false;
            requestLayout();
            invalidate();
        }
    }

    /* renamed from: a */
    public void m31854a(Typeface typeface) {
        if (typeface != null && !typeface.equals(this.f7420i.getTypeface())) {
            this.f7420i.setTypeface(typeface);
            this.f7426o = false;
            requestLayout();
            invalidate();
        }
    }

    /* renamed from: a */
    public void m31853a(Layout.Alignment alignment) {
        if (this.f7419h != alignment) {
            this.f7419h = alignment;
            this.f7426o = false;
            requestLayout();
            invalidate();
        }
    }

    /* renamed from: a */
    public void m31852a(CharSequence charSequence) {
        this.f7418g.clear();
        this.f7418g.append(charSequence);
        this.f7426o = false;
        requestLayout();
        invalidate();
    }

    /* renamed from: a */
    public final boolean m31855a(int i) {
        if (this.f7426o && i == this.f7427p) {
            return true;
        }
        int paddingLeft = i - ((getPaddingLeft() + getPaddingRight()) + (this.f7431t * 2));
        if (paddingLeft <= 0) {
            return false;
        }
        this.f7426o = true;
        this.f7427p = paddingLeft;
        if (Build.VERSION.SDK_INT >= 23) {
            SpannableStringBuilder spannableStringBuilder = this.f7418g;
            StaticLayout.Builder lineSpacing = StaticLayout.Builder.obtain(spannableStringBuilder, 0, spannableStringBuilder.length(), this.f7420i, paddingLeft).setAlignment(this.f7419h).setLineSpacing(this.f7430s, this.f7429r);
            if (Build.VERSION.SDK_INT >= 28) {
                lineSpacing.setUseLineSpacingFromFallbacks(true);
            }
            this.f7428q = lineSpacing.build();
            return true;
        }
        SpannableStringBuilder spannableStringBuilder2 = this.f7418g;
        this.f7428q = new StaticLayout(spannableStringBuilder2, 0, spannableStringBuilder2.length(), this.f7420i, paddingLeft, this.f7419h, this.f7429r, this.f7430s, true);
        return true;
    }

    /* renamed from: b */
    public void m31851b(int i) {
        this.f7424m = i;
        invalidate();
    }

    /* renamed from: c */
    public void m31850c(int i) {
        this.f7425n = i;
        invalidate();
    }

    /* renamed from: d */
    public void m31849d(int i) {
        this.f7422k = i;
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        StaticLayout staticLayout = this.f7428q;
        if (staticLayout != null) {
            int save = canvas.save();
            int i = this.f7431t;
            canvas.translate(getPaddingLeft() + i, getPaddingTop());
            int lineCount = staticLayout.getLineCount();
            TextPaint textPaint = this.f7420i;
            Paint paint = this.f7421j;
            RectF rectF = this.f7417f;
            if (Color.alpha(this.f7423l) > 0) {
                float f = this.f7412a;
                float lineTop = staticLayout.getLineTop(0);
                paint.setColor(this.f7423l);
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
            int i3 = this.f7425n;
            boolean z = true;
            if (i3 == 1) {
                textPaint.setStrokeJoin(Paint.Join.ROUND);
                textPaint.setStrokeWidth(this.f7413b);
                textPaint.setColor(this.f7424m);
                textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
                staticLayout.draw(canvas);
            } else if (i3 == 2) {
                textPaint.setShadowLayer(this.f7414c, this.f7415d, this.f7416e, this.f7424m);
            } else if (i3 == 3 || i3 == 4) {
                if (i3 != 3) {
                    z = false;
                }
                int i4 = -1;
                int i5 = z ? -1 : this.f7424m;
                if (z) {
                    i4 = this.f7424m;
                }
                float f3 = this.f7414c / 2.0f;
                textPaint.setColor(this.f7422k);
                textPaint.setStyle(Paint.Style.FILL);
                float f4 = -f3;
                textPaint.setShadowLayer(this.f7414c, f4, f4, i5);
                staticLayout.draw(canvas);
                textPaint.setShadowLayer(this.f7414c, f3, f3, i4);
            }
            textPaint.setColor(this.f7422k);
            textPaint.setStyle(Paint.Style.FILL);
            staticLayout.draw(canvas);
            textPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        m31855a(i3 - i);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (m31855a(View.MeasureSpec.getSize(i))) {
            StaticLayout staticLayout = this.f7428q;
            setMeasuredDimension(staticLayout.getWidth() + getPaddingLeft() + getPaddingRight() + (this.f7431t * 2), staticLayout.getHeight() + getPaddingTop() + getPaddingBottom());
            return;
        }
        setMeasuredDimension(16777216, 16777216);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f7423l = i;
        invalidate();
    }
}
