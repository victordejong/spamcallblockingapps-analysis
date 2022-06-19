package com.bytedance.sdk.openadsdk.core.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.view.C0926v;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.bytedance.sdk.openadsdk.core.widget.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/c.class */
public class C4776c extends Drawable {

    /* renamed from: a */
    private int f17537a;

    /* renamed from: b */
    private int f17538b;

    /* renamed from: c */
    private int[] f17539c;

    /* renamed from: d */
    private float[] f17540d;

    /* renamed from: e */
    private LinearGradient f17541e;

    /* renamed from: f */
    private int f17542f;

    /* renamed from: g */
    private int f17543g;

    /* renamed from: h */
    private int f17544h;

    /* renamed from: i */
    private int f17545i;

    /* renamed from: j */
    private RectF f17546j;

    /* renamed from: k */
    private Paint f17547k;

    /* renamed from: com.bytedance.sdk.openadsdk.core.widget.c$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/c$a.class */
    public static class C4777a {

        /* renamed from: c */
        private int[] f17550c;

        /* renamed from: d */
        private float[] f17551d;

        /* renamed from: e */
        private LinearGradient f17552e;

        /* renamed from: h */
        private int f17555h;

        /* renamed from: i */
        private int f17556i;

        /* renamed from: a */
        private int f17548a = C5486x.m32061j(C4600n.m34815a(), "tt_ssxinmian8");

        /* renamed from: b */
        private int f17549b = C5486x.m32061j(C4600n.m34815a(), "tt_ssxinxian3");

        /* renamed from: f */
        private int f17553f = 10;

        /* renamed from: g */
        private int f17554g = 16;

        public C4777a() {
            this.f17555h = 0;
            this.f17556i = 0;
            this.f17555h = 0;
            this.f17556i = 0;
        }

        /* renamed from: a */
        public C4777a m34038a(int i) {
            this.f17548a = i;
            return this;
        }

        /* renamed from: a */
        public C4777a m34037a(int[] iArr) {
            this.f17550c = iArr;
            return this;
        }

        /* renamed from: a */
        public C4776c m34039a() {
            return new C4776c(this.f17548a, this.f17550c, this.f17551d, this.f17549b, this.f17552e, this.f17553f, this.f17554g, this.f17555h, this.f17556i);
        }

        /* renamed from: b */
        public C4777a m34036b(int i) {
            this.f17549b = i;
            return this;
        }

        /* renamed from: c */
        public C4777a m34035c(int i) {
            this.f17553f = i;
            return this;
        }

        /* renamed from: d */
        public C4777a m34034d(int i) {
            this.f17555h = i;
            return this;
        }

        /* renamed from: e */
        public C4777a m34033e(int i) {
            this.f17556i = i;
            return this;
        }
    }

    public C4776c(int i, int[] iArr, float[] fArr, int i2, LinearGradient linearGradient, int i3, int i4, int i5, int i6) {
        this.f17537a = i;
        this.f17539c = iArr;
        this.f17540d = fArr;
        this.f17538b = i2;
        this.f17541e = linearGradient;
        this.f17542f = i3;
        this.f17543g = i4;
        this.f17544h = i5;
        this.f17545i = i6;
    }

    /* renamed from: a */
    private void m34041a() {
        int[] iArr;
        Paint paint = new Paint();
        this.f17547k = paint;
        boolean z = true;
        paint.setAntiAlias(true);
        this.f17547k.setShadowLayer(this.f17543g, this.f17544h, this.f17545i, this.f17538b);
        if (this.f17546j == null || (iArr = this.f17539c) == null || iArr.length <= 1) {
            this.f17547k.setColor(this.f17537a);
            return;
        }
        float[] fArr = this.f17540d;
        if (fArr == null || fArr.length <= 0 || fArr.length != iArr.length) {
            z = false;
        }
        Paint paint2 = this.f17547k;
        LinearGradient linearGradient = this.f17541e;
        LinearGradient linearGradient2 = linearGradient;
        if (linearGradient == null) {
            linearGradient2 = new LinearGradient(this.f17546j.left, (float) BitmapDescriptorFactory.HUE_RED, this.f17546j.right, (float) BitmapDescriptorFactory.HUE_RED, this.f17539c, z ? this.f17540d : null, Shader.TileMode.CLAMP);
        }
        paint2.setShader(linearGradient2);
    }

    /* renamed from: a */
    public static void m34040a(View view, C4777a c4777a) {
        if (view == null || c4777a == null) {
            return;
        }
        view.setLayerType(1, null);
        C0926v.m44128a(view, c4777a.m34039a());
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f17546j == null) {
            Rect bounds = getBounds();
            this.f17546j = new RectF((bounds.left + this.f17543g) - this.f17544h, (bounds.top + this.f17543g) - this.f17545i, (bounds.right - this.f17543g) - this.f17544h, (bounds.bottom - this.f17543g) - this.f17545i);
        }
        if (this.f17547k == null) {
            m34041a();
        }
        RectF rectF = this.f17546j;
        int i = this.f17542f;
        canvas.drawRoundRect(rectF, i, i, this.f17547k);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Paint paint = this.f17547k;
        if (paint != null) {
            paint.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Paint paint = this.f17547k;
        if (paint != null) {
            paint.setColorFilter(colorFilter);
        }
    }
}
