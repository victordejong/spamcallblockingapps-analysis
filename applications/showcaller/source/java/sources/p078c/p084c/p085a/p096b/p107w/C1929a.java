package p078c.p084c.p085a.p096b.p107w;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import p020b.p041h.p042e.C1522a;
/* renamed from: c.c.a.b.w.a */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/w/a.class */
public class C1929a {

    /* renamed from: a */
    private static final int[] f6888a = new int[3];

    /* renamed from: b */
    private static final float[] f6889b = {0.0f, 0.5f, 1.0f};

    /* renamed from: c */
    private static final int[] f6890c = new int[4];

    /* renamed from: d */
    private static final float[] f6891d = {0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: e */
    private final Paint f6892e;

    /* renamed from: f */
    private final Paint f6893f;

    /* renamed from: g */
    private final Paint f6894g;

    /* renamed from: h */
    private int f6895h;

    /* renamed from: i */
    private int f6896i;

    /* renamed from: j */
    private int f6897j;

    /* renamed from: k */
    private final Path f6898k;

    /* renamed from: l */
    private Paint f6899l;

    public C1929a() {
        this(-16777216);
    }

    public C1929a(int i) {
        this.f6898k = new Path();
        this.f6899l = new Paint();
        this.f6892e = new Paint();
        m28653d(i);
        this.f6899l.setColor(0);
        Paint paint = new Paint(4);
        this.f6893f = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f6894g = new Paint(paint);
    }

    /* renamed from: a */
    public void m28656a(Canvas canvas, Matrix matrix, RectF rectF, int i, float f, float f2) {
        boolean z = f2 < 0.0f;
        Path path = this.f6898k;
        if (z) {
            int[] iArr = f6890c;
            iArr[0] = 0;
            iArr[1] = this.f6897j;
            iArr[2] = this.f6896i;
            iArr[3] = this.f6895h;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f2);
            path.close();
            float f3 = -i;
            rectF.inset(f3, f3);
            int[] iArr2 = f6890c;
            iArr2[0] = 0;
            iArr2[1] = this.f6895h;
            iArr2[2] = this.f6896i;
            iArr2[3] = this.f6897j;
        }
        float width = rectF.width() / 2.0f;
        if (width <= 0.0f) {
            return;
        }
        float f4 = 1.0f - (i / width);
        float f5 = (1.0f - f4) / 2.0f;
        float[] fArr = f6891d;
        fArr[1] = f4;
        fArr[2] = f5 + f4;
        this.f6893f.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), width, f6890c, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        if (!z) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.f6899l);
        }
        canvas.drawArc(rectF, f, f2, true, this.f6893f);
        canvas.restore();
    }

    /* renamed from: b */
    public void m28655b(Canvas canvas, Matrix matrix, RectF rectF, int i) {
        rectF.bottom += i;
        rectF.offset(0.0f, -i);
        int[] iArr = f6888a;
        iArr[0] = this.f6897j;
        iArr[1] = this.f6896i;
        iArr[2] = this.f6895h;
        Paint paint = this.f6894g;
        float f = rectF.left;
        paint.setShader(new LinearGradient(f, rectF.top, f, rectF.bottom, iArr, f6889b, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f6894g);
        canvas.restore();
    }

    /* renamed from: c */
    public Paint m28654c() {
        return this.f6892e;
    }

    /* renamed from: d */
    public void m28653d(int i) {
        this.f6895h = C1522a.m29848d(i, 68);
        this.f6896i = C1522a.m29848d(i, 20);
        this.f6897j = C1522a.m29848d(i, 0);
        this.f6892e.setColor(this.f6895h);
    }
}
