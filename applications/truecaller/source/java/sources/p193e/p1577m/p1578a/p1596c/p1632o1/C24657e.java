package p193e.p1577m.p1578a.p1596c.p1632o1;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import java.util.Objects;
/* renamed from: e.m.a.c.o1.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/o1/e.class */
public final class C24657e {

    /* renamed from: A */
    public float f69044A;

    /* renamed from: B */
    public int f69045B;

    /* renamed from: C */
    public int f69046C;

    /* renamed from: D */
    public int f69047D;

    /* renamed from: E */
    public int f69048E;

    /* renamed from: F */
    public StaticLayout f69049F;

    /* renamed from: G */
    public int f69050G;

    /* renamed from: H */
    public int f69051H;

    /* renamed from: I */
    public int f69052I;

    /* renamed from: J */
    public Rect f69053J;

    /* renamed from: a */
    public final float f69054a;

    /* renamed from: b */
    public final float f69055b;

    /* renamed from: c */
    public final float f69056c;

    /* renamed from: d */
    public final float f69057d;

    /* renamed from: e */
    public final float f69058e;

    /* renamed from: f */
    public final TextPaint f69059f;

    /* renamed from: g */
    public final Paint f69060g;

    /* renamed from: h */
    public CharSequence f69061h;

    /* renamed from: i */
    public Layout.Alignment f69062i;

    /* renamed from: j */
    public Bitmap f69063j;

    /* renamed from: k */
    public float f69064k;

    /* renamed from: l */
    public int f69065l;

    /* renamed from: m */
    public int f69066m;

    /* renamed from: n */
    public float f69067n;

    /* renamed from: o */
    public int f69068o;

    /* renamed from: p */
    public float f69069p;

    /* renamed from: q */
    public float f69070q;

    /* renamed from: r */
    public boolean f69071r;

    /* renamed from: s */
    public boolean f69072s;

    /* renamed from: t */
    public int f69073t;

    /* renamed from: u */
    public int f69074u;

    /* renamed from: v */
    public int f69075v;

    /* renamed from: w */
    public int f69076w;

    /* renamed from: x */
    public int f69077x;

    /* renamed from: y */
    public float f69078y;

    /* renamed from: z */
    public float f69079z;

    public C24657e(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{16843287, 16843288}, 0, 0);
        this.f69058e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f69057d = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        float round = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f69054a = round;
        this.f69055b = round;
        this.f69056c = round;
        TextPaint textPaint = new TextPaint();
        this.f69059f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f69060g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
    }

    /* renamed from: a */
    public final void m4788a(Canvas canvas, boolean z) {
        if (!z) {
            Objects.requireNonNull(this.f69053J);
            Objects.requireNonNull(this.f69063j);
            canvas.drawBitmap(this.f69063j, (Rect) null, this.f69053J, (Paint) null);
            return;
        }
        StaticLayout staticLayout = this.f69049F;
        if (staticLayout == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(this.f69050G, this.f69051H);
        if (Color.alpha(this.f69075v) > 0) {
            this.f69060g.setColor(this.f69075v);
            canvas.drawRect(-this.f69052I, 0.0f, staticLayout.getWidth() + this.f69052I, staticLayout.getHeight(), this.f69060g);
        }
        int i = this.f69077x;
        boolean z2 = true;
        if (i == 1) {
            this.f69059f.setStrokeJoin(Paint.Join.ROUND);
            this.f69059f.setStrokeWidth(this.f69054a);
            this.f69059f.setColor(this.f69076w);
            this.f69059f.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout.draw(canvas);
        } else if (i == 2) {
            TextPaint textPaint = this.f69059f;
            float f = this.f69055b;
            float f2 = this.f69056c;
            textPaint.setShadowLayer(f, f2, f2, this.f69076w);
        } else if (i == 3 || i == 4) {
            if (i != 3) {
                z2 = false;
            }
            int i2 = -1;
            int i3 = z2 ? -1 : this.f69076w;
            if (z2) {
                i2 = this.f69076w;
            }
            float f3 = this.f69055b / 2.0f;
            this.f69059f.setColor(this.f69073t);
            this.f69059f.setStyle(Paint.Style.FILL);
            float f4 = -f3;
            this.f69059f.setShadowLayer(this.f69055b, f4, f4, i3);
            staticLayout.draw(canvas);
            this.f69059f.setShadowLayer(this.f69055b, f3, f3, i2);
        }
        this.f69059f.setColor(this.f69073t);
        this.f69059f.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        this.f69059f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(save);
    }
}
