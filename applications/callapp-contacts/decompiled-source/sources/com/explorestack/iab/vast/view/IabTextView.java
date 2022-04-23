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
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.utils.g;
import com.explorestack.iab.utils.h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/view/IabTextView.class */
public class IabTextView extends TextView implements g {

    /* renamed from: b  reason: collision with root package name */
    private GradientDrawable f19330b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f19331c;

    /* renamed from: a  reason: collision with root package name */
    private final RectF f19329a = new RectF();

    /* renamed from: d  reason: collision with root package name */
    private boolean f19332d = false;

    public IabTextView(Context context) {
        super(context);
        a();
    }

    public IabTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    private void a() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.f19330b = gradientDrawable;
        gradientDrawable.setColor(Assets.backgroundColor);
        this.f19330b.setShape(0);
        setBackgroundDrawable(this.f19330b);
        setGravity(17);
        setMaxLines(1);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f19332d && this.f19331c != null) {
            float height = getHeight() / 2.0f;
            canvas.drawRoundRect(this.f19329a, height, height, this.f19331c);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
        GradientDrawable gradientDrawable = this.f19330b;
        if (gradientDrawable != null) {
            gradientDrawable.setCornerRadius(i2 / 2.0f);
        }
        if (this.f19332d && (paint = this.f19331c) != null) {
            float strokeWidth = paint.getStrokeWidth() / 2.0f;
            RectF rectF = this.f19329a;
            float f = BitmapDescriptorFactory.HUE_RED + strokeWidth;
            rectF.set(f, f, i - strokeWidth, i2 - strokeWidth);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        GradientDrawable gradientDrawable = this.f19330b;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(i);
        }
    }

    @Override // com.explorestack.iab.utils.g
    public void setStyle(h hVar) {
        boolean booleanValue = hVar.c().booleanValue();
        this.f19332d = booleanValue;
        if (booleanValue) {
            Paint paint = new Paint(1);
            this.f19331c = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.f19331c.setColor(hVar.a().intValue());
            this.f19331c.setStrokeWidth(hVar.e(getContext()).floatValue());
        }
        setTextColor(hVar.a().intValue());
        setBackgroundColor(hVar.b().intValue());
        Context context = getContext();
        setTextSize(0, (hVar.o != null ? Float.valueOf(Utils.a(context, hVar.o.floatValue())) : Float.valueOf(Utils.a(context, 16.0f))).floatValue());
        setTypeface(Typeface.create(Typeface.DEFAULT, hVar.h().intValue()));
        setAlpha(hVar.g().floatValue());
        setPadding(hVar.a(getContext()).intValue(), hVar.c(getContext()).intValue(), hVar.b(getContext()).intValue(), hVar.d(getContext()).intValue());
    }
}
