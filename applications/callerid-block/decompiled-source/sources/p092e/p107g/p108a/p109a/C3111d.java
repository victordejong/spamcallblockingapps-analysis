package p092e.p107g.p108a.p109a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import p092e.p107g.p108a.p110b.C3121a;
import p092e.p107g.p108a.p110b.C3124d;
/* renamed from: e.g.a.a.d */
/* loaded from: classes2-dex2jar.jar:e/g/a/a/d.class */
public class C3111d extends Drawable implements Animatable {

    /* renamed from: c */
    private long f12809c;

    /* renamed from: d */
    private float f12810d;

    /* renamed from: e */
    private int f12811e;

    /* renamed from: i */
    private Paint f12815i;

    /* renamed from: j */
    private Paint f12816j;

    /* renamed from: k */
    private Paint f12817k;

    /* renamed from: l */
    private int f12818l;

    /* renamed from: m */
    private float f12819m;

    /* renamed from: n */
    private float f12820n;

    /* renamed from: o */
    private Path f12821o;

    /* renamed from: p */
    private Path f12822p;

    /* renamed from: r */
    private ColorStateList f12824r;

    /* renamed from: s */
    private int f12825s;

    /* renamed from: t */
    private int f12826t;

    /* renamed from: b */
    private boolean f12808b = false;

    /* renamed from: f */
    private boolean f12812f = true;

    /* renamed from: g */
    private boolean f12813g = false;

    /* renamed from: h */
    private boolean f12814h = true;

    /* renamed from: q */
    private RectF f12823q = new RectF();

    /* renamed from: u */
    private boolean f12827u = true;

    /* renamed from: v */
    private final Runnable f12828v = new RunnableC3112a();

