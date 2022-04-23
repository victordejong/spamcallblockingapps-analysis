package com.gogolook.commonlib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.core.content.ContextCompat;
import com.gogolook.commonlib.R$styleable;
import p081h.p160h.p172b.p173a.C6291a;
import p081h.p160h.p172b.p173a.C6299f;
/* loaded from: classes2-dex2jar.jar:com/gogolook/commonlib/view/IconFontTextView.class */
public class IconFontTextView extends TextView {

    /* renamed from: h */
    public static final int f6118h = Color.parseColor("#7f7f7f");

    /* renamed from: a */
    public int f6119a;

    /* renamed from: b */
    public int f6120b;

    /* renamed from: c */
    public int f6121c;

    /* renamed from: d */
    public int f6122d;

    /* renamed from: e */
    public float f6123e;

    /* renamed from: f */
    public TextPaint f6124f;

    /* renamed from: g */
    public String f6125g;

    public IconFontTextView(Context context) {
        this(context, null);
    }

    public IconFontTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public IconFontTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6121c = -1;
        this.f6123e = 0.0f;
        int i2 = f6118h;
        try {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.IconFontTextView, i, 0);
            this.f6121c = obtainStyledAttributes.getInt(R$styleable.IconFontTextView_bgShape, -1);
            i2 = obtainStyledAttributes.getColor(R$styleable.IconFontTextView_bgColor, f6118h);
        } catch (Exception e) {
            C6291a.m23382a("[IconFontTextView] exception : " + e.toString());
        }
        this.f6125g = "WhosCall_IconFonts.ttf";
        int i3 = this.f6121c;
        if (i3 == 0) {
            ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
            shapeDrawable.getPaint().setColor(i2);
            shapeDrawable.getPaint().setAntiAlias(true);
            setBackgroundDrawable(shapeDrawable);
        } else if (i3 == 1) {
            float a = m32254a(context, 5.0f);
            ShapeDrawable shapeDrawable2 = new ShapeDrawable(new RoundRectShape(new float[]{a, a, a, a, a, a, a, a}, null, null));
            shapeDrawable2.getPaint().setColor(i2);
            shapeDrawable2.getPaint().setAntiAlias(true);
            setBackgroundDrawable(shapeDrawable2);
        }
        m32252c();
    }

    /* renamed from: a */
    public static int m32254a(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: a */
    public void m32256a() {
        if (this.f6124f == null) {
            this.f6124f = new TextPaint();
        }
        this.f6124f.setTextSize(getTextSize());
        this.f6124f.setTypeface(getTypeface());
        this.f6124f.setFlags(getPaintFlags());
        this.f6124f.setStyle(Paint.Style.STROKE);
        this.f6124f.setColor(this.f6122d);
        this.f6124f.setStrokeWidth(this.f6123e);
    }

    /* renamed from: a */
    public void m32255a(@ColorRes int i) {
        setTextColor(ContextCompat.getColor(getContext(), i));
    }

    /* renamed from: b */
    public void m32253b() {
        this.f6119a = (int) ((getWidth() - this.f6124f.measureText(getText().toString())) / 2.0f);
        this.f6120b = getBaseline();
    }

    /* renamed from: c */
    public final void m32252c() {
        if (!TextUtils.isEmpty(this.f6125g)) {
            try {
                Typeface a = C6299f.m23340a(getContext(), this.f6125g);
                if (a != null) {
                    setTypeface(a);
                }
            } catch (Exception e) {
                C6291a.m23382a("[IconFontTextView] setTypeface exception : " + e.toString());
            }
        }
        m32256a();
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        TextPaint textPaint;
        String charSequence = getText().toString();
        if (!TextUtils.isEmpty(charSequence) && (textPaint = this.f6124f) != null) {
            canvas.drawText(charSequence, this.f6119a, this.f6120b, textPaint);
            super.onDraw(canvas);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m32253b();
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        m32256a();
    }

    @Override // android.widget.TextView
    public void setTextColor(@ColorInt int i) {
        super.setTextColor(i);
        m32256a();
    }
}
