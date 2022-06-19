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
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/TTCornersWebView.class */
public class TTCornersWebView extends WebView {

    /* renamed from: a */
    private int f17460a;

    /* renamed from: b */
    private int f17461b;

    /* renamed from: c */
    private int f17462c;

    /* renamed from: d */
    private int f17463d;

    /* renamed from: e */
    private Paint f17464e;

    /* renamed from: f */
    private Paint f17465f;

    /* renamed from: g */
    private float[] f17466g = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};

    public TTCornersWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m34075a(context, attributeSet);
    }

    public TTCornersWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m34075a(context, attributeSet);
    }

    /* renamed from: a */
    private void m34075a(Context context, AttributeSet attributeSet) {
        Paint paint = new Paint();
        this.f17464e = paint;
        paint.setColor(-1);
        this.f17464e.setAntiAlias(true);
        this.f17464e.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        Paint paint2 = new Paint();
        this.f17465f = paint2;
        paint2.setXfermode(null);
        this.f17465f.setAntiAlias(true);
        float m32232a = C5443ag.m32232a(context, 14.0f);
        m34076a(m32232a, m32232a, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
    }

    /* renamed from: a */
    public void m34076a(float f, float f2, float f3, float f4) {
        float[] fArr = this.f17466g;
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
        this.f17462c = getScrollX();
        this.f17463d = getScrollY();
        Path path = new Path();
        int i = this.f17463d;
        path.addRoundRect(new RectF(BitmapDescriptorFactory.HUE_RED, i, this.f17462c + this.f17460a, i + this.f17461b), this.f17466g, Path.Direction.CW);
        canvas.clipPath(path);
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f17460a = getMeasuredWidth();
        this.f17461b = getMeasuredHeight();
    }
}
