package p092e.p107g.p108a.p109a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.callerid.block.R$styleable;
import p092e.p107g.p108a.p110b.C3121a;
import p092e.p107g.p108a.p110b.C3122b;
/* renamed from: e.g.a.a.f */
/* loaded from: classes2-dex2jar.jar:e/g/a/a/f.class */
public class View$OnTouchListenerC3116f extends Drawable implements Animatable, View.OnTouchListener {

    /* renamed from: C */
    private static final float[] f12855C = {0.0f, 0.99f, 1.0f};

    /* renamed from: A */
    private int f12856A;

    /* renamed from: B */
    private final Runnable f12857B;

    /* renamed from: b */
    private boolean f12858b;

    /* renamed from: c */
    private Paint f12859c;

    /* renamed from: d */
    private Paint f12860d;

    /* renamed from: e */
    private C3119c f12861e;

    /* renamed from: f */
    private RadialGradient f12862f;

    /* renamed from: g */
    private RadialGradient f12863g;

    /* renamed from: h */
    private Matrix f12864h;

    /* renamed from: i */
    private int f12865i;

    /* renamed from: j */
    private Drawable f12866j;

    /* renamed from: k */
    private RectF f12867k;

    /* renamed from: l */
    private Path f12868l;

    /* renamed from: m */
    private int f12869m;

    /* renamed from: n */
    private int f12870n;

    /* renamed from: o */
    private float f12871o;

    /* renamed from: p */
    private PointF f12872p;

    /* renamed from: q */
    private float f12873q;

    /* renamed from: r */
    private int f12874r;

    /* renamed from: s */
    private int f12875s;

    /* renamed from: t */
    private int f12876t;

    /* renamed from: u */
    private int f12877u;

    /* renamed from: v */
    private float f12878v;

    /* renamed from: w */
    private int f12879w;

    /* renamed from: x */
    private Interpolator f12880x;

    /* renamed from: y */
    private Interpolator f12881y;

    /* renamed from: z */
    private long f12882z;

