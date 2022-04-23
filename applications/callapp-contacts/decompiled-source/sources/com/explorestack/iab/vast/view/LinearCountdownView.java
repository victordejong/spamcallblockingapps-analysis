package com.explorestack.iab.vast.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.utils.g;
import com.explorestack.iab.utils.h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/view/LinearCountdownView.class */
public class LinearCountdownView extends View implements g {

    /* renamed from: b  reason: collision with root package name */
    private final Paint f19336b = new Paint(1);

    /* renamed from: a  reason: collision with root package name */
    public float f19335a = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: c  reason: collision with root package name */
    private float f19337c = 15.0f;

    /* renamed from: d  reason: collision with root package name */
    private int f19338d = Assets.mainAssetsColor;
    private int e = 0;

    public LinearCountdownView(Context context) {
        super(context);
        a();
    }

    public LinearCountdownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    private void a() {
        this.f19337c = Utils.a(getContext(), 4.0f);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        float measuredHeight = (getMeasuredHeight() / 2.0f) + getPaddingTop();
        this.f19336b.setStrokeWidth(this.f19337c);
        this.f19336b.setColor(this.e);
        canvas.drawLine(getPaddingLeft(), measuredHeight, getPaddingLeft() + width, measuredHeight, this.f19336b);
        this.f19336b.setColor(this.f19338d);
        canvas.drawLine(getPaddingLeft(), measuredHeight, getPaddingLeft() + ((width * this.f19335a) / 100.0f), measuredHeight, this.f19336b);
    }

    @Override // com.explorestack.iab.utils.g
    public void setStyle(h hVar) {
        this.f19338d = hVar.a().intValue();
        this.e = hVar.b().intValue();
        this.f19337c = hVar.e(getContext()).floatValue();
        setAlpha(hVar.g().floatValue());
        postInvalidate();
    }
}
