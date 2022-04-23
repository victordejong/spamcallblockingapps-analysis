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
import androidx.core.view.v;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.utils.x;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/c.class */
public class c extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    private int f9325a;

    /* renamed from: b  reason: collision with root package name */
    private int f9326b;

    /* renamed from: c  reason: collision with root package name */
    private int[] f9327c;

    /* renamed from: d  reason: collision with root package name */
    private float[] f9328d;
    private LinearGradient e;
    private int f;
    private int g;
    private int h;
    private int i;
    private RectF j;
    private Paint k;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/c$a.class */
    public static class a {

        /* renamed from: c  reason: collision with root package name */
        private int[] f9331c;

        /* renamed from: d  reason: collision with root package name */
        private float[] f9332d;
        private LinearGradient e;
        private int h;
        private int i;

        /* renamed from: a  reason: collision with root package name */
        private int f9329a = x.j(n.a(), "tt_ssxinmian8");

        /* renamed from: b  reason: collision with root package name */
        private int f9330b = x.j(n.a(), "tt_ssxinxian3");
        private int f = 10;
        private int g = 16;

        public a() {
            this.h = 0;
            this.i = 0;
            this.h = 0;
            this.i = 0;
        }

        public a a(int i) {
            this.f9329a = i;
            return this;
        }

        public a a(int[] iArr) {
            this.f9331c = iArr;
            return this;
        }

        public c a() {
            return new c(this.f9329a, this.f9331c, this.f9332d, this.f9330b, this.e, this.f, this.g, this.h, this.i);
        }

        public a b(int i) {
            this.f9330b = i;
            return this;
        }

        public a c(int i) {
            this.f = i;
            return this;
        }

        public a d(int i) {
            this.h = i;
            return this;
        }

        public a e(int i) {
            this.i = i;
            return this;
        }
    }

    public c(int i, int[] iArr, float[] fArr, int i2, LinearGradient linearGradient, int i3, int i4, int i5, int i6) {
        this.f9325a = i;
        this.f9327c = iArr;
        this.f9328d = fArr;
        this.f9326b = i2;
        this.e = linearGradient;
        this.f = i3;
        this.g = i4;
        this.h = i5;
        this.i = i6;
    }

    private void a() {
        int[] iArr;
        Paint paint = new Paint();
        this.k = paint;
        boolean z = true;
        paint.setAntiAlias(true);
        this.k.setShadowLayer(this.g, this.h, this.i, this.f9326b);
        if (this.j == null || (iArr = this.f9327c) == null || iArr.length <= 1) {
            this.k.setColor(this.f9325a);
            return;
        }
        float[] fArr = this.f9328d;
        if (fArr == null || fArr.length <= 0 || fArr.length != iArr.length) {
            z = false;
        }
        Paint paint2 = this.k;
        LinearGradient linearGradient = this.e;
        LinearGradient linearGradient2 = linearGradient;
        if (linearGradient == null) {
            linearGradient2 = new LinearGradient(this.j.left, (float) BitmapDescriptorFactory.HUE_RED, this.j.right, (float) BitmapDescriptorFactory.HUE_RED, this.f9327c, z ? this.f9328d : null, Shader.TileMode.CLAMP);
        }
        paint2.setShader(linearGradient2);
    }

    public static void a(View view, a aVar) {
        if (view != null && aVar != null) {
            view.setLayerType(1, null);
            v.a(view, aVar.a());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.j == null) {
            Rect bounds = getBounds();
            this.j = new RectF((bounds.left + this.g) - this.h, (bounds.top + this.g) - this.i, (bounds.right - this.g) - this.h, (bounds.bottom - this.g) - this.i);
        }
        if (this.k == null) {
            a();
        }
        RectF rectF = this.j;
        int i = this.f;
        canvas.drawRoundRect(rectF, i, i, this.k);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Paint paint = this.k;
        if (paint != null) {
            paint.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Paint paint = this.k;
        if (paint != null) {
            paint.setColorFilter(colorFilter);
        }
    }
}
