package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/TTCornersWebView.class */
public class TTCornersWebView extends WebView {

    /* renamed from: a  reason: collision with root package name */
    private int f9292a;

    /* renamed from: b  reason: collision with root package name */
    private int f9293b;

    /* renamed from: c  reason: collision with root package name */
    private int f9294c;

    /* renamed from: d  reason: collision with root package name */
    private int f9295d;
    private Paint e;
    private Paint f;
    private float[] g = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};

    public TTCornersWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public TTCornersWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        Paint paint = new Paint();
        this.e = paint;
        paint.setColor(-1);
        this.e.setAntiAlias(true);
        this.e.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        Paint paint2 = new Paint();
        this.f = paint2;
        paint2.setXfermode(null);
        this.f.setAntiAlias(true);
        float a2 = ag.a(context, 14.0f);
        a(a2, a2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
    }

    public void a(float f, float f2, float f3, float f4) {
        float[] fArr = this.g;
        fArr[0] = f;
        fArr[1] = f;
        fArr[2] = f2;
        fArr[3] = f2;
        fArr[4] = f3;
        fArr[5] = f3;
        fArr[6] = f4;
        fArr[7] = f4;
    }

    @Override // android.webkit.WebView, android.view.View
    public void onDraw(Canvas canvas) {
        this.f9294c = getScrollX();
        this.f9295d = getScrollY();
        Path path = new Path();
        int i = this.f9295d;
        path.addRoundRect(new RectF(BitmapDescriptorFactory.HUE_RED, i, this.f9294c + this.f9292a, i + this.f9293b), this.g, Path.Direction.CW);
        canvas.clipPath(path);
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f9292a = getMeasuredWidth();
        this.f9293b = getMeasuredHeight();
    }
}