    /* renamed from: e.g.a.a.d$a */
    /* loaded from: classes2-dex2jar.jar:e/g/a/a/d$a.class */
    class RunnableC3112a implements Runnable {
        RunnableC3112a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C3111d.this.m151t();
        }
    }

    public C3111d(int i, ColorStateList colorStateList, float f, float f2, int i2) {
        this.f12811e = i2;
        Paint paint = new Paint(5);
        this.f12817k = paint;
        paint.setStyle(Paint.Style.FILL);
        m155p(colorStateList);
        m153r(i);
        m152s(f, f2);
    }

    /* renamed from: b */
    private void m169b() {
        if (this.f12819m > 0.0f) {
            if (this.f12815i == null) {
                Paint paint = new Paint(5);
                this.f12815i = paint;
                paint.setStyle(Paint.Style.FILL);
                this.f12815i.setDither(true);
            }
            int i = this.f12818l;
            float f = i / ((i + this.f12819m) + this.f12820n);
            int[] iArr = {1275068416, 1275068416, 0};
            float[] fArr = {0.0f, f, 1.0f};
            this.f12815i.setShader(new RadialGradient(0.0f, 0.0f, this.f12819m + this.f12818l, iArr, fArr, Shader.TileMode.CLAMP));
            Path path = this.f12821o;
            if (path == null) {
                Path path2 = new Path();
                this.f12821o = path2;
                path2.setFillType(Path.FillType.EVEN_ODD);
            } else {
                path.reset();
            }
            float f2 = this.f12818l + this.f12819m;
            float f3 = -f2;
            this.f12823q.set(f3, f3, f2, f2);
            this.f12821o.addOval(this.f12823q, Path.Direction.CW);
            float f4 = this.f12818l - 1;
            RectF rectF = this.f12823q;
            float f5 = -f4;
            float f6 = this.f12820n;
            rectF.set(f5, f5 - f6, f4, f4 - f6);
            this.f12821o.addOval(this.f12823q, Path.Direction.CW);
            if (this.f12816j == null) {
                Paint paint2 = new Paint(5);
                this.f12816j = paint2;
                paint2.setStyle(Paint.Style.FILL);
                this.f12816j.setDither(true);
            }
            int i2 = this.f12818l;
            float f7 = i2;
            float f8 = this.f12819m;
            this.f12816j.setShader(new RadialGradient(0.0f, 0.0f, this.f12818l + (this.f12819m / 2.0f), new int[]{1275068416, 1275068416, 0}, new float[]{0.0f, (f7 - (f8 / 2.0f)) / (i2 + (f8 / 2.0f)), 1.0f}, Shader.TileMode.CLAMP));
            Path path3 = this.f12822p;
            if (path3 == null) {
                Path path4 = new Path();
                this.f12822p = path4;
                path4.setFillType(Path.FillType.EVEN_ODD);
            } else {
                path3.reset();
            }
            float f9 = this.f12818l + (this.f12819m / 2.0f);
            float f10 = -f9;
            this.f12823q.set(f10, f10, f9, f9);
            this.f12822p.addOval(this.f12823q, Path.Direction.CW);
            float f11 = this.f12818l - 1;
            float f12 = -f11;
            this.f12823q.set(f12, f12, f11, f11);
            this.f12822p.addOval(this.f12823q, Path.Direction.CW);
        }
    }

    /* renamed from: m */
    private void m158m() {
        this.f12809c = SystemClock.uptimeMillis();
        this.f12810d = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public void m151t() {
        float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.f12809c)) / this.f12811e);
        this.f12810d = min;
        if (min == 1.0f) {
            this.f12808b = false;
        }
        if (isRunning()) {
            scheduleSelf(this.f12828v, SystemClock.uptimeMillis() + 16);
        }
        invalidateSelf();
    }

    /* renamed from: c */
    public float m168c() {
        return this.f12818l + this.f12819m;
    }

    /* renamed from: d */
    public float m167d() {
        return this.f12818l + this.f12819m;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint;
        int i;
        if (this.f12827u) {
            m169b();
            this.f12827u = false;
        }
        if (this.f12819m > 0.0f) {
            int save = canvas.save();
            float f = this.f12819m;
            int i2 = this.f12818l;
            canvas.translate(i2 + f, f + i2 + this.f12820n);
            canvas.drawPath(this.f12821o, this.f12815i);
            canvas.restoreToCount(save);
        }
        int save2 = canvas.save();
        float f2 = this.f12819m;
        int i3 = this.f12818l;
        canvas.translate(i3 + f2, f2 + i3);
        if (this.f12819m > 0.0f) {
            canvas.drawPath(this.f12822p, this.f12816j);
        }
        RectF rectF = this.f12823q;
        int i4 = this.f12818l;
        rectF.set(-i4, -i4, i4, i4);
        if (!isRunning()) {
            paint = this.f12817k;
            i = this.f12826t;
        } else {
            paint = this.f12817k;
            i = C3121a.m87b(this.f12825s, this.f12826t, this.f12810d);
        }
        paint.setColor(i);
        canvas.drawOval(this.f12823q, this.f12817k);
        canvas.restoreToCount(save2);
    }

    /* renamed from: e */
    public ColorStateList m166e() {
        return this.f12824r;
    }

    /* renamed from: f */
    public float m165f() {
        return this.f12819m + this.f12820n;
    }

    /* renamed from: g */
    public float m164g() {
        return this.f12819m;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) (((this.f12818l + this.f12819m) * 2.0f) + this.f12820n + 0.5f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) (((this.f12818l + this.f12819m) * 2.0f) + 0.5f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: h */
    public float m163h() {
        return this.f12819m;
    }

    /* renamed from: i */
    public float m162i() {
        return this.f12819m;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f12808b;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    /* renamed from: j */
    public int m161j() {
        return this.f12818l;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        stop();
    }

    /* renamed from: k */
    public float m160k() {
        return this.f12819m;
    }

    /* renamed from: l */
    public boolean m159l(float f, float f2) {
        return ((float) Math.sqrt(Math.pow((double) (f - m168c()), 2.0d) + Math.pow((double) (f2 - m167d()), 2.0d))) < ((float) this.f12818l);
    }

    /* renamed from: n */
    public boolean m157n(int i) {
        if (this.f12811e == i) {
            return false;
        }
        this.f12811e = i;
        return true;
    }

    /* renamed from: o */
    public void m156o(int i) {
        this.f12824r = ColorStateList.valueOf(i);
        onStateChange(getState());
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        this.f12812f = C3124d.m70g(iArr, 16842910);
        int colorForState = this.f12824r.getColorForState(iArr, this.f12826t);
        if (this.f12826t != colorForState) {
            if (this.f12813g || !this.f12814h || !this.f12812f || this.f12811e <= 0) {
                this.f12825s = colorForState;
                this.f12826t = colorForState;
                invalidateSelf();
                return true;
            }
            this.f12825s = isRunning() ? this.f12825s : this.f12826t;
            this.f12826t = colorForState;
            start();
            return true;
        } else if (isRunning()) {
            return false;
        } else {
            this.f12825s = colorForState;
            return false;
        }
    }

    /* renamed from: p */
    public void m155p(ColorStateList colorStateList) {
        this.f12824r = colorStateList;
        onStateChange(getState());
    }

    /* renamed from: q */
    public void m154q(boolean z) {
        this.f12813g = z;
    }

    /* renamed from: r */
    public boolean m153r(int i) {
        if (this.f12818l == i) {
            return false;
        }
        this.f12818l = i;
        this.f12827u = true;
        invalidateSelf();
        return true;
    }

    /* renamed from: s */
    public boolean m152s(float f, float f2) {
        if (this.f12819m == f && this.f12820n == f2) {
            return false;
        }
        this.f12819m = f;
        this.f12820n = f2;
        this.f12827u = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        this.f12808b = true;
        super.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f12815i.setAlpha(i);
        this.f12817k.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f12815i.setColorFilter(colorFilter);
        this.f12817k.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        m158m();
        scheduleSelf(this.f12828v, SystemClock.uptimeMillis() + 16);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f12808b = false;
        unscheduleSelf(this.f12828v);
        invalidateSelf();
    }
}
