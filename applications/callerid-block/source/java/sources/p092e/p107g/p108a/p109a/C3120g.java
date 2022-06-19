package p092e.p107g.p108a.p109a;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import p092e.p107g.p108a.p110b.C3124d;
/* renamed from: e.g.a.a.g */
/* loaded from: classes2-dex2jar.jar:e/g/a/a/g.class */
public class C3120g extends Drawable implements Animatable {

    /* renamed from: b */
    private boolean f12909b;

    /* renamed from: c */
    private Paint f12910c;

    /* renamed from: d */
    private Paint f12911d;

    /* renamed from: e */
    private RadialGradient f12912e;

    /* renamed from: f */
    private RadialGradient f12913f;

    /* renamed from: g */
    private Matrix f12914g;

    /* renamed from: h */
    private int f12915h;

    /* renamed from: i */
    private RectF f12916i;

    /* renamed from: j */
    private Path f12917j;

    /* renamed from: k */
    private int f12918k;

    /* renamed from: l */
    private int f12919l;

    /* renamed from: m */
    private float f12920m;

    /* renamed from: n */
    private PointF f12921n;

    /* renamed from: o */
    private float f12922o;

    /* renamed from: p */
    private int f12923p;

    /* renamed from: q */
    private int f12924q;

    /* renamed from: r */
    private int f12925r;

    /* renamed from: s */
    private float f12926s;

    /* renamed from: t */
    private int f12927t;

    /* renamed from: u */
    private long f12928u;

    /* renamed from: v */
    private boolean f12929v;

    /* renamed from: w */
    private int f12930w;

    /* renamed from: x */
    private final Runnable f12931x;

    /* renamed from: b */
    private void m95b(Canvas canvas) {
        if (this.f12930w != 0) {
            if (this.f12920m > 0.0f) {
                this.f12911d.setColor(this.f12919l);
                this.f12911d.setAlpha(Math.round(this.f12915h * this.f12920m));
                canvas.drawPath(this.f12917j, this.f12911d);
            }
            if (this.f12922o <= 0.0f) {
                return;
            }
            float f = this.f12926s;
            if (f <= 0.0f) {
                return;
            }
            this.f12910c.setAlpha(Math.round(this.f12915h * f));
            this.f12910c.setShader(this.f12912e);
            canvas.drawPath(this.f12917j, this.f12910c);
        }
    }

    /* renamed from: c */
    private void m94c(Canvas canvas) {
        Paint paint;
        Path path;
        RadialGradient radialGradient;
        Paint paint2;
        int i = this.f12930w;
        if (i != 0) {
            if (i == 4) {
                if (this.f12922o == 0.0f) {
                    this.f12911d.setColor(this.f12925r);
                    path = this.f12917j;
                    paint = this.f12911d;
                    canvas.drawPath(path, paint);
                }
                paint2 = this.f12910c;
                radialGradient = this.f12913f;
            } else if (this.f12922o <= 0.0f) {
                return;
            } else {
                paint2 = this.f12910c;
                radialGradient = this.f12912e;
            }
            paint2.setShader(radialGradient);
            path = this.f12917j;
            paint = this.f12910c;
            canvas.drawPath(path, paint);
        }
    }

    /* renamed from: e */
    private int m92e(float f, float f2) {
        return (int) Math.round(Math.sqrt(Math.pow((f < this.f12916i.centerX() ? this.f12916i.right : this.f12916i.left) - f, 2.0d) + Math.pow((f2 < this.f12916i.centerY() ? this.f12916i.bottom : this.f12916i.top) - f2, 2.0d)));
    }

    /* renamed from: f */
    private void m91f() {
        this.f12928u = SystemClock.uptimeMillis();
    }

    /* renamed from: g */
    private boolean m90g(float f, float f2, float f3) {
        PointF pointF = this.f12921n;
        if (pointF.x == f && pointF.y == f2 && this.f12922o == f3) {
            return false;
        }
        pointF.set(f, f2);
        this.f12922o = f3;
        float f4 = f3 / 16.0f;
        this.f12914g.reset();
        this.f12914g.postTranslate(f, f2);
        this.f12914g.postScale(f4, f4, f, f2);
        this.f12912e.setLocalMatrix(this.f12914g);
        RadialGradient radialGradient = this.f12913f;
        if (radialGradient == null) {
            return true;
        }
        radialGradient.setLocalMatrix(this.f12914g);
        return true;
    }

    /* renamed from: h */
    private void m89h(int i) {
        if (this.f12930w != i) {
            this.f12930w = i;
            if (i == 0 || i == 2) {
                stop();
            } else {
                start();
            }
        }
    }

    /* renamed from: a */
    public void m96a() {
        m89h(0);
    }

    /* renamed from: d */
    public long m93d() {
        int max;
        int i = this.f12927t;
        if (i != 1) {
            if (i != 2) {
                return -1L;
            }
            int i2 = this.f12930w;
            if (i2 == 3) {
                max = Math.max(this.f12918k, this.f12924q) * 2;
                return max - (SystemClock.uptimeMillis() - this.f12928u);
            } else if (i2 != 4) {
                return -1L;
            }
        } else if (this.f12930w != 3) {
            return -1L;
        }
        max = Math.max(this.f12918k, this.f12924q);
        return max - (SystemClock.uptimeMillis() - this.f12928u);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i = this.f12923p;
        if (i == -1 || i == 0) {
            m95b(canvas);
        } else if (i != 1) {
        } else {
            m94c(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f12909b;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f12916i.set(rect.left, rect.top, rect.right, rect.bottom);
        this.f12917j.reset();
        this.f12917j.addRect(this.f12916i, Path.Direction.CW);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean m70g = C3124d.m70g(iArr, 16842919);
        if (this.f12929v != m70g) {
            this.f12929v = m70g;
            if (!m70g) {
                int i = this.f12930w;
                if (i == 0) {
                    return true;
                }
                if (i != 2) {
                    m89h(3);
                    return true;
                }
                int i2 = this.f12923p;
                if (i2 == 1 || i2 == -1) {
                    PointF pointF = this.f12921n;
                    m90g(pointF.x, pointF.y, 0.0f);
                }
                m89h(4);
                return true;
            }
            Rect bounds = getBounds();
            int i3 = this.f12930w;
            if (i3 != 0 && i3 != 4) {
                if (this.f12923p != 0) {
                    return true;
                }
                m90g(bounds.exactCenterX(), bounds.exactCenterY(), this.f12922o);
                return true;
            }
            int i4 = this.f12923p;
            if (i4 == 1 || i4 == -1) {
                m92e(bounds.exactCenterX(), bounds.exactCenterY());
            }
            m90g(bounds.exactCenterX(), bounds.exactCenterY(), 0.0f);
            m89h(1);
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        this.f12909b = true;
        super.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f12915h = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f12911d.setColorFilter(colorFilter);
        this.f12910c.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (isRunning()) {
            return;
        }
        m91f();
        scheduleSelf(this.f12931x, SystemClock.uptimeMillis() + 16);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (!isRunning()) {
            return;
        }
        this.f12909b = false;
        unscheduleSelf(this.f12931x);
        invalidateSelf();
    }
}
