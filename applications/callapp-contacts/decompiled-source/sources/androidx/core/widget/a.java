package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/a.class */
public abstract class a implements View.OnTouchListener {
    private static final int r = ViewConfiguration.getTapTimeout();

    /* renamed from: a  reason: collision with root package name */
    final C0055a f2049a;

    /* renamed from: b  reason: collision with root package name */
    final View f2050b;

    /* renamed from: c  reason: collision with root package name */
    boolean f2051c;

    /* renamed from: d  reason: collision with root package name */
    boolean f2052d;
    boolean e;
    private Runnable g;
    private boolean o;
    private boolean p;
    private boolean q;
    private final Interpolator f = new AccelerateInterpolator();
    private float[] h = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
    private float[] i = {Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] l = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
    private float[] m = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
    private float[] n = {Float.MAX_VALUE, Float.MAX_VALUE};
    private int j = 1;
    private int k = r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/a$a.class */
    public static final class C0055a {

        /* renamed from: a  reason: collision with root package name */
        int f2053a;

        /* renamed from: b  reason: collision with root package name */
        int f2054b;

        /* renamed from: c  reason: collision with root package name */
        float f2055c;

        /* renamed from: d  reason: collision with root package name */
        float f2056d;
        float j;
        int k;
        long e = Long.MIN_VALUE;
        long i = -1;
        long f = 0;
        int g = 0;
        int h = 0;

        C0055a() {
        }

        final float a(long j) {
            long j2 = this.e;
            if (j < j2) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            long j3 = this.i;
            if (j3 < 0 || j < j3) {
                return a.a(((float) (j - j2)) / this.f2053a, BitmapDescriptorFactory.HUE_RED, 1.0f) * 0.5f;
            }
            float f = this.j;
            return (1.0f - f) + (f * a.a(((float) (j - j3)) / this.k, BitmapDescriptorFactory.HUE_RED, 1.0f));
        }

        public final void a() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.k = a.a((int) (currentAnimationTimeMillis - this.e), this.f2054b);
            this.j = a(currentAnimationTimeMillis);
            this.i = currentAnimationTimeMillis;
        }

        public final int b() {
            float f = this.f2055c;
            return (int) (f / Math.abs(f));
        }

        public final int c() {
            float f = this.f2056d;
            return (int) (f / Math.abs(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/widget/a$b.class */
    final class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (a.this.e) {
                if (a.this.f2051c) {
                    a.this.f2051c = false;
                    C0055a aVar = a.this.f2049a;
                    aVar.e = AnimationUtils.currentAnimationTimeMillis();
                    aVar.i = -1L;
                    aVar.f = aVar.e;
                    aVar.j = 0.5f;
                    aVar.g = 0;
                    aVar.h = 0;
                }
                C0055a aVar2 = a.this.f2049a;
                if ((aVar2.i > 0 && AnimationUtils.currentAnimationTimeMillis() > aVar2.i + ((long) aVar2.k)) || !a.this.a()) {
                    a.this.e = false;
                    return;
                }
                if (a.this.f2052d) {
                    a.this.f2052d = false;
                    a aVar3 = a.this;
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                    aVar3.f2050b.onTouchEvent(obtain);
                    obtain.recycle();
                }
                if (aVar2.f != 0) {
                    long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                    float a2 = aVar2.a(currentAnimationTimeMillis);
                    long j = aVar2.f;
                    aVar2.f = currentAnimationTimeMillis;
                    float f = ((float) (currentAnimationTimeMillis - j)) * (((-4.0f) * a2 * a2) + (a2 * 4.0f));
                    aVar2.g = (int) (aVar2.f2055c * f);
                    aVar2.h = (int) (f * aVar2.f2056d);
                    a.this.a(aVar2.h);
                    v.a(a.this.f2050b, this);
                    return;
                }
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
        }
    }

    public a(View view) {
        C0055a aVar = new C0055a();
        this.f2049a = aVar;
        this.f2050b = view;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int i = (int) ((displayMetrics.density * 1575.0f) + 0.5f);
        int i2 = (int) ((displayMetrics.density * 315.0f) + 0.5f);
        float f = i;
        float[] fArr = this.n;
        float f2 = f / 1000.0f;
        fArr[0] = f2;
        fArr[1] = f2;
        float f3 = i2;
        float[] fArr2 = this.m;
        float f4 = f3 / 1000.0f;
        fArr2[0] = f4;
        fArr2[1] = f4;
        float[] fArr3 = this.i;
        fArr3[0] = Float.MAX_VALUE;
        fArr3[1] = Float.MAX_VALUE;
        float[] fArr4 = this.h;
        fArr4[0] = 0.2f;
        fArr4[1] = 0.2f;
        float[] fArr5 = this.l;
        fArr5[0] = 0.001f;
        fArr5[1] = 0.001f;
        aVar.f2053a = 500;
        aVar.f2054b = 500;
    }

    private float a(float f, float f2) {
        if (f2 == BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        int i = this.j;
        if (i != 0 && i != 1) {
            return (i == 2 && f < BitmapDescriptorFactory.HUE_RED) ? f / (-f2) : BitmapDescriptorFactory.HUE_RED;
        }
        if (f >= f2) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        if (f >= BitmapDescriptorFactory.HUE_RED) {
            return 1.0f - (f / f2);
        }
        if (!this.e || i != 1) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        return 1.0f;
    }

    static float a(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    private float a(float f, float f2, float f3, float f4) {
        float f5;
        float a2 = a(f * f2, BitmapDescriptorFactory.HUE_RED, f3);
        float a3 = a(f2 - f4, a2) - a(f4, a2);
        if (a3 < BitmapDescriptorFactory.HUE_RED) {
            f5 = -this.f.getInterpolation(-a3);
        } else if (a3 <= BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        } else {
            f5 = this.f.getInterpolation(a3);
        }
        return a(f5, -1.0f, 1.0f);
    }

    private float a(int i, float f, float f2, float f3) {
        float a2 = a(this.h[i], f2, this.i[i], f);
        int i2 = (a2 > BitmapDescriptorFactory.HUE_RED ? 1 : (a2 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        if (i2 == 0) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float f4 = this.l[i];
        float f5 = this.m[i];
        float f6 = this.n[i];
        float f7 = f4 * f3;
        return i2 > 0 ? a(a2 * f7, f5, f6) : -a((-a2) * f7, f5, f6);
    }

    static int a(int i, int i2) {
        if (i > i2) {
            return i2;
        }
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        return i3;
    }

    private void b() {
        if (this.f2051c) {
            this.e = false;
        } else {
            this.f2049a.a();
        }
    }

    public final a a(boolean z) {
        if (this.p && !z) {
            b();
        }
        this.p = z;
        return this;
    }

    public abstract void a(int i);

    final boolean a() {
        C0055a aVar = this.f2049a;
        int c2 = aVar.c();
        aVar.b();
        return c2 != 0 && b(c2);
    }

    public abstract boolean b(int i);

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
        if (r0 != 3) goto L_0x00cf;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r7, android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
