package p092e.p107g.p108a.p109a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import com.callerid.block.R$styleable;
import p092e.p107g.p108a.p110b.C3121a;
import p092e.p107g.p108a.p110b.C3122b;
import p092e.p107g.p108a.p110b.C3124d;
/* renamed from: e.g.a.a.e */
/* loaded from: classes2-dex2jar.jar:e/g/a/a/e.class */
public class C3113e extends Drawable implements Animatable {

    /* renamed from: b */
    private boolean f12830b;

    /* renamed from: c */
    private Paint f12831c;

    /* renamed from: d */
    private long f12832d;

    /* renamed from: e */
    private float f12833e;

    /* renamed from: f */
    private int f12834f;

    /* renamed from: g */
    private int f12835g;

    /* renamed from: h */
    private int f12836h;

    /* renamed from: i */
    private int f12837i;

    /* renamed from: j */
    private int f12838j;

    /* renamed from: k */
    private int f12839k;

    /* renamed from: l */
    private int f12840l;

    /* renamed from: m */
    private int f12841m;

    /* renamed from: n */
    private ColorStateList f12842n;

    /* renamed from: o */
    private boolean f12843o;

    /* renamed from: p */
    private boolean f12844p;

    /* renamed from: q */
    private boolean f12845q;

    /* renamed from: r */
    private final Runnable f12846r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e.g.a.a.e$a */
    /* loaded from: classes2-dex2jar.jar:e/g/a/a/e$a.class */
    public class RunnableC3114a implements Runnable {
        RunnableC3114a() {
            C3113e.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3113e.this.m144g();
        }
    }

    /* renamed from: e.g.a.a.e$b */
    /* loaded from: classes2-dex2jar.jar:e/g/a/a/e$b.class */
    public static class C3115b {

        /* renamed from: a */
        private int f12848a = 400;

        /* renamed from: b */
        private int f12849b = 4;

        /* renamed from: c */
        private int f12850c = 64;

        /* renamed from: d */
        private int f12851d = 64;

        /* renamed from: e */
        private int f12852e = 18;

        /* renamed from: f */
        private int f12853f = 10;

        /* renamed from: g */
        private ColorStateList f12854g;

