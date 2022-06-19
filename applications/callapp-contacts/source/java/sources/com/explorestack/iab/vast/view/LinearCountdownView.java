package com.explorestack.iab.vast.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.explorestack.iab.utils.AbstractC9592g;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.utils.C9593h;
import com.explorestack.iab.utils.Utils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/view/LinearCountdownView.class */
public class LinearCountdownView extends View implements AbstractC9592g {

    /* renamed from: b */
    private final Paint f32875b = new Paint(1);

    /* renamed from: a */
    public float f32874a = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: c */
    private float f32876c = 15.0f;

    /* renamed from: d */
    private int f32877d = Assets.mainAssetsColor;

    /* renamed from: e */
    private int f32878e = 0;

    public LinearCountdownView(Context context) {
        super(context);
        m23823a();
    }

    public LinearCountdownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m23823a();
    }

    /* renamed from: a */
    private void m23823a() {
        this.f32876c = Utils.m24117a(getContext(), 4.0f);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        float measuredHeight = (getMeasuredHeight() / 2.0f) + getPaddingTop();
        this.f32875b.setStrokeWidth(this.f32876c);
        this.f32875b.setColor(this.f32878e);
        canvas.drawLine(getPaddingLeft(), measuredHeight, getPaddingLeft() + width, measuredHeight, this.f32875b);
        this.f32875b.setColor(this.f32877d);
        canvas.drawLine(getPaddingLeft(), measuredHeight, getPaddingLeft() + ((width * this.f32874a) / 100.0f), measuredHeight, this.f32875b);
    }

    @Override // com.explorestack.iab.utils.AbstractC9592g
    public void setStyle(C9593h c9593h) {
        this.f32877d = c9593h.m24073a().intValue();
        this.f32878e = c9593h.m24064b().intValue();
        this.f32876c = c9593h.m24053e(getContext()).floatValue();
        setAlpha(c9593h.m24051g().floatValue());
        postInvalidate();
    }
}
