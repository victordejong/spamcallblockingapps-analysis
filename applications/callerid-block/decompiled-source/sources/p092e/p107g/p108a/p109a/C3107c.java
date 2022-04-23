package p092e.p107g.p108a.p109a;

import android.content.Context;
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
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.callerid.block.R$styleable;
import d.h.k.f;
import java.util.Locale;
import p092e.p107g.p108a.p110b.C3122b;
/* renamed from: e.g.a.a.c */
/* loaded from: classes2-dex2jar.jar:e/g/a/a/c.class */
public class C3107c extends Drawable implements Animatable {

    /* renamed from: b */
    private boolean f12769b;

    /* renamed from: c */
    private Paint f12770c;

    /* renamed from: d */
    private int f12771d;

    /* renamed from: e */
    private int f12772e;

    /* renamed from: f */
    private int f12773f;

    /* renamed from: g */
    private int f12774g;

    /* renamed from: h */
    private RectF f12775h;

    /* renamed from: i */
    private int f12776i;

    /* renamed from: j */
    private int f12777j;

    /* renamed from: k */
    private long f12778k;

    /* renamed from: l */
    private float f12779l;

    /* renamed from: m */
    private int f12780m;

    /* renamed from: n */
    private Interpolator f12781n;

    /* renamed from: o */
    private int f12782o;

    /* renamed from: p */
    private int f12783p;

    /* renamed from: q */
    private boolean f12784q;

    /* renamed from: r */
    private Paint.Cap f12785r;

    /* renamed from: s */
    private Paint.Join f12786s;

    /* renamed from: t */
    private boolean f12787t;

    /* renamed from: u */
    private Path f12788u;

    /* renamed from: v */
    private C3110c[] f12789v;

    /* renamed from: w */
    private final Runnable f12790w;

