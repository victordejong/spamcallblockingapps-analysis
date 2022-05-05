package com.google.android.material.shadow;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/shadow/ShadowRenderer.class */
public class ShadowRenderer {

    /* renamed from: i */
    private static final int[] f11035i = new int[3];

    /* renamed from: j */
    private static final float[] f11036j = {0.0f, 0.5f, 1.0f};

    /* renamed from: k */
    private static final int[] f11037k = new int[4];

    /* renamed from: l */
    private static final float[] f11038l = {0.0f, 0.0f, 0.5f, 1.0f};
    @NonNull

    /* renamed from: a */
    private final Paint f11039a;
    @NonNull

    /* renamed from: b */
    private final Paint f11040b;
    @NonNull

    /* renamed from: c */
    private final Paint f11041c;

    /* renamed from: d */
    private int f11042d;

    /* renamed from: e */
    private int f11043e;

    /* renamed from: f */
    private int f11044f;

    /* renamed from: g */
    private final Path f11045g;

    /* renamed from: h */
    private Paint f11046h;

    public ShadowRenderer() {
        this(-16777216);
    }

    public ShadowRenderer(int i) {
        this.f11045g = new Path();
        this.f11046h = new Paint();
        this.f11039a = new Paint();
        m9357d(i);
        this.f11046h.setColor(0);
        Paint paint = new Paint(4);
        this.f11040b = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f11041c = new Paint(this.f11040b);
    }

    /* renamed from: a */
    public void m9360a(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i, float f, float f2) {
        boolean z = f2 < 0.0f;
        Path path = this.f11045g;
        if (z) {
            int[] iArr = f11037k;
            iArr[0] = 0;
            iArr[1] = this.f11044f;
            iArr[2] = this.f11043e;
            iArr[3] = this.f11042d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f2);
            path.close();
            float f3 = -i;
            rectF.inset(f3, f3);
            int[] iArr2 = f11037k;
            iArr2[0] = 0;
            iArr2[1] = this.f11042d;
            iArr2[2] = this.f11043e;
            iArr2[3] = this.f11044f;
        }
        float width = rectF.width() / 2.0f;
        if (width > 0.0f) {
            float f4 = 1.0f - (i / width);
            float f5 = (1.0f - f4) / 2.0f;
            float[] fArr = f11038l;
            fArr[1] = f4;
            fArr[2] = f5 + f4;
            this.f11040b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), width, f11037k, f11038l, Shader.TileMode.CLAMP));
            canvas.save();
            canvas.concat(matrix);
            if (!z) {
                canvas.clipPath(path, Region.Op.DIFFERENCE);
                canvas.drawPath(path, this.f11046h);
            }
            canvas.drawArc(rectF, f, f2, true, this.f11040b);
            canvas.restore();
        }
    }

    /* renamed from: b */
    public void m9359b(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i) {
        rectF.bottom += i;
        rectF.offset(0.0f, -i);
        int[] iArr = f11035i;
        iArr[0] = this.f11044f;
        iArr[1] = this.f11043e;
        iArr[2] = this.f11042d;
        Paint paint = this.f11041c;
        float f = rectF.left;
        paint.setShader(new LinearGradient(f, rectF.top, f, rectF.bottom, f11035i, f11036j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f11041c);
        canvas.restore();
    }

    @NonNull
    /* renamed from: c */
    public Paint m9358c() {
        return this.f11039a;
    }

    /* renamed from: d */
    public void m9357d(int i) {
        this.f11042d = ColorUtils.m19584d(i, 68);
        this.f11043e = ColorUtils.m19584d(i, 20);
        this.f11044f = ColorUtils.m19584d(i, 0);
        this.f11039a.setColor(this.f11042d);
    }
}
