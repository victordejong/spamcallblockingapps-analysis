package p193e.p194a.p195a.p200c.p222s8;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
/* renamed from: e.a.a.c.s8.g */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/s8/g.class */
public class C5730g extends AbstractC5738o {

    /* renamed from: b */
    public Paint f19191b;

    /* renamed from: c */
    public Paint f19192c;

    /* renamed from: d */
    public float f19193d = 0.0f;

    public C5730g(int i) {
        Paint paint = new Paint();
        this.f19191b = paint;
        paint.setStrokeWidth(1.0f);
        this.f19191b.setAntiAlias(true);
        this.f19191b.setColor(i);
        this.f19191b.setAlpha(120);
        Paint paint2 = new Paint();
        this.f19192c = paint2;
        paint2.setStrokeWidth(3.0f);
        this.f19192c.setAntiAlias(true);
        this.f19192c.setColor(i);
        this.f19192c.setAlpha(188);
    }

    @Override // p193e.p194a.p195a.p200c.p222s8.AbstractC5738o
    /* renamed from: a */
    public void mo32750a(Canvas canvas, byte[] bArr, Rect rect) {
        int i = 0;
        while (i < bArr.length - 1) {
            int i2 = i * 4;
            this.f19206a[i2] = (rect.width() * i) / (bArr.length - 1);
            this.f19206a[i2 + 1] = (((rect.height() / 3.0f) * ((byte) (bArr[i] + 128))) / 128.0f) + (rect.height() / 2.0f);
            i++;
            this.f19206a[i2 + 2] = (rect.width() * i) / (bArr.length - 1);
            this.f19206a[i2 + 3] = (((rect.height() / 3.0f) * ((byte) (bArr[i] + 128))) / 128.0f) + (rect.height() / 2.0f);
        }
        float f = 0.0f;
        for (int i3 = 0; i3 < bArr.length - 1; i3++) {
            f += Math.abs((int) bArr[i3]);
        }
        float length = f / (bArr.length * 128);
        float f2 = this.f19193d;
        if (length > f2) {
            this.f19193d = length;
            canvas.drawLines(this.f19206a, this.f19192c);
            return;
        }
        this.f19193d = (float) (f2 * 0.99d);
        canvas.drawLines(this.f19206a, this.f19191b);
    }
}