    /* renamed from: e.g.a.a.c$a */
    /* loaded from: classes2-dex2jar.jar:e/g/a/a/c$a.class */
    class RunnableC3108a implements Runnable {
        RunnableC3108a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C3107c.this.m191h();
        }
    }

    /* renamed from: e.g.a.a.c$b */
    /* loaded from: classes2-dex2jar.jar:e/g/a/a/c$b.class */
    public static class C3109b {

        /* renamed from: a */
        private int f12792a;

        /* renamed from: b */
        private int f12793b;

        /* renamed from: c */
        private int f12794c;

        /* renamed from: d */
        private int f12795d;

        /* renamed from: e */
        private int f12796e;

        /* renamed from: f */
        private int f12797f;

        /* renamed from: g */
        private Interpolator f12798g;

        /* renamed from: h */
        private int f12799h;

        /* renamed from: i */
        private int f12800i;

        /* renamed from: j */
        private boolean f12801j;

        /* renamed from: k */
        private Paint.Cap f12802k;

        /* renamed from: l */
        private Paint.Join f12803l;

        /* renamed from: m */
        private boolean f12804m;

        /* renamed from: n */
        private C3110c[] f12805n;

        public C3109b(Context context, int i) {
            this(context, null, 0, i);
        }

        public C3109b(Context context, AttributeSet attributeSet, int i, int i2) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.LineMorphingDrawable, i, i2);
            boolean z = false;
            int resourceId = obtainStyledAttributes.getResourceId(10, 0);
            if (resourceId != 0) {
                m175m(m177k(context, resourceId));
            }
            m184d(obtainStyledAttributes.getInteger(2, 0));
            m182f(obtainStyledAttributes.getDimensionPixelSize(5, 0));
            m180h(obtainStyledAttributes.getDimensionPixelSize(7, this.f12793b));
            m178j(obtainStyledAttributes.getDimensionPixelSize(9, this.f12794c));
            m179i(obtainStyledAttributes.getDimensionPixelSize(8, this.f12795d));
            m181g(obtainStyledAttributes.getDimensionPixelSize(6, this.f12796e));
            m187a(obtainStyledAttributes.getInteger(0, context.getResources().getInteger(17694721)));
            int resourceId2 = obtainStyledAttributes.getResourceId(3, 0);
            if (resourceId2 != 0) {
                m183e(AnimationUtils.loadInterpolator(context, resourceId2));
            }
            m171q(obtainStyledAttributes.getDimensionPixelSize(14, C3122b.m81e(context, 3)));
            m173o(obtainStyledAttributes.getColor(12, -1));
            int integer = obtainStyledAttributes.getInteger(11, 0);
            m174n(integer == 0 ? Paint.Cap.BUTT : integer == 1 ? Paint.Cap.ROUND : Paint.Cap.SQUARE);
            int integer2 = obtainStyledAttributes.getInteger(13, 0);
            m172p(integer2 == 0 ? Paint.Join.MITER : integer2 == 1 ? Paint.Join.ROUND : Paint.Join.BEVEL);
            m185c(obtainStyledAttributes.getBoolean(1, true));
            int integer3 = obtainStyledAttributes.getInteger(4, 0);
            if (integer3 != 3 ? integer3 == 1 : f.b(Locale.getDefault()) == 1) {
                z = true;
            }
            m176l(z);
            obtainStyledAttributes.recycle();
        }

        /* JADX WARN: Code restructure failed: missing block: B:134:0x033d, code lost:
            if (r9 != null) goto L_0x0366;
         */
        /* JADX WARN: Code restructure failed: missing block: B:147:0x0363, code lost:
            if (r9 == null) goto L_0x036d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:148:0x0366, code lost:
            r9.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:150:0x0373, code lost:
            if (r0.isEmpty() == false) goto L_0x0378;
         */
        /* JADX WARN: Code restructure failed: missing block: B:151:0x0376, code lost:
            return null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:153:0x038a, code lost:
            return (p092e.p107g.p108a.p109a.C3107c.C3110c[]) r0.toArray(new p092e.p107g.p108a.p109a.C3107c.C3110c[r0.size()]);
         */
        /* renamed from: k */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private p092e.p107g.p108a.p109a.C3107c.C3110c[] m177k(android.content.Context r6, int r7) {
            /*
                Method dump skipped, instructions count: 907
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p092e.p107g.p108a.p109a.C3107c.C3109b.m177k(android.content.Context, int):e.g.a.a.c$c[]");
        }

        /* renamed from: a */
        public C3109b m187a(int i) {
            this.f12797f = i;
            return this;
        }

        /* renamed from: b */
        public C3107c m186b() {
            if (this.f12802k == null) {
                this.f12802k = Paint.Cap.BUTT;
            }
            if (this.f12803l == null) {
                this.f12803l = Paint.Join.MITER;
            }
            if (this.f12798g == null) {
                this.f12798g = new AccelerateInterpolator();
            }
            return new C3107c(this.f12805n, this.f12792a, this.f12793b, this.f12794c, this.f12795d, this.f12796e, this.f12797f, this.f12798g, this.f12799h, this.f12800i, this.f12802k, this.f12803l, this.f12801j, this.f12804m, null);
        }

        /* renamed from: c */
        public C3109b m185c(boolean z) {
            this.f12801j = z;
            return this;
        }

        /* renamed from: d */
        public C3109b m184d(int i) {
            this.f12792a = i;
            return this;
        }

        /* renamed from: e */
        public C3109b m183e(Interpolator interpolator) {
            this.f12798g = interpolator;
            return this;
        }

        /* renamed from: f */
        public C3109b m182f(int i) {
            this.f12793b = i;
            this.f12794c = i;
            this.f12795d = i;
            this.f12796e = i;
            return this;
        }

        /* renamed from: g */
        public C3109b m181g(int i) {
            this.f12796e = i;
            return this;
        }

        /* renamed from: h */
        public C3109b m180h(int i) {
            this.f12793b = i;
            return this;
        }

        /* renamed from: i */
        public C3109b m179i(int i) {
            this.f12795d = i;
            return this;
        }

        /* renamed from: j */
        public C3109b m178j(int i) {
            this.f12794c = i;
            return this;
        }

        /* renamed from: l */
        public C3109b m176l(boolean z) {
            this.f12804m = z;
            return this;
        }

        /* renamed from: m */
        public C3109b m175m(C3110c... cVarArr) {
            this.f12805n = cVarArr;
            return this;
        }

        /* renamed from: n */
        public C3109b m174n(Paint.Cap cap) {
            this.f12802k = cap;
            return this;
        }

        /* renamed from: o */
        public C3109b m173o(int i) {
            this.f12800i = i;
            return this;
        }

        /* renamed from: p */
        public C3109b m172p(Paint.Join join) {
            this.f12803l = join;
            return this;
        }

        /* renamed from: q */
        public C3109b m171q(int i) {
            this.f12799h = i;
            return this;
        }
    }

    /* renamed from: e.g.a.a.c$c */
    /* loaded from: classes2-dex2jar.jar:e/g/a/a/c$c.class */
    public static class C3110c {

        /* renamed from: a */
        float[] f12806a;

        /* renamed from: b */
        int[] f12807b;
    }

    private C3107c(C3110c[] cVarArr, int i, int i2, int i3, int i4, int i5, int i6, Interpolator interpolator, int i7, int i8, Paint.Cap cap, Paint.Join join, boolean z, boolean z2) {
        this.f12769b = false;
        this.f12771d = 12;
        this.f12772e = 12;
        this.f12773f = 12;
        this.f12774g = 12;
        this.f12790w = new RunnableC3108a();
        this.f12789v = cVarArr;
        this.f12771d = i2;
        this.f12772e = i3;
        this.f12773f = i4;
        this.f12774g = i5;
        this.f12780m = i6;
        this.f12781n = interpolator;
        this.f12782o = i7;
        this.f12783p = i8;
        this.f12785r = cap;
        this.f12786s = join;
        this.f12784q = z;
        this.f12787t = z2;
        Paint paint = new Paint();
        this.f12770c = paint;
        paint.setAntiAlias(true);
        this.f12770c.setStyle(Paint.Style.STROKE);
        this.f12770c.setStrokeCap(this.f12785r);
        this.f12770c.setStrokeJoin(this.f12786s);
        this.f12770c.setColor(this.f12783p);
        this.f12770c.setStrokeWidth(this.f12782o);
        this.f12775h = new RectF();
        this.f12788u = new Path();
        m192g(i, false);
    }

    /* synthetic */ C3107c(C3110c[] cVarArr, int i, int i2, int i3, int i4, int i5, int i6, Interpolator interpolator, int i7, int i8, Paint.Cap cap, Paint.Join join, boolean z, boolean z2, RunnableC3108a aVar) {
        this(cVarArr, i, i2, i3, i4, i5, i6, interpolator, i7, i8, cap, join, z, z2);
    }

    /* renamed from: c */
    private float m196c(float f) {
        RectF rectF = this.f12775h;
        return rectF.left + (rectF.width() * f);
    }

    /* renamed from: d */
    private float m195d(float f) {
        RectF rectF = this.f12775h;
        return rectF.top + (rectF.height() * f);
    }

    /* renamed from: e */
    private void m194e() {
        this.f12778k = SystemClock.uptimeMillis();
        this.f12779l = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m191h() {
        float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.f12778k)) / this.f12780m);
        if (min == 1.0f) {
            m193f(this.f12777j, 1.0f);
            this.f12769b = false;
        } else {
            m193f(this.f12777j, this.f12781n.getInterpolation(min));
        }
        if (isRunning()) {
            scheduleSelf(this.f12790w, SystemClock.uptimeMillis() + 16);
        }
    }

    /* renamed from: i */
    private void m190i() {
        Path path;
        C3110c cVar;
        this.f12788u.reset();
        C3110c[] cVarArr = this.f12789v;
        if (cVarArr != null) {
            float f = this.f12779l;
            if (f != 0.0f) {
                int i = this.f12776i;
                if (cVarArr[i].f12807b == null || f >= 0.05f) {
                    if (f != 1.0f) {
                        int i2 = this.f12777j;
                        if (cVarArr[i2].f12807b == null || f <= 0.95f) {
                            m189j(this.f12788u, cVarArr[i], cVarArr[i2], this.f12781n.getInterpolation(f));
                            invalidateSelf();
                        }
                    }
                    path = this.f12788u;
                    cVar = cVarArr[this.f12777j];
                    m188k(path, cVar);
                    invalidateSelf();
                }
            }
            path = this.f12788u;
            cVar = cVarArr[this.f12776i];
            m188k(path, cVar);
            invalidateSelf();
        }
    }

    /* renamed from: j */
    private void m189j(Path path, C3110c cVar, C3110c cVar2, float f) {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        int max = Math.max(cVar.f12806a.length, cVar2.f12806a.length) / 4;
        for (int i = 0; i < max; i++) {
            int i2 = i * 4;
            float[] fArr = cVar.f12806a;
            float f9 = 0.5f;
            if (i2 >= fArr.length) {
                f5 = 0.5f;
                f4 = 0.5f;
                f3 = 0.5f;
                f2 = 0.5f;
            } else {
                f4 = fArr[i2];
                f3 = fArr[i2 + 1];
                f2 = fArr[i2 + 2];
                f5 = fArr[i2 + 3];
            }
            float[] fArr2 = cVar2.f12806a;
            if (i2 >= fArr2.length) {
                f8 = 0.5f;
                f7 = 0.5f;
                f6 = 0.5f;
            } else {
                f9 = fArr2[i2];
                f7 = fArr2[i2 + 1];
                f6 = fArr2[i2 + 2];
                f8 = fArr2[i2 + 3];
            }
            this.f12788u.moveTo(m196c(f4 + ((f9 - f4) * f)), m195d(f3 + ((f7 - f3) * f)));
            this.f12788u.lineTo(m196c(f2 + ((f6 - f2) * f)), m195d(f5 + ((f8 - f5) * f)));
        }
    }

    /* renamed from: k */
    private void m188k(Path path, C3110c cVar) {
        boolean z;
        if (cVar.f12807b != null) {
            int i = 0;
            while (true) {
                int[] iArr = cVar.f12807b;
                if (i >= iArr.length) {
                    break;
                }
                int i2 = iArr[i] * 4;
                int i3 = iArr[i + 1] * 4;
                float c = m196c(cVar.f12806a[i2]);
                float d = m195d(cVar.f12806a[i2 + 1]);
                float c2 = m196c(cVar.f12806a[i2 + 2]);
                float d2 = m195d(cVar.f12806a[i2 + 3]);
                float c3 = m196c(cVar.f12806a[i3]);
                float d3 = m195d(cVar.f12806a[i3 + 1]);
                float c4 = m196c(cVar.f12806a[i3 + 2]);
                float d4 = m195d(cVar.f12806a[i3 + 3]);
                if (c == c3 && d == d3) {
                    path.moveTo(c2, d2);
                    path.lineTo(c, d);
                } else {
                    if (c == c4 && d == d4) {
                        path.moveTo(c2, d2);
                        path.lineTo(c, d);
                    } else if (c2 == c3 && d2 == d3) {
                        path.moveTo(c, d);
                        path.lineTo(c2, d2);
                    } else {
                        path.moveTo(c, d);
                        path.lineTo(c2, d2);
                    }
                    path.lineTo(c3, d3);
                    i += 2;
                }
                path.lineTo(c4, d4);
                i += 2;
            }
            int length = cVar.f12806a.length / 4;
            for (int i4 = 0; i4 < length; i4++) {
                int i5 = 0;
                while (true) {
                    int[] iArr2 = cVar.f12807b;
                    if (i5 >= iArr2.length) {
                        z = false;
                        break;
                    } else if (iArr2[i5] == i4) {
                        z = true;
                        break;
                    } else {
                        i5++;
                    }
                }
                if (!z) {
                    int i6 = i4 * 4;
                    path.moveTo(m196c(cVar.f12806a[i6]), m195d(cVar.f12806a[i6 + 1]));
                    path.lineTo(m196c(cVar.f12806a[i6 + 2]), m195d(cVar.f12806a[i6 + 3]));
                }
            }
            return;
        }
        int length2 = cVar.f12806a.length / 4;
        for (int i7 = 0; i7 < length2; i7++) {
            int i8 = i7 * 4;
            path.moveTo(m196c(cVar.f12806a[i8]), m195d(cVar.f12806a[i8 + 1]));
            path.lineTo(m196c(cVar.f12806a[i8 + 2]), m195d(cVar.f12806a[i8 + 3]));
        }
    }

    /* renamed from: b */
    public int m197b() {
        return this.f12777j;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int save = canvas.save();
        float f = this.f12784q ? 180 : -180;
        float f2 = this.f12776i < this.f12777j ? 0.0f : 1.0f;
        float f3 = this.f12779l;
        if (this.f12787t) {
            canvas.scale(-1.0f, 1.0f, this.f12775h.centerX(), this.f12775h.centerY());
        }
        canvas.rotate(f * (f2 + f3), this.f12775h.centerX(), this.f12775h.centerY());
        canvas.drawPath(this.f12788u, this.f12770c);
        canvas.restoreToCount(save);
    }

    /* renamed from: f */
    public boolean m193f(int i, float f) {
        int i2 = this.f12777j;
        if (i2 != i) {
            this.f12776i = i2;
            this.f12777j = i;
        } else if (this.f12779l == f) {
            return false;
        }
        this.f12779l = f;
        m190i();
        return true;
    }

    /* renamed from: g */
    public void m192g(int i, boolean z) {
        int i2 = this.f12777j;
        if (i2 != i) {
            this.f12776i = i2;
            this.f12777j = i;
            if (z) {
                start();
                return;
            }
        } else if (z) {
            return;
        }
        this.f12779l = 1.0f;
        m190i();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f12769b;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        RectF rectF = this.f12775h;
        rectF.left = rect.left + this.f12771d;
        rectF.top = rect.top + this.f12772e;
        rectF.right = rect.right - this.f12773f;
        rectF.bottom = rect.bottom - this.f12774g;
        m190i();
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        this.f12769b = true;
        super.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f12770c.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f12770c.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        m194e();
        scheduleSelf(this.f12790w, SystemClock.uptimeMillis() + 16);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (isRunning()) {
            this.f12769b = false;
            unscheduleSelf(this.f12790w);
            invalidateSelf();
        }
    }
}
