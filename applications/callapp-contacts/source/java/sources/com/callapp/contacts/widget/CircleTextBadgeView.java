package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.callapp.contacts.C5563R;
import com.callapp.contacts.util.ThemeUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CircleTextBadgeView.class */
public class CircleTextBadgeView extends View {

    /* renamed from: a */
    private Paint f28633a;

    /* renamed from: b */
    private Paint f28634b;

    /* renamed from: c */
    private int f28635c;

    /* renamed from: d */
    private String f28636d;

    /* renamed from: e */
    private RectF f28637e = new RectF();

    /* renamed from: f */
    private float f28638f;

    /* renamed from: g */
    private float f28639g;

    public CircleTextBadgeView(Context context) {
        super(context);
        m26793a(null);
    }

    public CircleTextBadgeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m26793a(attributeSet);
    }

    public CircleTextBadgeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m26793a(attributeSet);
    }

    /* renamed from: a */
    private void m26793a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C5563R.styleable.CircleTextBadgeView);
            this.f28635c = obtainStyledAttributes.getColor(0, ThemeUtils.getColor(2131099914));
            this.f28636d = obtainStyledAttributes.getString(1);
            this.f28639g = obtainStyledAttributes.getDimension(2, getResources().getDimension(2131165445));
            if (this.f28636d == null) {
                this.f28636d = "";
            }
            obtainStyledAttributes.recycle();
        } else {
            this.f28635c = ThemeUtils.getColor(2131099914);
            this.f28636d = "";
            this.f28639g = getResources().getDimension(2131165445);
        }
        Paint paint = new Paint();
        this.f28633a = paint;
        paint.setColor(this.f28635c);
        this.f28633a.setAntiAlias(true);
        this.f28633a.setStyle(Paint.Style.FILL_AND_STROKE);
        Paint paint2 = new Paint();
        this.f28634b = paint2;
        paint2.setAntiAlias(true);
        this.f28634b.setColor(-1);
        this.f28634b.setTextAlign(Paint.Align.CENTER);
        this.f28634b.setTextSize(this.f28639g);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawOval(this.f28637e, this.f28633a);
        canvas.drawText(this.f28636d, this.f28637e.centerX(), this.f28637e.centerY() + this.f28638f, this.f28634b);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f28637e.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
        this.f28638f = ((this.f28634b.descent() - this.f28634b.ascent()) / 2.0f) - this.f28634b.descent();
    }

    public void setCircleColor(int i) {
        this.f28635c = i;
        this.f28633a.setColor(i);
        invalidate();
    }

    public void setCircleLetter(String str) {
        this.f28636d = str;
        invalidate();
    }

    public void setTextSize(float f) {
        this.f28639g = f;
        invalidate();
    }
}
