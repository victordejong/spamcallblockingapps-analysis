package p092e.p107g.p108a.p109a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import com.callerid.block.R$styleable;
import p092e.p107g.p108a.p110b.C3121a;
import p092e.p107g.p108a.p110b.C3122b;
import p092e.p107g.p108a.p110b.C3124d;
/* renamed from: e.g.a.a.b */
/* loaded from: classes2-dex2jar.jar:e/g/a/a/b.class */
public class C3104b extends Drawable implements Animatable {

    /* renamed from: w */
    private static final float[] f12738w = {0.0f, 0.473f, 0.367f, 0.839f, 1.0f, 0.207f};

    /* renamed from: b */
    private boolean f12739b;

    /* renamed from: c */
    private Paint f12740c;

    /* renamed from: d */
    private long f12741d;

    /* renamed from: e */
    private float f12742e;

    /* renamed from: f */
    private int f12743f;

    /* renamed from: g */
    private int f12744g;

    /* renamed from: h */
    private int f12745h;

    /* renamed from: i */
    private int f12746i;

    /* renamed from: j */
    private int f12747j;

    /* renamed from: k */
    private int f12748k;

    /* renamed from: l */
    private int f12749l;

    /* renamed from: m */
    private int f12750m;

    /* renamed from: n */
    private int f12751n;

    /* renamed from: o */
    private ColorStateList f12752o;

    /* renamed from: p */
    private RectF f12753p;

    /* renamed from: q */
    private Path f12754q;

    /* renamed from: r */
    private float f12755r;

    /* renamed from: s */
    private boolean f12756s;

    /* renamed from: t */
    private boolean f12757t;

    /* renamed from: u */
    private boolean f12758u;

    /* renamed from: v */
    private final Runnable f12759v;