        /* JADX WARN: Type inference failed for: r3v17, types: [int[], int[][]] */
        public C3115b(Context context, AttributeSet attributeSet, int i, int i2) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RadioButtonDrawable, i, i2);
            m136h(obtainStyledAttributes.getDimensionPixelSize(6, C3122b.m81e(context, 32)));
            m141c(obtainStyledAttributes.getDimensionPixelSize(1, C3122b.m81e(context, 32)));
            m137g(obtainStyledAttributes.getDimensionPixelSize(5, C3122b.m81e(context, 2)));
            m139e(obtainStyledAttributes.getDimensionPixelSize(3, C3122b.m81e(context, 10)));
            m140d(obtainStyledAttributes.getDimensionPixelSize(2, C3122b.m81e(context, 5)));
            m138f(obtainStyledAttributes.getColorStateList(4));
            m143a(obtainStyledAttributes.getInt(0, context.getResources().getInteger(17694721)));
            obtainStyledAttributes.recycle();
            if (this.f12854g == null) {
                m138f(new ColorStateList(new int[]{new int[]{-16842912}, new int[]{16842912}}, new int[]{C3122b.m82d(context, -16777216), C3122b.m84b(context, -16777216)}));
            }
        }

        /* renamed from: a */
        public C3115b m143a(int i) {
            this.f12848a = i;
            return this;
        }

        /* renamed from: b */
        public C3113e m142b() {
            if (this.f12854g == null) {
                this.f12854g = ColorStateList.valueOf(-16777216);
            }
            return new C3113e(this.f12850c, this.f12851d, this.f12849b, this.f12854g, this.f12852e, this.f12853f, this.f12848a, null);
        }

        /* renamed from: c */
        public C3115b m141c(int i) {
            this.f12851d = i;
            return this;
        }

        /* renamed from: d */
        public C3115b m140d(int i) {
            this.f12853f = i;
            return this;
        }

        /* renamed from: e */
        public C3115b m139e(int i) {
            this.f12852e = i;
            return this;
        }

        /* renamed from: f */
        public C3115b m138f(ColorStateList colorStateList) {
            this.f12854g = colorStateList;
            return this;
        }

        /* renamed from: g */
        public C3115b m137g(int i) {
            this.f12849b = i;
            return this;
        }

        /* renamed from: h */
        public C3115b m136h(int i) {
            this.f12850c = i;
            return this;
        }
    }

    private C3113e(int i, int i2, int i3, ColorStateList colorStateList, int i4, int i5, int i6) {
        this.f12830b = false;
        this.f12843o = false;
        this.f12844p = false;
        this.f12845q = true;
        this.f12846r = new RunnableC3114a();
        this.f12834f = i6;
        this.f12835g = i3;
        this.f12836h = i;
        this.f12837i = i2;
        this.f12838j = i4;
        this.f12839k = i5;
        this.f12842n = colorStateList;
        Paint paint = new Paint();
        this.f12831c = paint;
        paint.setAntiAlias(true);
    }

    /* synthetic */ C3113e(int i, int i2, int i3, ColorStateList colorStateList, int i4, int i5, int i6, RunnableC3114a runnableC3114a) {
        this(i, i2, i3, colorStateList, i4, i5, i6);
    }

    /* renamed from: b */
    private void m149b(Canvas canvas) {
        float f;
        float exactCenterX = getBounds().exactCenterX();
        float exactCenterY = getBounds().exactCenterY();
        if (isRunning()) {
            int i = this.f12835g;
            float f2 = i / 2.0f;
            int i2 = this.f12838j;
            float f3 = i2;
            float f4 = i2;
            float f5 = i2;
            float f6 = i;
            int i3 = this.f12839k;
            float f7 = (f3 - f2) / ((((f4 - f2) + f5) - f6) - i3);
            float f8 = this.f12833e;
            if (f8 < f7) {
                float f9 = f8 / f7;
                float f10 = i2;
                float f11 = 1.0f - f9;
                float f12 = f10 + (f2 * f11);
                float f13 = (i2 - f2) * f11;
                this.f12831c.setColor(C3121a.m87b(this.f12840l, this.f12841m, f9));
                this.f12831c.setStrokeWidth(f12 - f13);
                this.f12831c.setStyle(Paint.Style.STROKE);
                f = (f12 + f13) / 2.0f;
            } else {
                float f14 = (f8 - f7) / (1.0f - f7);
                this.f12831c.setColor(this.f12841m);
                this.f12831c.setStyle(Paint.Style.FILL);
                canvas.drawCircle(exactCenterX, exactCenterY, ((i2 - i) * (1.0f - f14)) + (i3 * f14), this.f12831c);
                float f15 = this.f12838j;
                this.f12831c.setStrokeWidth(this.f12835g);
                this.f12831c.setStyle(Paint.Style.STROKE);
                f = (f15 + (f14 * f2)) - f2;
            }
        } else {
            this.f12831c.setColor(this.f12841m);
            this.f12831c.setStrokeWidth(this.f12835g);
            this.f12831c.setStyle(Paint.Style.STROKE);
            canvas.drawCircle(exactCenterX, exactCenterY, this.f12838j, this.f12831c);
            this.f12831c.setStyle(Paint.Style.FILL);
            f = this.f12839k;
        }
        canvas.drawCircle(exactCenterX, exactCenterY, f, this.f12831c);
    }

    /* renamed from: c */
    private void m148c(Canvas canvas) {
        float f;
        float exactCenterX = getBounds().exactCenterX();
        float exactCenterY = getBounds().exactCenterY();
        if (isRunning()) {
            int i = this.f12835g;
            float f2 = i / 2.0f;
            int i2 = this.f12838j;
            int i3 = this.f12839k;
            float f3 = ((i2 - i) - i3) / ((((i2 - f2) + i2) - i) - i3);
            float f4 = this.f12833e;
            if (f4 < f3) {
                float f5 = f4 / f3;
                float f6 = i2 - i;
                float f7 = i3;
                float f8 = 1.0f - f5;
                this.f12831c.setColor(C3121a.m87b(this.f12840l, this.f12841m, f5));
                this.f12831c.setStyle(Paint.Style.FILL);
                canvas.drawCircle(exactCenterX, exactCenterY, (f6 * f5) + (f7 * f8), this.f12831c);
                float f9 = this.f12838j;
                this.f12831c.setStrokeWidth(this.f12835g);
                this.f12831c.setStyle(Paint.Style.STROKE);
                f = (f9 + (f8 * f2)) - f2;
            } else {
                float f10 = (f4 - f3) / (1.0f - f3);
                float f11 = i2 + (f2 * f10);
                float f12 = (i2 - f2) * f10;
                this.f12831c.setColor(this.f12841m);
                this.f12831c.setStrokeWidth(f11 - f12);
                this.f12831c.setStyle(Paint.Style.STROKE);
                f = (f11 + f12) / 2.0f;
            }
        } else {
            this.f12831c.setColor(this.f12841m);
            this.f12831c.setStrokeWidth(this.f12835g);
            this.f12831c.setStyle(Paint.Style.STROKE);
            f = this.f12838j;
        }
        canvas.drawCircle(exactCenterX, exactCenterY, f, this.f12831c);
    }

    /* renamed from: d */
    private void m147d() {
        this.f12832d = SystemClock.uptimeMillis();
        this.f12833e = 0.0f;
    }

    /* renamed from: g */
    public void m144g() {
        float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.f12832d)) / this.f12834f);
        this.f12833e = min;
        if (min == 1.0f) {
            this.f12830b = false;
        }
        if (isRunning()) {
            scheduleSelf(this.f12846r, SystemClock.uptimeMillis() + 16);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f12843o) {
            m149b(canvas);
        } else {
            m148c(canvas);
        }
    }

    /* renamed from: e */
    public void m146e(boolean z) {
        this.f12845q = z;
    }

    /* renamed from: f */
    public void m145f(boolean z) {
        this.f12844p = z;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f12837i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f12836h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f12837i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f12836h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f12830b;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean z;
        boolean m70g = C3124d.m70g(iArr, 16842912);
        int colorForState = this.f12842n.getColorForState(iArr, this.f12841m);
        if (this.f12843o != m70g) {
            this.f12843o = m70g;
            if (!this.f12844p && this.f12845q) {
                start();
            }
            z = true;
        } else {
            z = false;
        }
        if (this.f12841m != colorForState) {
            this.f12840l = isRunning() ? this.f12841m : colorForState;
            this.f12841m = colorForState;
            z = true;
        } else if (!isRunning()) {
            this.f12840l = colorForState;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        this.f12830b = true;
        super.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f12831c.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f12831c.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        m147d();
        scheduleSelf(this.f12846r, SystemClock.uptimeMillis() + 16);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f12830b = false;
        unscheduleSelf(this.f12846r);
        invalidateSelf();
    }
}
