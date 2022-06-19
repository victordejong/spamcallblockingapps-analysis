package com.google.android.material.p158p;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import androidx.core.graphics.C0529a;
/* renamed from: com.google.android.material.p.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/p/a.class */
public class C4728a {

    /* renamed from: g */
    private static final int[] f20449g = new int[3];

    /* renamed from: h */
    private static final float[] f20450h = {0.0f, 0.5f, 1.0f};

    /* renamed from: i */
    private static final int[] f20451i = new int[4];

    /* renamed from: j */
    private static final float[] f20452j = {0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: a */
    private final Paint f20453a;

    /* renamed from: b */
    private final Paint f20454b;

    /* renamed from: c */
    private final Paint f20455c;

    /* renamed from: d */
    private int f20456d;

    /* renamed from: e */
    private int f20457e;

    /* renamed from: f */
    private int f20458f;

    /* renamed from: k */
    private final Path f20459k;

    public C4728a() {
        this(-16777216);
    }

    public C4728a(int i) {
        this.f20459k = new Path();
        m2754a(i);
        this.f20454b = new Paint(4);
        this.f20454b.setStyle(Paint.Style.FILL);
        this.f20453a = new Paint();
        this.f20453a.setColor(this.f20456d);
        this.f20455c = new Paint(this.f20454b);
    }

    /* renamed from: a */
    public Paint m2755a() {
        return this.f20453a;
    }

    /* renamed from: a */
    public void m2754a(int i) {
        this.f20456d = C0529a.m20633b(i, 68);
        this.f20457e = C0529a.m20633b(i, 20);
        this.f20458f = C0529a.m20633b(i, 0);
    }

    /* renamed from: a */
    public void m2753a(Canvas canvas, Matrix matrix, RectF rectF, int i) {
        rectF.bottom += i;
        rectF.offset(0.0f, -i);
        f20449g[0] = this.f20458f;
        f20449g[1] = this.f20457e;
        f20449g[2] = this.f20456d;
        this.f20455c.setShader(new LinearGradient(rectF.left, rectF.top, rectF.left, rectF.bottom, f20449g, f20450h, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f20455c);
        canvas.restore();
    }

    /* renamed from: a */
    public void m2752a(Canvas canvas, Matrix matrix, RectF rectF, int i, float f, float f2) {
        boolean z = f2 < 0.0f;
        Path path = this.f20459k;
        if (z) {
            f20451i[0] = 0;
            f20451i[1] = this.f20458f;
            f20451i[2] = this.f20457e;
            f20451i[3] = this.f20456d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f2);
            path.close();
            rectF.inset(-i, -i);
            f20451i[0] = 0;
            f20451i[1] = this.f20456d;
            f20451i[2] = this.f20457e;
            f20451i[3] = this.f20458f;
        }
        float width = 1.0f - (i / (rectF.width() / 2.0f));
        f20452j[1] = width;
        f20452j[2] = ((1.0f - width) / 2.0f) + width;
        this.f20454b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, f20451i, f20452j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        if (!z) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
        }
        canvas.drawArc(rectF, f, f2, true, this.f20454b);
        canvas.restore();
    }
}