    /* renamed from: e.g.a.a.f$a */
    /* loaded from: classes2-dex2jar.jar:e/g/a/a/f$a.class */
    class RunnableC3117a implements Runnable {
        RunnableC3117a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = View$OnTouchListenerC3116f.this.f12874r;
            if (i == -1 || i == 0) {
                View$OnTouchListenerC3116f.this.m120w();
            } else if (i == 1) {
                View$OnTouchListenerC3116f.this.m119x();
            }
        }
    }

    /* renamed from: e.g.a.a.f$b */
    /* loaded from: classes2-dex2jar.jar:e/g/a/a/f$b.class */
    public static class C3118b {

        /* renamed from: a */
        private Drawable f12884a;

        /* renamed from: b */
        private int f12885b;

        /* renamed from: c */
        private int f12886c;

        /* renamed from: d */
        private int f12887d;

        /* renamed from: e */
        private int f12888e;

        /* renamed from: f */
        private int f12889f;

        /* renamed from: g */
        private int f12890g;

        /* renamed from: h */
        private int f12891h;

        /* renamed from: i */
        private Interpolator f12892i;

        /* renamed from: j */
        private Interpolator f12893j;

        /* renamed from: k */
        private int f12894k;

        /* renamed from: l */
        private int f12895l;

        /* renamed from: m */
        private int f12896m;

        /* renamed from: n */
        private int f12897n;

        /* renamed from: o */
        private int f12898o;

        /* renamed from: p */
        private int f12899p;

        /* renamed from: q */
        private int f12900q;

        /* renamed from: r */
        private int f12901r;

        /* renamed from: s */
        private int f12902s;

        public C3118b(Context context, int i) {
            this(context, null, 0, i);
        }

        public C3118b(Context context, AttributeSet attributeSet, int i, int i2) {
            this.f12885b = 200;
            this.f12889f = 400;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RippleDrawable, i, i2);
            m117b(obtainStyledAttributes.getColor(1, 0));
            m118a(obtainStyledAttributes.getInteger(0, context.getResources().getInteger(17694721)));
            m100s(obtainStyledAttributes.getInteger(16, 0));
            m110i(obtainStyledAttributes.getInteger(6, 0));
            int g = C3122b.m79g(obtainStyledAttributes, 10);
            m106m((g < 16 || g > 31) ? obtainStyledAttributes.getDimensionPixelSize(10, C3122b.m81e(context, 48)) : obtainStyledAttributes.getInteger(10, -1));
            m101r(obtainStyledAttributes.getColor(15, C3122b.m83c(context, 0)));
            m102q(obtainStyledAttributes.getInteger(14, context.getResources().getInteger(17694721)));
            int resourceId = obtainStyledAttributes.getResourceId(7, 0);
            if (resourceId != 0) {
                m109j(AnimationUtils.loadInterpolator(context, resourceId));
            }
            int resourceId2 = obtainStyledAttributes.getResourceId(11, 0);
            if (resourceId2 != 0) {
                m105n(AnimationUtils.loadInterpolator(context, resourceId2));
            }
            m107l(obtainStyledAttributes.getInteger(9, 0));
            m111h(obtainStyledAttributes.getDimensionPixelSize(5, 0));
            m98u(obtainStyledAttributes.getDimensionPixelSize(17, this.f12895l));
            m97v(obtainStyledAttributes.getDimensionPixelSize(19, this.f12896m));
            m113f(obtainStyledAttributes.getDimensionPixelSize(4, this.f12898o));
            m114e(obtainStyledAttributes.getDimensionPixelSize(2, this.f12897n));
            m104o(obtainStyledAttributes.getDimensionPixelSize(12, 0));
            m108k(obtainStyledAttributes.getDimensionPixelSize(8, this.f12899p));
            m103p(obtainStyledAttributes.getDimensionPixelSize(13, this.f12901r));
            m99t(obtainStyledAttributes.getDimensionPixelSize(18, this.f12900q));
            m115d(obtainStyledAttributes.getDimensionPixelSize(3, this.f12902s));
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public C3118b m118a(int i) {
            this.f12885b = i;
            return this;
        }

        /* renamed from: b */
        public C3118b m117b(int i) {
            this.f12886c = i;
            return this;
        }

        /* renamed from: c */
        public C3118b m116c(Drawable drawable) {
            this.f12884a = drawable;
            return this;
        }

        /* renamed from: d */
        public C3118b m115d(int i) {
            this.f12902s = i;
            return this;
        }

        /* renamed from: e */
        public C3118b m114e(int i) {
            this.f12897n = i;
            return this;
        }

        /* renamed from: f */
        public C3118b m113f(int i) {
            this.f12898o = i;
            return this;
        }

        /* renamed from: g */
        public View$OnTouchListenerC3116f m112g() {
            if (this.f12892i == null) {
                this.f12892i = new AccelerateInterpolator();
            }
            if (this.f12893j == null) {
                this.f12893j = new DecelerateInterpolator();
            }
            return new View$OnTouchListenerC3116f(this.f12884a, this.f12885b, this.f12886c, this.f12887d, this.f12891h, this.f12888e, this.f12889f, this.f12890g, this.f12892i, this.f12893j, this.f12894k, this.f12895l, this.f12896m, this.f12898o, this.f12897n, this.f12899p, this.f12900q, this.f12901r, this.f12902s, null);
        }

        /* renamed from: h */
        public C3118b m111h(int i) {
            this.f12895l = i;
            this.f12896m = i;
            this.f12897n = i;
            this.f12898o = i;
            return this;
        }

        /* renamed from: i */
        public C3118b m110i(int i) {
            this.f12891h = i;
            return this;
        }

        /* renamed from: j */
        public C3118b m109j(Interpolator interpolator) {
            this.f12892i = interpolator;
            return this;
        }

        /* renamed from: k */
        public C3118b m108k(int i) {
            this.f12899p = i;
            return this;
        }

        /* renamed from: l */
        public C3118b m107l(int i) {
            this.f12894k = i;
            return this;
        }

        /* renamed from: m */
        public C3118b m106m(int i) {
            this.f12888e = i;
            return this;
        }

        /* renamed from: n */
        public C3118b m105n(Interpolator interpolator) {
            this.f12893j = interpolator;
            return this;
        }

        /* renamed from: o */
        public C3118b m104o(int i) {
            this.f12899p = i;
            this.f12900q = i;
            this.f12901r = i;
            this.f12902s = i;
            return this;
        }

        /* renamed from: p */
        public C3118b m103p(int i) {
            this.f12901r = i;
            return this;
        }

        /* renamed from: q */
        public C3118b m102q(int i) {
            this.f12889f = i;
            return this;
        }

        /* renamed from: r */
        public C3118b m101r(int i) {
            this.f12890g = i;
            return this;
        }

        /* renamed from: s */
        public C3118b m100s(int i) {
            this.f12887d = i;
            return this;
        }

        /* renamed from: t */
        public C3118b m99t(int i) {
            this.f12900q = i;
            return this;
        }

        /* renamed from: u */
        public C3118b m98u(int i) {
            this.f12895l = i;
            return this;
        }

        /* renamed from: v */
        public C3118b m97v(int i) {
            this.f12896m = i;
            return this;
        }
    }

    /* renamed from: e.g.a.a.f$c */
    /* loaded from: classes2-dex2jar.jar:e/g/a/a/f$c.class */
    public static class C3119c {

        /* renamed from: a */
        final int f12903a;

        /* renamed from: b */
        final float[] f12904b;

        /* renamed from: c */
        final int f12905c;

        /* renamed from: d */
        final int f12906d;

        /* renamed from: e */
        final int f12907e;

        /* renamed from: f */
        final int f12908f;

        public C3119c(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.f12904b = r0;
            this.f12903a = i;
            float f = i2;
            float f2 = i3;
            float f3 = i4;
            float f4 = i5;
            float[] fArr = {f, f, f2, f2, f3, f3, f4, f4};
            this.f12905c = i6;
            this.f12906d = i7;
            this.f12907e = i8;
            this.f12908f = i9;
        }
    }

    private View$OnTouchListenerC3116f(Drawable drawable, int i, int i2, int i3, int i4, int i5, int i6, int i7, Interpolator interpolator, Interpolator interpolator2, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f12858b = false;
        this.f12865i = 255;
        this.f12856A = 0;
        this.f12857B = new RunnableC3117a();
        m125r(drawable);
        this.f12869m = i;
        this.f12870n = i2;
        this.f12874r = i3;
        m124s(i4);
        this.f12875s = i5;
        this.f12876t = i6;
        this.f12877u = i7;
        if (this.f12874r == 0 && i5 <= 0) {
            this.f12874r = -1;
        }
        this.f12880x = interpolator;
        this.f12881y = interpolator2;
        m123t(i8, i9, i10, i11, i12, i13, i14, i15, i16);
        Paint paint = new Paint(1);
        this.f12860d = paint;
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint(1);
        this.f12859c = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f12868l = new Path();
        this.f12867k = new RectF();
        this.f12872p = new PointF();
        this.f12864h = new Matrix();
        int i17 = this.f12877u;
        float[] fArr = f12855C;
        this.f12862f = new RadialGradient(0.0f, 0.0f, 16.0f, new int[]{i17, i17, 0}, fArr, Shader.TileMode.CLAMP);
        if (this.f12874r == 1) {
            this.f12863g = new RadialGradient(0.0f, 0.0f, 16.0f, new int[]{0, C3121a.m88a(this.f12877u, 0.0f), this.f12877u}, fArr, Shader.TileMode.CLAMP);
        }
    }

    /* synthetic */ View$OnTouchListenerC3116f(Drawable drawable, int i, int i2, int i3, int i4, int i5, int i6, int i7, Interpolator interpolator, Interpolator interpolator2, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, RunnableC3117a aVar) {
        this(drawable, i, i2, i3, i4, i5, i6, i7, interpolator, interpolator2, i8, i9, i10, i11, i12, i13, i14, i15, i16);
    }

    /* renamed from: f */
    private void m131f(Canvas canvas) {
        if (this.f12856A != 0) {
            if (this.f12871o > 0.0f) {
                this.f12860d.setColor(this.f12870n);
                this.f12860d.setAlpha(Math.round(this.f12865i * this.f12871o));
                canvas.drawPath(this.f12868l, this.f12860d);
            }
            if (this.f12873q > 0.0f) {
                float f = this.f12878v;
                if (f > 0.0f) {
                    this.f12859c.setAlpha(Math.round(this.f12865i * f));
                    this.f12859c.setShader(this.f12862f);
                    canvas.drawPath(this.f12868l, this.f12859c);
                }
            }
        }
    }

    /* renamed from: g */
    private void m130g(Canvas canvas) {
        Paint paint;
        Path path;
        Paint paint2;
        RadialGradient radialGradient;
        int i = this.f12856A;
        if (i != 0) {
            if (i == 4) {
                if (this.f12873q == 0.0f) {
                    this.f12860d.setColor(this.f12877u);
                    path = this.f12868l;
                    paint = this.f12860d;
                    canvas.drawPath(path, paint);
                }
                paint2 = this.f12859c;
                radialGradient = this.f12863g;
            } else if (this.f12873q > 0.0f) {
                paint2 = this.f12859c;
                radialGradient = this.f12862f;
            } else {
                return;
            }
            paint2.setShader(radialGradient);
            path = this.f12868l;
            paint = this.f12859c;
            canvas.drawPath(path, paint);
        }
    }

    /* renamed from: m */
    private int m127m(float f, float f2) {
        return (int) Math.round(Math.sqrt(Math.pow((f < this.f12867k.centerX() ? this.f12867k.right : this.f12867k.left) - f, 2.0d) + Math.pow((f2 < this.f12867k.centerY() ? this.f12867k.bottom : this.f12867k.top) - f2, 2.0d)));
    }

    /* renamed from: o */
    private void m126o() {
        this.f12882z = SystemClock.uptimeMillis();
    }

    /* renamed from: u */
    private boolean m122u(float f, float f2, float f3) {
        PointF pointF = this.f12872p;
        if (pointF.x == f && pointF.y == f2 && this.f12873q == f3) {
            return false;
        }
        pointF.set(f, f2);
        this.f12873q = f3;
        float f4 = f3 / 16.0f;
        this.f12864h.reset();
        this.f12864h.postTranslate(f, f2);
        this.f12864h.postScale(f4, f4, f, f2);
        this.f12862f.setLocalMatrix(this.f12864h);
        RadialGradient radialGradient = this.f12863g;
        if (radialGradient == null) {
            return true;
        }
        radialGradient.setLocalMatrix(this.f12864h);
        return true;
    }

    /* renamed from: v */
    private void m121v(int i) {
        int i2 = this.f12856A;
        if (i2 == i) {
            return;
        }
        if (i2 != 0 || i == 1) {
            this.f12856A = i;
            if (i == 0 || i == 2) {
                stop();
            } else {
                start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w */
    public void m120w() {
        int i = this.f12856A;
        int i2 = 4;
        long uptimeMillis = SystemClock.uptimeMillis() - this.f12882z;
        if (i != 4) {
            float min = Math.min(1.0f, ((float) uptimeMillis) / this.f12869m);
            this.f12871o = (this.f12880x.getInterpolation(min) * Color.alpha(this.f12870n)) / 255.0f;
            float min2 = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.f12882z)) / this.f12876t);
            this.f12878v = this.f12880x.getInterpolation(min2);
            PointF pointF = this.f12872p;
            m122u(pointF.x, pointF.y, this.f12875s * this.f12880x.getInterpolation(min2));
            if (min == 1.0f && min2 == 1.0f) {
                this.f12882z = SystemClock.uptimeMillis();
                if (this.f12856A == 1) {
                    i2 = 2;
                }
                m121v(i2);
            }
        } else {
            float min3 = Math.min(1.0f, ((float) uptimeMillis) / this.f12869m);
            this.f12871o = ((1.0f - this.f12881y.getInterpolation(min3)) * Color.alpha(this.f12870n)) / 255.0f;
            float min4 = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.f12882z)) / this.f12876t);
            this.f12878v = 1.0f - this.f12881y.getInterpolation(min4);
            PointF pointF2 = this.f12872p;
            m122u(pointF2.x, pointF2.y, this.f12875s * ((this.f12881y.getInterpolation(min4) * 0.5f) + 1.0f));
            if (min3 == 1.0f && min4 == 1.0f) {
                m121v(0);
            }
        }
        if (isRunning()) {
            scheduleSelf(this.f12857B, SystemClock.uptimeMillis() + 16);
        }
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public void m119x() {
        int i;
        float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.f12882z)) / this.f12876t);
        if (this.f12856A != 4) {
            PointF pointF = this.f12872p;
            m122u(pointF.x, pointF.y, this.f12875s * this.f12880x.getInterpolation(min));
            if (min == 1.0f) {
                this.f12882z = SystemClock.uptimeMillis();
                if (this.f12856A == 1) {
                    i = 2;
                    m121v(i);
                } else {
                    PointF pointF2 = this.f12872p;
                    m122u(pointF2.x, pointF2.y, 0.0f);
                    m121v(4);
                }
            }
        } else {
            PointF pointF3 = this.f12872p;
            m122u(pointF3.x, pointF3.y, this.f12875s * this.f12881y.getInterpolation(min));
            if (min == 1.0f) {
                i = 0;
                m121v(i);
            }
        }
        if (isRunning()) {
            scheduleSelf(this.f12857B, SystemClock.uptimeMillis() + 16);
        }
        invalidateSelf();
    }

    /* renamed from: d */
    public void m132d() {
        m121v(0);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f12866j;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        int i = this.f12874r;
        if (i == -1 || i == 0) {
            m131f(canvas);
        } else if (i == 1) {
            m130g(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: i */
    public Drawable m129i() {
        return this.f12866j;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        int i = this.f12856A;
        return (i == 0 || i == 2 || !this.f12858b) ? false : true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f12866j;
        return drawable != null && drawable.isStateful();
    }

    /* renamed from: l */
    public long m128l() {
        int max;
        int i = this.f12879w;
        if (i != 1) {
            if (i != 2) {
                return -1L;
            }
            int i2 = this.f12856A;
            if (i2 == 3) {
                max = Math.max(this.f12869m, this.f12876t) * 2;
                return max - (SystemClock.uptimeMillis() - this.f12882z);
            } else if (i2 != 4) {
                return -1L;
            }
        } else if (this.f12856A != 3) {
            return -1L;
        }
        max = Math.max(this.f12869m, this.f12876t);
        return max - (SystemClock.uptimeMillis() - this.f12882z);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f12866j;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        RectF rectF = this.f12867k;
        int i = rect.left;
        C3119c cVar = this.f12861e;
        rectF.set(i + cVar.f12905c, rect.top + cVar.f12906d, rect.right - cVar.f12907e, rect.bottom - cVar.f12908f);
        this.f12868l.reset();
        C3119c cVar2 = this.f12861e;
        int i2 = cVar2.f12903a;
        if (i2 == 0) {
            this.f12868l.addRoundRect(this.f12867k, cVar2.f12904b, Path.Direction.CW);
        } else if (i2 == 1) {
            this.f12868l.addOval(this.f12867k, Path.Direction.CW);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f12866j;
        return drawable != null && drawable.setState(iArr);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        return true;
                    }
                }
            }
            int i = this.f12856A;
            if (i == 0) {
                return true;
            }
            if (i == 2) {
                int i2 = this.f12874r;
                if (i2 == 1 || i2 == -1) {
                    PointF pointF = this.f12872p;
                    m122u(pointF.x, pointF.y, 0.0f);
                }
                m121v(4);
                return true;
            }
            m121v(3);
            return true;
        }
        int i3 = this.f12856A;
        if (i3 == 0 || i3 == 4) {
            int i4 = this.f12874r;
            if (i4 == 1 || i4 == -1) {
                this.f12875s = m127m(motionEvent.getX(), motionEvent.getY());
            }
            m122u(motionEvent.getX(), motionEvent.getY(), 0.0f);
            m121v(1);
            return true;
        } else if (this.f12874r != 0 || !m122u(motionEvent.getX(), motionEvent.getY(), this.f12873q)) {
            return true;
        } else {
            invalidateSelf();
            return true;
        }
    }

    /* renamed from: r */
    public void m125r(Drawable drawable) {
        this.f12866j = drawable;
        if (drawable != null) {
            drawable.setBounds(getBounds());
        }
    }

    /* renamed from: s */
    public void m124s(int i) {
        this.f12879w = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        this.f12858b = true;
        super.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f12865i = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f12860d.setColorFilter(colorFilter);
        this.f12859c.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (!isRunning()) {
            m126o();
            scheduleSelf(this.f12857B, SystemClock.uptimeMillis() + 16);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f12858b = false;
        unscheduleSelf(this.f12857B);
        invalidateSelf();
    }

    /* renamed from: t */
    public void m123t(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.f12861e = new C3119c(i, i2, i3, i4, i5, i6, i7, i8, i9);
    }
}
