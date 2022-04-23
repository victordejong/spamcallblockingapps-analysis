package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.callapp.contacts.R;
import com.callapp.contacts.util.ThemeUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CircleTextBadgeView.class */
public class CircleTextBadgeView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f16449a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f16450b;

    /* renamed from: c  reason: collision with root package name */
    private int f16451c;

    /* renamed from: d  reason: collision with root package name */
    private String f16452d;
    private RectF e = new RectF();
    private float f;
    private float g;

    public CircleTextBadgeView(Context context) {
        super(context);
        a(null);
    }

    public CircleTextBadgeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    public CircleTextBadgeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet);
    }

    private void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.CircleTextBadgeView);
            this.f16451c = obtainStyledAttributes.getColor(0, ThemeUtils.getColor(2131099914));
            this.f16452d = obtainStyledAttributes.getString(1);
            this.g = obtainStyledAttributes.getDimension(2, getResources().getDimension(2131165445));
            if (this.f16452d == null) {
                this.f16452d = "";
            }
            obtainStyledAttributes.recycle();
        } else {
            this.f16451c = ThemeUtils.getColor(2131099914);
            this.f16452d = "";
            this.g = getResources().getDimension(2131165445);
        }
        Paint paint = new Paint();
        this.f16449a = paint;
        paint.setColor(this.f16451c);
        this.f16449a.setAntiAlias(true);
        this.f16449a.setStyle(Paint.Style.FILL_AND_STROKE);
        Paint paint2 = new Paint();
        this.f16450b = paint2;
        paint2.setAntiAlias(true);
        this.f16450b.setColor(-1);
        this.f16450b.setTextAlign(Paint.Align.CENTER);
        this.f16450b.setTextSize(this.g);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawOval(this.e, this.f16449a);
        canvas.drawText(this.f16452d, this.e.centerX(), this.e.centerY() + this.f, this.f16450b);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.e.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
        this.f = ((this.f16450b.descent() - this.f16450b.ascent()) / 2.0f) - this.f16450b.descent();
    }

    public void setCircleColor(int i) {
        this.f16451c = i;
        this.f16449a.setColor(i);
        invalidate();
    }

    public void setCircleLetter(String str) {
        this.f16452d = str;
        invalidate();
    }

    public void setTextSize(float f) {
        this.g = f;
        invalidate();
    }
}