    /* renamed from: e.g.a.a.b$a */
    /* loaded from: classes2-dex2jar.jar:e/g/a/a/b$a.class */
    class RunnableC3105a implements Runnable {
        RunnableC3105a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C3104b.this.m208h();
        }
    }

    /* renamed from: e.g.a.a.b$b */
    /* loaded from: classes2-dex2jar.jar:e/g/a/a/b$b.class */
    public static class C3106b {

        /* renamed from: e */
        private ColorStateList f12765e;

        /* renamed from: a */
        private int f12761a = 400;

        /* renamed from: b */
        private int f12762b = 4;

        /* renamed from: c */
        private int f12763c = 64;

        /* renamed from: d */
        private int f12764d = 64;

        /* renamed from: f */
        private int f12766f = 8;

        /* renamed from: g */
        private int f12767g = 32;

        /* renamed from: h */
        private int f12768h = -1;

        /* JADX WARN: Type inference failed for: r3v16, types: [int[], int[][]] */
        public C3106b(Context context, AttributeSet attributeSet, int i, int i2) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CheckBoxDrawable, i, i2);
            m199i(obtainStyledAttributes.getDimensionPixelSize(7, C3122b.m81e(context, 32)));
            m203e(obtainStyledAttributes.getDimensionPixelSize(3, C3122b.m81e(context, 32)));
            m206b(obtainStyledAttributes.getDimensionPixelSize(1, C3122b.m81e(context, 18)));
            m204d(obtainStyledAttributes.getDimensionPixelSize(2, C3122b.m81e(context, 2)));
            m201g(obtainStyledAttributes.getDimensionPixelSize(5, C3122b.m81e(context, 2)));
            m202f(obtainStyledAttributes.getColorStateList(4));
            m200h(obtainStyledAttributes.getColor(6, -1));
            m207a(obtainStyledAttributes.getInt(0, context.getResources().getInteger(17694721)));
            obtainStyledAttributes.recycle();
            if (this.f12765e == null) {
                m202f(new ColorStateList(new int[]{new int[]{-16842912}, new int[]{16842912}}, new int[]{C3122b.m82d(context, -16777216), C3122b.m84b(context, -16777216)}));
            }
        }

        /* renamed from: a */
        public C3106b m207a(int i) {
            this.f12761a = i;
            return this;
        }

        /* renamed from: b */
        public C3106b m206b(int i) {
            this.f12767g = i;
            return this;
        }

        /* renamed from: c */
        public C3104b m205c() {
            if (this.f12765e == null) {
                this.f12765e = ColorStateList.valueOf(-16777216);
            }
            return new C3104b(this.f12763c, this.f12764d, this.f12767g, this.f12766f, this.f12762b, this.f12765e, this.f12768h, this.f12761a, null);
        }

        /* renamed from: d */
        public C3106b m204d(int i) {
            this.f12766f = i;
            return this;
        }

        /* renamed from: e */
        public C3106b m203e(int i) {
            this.f12764d = i;
            return this;
        }

        /* renamed from: f */
        public C3106b m202f(ColorStateList colorStateList) {
            this.f12765e = colorStateList;
            return this;
        }

        /* renamed from: g */
        public C3106b m201g(int i) {
            this.f12762b = i;
            return this;
        }

        /* renamed from: h */
        public C3106b m200h(int i) {
            this.f12768h = i;
            return this;
        }

        /* renamed from: i */
        public C3106b m199i(int i) {
            this.f12763c = i;
            return this;
        }
    }

    private C3104b(int i, int i2, int i3, int i4, int i5, ColorStateList colorStateList, int i6, int i7) {
        this.f12739b = false;
        this.f12755r = -1.0f;
        this.f12756s = false;
        this.f12757t = false;
        this.f12758u = true;
        this.f12759v = new RunnableC3105a();
        this.f12745h = i;
        this.f12746i = i2;
        this.f12748k = i3;
        this.f12747j = i4;
        this.f12744g = i5;
        this.f12752o = colorStateList;
        this.f12749l = i6;
        this.f12743f = i7;
        Paint paint = new Paint();
        this.f12740c = paint;
        paint.setAntiAlias(true);
        this.f12753p = new RectF();
        this.f12754q = new Path();
    }

    /* synthetic */ C3104b(int i, int i2, int i3, int i4, int i5, ColorStateList colorStateList, int i6, int i7, RunnableC3105a aVar) {
        this(i, i2, i3, i4, i5, colorStateList, i6, i7);
    }

    /* renamed from: b */
    private void m214b(Canvas canvas) {
        float f;
        Path path;
        int i;
        int i2 = this.f12748k;
        int i3 = this.f12744g;
        float f2 = i2 - (i3 * 2);
        RectF rectF = this.f12753p;
        float f3 = rectF.left;
        float f4 = i3;
        float f5 = rectF.top;
        float f6 = i3;
        if (isRunning()) {
            float f7 = this.f12742e;
            if (f7 < 0.4f) {
                float f8 = f7 / 0.4f;
                int i4 = this.f12748k;
                float f9 = ((i4 - i) / 2.0f) * f8;
                float f10 = ((this.f12744g / 2.0f) + (f9 / 2.0f)) - 0.5f;
                this.f12740c.setColor(C3121a.m87b(this.f12750m, this.f12751n, f8));
                this.f12740c.setStrokeWidth(f9);
                this.f12740c.setStyle(Paint.Style.STROKE);
                RectF rectF2 = this.f12753p;
                canvas.drawRect(rectF2.left + f10, rectF2.top + f10, rectF2.right - f10, rectF2.bottom - f10, this.f12740c);
                this.f12740c.setStrokeWidth(this.f12744g);
                RectF rectF3 = this.f12753p;
                int i5 = this.f12747j;
                canvas.drawRoundRect(rectF3, i5, i5, this.f12740c);
                return;
            }
            f = (f7 - 0.4f) / 0.6f;
            this.f12740c.setColor(this.f12751n);
            this.f12740c.setStrokeWidth(this.f12744g);
            this.f12740c.setStyle(Paint.Style.FILL_AND_STROKE);
            RectF rectF4 = this.f12753p;
            int i6 = this.f12747j;
            canvas.drawRoundRect(rectF4, i6, i6, this.f12740c);
            this.f12740c.setStyle(Paint.Style.STROKE);
            this.f12740c.setStrokeJoin(Paint.Join.MITER);
            this.f12740c.setStrokeCap(Paint.Cap.BUTT);
            this.f12740c.setColor(this.f12749l);
            path = this.f12754q;
        } else {
            this.f12740c.setColor(this.f12751n);
            this.f12740c.setStrokeWidth(this.f12744g);
            this.f12740c.setStyle(Paint.Style.FILL_AND_STROKE);
            RectF rectF5 = this.f12753p;
            int i7 = this.f12747j;
            canvas.drawRoundRect(rectF5, i7, i7, this.f12740c);
            this.f12740c.setStyle(Paint.Style.STROKE);
            this.f12740c.setStrokeJoin(Paint.Join.MITER);
            this.f12740c.setStrokeCap(Paint.Cap.BUTT);
            this.f12740c.setColor(this.f12749l);
            path = this.f12754q;
            f = 1.0f;
        }
        m212d(path, f3 + f4, f5 + f6, f2, f, true);
        canvas.drawPath(path, this.f12740c);
    }

    /* renamed from: c */
    private void m213c(Canvas canvas) {
        int i;
        if (isRunning()) {
            float f = this.f12742e;
            if (f < 0.6f) {
                int i2 = this.f12748k;
                int i3 = this.f12744g;
                float f2 = i2 - (i3 * 2);
                RectF rectF = this.f12753p;
                float f3 = rectF.left;
                float f4 = i3;
                float f5 = rectF.top;
                float f6 = i3;
                float f7 = f / 0.6f;
                this.f12740c.setColor(this.f12750m);
                this.f12740c.setStrokeWidth(this.f12744g);
                this.f12740c.setStyle(Paint.Style.FILL_AND_STROKE);
                RectF rectF2 = this.f12753p;
                int i4 = this.f12747j;
                canvas.drawRoundRect(rectF2, i4, i4, this.f12740c);
                this.f12740c.setStyle(Paint.Style.STROKE);
                this.f12740c.setStrokeJoin(Paint.Join.MITER);
                this.f12740c.setStrokeCap(Paint.Cap.BUTT);
                this.f12740c.setColor(this.f12749l);
                Path path = this.f12754q;
                m212d(path, f3 + f4, f5 + f6, f2, f7, false);
                canvas.drawPath(path, this.f12740c);
                return;
            }
            float f8 = ((f + 0.4f) - 1.0f) / 0.4f;
            int i5 = this.f12748k;
            float f9 = ((i5 - i) / 2.0f) * (1.0f - f8);
            float f10 = ((this.f12744g / 2.0f) + (f9 / 2.0f)) - 0.5f;
            this.f12740c.setColor(C3121a.m87b(this.f12750m, this.f12751n, f8));
            this.f12740c.setStrokeWidth(f9);
            this.f12740c.setStyle(Paint.Style.STROKE);
            RectF rectF3 = this.f12753p;
            canvas.drawRect(rectF3.left + f10, rectF3.top + f10, rectF3.right - f10, rectF3.bottom - f10, this.f12740c);
            this.f12740c.setStrokeWidth(this.f12744g);
        } else {
            this.f12740c.setColor(this.f12751n);
            this.f12740c.setStrokeWidth(this.f12744g);
            this.f12740c.setStyle(Paint.Style.STROKE);
        }
        RectF rectF4 = this.f12753p;
        int i6 = this.f12747j;
        canvas.drawRoundRect(rectF4, i6, i6, this.f12740c);
    }

    /* renamed from: d */
    private Path m212d(Path path, float f, float f2, float f3, float f4, boolean z) {
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        if (this.f12755r == f4) {
            return path;
        }
        this.f12755r = f4;
        float[] fArr = f12738w;
        float f12 = f + (fArr[0] * f3);
        float f13 = f2 + (fArr[1] * f3);
        float f14 = f + (fArr[2] * f3);
        float f15 = f2 + (fArr[3] * f3);
        float f16 = f + (fArr[4] * f3);
        float f17 = f2 + (fArr[5] * f3);
        double d = f12 - f14;
        double pow = Math.pow(d, 2.0d);
        double d2 = f13 - f15;
        float sqrt = (float) Math.sqrt(pow + Math.pow(d2, 2.0d));
        float sqrt2 = sqrt / (((float) Math.sqrt(Math.pow(d, 2.0d) + Math.pow(d2, 2.0d))) + sqrt);
        path.reset();
        if (z) {
            path.moveTo(f12, f13);
            if (f4 < sqrt2) {
                float f18 = f4 / sqrt2;
                float f19 = 1.0f - f18;
                f11 = (f12 * f19) + (f14 * f18);
                f9 = f13 * f19;
                f10 = f15 * f18;
                path.lineTo(f11, f9 + f10);
            } else {
                f7 = (f4 - sqrt2) / (1.0f - sqrt2);
                path.lineTo(f14, f15);
                f8 = 1.0f - f7;
                f6 = f14 * f8;
                f5 = f16 * f7;
                path.lineTo(f6 + f5, (f8 * f15) + (f17 * f7));
            }
        } else {
            path.moveTo(f16, f17);
            if (f4 < sqrt2) {
                float f20 = f4 / sqrt2;
                path.lineTo(f14, f15);
                float f21 = 1.0f - f20;
                f11 = (f12 * f21) + (f14 * f20);
                f9 = f13 * f21;
                f10 = f15 * f20;
                path.lineTo(f11, f9 + f10);
            } else {
                f7 = (f4 - sqrt2) / (1.0f - sqrt2);
                f8 = 1.0f - f7;
                f6 = f14 * f8;
                f5 = f16 * f7;
                path.lineTo(f6 + f5, (f8 * f15) + (f17 * f7));
            }
        }
        return path;
    }

    /* renamed from: e */
    private void m211e() {
        this.f12741d = SystemClock.uptimeMillis();
        this.f12742e = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m208h() {
        float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.f12741d)) / this.f12743f);
        this.f12742e = min;
        if (min == 1.0f) {
            this.f12739b = false;
        }
        if (isRunning()) {
            scheduleSelf(this.f12759v, SystemClock.uptimeMillis() + 16);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f12756s) {
            m214b(canvas);
        } else {
            m213c(canvas);
        }
    }

    /* renamed from: f */
    public void m210f(boolean z) {
        this.f12758u = z;
    }

    /* renamed from: g */
    public void m209g(boolean z) {
        this.f12757t = z;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f12746i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f12745h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f12746i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f12745h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f12739b;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f12753p.set(rect.exactCenterX() - (this.f12748k / 2), rect.exactCenterY() - (this.f12748k / 2), rect.exactCenterX() + (this.f12748k / 2), rect.exactCenterY() + (this.f12748k / 2));
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean g = C3124d.m70g(iArr, 16842912);
        int colorForState = this.f12752o.getColorForState(iArr, this.f12751n);
        boolean z = true;
        if (this.f12756s != g) {
            this.f12756s = g;
            if (!this.f12757t && this.f12758u) {
                start();
            }
            z = true;
        } else {
            z = false;
        }
        if (this.f12751n != colorForState) {
            this.f12750m = isRunning() ? this.f12751n : colorForState;
            this.f12751n = colorForState;
        } else if (!isRunning()) {
            this.f12750m = colorForState;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        this.f12739b = true;
        super.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f12740c.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f12740c.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        m211e();
        scheduleSelf(this.f12759v, SystemClock.uptimeMillis() + 16);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f12739b = false;
        unscheduleSelf(this.f12759v);
        invalidateSelf();
    }
}
