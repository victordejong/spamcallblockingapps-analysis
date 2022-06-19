package com.allinone.callerid.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.load.AbstractC4148h;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import com.bumptech.glide.load.resource.bitmap.C4297e;
import java.security.MessageDigest;
/* renamed from: com.allinone.callerid.util.w0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/w0.class */
public class C3871w0 implements AbstractC4148h<Bitmap> {

    /* renamed from: b */
    private AbstractC4096e f12218b;

    /* renamed from: c */
    private float f12219c;

    /* renamed from: d */
    private boolean f12220d;

    /* renamed from: e */
    private boolean f12221e;

    /* renamed from: f */
    private boolean f12222f;

    /* renamed from: g */
    private boolean f12223g;

    public C3871w0(Context context, float f) {
        this.f12218b = ComponentCallbacks2C3958c.m23695c(context).m23692f();
        this.f12219c = f;
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    /* renamed from: a */
    public void mo22754a(MessageDigest messageDigest) {
    }

    @Override // com.bumptech.glide.load.AbstractC4148h
    /* renamed from: b */
    public AbstractC4083s<Bitmap> mo22910b(Context context, AbstractC4083s<Bitmap> abstractC4083s, int i, int i2) {
        int i3;
        int i4;
        Bitmap bitmap = abstractC4083s.get();
        if (i > i2) {
            float f = i2;
            float f2 = i;
            i3 = bitmap.getWidth();
            int width = (int) (bitmap.getWidth() * (f / f2));
            i4 = width;
            if (width > bitmap.getHeight()) {
                i4 = bitmap.getHeight();
                i3 = (int) (bitmap.getHeight() * (f2 / f));
            }
        } else if (i < i2) {
            float f3 = i;
            float f4 = i2;
            i4 = bitmap.getHeight();
            i3 = (int) (bitmap.getHeight() * (f3 / f4));
            if (i3 > bitmap.getWidth()) {
                i3 = bitmap.getWidth();
                i4 = (int) (bitmap.getWidth() * (f4 / f3));
            }
        } else {
            i3 = bitmap.getHeight();
            i4 = i3;
        }
        this.f12219c *= i4 / i2;
        Bitmap mo23258d = this.f12218b.mo23258d(i3, i4, Bitmap.Config.ARGB_8888);
        Bitmap bitmap2 = mo23258d;
        if (mo23258d == null) {
            bitmap2 = Bitmap.createBitmap(i3, i4, Bitmap.Config.ARGB_8888);
        }
        Canvas canvas = new Canvas(bitmap2);
        Paint paint = new Paint();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        int width2 = (bitmap.getWidth() - i3) / 2;
        int height = (bitmap.getHeight() - i4) / 2;
        if (width2 != 0 || height != 0) {
            Matrix matrix = new Matrix();
            matrix.setTranslate(-width2, -height);
            bitmapShader.setLocalMatrix(matrix);
        }
        paint.setShader(bitmapShader);
        paint.setAntiAlias(true);
        RectF rectF = new RectF(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        float f5 = this.f12219c;
        canvas.drawRoundRect(rectF, f5, f5, paint);
        if (!this.f12220d) {
            float f6 = this.f12219c;
            canvas.drawRect(0.0f, 0.0f, f6, f6, paint);
        }
        if (!this.f12221e) {
            canvas.drawRect(canvas.getWidth() - this.f12219c, 0.0f, canvas.getWidth(), this.f12219c, paint);
        }
        if (!this.f12222f) {
            float height2 = canvas.getHeight();
            float f7 = this.f12219c;
            canvas.drawRect(0.0f, height2 - f7, f7, canvas.getHeight(), paint);
        }
        if (!this.f12223g) {
            canvas.drawRect(canvas.getWidth() - this.f12219c, canvas.getHeight() - this.f12219c, canvas.getWidth(), canvas.getHeight(), paint);
        }
        return C4297e.m22944f(bitmap2, this.f12218b);
    }

    /* renamed from: c */
    public void m23903c(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f12220d = z;
        this.f12221e = z2;
        this.f12222f = z3;
        this.f12223g = z4;
    }
}
