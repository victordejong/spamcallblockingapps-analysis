package com.inmobi.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import com.inmobi.ads.AbstractC8305t;
import com.mopub.volley.BuildConfig;
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/GifView.class */
public class GifView extends ImageView implements AbstractC8305t.AbstractC8306a {

    /* renamed from: a */
    public AbstractC8305t f31278a;

    /* renamed from: b */
    public float f31279b;

    /* renamed from: c */
    public boolean f31280c;

    /* renamed from: d */
    public String f31281d;

    public GifView(Context context) {
        this(context, null);
    }

    public GifView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f31279b = -1.0f;
        this.f31280c = true;
        this.f31281d = BuildConfig.VERSION_NAME;
        setLayerType(1, null);
    }

    public GifView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f31279b = -1.0f;
        this.f31280c = true;
        this.f31281d = BuildConfig.VERSION_NAME;
        setLayerType(1, null);
    }

    /* renamed from: a */
    private void m6735a(Canvas canvas) {
        char c;
        float f;
        float f2;
        canvas.save();
        float f3 = this.f31279b;
        canvas.scale(f3, f3);
        float width = getWidth();
        float height = getHeight();
        float b = this.f31278a.mo5951b() * this.f31279b;
        float c2 = this.f31278a.mo5950c() * this.f31279b;
        String str = this.f31281d;
        int hashCode = str.hashCode();
        if (hashCode != -1362001767) {
            if (hashCode == 727618043 && str.equals("aspectFill")) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals("aspectFit")) {
                c = 1;
            }
            c = 65535;
        }
        float f4 = 0.0f;
        if (c == 0) {
            f = Math.max(width / b, height / c2);
            float f5 = (width - (b * f)) / 2.0f;
            float f6 = this.f31279b;
            f4 = f5 / (f * f6);
            f2 = ((height - (c2 * f)) / 2.0f) / (f6 * f);
            canvas.scale(f, f);
        } else if (c != 1) {
            f = height / c2;
            canvas.scale(width / b, f);
            f2 = 0.0f;
        } else {
            f = Math.min(width / b, height / c2);
            float f7 = (width - (b * f)) / 2.0f;
            float f8 = this.f31279b;
            f4 = f7 / (f * f8);
            f2 = ((height - (c2 * f)) / 2.0f) / (f8 * f);
            canvas.scale(f, f);
        }
        float[] fArr = {f4, f2, f};
        this.f31278a.mo5954a(canvas, fArr[0], fArr[1]);
        canvas.restore();
    }

    /* renamed from: b */
    private void m6734b() {
        if (!this.f31280c) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            postInvalidateOnAnimation();
        } else {
            invalidate();
        }
    }

    private int getDensity() {
        int i;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (getContext() instanceof Activity) {
            ((Activity) getContext()).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            i = displayMetrics.densityDpi;
        } else {
            i = 240;
        }
        return i;
    }

    private float getScale() {
        float density = getContext().getResources().getDisplayMetrics().densityDpi / getDensity();
        this.f31279b = density;
        if (density < 0.1f) {
            this.f31279b = 0.1f;
        }
        if (this.f31279b > 5.0f) {
            this.f31279b = 5.0f;
        }
        return this.f31279b;
    }

    @Override // com.inmobi.ads.AbstractC8305t.AbstractC8306a
    /* renamed from: a */
    public final void mo5956a() {
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        AbstractC8305t tVar = this.f31278a;
        if (tVar == null) {
            return;
        }
        if (tVar.mo5949d()) {
            this.f31278a.mo5948e();
            m6735a(canvas);
            m6734b();
            return;
        }
        m6735a(canvas);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f31280c = getVisibility() == 0;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        this.f31279b = getScale();
        Drawable drawable = getDrawable();
        int i3 = 0;
        int i4 = 1;
        i4 = 1;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            i3 = intrinsicWidth;
            if (intrinsicWidth <= 0) {
                i3 = 1;
            }
            if (intrinsicHeight > 0) {
                i4 = intrinsicHeight;
            }
        } else {
            AbstractC8305t tVar = this.f31278a;
            if (tVar != null) {
                int b = tVar.mo5951b();
                int c = this.f31278a.mo5950c();
                i3 = b;
                if (b <= 0) {
                    i3 = 1;
                }
                if (c > 0) {
                    i4 = c;
                }
            } else {
                i4 = 0;
            }
        }
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        setMeasuredDimension(ImageView.resolveSize(Math.max(i3 + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i), ImageView.resolveSize(Math.max(i4 + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i2));
    }

    @Override // android.view.View
    public void onScreenStateChanged(int i) {
        super.onScreenStateChanged(i);
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        this.f31280c = z;
        m6734b();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        this.f31280c = i == 0;
        m6734b();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f31280c = i == 0;
        m6734b();
    }

    public void setContentMode(String str) {
        this.f31281d = str;
    }

    public void setGif(AbstractC8305t tVar) {
        this.f31278a = tVar;
        if (tVar != null) {
            tVar.mo5953a(this);
            this.f31278a.mo5955a();
        }
        requestLayout();
    }

    public void setPaused(boolean z) {
        this.f31278a.mo5952a(z);
    }
}
