package com.explorestack.iab.vast.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.explorestack.iab.utils.AbstractC9592g;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.utils.C9593h;
import com.explorestack.iab.utils.Utils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/view/IabTextView.class */
public class IabTextView extends TextView implements AbstractC9592g {

    /* renamed from: b */
    private GradientDrawable f32869b;

    /* renamed from: c */
    private Paint f32870c;

    /* renamed from: a */
    private final RectF f32868a = new RectF();

    /* renamed from: d */
    private boolean f32871d = false;

    public IabTextView(Context context) {
        super(context);
        m23824a();
    }

    public IabTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m23824a();
    }

    /* renamed from: a */
    private void m23824a() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.f32869b = gradientDrawable;
        gradientDrawable.setColor(Assets.backgroundColor);
        this.f32869b.setShape(0);
        setBackgroundDrawable(this.f32869b);
        setGravity(17);
        setMaxLines(1);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f32871d || this.f32870c == null) {
            return;
        }
        float height = getHeight() / 2.0f;
        canvas.drawRoundRect(this.f32868a, height, height, this.f32870c);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            float size = (View.MeasureSpec.getSize(i2) - getCompoundPaddingTop()) - getCompoundPaddingRight();
            if (getTextSize() != size) {
                setTextSize(0, size);
            }
        }
        if (mode == 1073741824 && getText() != null) {
            int size2 = View.MeasureSpec.getSize(i);
            int compoundPaddingLeft = getCompoundPaddingLeft();
            int compoundPaddingRight = getCompoundPaddingRight();
            float measureText = getPaint().measureText(getText(), 0, getText().length());
            float f = (size2 - compoundPaddingLeft) - compoundPaddingRight;
            if (f < measureText) {
                float textSize = (int) (getTextSize() * (f / measureText));
                if (getTextSize() != textSize) {
                    setTextSize(0, textSize);
                }
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        Paint paint;
        super.onSizeChanged(i, i2, i3, i4);
        GradientDrawable gradientDrawable = this.f32869b;
        if (gradientDrawable != null) {
            gradientDrawable.setCornerRadius(i2 / 2.0f);
        }
        if (!this.f32871d || (paint = this.f32870c) == null) {
            return;
        }
        float strokeWidth = paint.getStrokeWidth() / 2.0f;
        RectF rectF = this.f32868a;
        float f = BitmapDescriptorFactory.HUE_RED + strokeWidth;
        rectF.set(f, f, i - strokeWidth, i2 - strokeWidth);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        GradientDrawable gradientDrawable = this.f32869b;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(i);
        }
    }

    @Override // com.explorestack.iab.utils.AbstractC9592g
    public void setStyle(C9593h c9593h) {
        boolean booleanValue = c9593h.m24058c().booleanValue();
        this.f32871d = booleanValue;
        if (booleanValue) {
            Paint paint = new Paint(1);
            this.f32870c = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.f32870c.setColor(c9593h.m24073a().intValue());
            this.f32870c.setStrokeWidth(c9593h.m24053e(getContext()).floatValue());
        }
        setTextColor(c9593h.m24073a().intValue());
        setBackgroundColor(c9593h.m24064b().intValue());
        Context context = getContext();
        setTextSize(0, (c9593h.f32597o != null ? Float.valueOf(Utils.m24117a(context, c9593h.f32597o.floatValue())) : Float.valueOf(Utils.m24117a(context, 16.0f))).floatValue());
        setTypeface(Typeface.create(Typeface.DEFAULT, c9593h.m24050h().intValue()));
        setAlpha(c9593h.m24051g().floatValue());
        setPadding(c9593h.m24072a(getContext()).intValue(), c9593h.m24057c(getContext()).intValue(), c9593h.m24063b(getContext()).intValue(), c9593h.m24055d(getContext()).intValue());
    }
}
