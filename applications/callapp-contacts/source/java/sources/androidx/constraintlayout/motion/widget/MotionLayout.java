package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.constraintlayout.motion.p029a.C0579g;
import androidx.constraintlayout.motion.widget.C0627p;
import androidx.constraintlayout.p026a.p027a.AbstractC0549i;
import androidx.constraintlayout.p026a.p027a.C0511a;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.C0544f;
import androidx.constraintlayout.p026a.p027a.C0545g;
import androidx.constraintlayout.p026a.p027a.C0547h;
import androidx.constraintlayout.p026a.p027a.C0550j;
import androidx.constraintlayout.p026a.p027a.C0552l;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.C0680c;
import androidx.constraintlayout.widget.C0687e;
import androidx.constraintlayout.widget.C0690f;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.core.view.AbstractC0920p;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout.class */
public class MotionLayout extends ConstraintLayout implements AbstractC0920p {

    /* renamed from: a */
    public static boolean f2439a;

    /* renamed from: A */
    float f2440A;

    /* renamed from: E */
    int f2444E;

    /* renamed from: F */
    int f2445F;

    /* renamed from: G */
    int f2446G;

    /* renamed from: H */
    int f2447H;

    /* renamed from: I */
    int f2448I;

    /* renamed from: J */
    int f2449J;

    /* renamed from: K */
    float f2450K;

    /* renamed from: ad */
    private long f2457ad;

    /* renamed from: ae */
    private boolean f2458ae;

    /* renamed from: af */
    private AbstractC0589g f2459af;

    /* renamed from: ag */
    private float f2460ag;

    /* renamed from: ah */
    private float f2461ah;

    /* renamed from: av */
    private C0588f f2475av;

    /* renamed from: b */
    C0627p f2479b;

    /* renamed from: c */
    public Interpolator f2480c;

    /* renamed from: q */
    C0584b f2494q;

    /* renamed from: s */
    int f2496s;

    /* renamed from: t */
    int f2497t;

    /* renamed from: u */
    int f2498u;

    /* renamed from: v */
    int f2499v;

    /* renamed from: x */
    float f2501x;

    /* renamed from: y */
    float f2502y;

    /* renamed from: z */
    long f2503z;

    /* renamed from: d */
    public float f2481d = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: e */
    int f2482e = -1;

    /* renamed from: f */
    int f2483f = -1;

    /* renamed from: g */
    int f2484g = -1;

    /* renamed from: aa */
    private int f2454aa = 0;

    /* renamed from: ab */
    private int f2455ab = 0;

    /* renamed from: h */
    boolean f2485h = true;

    /* renamed from: i */
    public HashMap<View, C0624m> f2486i = new HashMap<>();

    /* renamed from: ac */
    private long f2456ac = 0;

    /* renamed from: j */
    public float f2487j = 1.0f;

    /* renamed from: k */
    float f2488k = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: l */
    public float f2489l = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: m */
    public float f2490m = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: n */
    boolean f2491n = false;

    /* renamed from: o */
    boolean f2492o = false;

    /* renamed from: p */
    int f2493p = 0;

    /* renamed from: ai */
    private boolean f2462ai = false;

    /* renamed from: aj */
    private C0579g f2463aj = new C0579g();

    /* renamed from: ak */
    private C0583a f2464ak = new C0583a();

    /* renamed from: r */
    boolean f2495r = true;

    /* renamed from: w */
    boolean f2500w = false;

    /* renamed from: al */
    private boolean f2465al = false;

    /* renamed from: am */
    private ArrayList<MotionHelper> f2466am = null;

    /* renamed from: an */
    private ArrayList<MotionHelper> f2467an = null;

    /* renamed from: B */
    ArrayList<AbstractC0589g> f2441B = null;

    /* renamed from: ao */
    private int f2468ao = 0;

    /* renamed from: ap */
    private long f2469ap = -1;

    /* renamed from: aq */
    private float f2470aq = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: ar */
    private int f2471ar = 0;

    /* renamed from: as */
    private float f2472as = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: C */
    boolean f2442C = false;

    /* renamed from: D */
    protected boolean f2443D = false;

    /* renamed from: at */
    private C0595d f2473at = new C0595d();

    /* renamed from: au */
    private boolean f2474au = false;

    /* renamed from: L */
    int f2451L = EnumC0590h.f2550a;

    /* renamed from: M */
    C0585c f2452M = new C0585c();

    /* renamed from: aw */
    private boolean f2476aw = false;

    /* renamed from: ax */
    private RectF f2477ax = new RectF();

    /* renamed from: ay */
    private View f2478ay = null;

    /* renamed from: N */
    ArrayList<Integer> f2453N = new ArrayList<>();

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$2 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$2.class */
    public static final /* synthetic */ class C05822 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2506a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0032 -> B:19:0x0013). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0036 -> B:17:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003a -> B:15:0x0027). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0590h.m44986a().length];
            f2506a = iArr;
            try {
                iArr[EnumC0590h.f2550a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2506a[EnumC0590h.f2551b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2506a[EnumC0590h.f2552c - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2506a[EnumC0590h.f2553d - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$a.class */
    public final class C0583a extends AbstractanimationInterpolatorC0625n {

        /* renamed from: a */
        float f2507a = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: b */
        float f2508b = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: c */
        float f2509c;

        C0583a() {
            MotionLayout.this = r4;
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractanimationInterpolatorC0625n
        /* renamed from: a */
        public final float mo44833a() {
            return MotionLayout.this.f2481d;
        }

        /* renamed from: a */
        public final void m45014a(float f, float f2, float f3) {
            this.f2507a = f;
            this.f2508b = f2;
            this.f2509c = f3;
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2;
            float f3;
            float f4 = this.f2507a;
            if (f4 > BitmapDescriptorFactory.HUE_RED) {
                float f5 = this.f2509c;
                float f6 = f;
                if (f4 / f5 < f) {
                    f6 = f4 / f5;
                }
                MotionLayout.this.f2481d = f4 - (f5 * f6);
                f2 = (this.f2507a * f6) - (((this.f2509c * f6) * f6) / 2.0f);
                f3 = this.f2508b;
            } else {
                float f7 = -f4;
                float f8 = this.f2509c;
                float f9 = f;
                if (f7 / f8 < f) {
                    f9 = (-f4) / f8;
                }
                MotionLayout.this.f2481d = f4 + (f8 * f9);
                f2 = (this.f2507a * f9) + (((this.f2509c * f9) * f9) / 2.0f);
                f3 = this.f2508b;
            }
            return f2 + f3;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$b.class */
    final class C0584b {

        /* renamed from: a */
        float[] f2511a;

        /* renamed from: d */
        Path f2514d;

        /* renamed from: e */
        Paint f2515e;

        /* renamed from: f */
        Paint f2516f;

        /* renamed from: g */
        Paint f2517g;

        /* renamed from: h */
        Paint f2518h;

        /* renamed from: i */
        Paint f2519i;

        /* renamed from: o */
        DashPathEffect f2525o;

        /* renamed from: p */
        int f2526p;

        /* renamed from: s */
        int f2529s;

        /* renamed from: j */
        final int f2520j = -21965;

        /* renamed from: k */
        final int f2521k = -2067046;

        /* renamed from: l */
        final int f2522l = -13391360;

        /* renamed from: m */
        final int f2523m = 1996488704;

        /* renamed from: n */
        final int f2524n = 10;

        /* renamed from: q */
        Rect f2527q = new Rect();

        /* renamed from: r */
        boolean f2528r = false;

        /* renamed from: u */
        private float[] f2531u = new float[8];

        /* renamed from: c */
        float[] f2513c = new float[100];

        /* renamed from: b */
        int[] f2512b = new int[50];

        public C0584b() {
            MotionLayout.this = r8;
            this.f2529s = 1;
            Paint paint = new Paint();
            this.f2515e = paint;
            paint.setAntiAlias(true);
            this.f2515e.setColor(-21965);
            this.f2515e.setStrokeWidth(2.0f);
            this.f2515e.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.f2516f = paint2;
            paint2.setAntiAlias(true);
            this.f2516f.setColor(-2067046);
            this.f2516f.setStrokeWidth(2.0f);
            this.f2516f.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint();
            this.f2517g = paint3;
            paint3.setAntiAlias(true);
            this.f2517g.setColor(-13391360);
            this.f2517g.setStrokeWidth(2.0f);
            this.f2517g.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint();
            this.f2518h = paint4;
            paint4.setAntiAlias(true);
            this.f2518h.setColor(-13391360);
            this.f2518h.setTextSize(r8.getContext().getResources().getDisplayMetrics().density * 12.0f);
            Paint paint5 = new Paint();
            this.f2519i = paint5;
            paint5.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, BitmapDescriptorFactory.HUE_RED);
            this.f2525o = dashPathEffect;
            this.f2517g.setPathEffect(dashPathEffect);
            if (this.f2528r) {
                this.f2515e.setStrokeWidth(8.0f);
                this.f2519i.setStrokeWidth(8.0f);
                this.f2516f.setStrokeWidth(8.0f);
                this.f2529s = 4;
            }
        }

        /* renamed from: a */
        private void m45013a(Canvas canvas) {
            canvas.drawLines(this.f2511a, this.f2515e);
        }

        /* renamed from: a */
        private void m45012a(Canvas canvas, float f, float f2) {
            float[] fArr = this.f2511a;
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            float hypot = (float) Math.hypot(f3 - f5, f4 - f6);
            float f7 = f5 - f3;
            float f8 = f6 - f4;
            float f9 = (((f - f3) * f7) + ((f2 - f4) * f8)) / (hypot * hypot);
            float f10 = f3 + (f7 * f9);
            float f11 = f4 + (f9 * f8);
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f10, f11);
            float hypot2 = (float) Math.hypot(f10 - f, f11 - f2);
            StringBuilder sb = new StringBuilder();
            sb.append(((int) ((hypot2 * 100.0f) / hypot)) / 100.0f);
            String sb2 = sb.toString();
            m45007a(sb2, this.f2518h);
            canvas.drawTextOnPath(sb2, path, (hypot2 / 2.0f) - (this.f2527q.width() / 2), -20.0f, this.f2518h);
            canvas.drawLine(f, f2, f10, f11, this.f2517g);
        }

        /* renamed from: a */
        private void m45011a(Canvas canvas, float f, float f2, int i, int i2) {
            StringBuilder sb = new StringBuilder();
            sb.append(((int) ((((f - (i / 2)) * 100.0f) / (MotionLayout.this.getWidth() - i)) + 0.5d)) / 100.0f);
            String sb2 = sb.toString();
            m45007a(sb2, this.f2518h);
            canvas.drawText(sb2, ((f / 2.0f) - (this.f2527q.width() / 2)) + BitmapDescriptorFactory.HUE_RED, f2 - 20.0f, this.f2518h);
            canvas.drawLine(f, f2, Math.min((float) BitmapDescriptorFactory.HUE_RED, 1.0f), f2, this.f2517g);
            StringBuilder sb3 = new StringBuilder();
            sb3.append(((int) ((((f2 - (i2 / 2)) * 100.0f) / (MotionLayout.this.getHeight() - i2)) + 0.5d)) / 100.0f);
            String sb4 = sb3.toString();
            m45007a(sb4, this.f2518h);
            canvas.drawText(sb4, f + 5.0f, BitmapDescriptorFactory.HUE_RED - ((f2 / 2.0f) - (this.f2527q.height() / 2)), this.f2518h);
            canvas.drawLine(f, f2, f, Math.max((float) BitmapDescriptorFactory.HUE_RED, 1.0f), this.f2517g);
        }

        /* renamed from: a */
        private void m45010a(Canvas canvas, int i, int i2, C0624m c0624m) {
            if (i == 4) {
                m45003c(canvas);
            }
            if (i == 2) {
                m45006b(canvas);
            }
            if (i == 3) {
                m45002d(canvas);
            }
            m45013a(canvas);
            m45004b(canvas, i, i2, c0624m);
        }

        /* renamed from: a */
        private void m45009a(Canvas canvas, C0624m c0624m) {
            this.f2514d.reset();
            for (int i = 0; i <= 50; i++) {
                float[] fArr = this.f2531u;
                c0624m.f2718g[0].mo45070a(c0624m.m44843a(i / 50.0f, (float[]) null), c0624m.f2724m);
                C0626o c0626o = c0624m.f2715d;
                int[] iArr = c0624m.f2723l;
                double[] dArr = c0624m.f2724m;
                float f = c0626o.f2743f;
                float f2 = c0626o.f2744g;
                float f3 = c0626o.f2745h;
                float f4 = c0626o.f2746i;
                for (int i2 = 0; i2 < iArr.length; i2++) {
                    float f5 = (float) dArr[i2];
                    int i3 = iArr[i2];
                    if (i3 == 1) {
                        f = f5;
                    } else if (i3 == 2) {
                        f2 = f5;
                    } else if (i3 == 3) {
                        f3 = f5;
                    } else if (i3 == 4) {
                        f4 = f5;
                    }
                }
                Float.isNaN(Float.NaN);
                Float.isNaN(Float.NaN);
                float f6 = f + BitmapDescriptorFactory.HUE_RED;
                float f7 = f2 + BitmapDescriptorFactory.HUE_RED;
                float f8 = f3 + f + BitmapDescriptorFactory.HUE_RED;
                float f9 = f4 + f2 + BitmapDescriptorFactory.HUE_RED;
                fArr[0] = f6;
                fArr[1] = f7;
                fArr[2] = f8;
                fArr[3] = f7;
                fArr[4] = f8;
                fArr[5] = f9;
                fArr[6] = f6;
                fArr[7] = f9;
                Path path = this.f2514d;
                float[] fArr2 = this.f2531u;
                path.moveTo(fArr2[0], fArr2[1]);
                Path path2 = this.f2514d;
                float[] fArr3 = this.f2531u;
                path2.lineTo(fArr3[2], fArr3[3]);
                Path path3 = this.f2514d;
                float[] fArr4 = this.f2531u;
                path3.lineTo(fArr4[4], fArr4[5]);
                Path path4 = this.f2514d;
                float[] fArr5 = this.f2531u;
                path4.lineTo(fArr5[6], fArr5[7]);
                this.f2514d.close();
            }
            this.f2515e.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.f2514d, this.f2515e);
            canvas.translate(-2.0f, -2.0f);
            this.f2515e.setColor(-65536);
            canvas.drawPath(this.f2514d, this.f2515e);
        }

        /* renamed from: a */
        private void m45007a(String str, Paint paint) {
            paint.getTextBounds(str, 0, str.length(), this.f2527q);
        }

        /* renamed from: b */
        private void m45006b(Canvas canvas) {
            float[] fArr = this.f2511a;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.f2517g);
        }

        /* renamed from: b */
        private void m45005b(Canvas canvas, float f, float f2) {
            float[] fArr = this.f2511a;
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            float min = Math.min(f3, f5);
            float max = Math.max(f4, f6);
            float min2 = f - Math.min(f3, f5);
            float max2 = Math.max(f4, f6) - f2;
            StringBuilder sb = new StringBuilder();
            sb.append(((int) (((min2 * 100.0f) / Math.abs(f5 - f3)) + 0.5d)) / 100.0f);
            String sb2 = sb.toString();
            m45007a(sb2, this.f2518h);
            canvas.drawText(sb2, ((min2 / 2.0f) - (this.f2527q.width() / 2)) + min, f2 - 20.0f, this.f2518h);
            canvas.drawLine(f, f2, Math.min(f3, f5), f2, this.f2517g);
            StringBuilder sb3 = new StringBuilder();
            sb3.append(((int) (((max2 * 100.0f) / Math.abs(f6 - f4)) + 0.5d)) / 100.0f);
            String sb4 = sb3.toString();
            m45007a(sb4, this.f2518h);
            canvas.drawText(sb4, f + 5.0f, max - ((max2 / 2.0f) - (this.f2527q.height() / 2)), this.f2518h);
            canvas.drawLine(f, f2, f, Math.max(f4, f6), this.f2517g);
        }

        /* renamed from: b */
        private void m45004b(Canvas canvas, int i, int i2, C0624m c0624m) {
            int i3;
            int i4;
            if (c0624m.f2712a != null) {
                i4 = c0624m.f2712a.getWidth();
                i3 = c0624m.f2712a.getHeight();
            } else {
                i4 = 0;
                i3 = 0;
            }
            for (int i5 = 1; i5 < i2 - 1; i5++) {
                if (i != 4 || this.f2512b[i5 - 1] != 0) {
                    float[] fArr = this.f2513c;
                    int i6 = i5 * 2;
                    float f = fArr[i6];
                    float f2 = fArr[i6 + 1];
                    this.f2514d.reset();
                    this.f2514d.moveTo(f, f2 + 10.0f);
                    this.f2514d.lineTo(f + 10.0f, f2);
                    this.f2514d.lineTo(f, f2 - 10.0f);
                    this.f2514d.lineTo(f - 10.0f, f2);
                    this.f2514d.close();
                    int i7 = i5 - 1;
                    c0624m.m44842a(i7);
                    if (i == 4) {
                        int[] iArr = this.f2512b;
                        if (iArr[i7] == 1) {
                            m45012a(canvas, f - BitmapDescriptorFactory.HUE_RED, f2 - BitmapDescriptorFactory.HUE_RED);
                        } else if (iArr[i7] == 2) {
                            m45005b(canvas, f - BitmapDescriptorFactory.HUE_RED, f2 - BitmapDescriptorFactory.HUE_RED);
                        } else if (iArr[i7] == 3) {
                            m45011a(canvas, f - BitmapDescriptorFactory.HUE_RED, f2 - BitmapDescriptorFactory.HUE_RED, i4, i3);
                        }
                        canvas.drawPath(this.f2514d, this.f2519i);
                    }
                    if (i == 2) {
                        m45012a(canvas, f - BitmapDescriptorFactory.HUE_RED, f2 - BitmapDescriptorFactory.HUE_RED);
                    }
                    if (i == 3) {
                        m45005b(canvas, f - BitmapDescriptorFactory.HUE_RED, f2 - BitmapDescriptorFactory.HUE_RED);
                    }
                    if (i == 6) {
                        m45011a(canvas, f - BitmapDescriptorFactory.HUE_RED, f2 - BitmapDescriptorFactory.HUE_RED, i4, i3);
                    }
                    canvas.drawPath(this.f2514d, this.f2519i);
                }
            }
            float[] fArr2 = this.f2511a;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.f2516f);
                float[] fArr3 = this.f2511a;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.f2516f);
            }
        }

        /* renamed from: c */
        private void m45003c(Canvas canvas) {
            boolean z = false;
            boolean z2 = false;
            for (int i = 0; i < this.f2526p; i++) {
                int[] iArr = this.f2512b;
                if (iArr[i] == 1) {
                    z = true;
                }
                if (iArr[i] == 2) {
                    z2 = true;
                }
            }
            if (z) {
                m45006b(canvas);
            }
            if (z2) {
                m45002d(canvas);
            }
        }

        /* renamed from: d */
        private void m45002d(Canvas canvas) {
            float[] fArr = this.f2511a;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[fArr.length - 2];
            float f4 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f, f3), Math.max(f2, f4), Math.max(f, f3), Math.max(f2, f4), this.f2517g);
            canvas.drawLine(Math.min(f, f3), Math.min(f2, f4), Math.min(f, f3), Math.max(f2, f4), this.f2517g);
        }

        /* renamed from: a */
        public final void m45008a(Canvas canvas, HashMap<View, C0624m> hashMap, int i, int i2) {
            if (hashMap == null || hashMap.size() == 0) {
                return;
            }
            canvas.save();
            if (!MotionLayout.this.isInEditMode() && (i2 & 1) == 2) {
                String str = MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.f2484g) + ":" + MotionLayout.this.f2489l;
                canvas.drawText(str, 10.0f, MotionLayout.this.getHeight() - 30, this.f2518h);
                canvas.drawText(str, 11.0f, MotionLayout.this.getHeight() - 29, this.f2515e);
            }
            for (C0624m c0624m : hashMap.values()) {
                int m44845a = c0624m.m44845a();
                int i3 = m44845a;
                if (i2 > 0) {
                    i3 = m44845a;
                    if (m44845a == 0) {
                        i3 = 1;
                    }
                }
                if (i3 != 0) {
                    this.f2526p = c0624m.m44836a(this.f2513c, this.f2512b);
                    if (i3 > 0) {
                        int i4 = i / 16;
                        float[] fArr = this.f2511a;
                        if (fArr == null || fArr.length != i4 * 2) {
                            this.f2511a = new float[i4 * 2];
                            this.f2514d = new Path();
                        }
                        int i5 = this.f2529s;
                        canvas.translate(i5, i5);
                        this.f2515e.setColor(1996488704);
                        this.f2519i.setColor(1996488704);
                        this.f2516f.setColor(1996488704);
                        this.f2517g.setColor(1996488704);
                        c0624m.m44837a(this.f2511a, i4);
                        m45010a(canvas, i3, this.f2526p, c0624m);
                        this.f2515e.setColor(-21965);
                        this.f2516f.setColor(-2067046);
                        this.f2519i.setColor(-2067046);
                        this.f2517g.setColor(-13391360);
                        int i6 = this.f2529s;
                        canvas.translate(-i6, -i6);
                        m45010a(canvas, i3, this.f2526p, c0624m);
                        if (i3 == 5) {
                            m45009a(canvas, c0624m);
                        }
                    }
                }
            }
            canvas.restore();
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$c.class */
    public final class C0585c {

        /* renamed from: a */
        C0544f f2532a = new C0544f();

        /* renamed from: b */
        C0544f f2533b = new C0544f();

        /* renamed from: c */
        C0680c f2534c = null;

        /* renamed from: d */
        C0680c f2535d = null;

        /* renamed from: e */
        int f2536e;

        /* renamed from: f */
        int f2537f;

        C0585c() {
            MotionLayout.this = r5;
        }

        /* renamed from: a */
        private static C0541e m44999a(C0544f c0544f, View view) {
            if (c0544f.f2090aj == view) {
                return c0544f;
            }
            ArrayList<C0541e> arrayList = c0544f.f2231be;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                C0541e c0541e = arrayList.get(i);
                if (c0541e.f2090aj == view) {
                    return c0541e;
                }
            }
            return null;
        }

        /* renamed from: a */
        private static void m44998a(C0544f c0544f, C0544f c0544f2) {
            ArrayList<C0541e> arrayList = c0544f.f2231be;
            HashMap<C0541e, C0541e> hashMap = new HashMap<>();
            hashMap.put(c0544f, c0544f2);
            c0544f2.f2231be.clear();
            c0544f2.mo45180a(c0544f, hashMap);
            Iterator<C0541e> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                C0541e next = it2.next();
                C0541e c0511a = next instanceof C0511a ? new C0511a() : next instanceof C0547h ? new C0547h() : next instanceof C0545g ? new C0545g() : next instanceof AbstractC0549i ? new C0550j() : new C0541e();
                c0544f2.m45165a(c0511a);
                hashMap.put(next, c0511a);
            }
            Iterator<C0541e> it3 = arrayList.iterator();
            while (it3.hasNext()) {
                C0541e next2 = it3.next();
                hashMap.get(next2).mo45180a(next2, hashMap);
            }
        }

        /* renamed from: a */
        private void m44997a(C0544f c0544f, C0680c c0680c) {
            SparseArray<C0541e> sparseArray = new SparseArray<>();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, c0544f);
            sparseArray.put(MotionLayout.this.getId(), c0544f);
            Iterator<C0541e> it2 = c0544f.f2231be.iterator();
            while (it2.hasNext()) {
                C0541e next = it2.next();
                sparseArray.put(((View) next.f2090aj).getId(), next);
            }
            Iterator<C0541e> it3 = c0544f.f2231be.iterator();
            while (it3.hasNext()) {
                C0541e next2 = it3.next();
                View view = (View) next2.f2090aj;
                c0680c.m44708a(view.getId(), layoutParams);
                next2.m45271g(c0680c.m44690d(view.getId()));
                next2.m45269h(c0680c.m44692c(view.getId()));
                if (view instanceof ConstraintHelper) {
                    c0680c.m44702a((ConstraintHelper) view, next2, layoutParams, sparseArray);
                    if (view instanceof Barrier) {
                        ((Barrier) view).m44753c();
                    }
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    layoutParams.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
                } else {
                    layoutParams.resolveLayoutDirection(0);
                }
                MotionLayout.this.m44740a(false, view, next2, (ConstraintLayout.LayoutParams) layoutParams, sparseArray);
                if (c0680c.m44713a(view.getId()) == 1) {
                    next2.f2091ak = view.getVisibility();
                } else {
                    next2.f2091ak = c0680c.m44696b(view.getId());
                }
            }
            Iterator<C0541e> it4 = c0544f.f2231be.iterator();
            while (it4.hasNext()) {
                C0541e next3 = it4.next();
                if (next3 instanceof C0552l) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) next3.f2090aj;
                    AbstractC0549i abstractC0549i = (AbstractC0549i) next3;
                    constraintHelper.m44761a(abstractC0549i, sparseArray);
                    ((C0552l) abstractC0549i).m45172d();
                }
            }
        }

        /* renamed from: b */
        private void m44994b(int i, int i2) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            MotionLayout.this.f2448I = mode;
            MotionLayout.this.f2449J = mode2;
            int optimizationLevel = MotionLayout.this.getOptimizationLevel();
            if (MotionLayout.this.f2483f == MotionLayout.this.f2482e) {
                MotionLayout.this.m44743a(this.f2533b, optimizationLevel, i, i2);
                if (this.f2534c != null) {
                    MotionLayout.this.m44743a(this.f2532a, optimizationLevel, i, i2);
                }
            } else {
                if (this.f2534c != null) {
                    MotionLayout.this.m44743a(this.f2532a, optimizationLevel, i, i2);
                }
                MotionLayout.this.m44743a(this.f2533b, optimizationLevel, i, i2);
            }
            if (((MotionLayout.this.getParent() instanceof MotionLayout) && mode == 1073741824 && mode2 == 1073741824) ? false : true) {
                MotionLayout.this.f2448I = mode;
                MotionLayout.this.f2449J = mode2;
                if (MotionLayout.this.f2483f == MotionLayout.this.f2482e) {
                    MotionLayout.this.m44743a(this.f2533b, optimizationLevel, i, i2);
                    if (this.f2534c != null) {
                        MotionLayout.this.m44743a(this.f2532a, optimizationLevel, i, i2);
                    }
                } else {
                    if (this.f2534c != null) {
                        MotionLayout.this.m44743a(this.f2532a, optimizationLevel, i, i2);
                    }
                    MotionLayout.this.m44743a(this.f2533b, optimizationLevel, i, i2);
                }
                MotionLayout.this.f2444E = this.f2532a.m45257o();
                MotionLayout.this.f2445F = this.f2532a.m45255p();
                MotionLayout.this.f2446G = this.f2533b.m45257o();
                MotionLayout.this.f2447H = this.f2533b.m45255p();
                MotionLayout motionLayout = MotionLayout.this;
                motionLayout.f2443D = (motionLayout.f2444E == MotionLayout.this.f2446G && MotionLayout.this.f2445F == MotionLayout.this.f2447H) ? false : true;
            }
            int i3 = MotionLayout.this.f2444E;
            int i4 = MotionLayout.this.f2445F;
            if (MotionLayout.this.f2448I == Integer.MIN_VALUE || MotionLayout.this.f2448I == 0) {
                i3 = (int) (MotionLayout.this.f2444E + (MotionLayout.this.f2450K * (MotionLayout.this.f2446G - MotionLayout.this.f2444E)));
            }
            if (MotionLayout.this.f2449J == Integer.MIN_VALUE || MotionLayout.this.f2449J == 0) {
                i4 = (int) (MotionLayout.this.f2445F + (MotionLayout.this.f2450K * (MotionLayout.this.f2447H - MotionLayout.this.f2445F)));
            }
            MotionLayout.this.m44746a(i, i2, i3, i4, this.f2532a.f2153aZ || this.f2533b.f2153aZ, this.f2532a.f2155ba || this.f2533b.f2155ba);
        }

        /* renamed from: a */
        public final void m45001a() {
            m44994b(MotionLayout.this.f2454aa, MotionLayout.this.f2455ab);
            MotionLayout.m45015j(MotionLayout.this);
        }

        /* renamed from: a */
        public final void m45000a(int i, int i2) {
            this.f2536e = i;
            this.f2537f = i2;
        }

        /* renamed from: a */
        final void m44996a(C0680c c0680c, C0680c c0680c2) {
            this.f2534c = c0680c;
            this.f2535d = c0680c2;
            this.f2532a = new C0544f();
            this.f2533b = new C0544f();
            this.f2532a.m45243a(MotionLayout.this.f2910P.m45226f());
            this.f2533b.m45243a(MotionLayout.this.f2910P.m45226f());
            this.f2532a.f2231be.clear();
            this.f2533b.f2231be.clear();
            m44998a(MotionLayout.this.f2910P, this.f2532a);
            m44998a(MotionLayout.this.f2910P, this.f2533b);
            if (MotionLayout.this.f2489l > 0.5d) {
                if (c0680c != null) {
                    m44997a(this.f2532a, c0680c);
                }
                m44997a(this.f2533b, c0680c2);
            } else {
                m44997a(this.f2533b, c0680c2);
                if (c0680c != null) {
                    m44997a(this.f2532a, c0680c);
                }
            }
            this.f2532a.f2163d = MotionLayout.this.isRtl();
            this.f2532a.m45227e();
            this.f2533b.f2163d = MotionLayout.this.isRtl();
            this.f2533b.m45227e();
            ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    C0544f c0544f = this.f2532a;
                    c0544f.f2059R[0] = C0541e.EnumC0543a.WRAP_CONTENT;
                    C0544f c0544f2 = this.f2533b;
                    c0544f2.f2059R[0] = C0541e.EnumC0543a.WRAP_CONTENT;
                }
                if (layoutParams.height != -2) {
                    return;
                }
                C0544f c0544f3 = this.f2532a;
                c0544f3.f2059R[1] = C0541e.EnumC0543a.WRAP_CONTENT;
                C0544f c0544f4 = this.f2533b;
                c0544f4.f2059R[1] = C0541e.EnumC0543a.WRAP_CONTENT;
            }
        }

        /* renamed from: b */
        public final void m44995b() {
            int i;
            int childCount = MotionLayout.this.getChildCount();
            MotionLayout.this.f2486i.clear();
            int i2 = 0;
            while (true) {
                if (i2 < childCount) {
                    View childAt = MotionLayout.this.getChildAt(i2);
                    MotionLayout.this.f2486i.put(childAt, new C0624m(childAt));
                    i2++;
                }
            }
            for (i = 0; i < childCount; i++) {
                View childAt2 = MotionLayout.this.getChildAt(i);
                C0624m c0624m = MotionLayout.this.f2486i.get(childAt2);
                if (c0624m != null) {
                    if (this.f2534c != null) {
                        C0541e m44999a = m44999a(this.f2532a, childAt2);
                        if (m44999a != null) {
                            c0624m.m44839a(m44999a, this.f2534c);
                        } else if (MotionLayout.this.f2493p != 0) {
                            Log.e("MotionLayout", C0591a.m44985a() + "no widget for  " + C0591a.m44983a(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                    if (this.f2535d != null) {
                        C0541e m44999a2 = m44999a(this.f2533b, childAt2);
                        if (m44999a2 != null) {
                            c0624m.m44834b(m44999a2, this.f2535d);
                        } else if (MotionLayout.this.f2493p != 0) {
                            Log.e("MotionLayout", C0591a.m44985a() + "no widget for  " + C0591a.m44983a(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                }
            }
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$d.class */
    public interface AbstractC0586d {
        /* renamed from: a */
        void mo44993a();

        /* renamed from: a */
        void mo44992a(MotionEvent motionEvent);

        /* renamed from: b */
        void mo44991b();

        /* renamed from: c */
        float mo44990c();

        /* renamed from: d */
        float mo44989d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$e.class */
    public static final class C0587e implements AbstractC0586d {

        /* renamed from: b */
        private static C0587e f2539b = new C0587e();

        /* renamed from: a */
        VelocityTracker f2540a;

        private C0587e() {
        }

        /* renamed from: e */
        public static C0587e m44988e() {
            f2539b.f2540a = VelocityTracker.obtain();
            return f2539b;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.AbstractC0586d
        /* renamed from: a */
        public final void mo44993a() {
            VelocityTracker velocityTracker = this.f2540a;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f2540a = null;
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.AbstractC0586d
        /* renamed from: a */
        public final void mo44992a(MotionEvent motionEvent) {
            VelocityTracker velocityTracker = this.f2540a;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.AbstractC0586d
        /* renamed from: b */
        public final void mo44991b() {
            VelocityTracker velocityTracker = this.f2540a;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(1000);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.AbstractC0586d
        /* renamed from: c */
        public final float mo44990c() {
            VelocityTracker velocityTracker = this.f2540a;
            return velocityTracker != null ? velocityTracker.getXVelocity() : BitmapDescriptorFactory.HUE_RED;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.AbstractC0586d
        /* renamed from: d */
        public final float mo44989d() {
            VelocityTracker velocityTracker = this.f2540a;
            return velocityTracker != null ? velocityTracker.getYVelocity() : BitmapDescriptorFactory.HUE_RED;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$f */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$f.class */
    public final class C0588f {

        /* renamed from: a */
        float f2541a = Float.NaN;

        /* renamed from: b */
        float f2542b = Float.NaN;

        /* renamed from: c */
        int f2543c = -1;

        /* renamed from: d */
        int f2544d = -1;

        /* renamed from: e */
        final String f2545e = "motion.progress";

        /* renamed from: f */
        final String f2546f = "motion.velocity";

        /* renamed from: g */
        final String f2547g = "motion.StartState";

        /* renamed from: h */
        final String f2548h = "motion.EndState";

        C0588f() {
            MotionLayout.this = r4;
        }

        /* renamed from: a */
        final void m44987a() {
            int i = this.f2543c;
            if (i != -1 || this.f2544d != -1) {
                if (i == -1) {
                    MotionLayout.this.m45035b(this.f2544d);
                } else {
                    int i2 = this.f2544d;
                    if (i2 == -1) {
                        MotionLayout.this.setState(i, -1, -1);
                    } else {
                        MotionLayout.this.setTransition(i, i2);
                    }
                }
                MotionLayout.this.m45046a(EnumC0590h.f2551b);
            }
            if (Float.isNaN(this.f2542b)) {
                if (Float.isNaN(this.f2541a)) {
                    return;
                }
                MotionLayout.this.setProgress(this.f2541a);
                return;
            }
            MotionLayout.this.setProgress(this.f2541a, this.f2542b);
            this.f2541a = Float.NaN;
            this.f2542b = Float.NaN;
            this.f2543c = -1;
            this.f2544d = -1;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$g */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$g.class */
    public interface AbstractC0589g {
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$h */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$h.class */
    public static final class EnumC0590h extends Enum<EnumC0590h> {

        /* renamed from: a */
        public static final int f2550a = 1;

        /* renamed from: b */
        public static final int f2551b = 2;

        /* renamed from: c */
        public static final int f2552c = 3;

        /* renamed from: d */
        public static final int f2553d = 4;

        /* renamed from: e */
        private static final /* synthetic */ int[] f2554e = {1, 2, 3, 4};

        private EnumC0590h(String str, int i) {
            super(str, i);
        }

        /* renamed from: a */
        public static int[] m44986a() {
            return (int[]) f2554e.clone();
        }
    }

    public MotionLayout(Context context) {
        super(context);
        m45043a((AttributeSet) null);
    }

    public MotionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m45043a(attributeSet);
    }

    public MotionLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m45043a(attributeSet);
    }

    /* renamed from: a */
    public static AbstractC0586d m45049a() {
        return C0587e.m44988e();
    }

    /* renamed from: a */
    private void m45043a(AttributeSet attributeSet) {
        C0627p c0627p;
        Context context;
        View childAt;
        boolean z;
        boolean z2;
        f2439a = isInEditMode();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0687e.C0689b.MotionLayout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            int i = 0;
            boolean z3 = true;
            while (true) {
                z = z3;
                if (i >= indexCount) {
                    break;
                }
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.MotionLayout_layoutDescription) {
                    this.f2479b = new C0627p(getContext(), this, obtainStyledAttributes.getResourceId(index, -1));
                    z2 = z;
                } else if (index == C0687e.C0689b.MotionLayout_currentState) {
                    this.f2483f = obtainStyledAttributes.getResourceId(index, -1);
                    z2 = z;
                } else if (index == C0687e.C0689b.MotionLayout_motionProgress) {
                    this.f2490m = obtainStyledAttributes.getFloat(index, BitmapDescriptorFactory.HUE_RED);
                    this.f2491n = true;
                    z2 = z;
                } else if (index == C0687e.C0689b.MotionLayout_applyMotionScene) {
                    z2 = obtainStyledAttributes.getBoolean(index, z);
                } else if (index == C0687e.C0689b.MotionLayout_showPaths) {
                    z2 = z;
                    if (this.f2493p == 0) {
                        this.f2493p = obtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                        z2 = z;
                    }
                } else {
                    z2 = z;
                    if (index == C0687e.C0689b.MotionLayout_motionDebug) {
                        this.f2493p = obtainStyledAttributes.getInt(index, 0);
                        z2 = z;
                    }
                }
                i++;
                z3 = z2;
            }
            obtainStyledAttributes.recycle();
            if (this.f2479b == null) {
                Log.e("MotionLayout", "WARNING NO app:layoutDescription tag");
            }
            if (!z) {
                this.f2479b = null;
            }
        }
        if (this.f2493p != 0) {
            C0627p c0627p2 = this.f2479b;
            if (c0627p2 == null) {
                Log.e("MotionLayout", "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            } else {
                int m44813b = c0627p2.m44813b();
                C0627p c0627p3 = this.f2479b;
                C0680c m44824a = c0627p3.m44824a(c0627p3.m44813b());
                String m44984a = C0591a.m44984a(getContext(), m44813b);
                int childCount = getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    int id = getChildAt(i2).getId();
                    if (id == -1) {
                        Log.w("MotionLayout", "CHECK: " + m44984a + " ALL VIEWS SHOULD HAVE ID's " + childAt.getClass().getName() + " does not!");
                    }
                    if ((m44824a.f3058c.containsKey(Integer.valueOf(id)) ? m44824a.f3058c.get(Integer.valueOf(id)) : null) == null) {
                        Log.w("MotionLayout", "CHECK: " + m44984a + " NO CONSTRAINTS for " + C0591a.m44983a(childAt));
                    }
                }
                int[] m44714a = m44824a.m44714a();
                for (int i3 = 0; i3 < m44714a.length; i3++) {
                    int i4 = m44714a[i3];
                    String m44984a2 = C0591a.m44984a(getContext(), i4);
                    if (findViewById(m44714a[i3]) == null) {
                        Log.w("MotionLayout", "CHECK: " + m44984a + " NO View matches id " + m44984a2);
                    }
                    if (m44824a.m44692c(i4) == -1) {
                        Log.w("MotionLayout", "CHECK: " + m44984a + "(" + m44984a2 + ") no LAYOUT_HEIGHT");
                    }
                    if (m44824a.m44690d(i4) == -1) {
                        Log.w("MotionLayout", "CHECK: " + m44984a + "(" + m44984a2 + ") no LAYOUT_HEIGHT");
                    }
                }
                SparseIntArray sparseIntArray = new SparseIntArray();
                SparseIntArray sparseIntArray2 = new SparseIntArray();
                Iterator<C0627p.C0629a> it2 = this.f2479b.f2757d.iterator();
                while (it2.hasNext()) {
                    C0627p.C0629a next = it2.next();
                    StringBuilder sb = new StringBuilder("CHECK: transition = ");
                    String resourceEntryName = next.f2779d == -1 ? JsonReaderKt.NULL : getContext().getResources().getResourceEntryName(next.f2779d);
                    sb.append(next.f2778c == -1 ? resourceEntryName + " -> null" : resourceEntryName + " -> " + context.getResources().getResourceEntryName(next.f2778c));
                    new StringBuilder("CHECK: transition.setDuration = ").append(next.f2783h);
                    if (next.f2779d == next.f2778c) {
                        Log.e("MotionLayout", "CHECK: start and end constraint set should not be the same!");
                    }
                    int i5 = next.f2779d;
                    int i6 = next.f2778c;
                    String m44984a3 = C0591a.m44984a(getContext(), i5);
                    String m44984a4 = C0591a.m44984a(getContext(), i6);
                    if (sparseIntArray.get(i5) == i6) {
                        Log.e("MotionLayout", "CHECK: two transitions with the same start and end " + m44984a3 + "->" + m44984a4);
                    }
                    if (sparseIntArray2.get(i6) == i5) {
                        Log.e("MotionLayout", "CHECK: you can't have reverse transitions" + m44984a3 + "->" + m44984a4);
                    }
                    sparseIntArray.put(i5, i6);
                    sparseIntArray2.put(i6, i5);
                    if (this.f2479b.m44824a(i5) == null) {
                        Log.e("MotionLayout", " no such constraintSetStart ".concat(String.valueOf(m44984a3)));
                    }
                    if (this.f2479b.m44824a(i6) == null) {
                        Log.e("MotionLayout", " no such constraintSetEnd ".concat(String.valueOf(m44984a3)));
                    }
                }
            }
        }
        if (this.f2483f != -1 || (c0627p = this.f2479b) == null) {
            return;
        }
        this.f2483f = c0627p.m44813b();
        this.f2482e = this.f2479b.m44813b();
        this.f2484g = this.f2479b.m44809c();
    }

    /* renamed from: a */
    private boolean m45047a(float f, float f2, View view, MotionEvent motionEvent) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (m45047a(view.getLeft() + f, view.getTop() + f2, viewGroup.getChildAt(i), motionEvent)) {
                    return true;
                }
            }
        }
        this.f2477ax.set(view.getLeft() + f, view.getTop() + f2, f + view.getRight(), f2 + view.getBottom());
        return motionEvent.getAction() == 0 ? this.f2477ax.contains(motionEvent.getX(), motionEvent.getY()) && view.onTouchEvent(motionEvent) : view.onTouchEvent(motionEvent);
    }

    /* renamed from: d */
    private void m45030d() {
        ArrayList<AbstractC0589g> arrayList;
        if ((this.f2459af != null || ((arrayList = this.f2441B) != null && !arrayList.isEmpty())) && this.f2472as != this.f2488k) {
            if (this.f2471ar != -1) {
                ArrayList<AbstractC0589g> arrayList2 = this.f2441B;
                if (arrayList2 != null) {
                    Iterator<AbstractC0589g> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        it2.next();
                    }
                }
                this.f2442C = true;
            }
            this.f2471ar = -1;
            this.f2472as = this.f2488k;
            ArrayList<AbstractC0589g> arrayList3 = this.f2441B;
            if (arrayList3 != null) {
                Iterator<AbstractC0589g> it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    it3.next();
                }
            }
            this.f2442C = true;
        }
    }

    /* renamed from: e */
    private void m45027e() {
        int i;
        ArrayList<AbstractC0589g> arrayList;
        if ((this.f2459af != null || ((arrayList = this.f2441B) != null && !arrayList.isEmpty())) && this.f2471ar == -1) {
            this.f2471ar = this.f2483f;
            if (!this.f2453N.isEmpty()) {
                ArrayList<Integer> arrayList2 = this.f2453N;
                i = arrayList2.get(arrayList2.size() - 1).intValue();
            } else {
                i = -1;
            }
            int i2 = this.f2483f;
            if (i != i2 && i2 != -1) {
                this.f2453N.add(Integer.valueOf(i2));
            }
        }
        m45024f();
    }

    /* renamed from: f */
    private void m45024f() {
        ArrayList<AbstractC0589g> arrayList;
        if (this.f2459af != null || ((arrayList = this.f2441B) != null && !arrayList.isEmpty())) {
            this.f2442C = false;
            Iterator<Integer> it2 = this.f2453N.iterator();
            while (it2.hasNext()) {
                Integer next = it2.next();
                if (this.f2459af != null) {
                    next.intValue();
                }
                ArrayList<AbstractC0589g> arrayList2 = this.f2441B;
                if (arrayList2 != null) {
                    Iterator<AbstractC0589g> it3 = arrayList2.iterator();
                    while (it3.hasNext()) {
                        it3.next();
                        next.intValue();
                    }
                }
            }
            this.f2453N.clear();
        }
    }

    /* renamed from: g */
    private void m45021g() {
        this.f2452M.m45001a();
        invalidate();
    }

    /* renamed from: j */
    static /* synthetic */ void m45015j(MotionLayout motionLayout) {
        boolean z;
        int i;
        int childCount = motionLayout.getChildCount();
        motionLayout.f2452M.m44995b();
        motionLayout.f2491n = true;
        int width = motionLayout.getWidth();
        int height = motionLayout.getHeight();
        C0627p c0627p = motionLayout.f2479b;
        int i2 = c0627p.f2756c != null ? c0627p.f2756c.f2791p : -1;
        if (i2 != -1) {
            for (int i3 = 0; i3 < childCount; i3++) {
                C0624m c0624m = motionLayout.f2486i.get(motionLayout.getChildAt(i3));
                if (c0624m != null) {
                    c0624m.f2730s = i2;
                }
            }
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            C0624m c0624m2 = motionLayout.f2486i.get(motionLayout.getChildAt(i4));
            if (c0624m2 != null) {
                motionLayout.f2479b.m44816a(c0624m2);
                c0624m2.m44841a(width, height, System.nanoTime());
            }
        }
        float m44806f = motionLayout.f2479b.m44806f();
        if (m44806f != BitmapDescriptorFactory.HUE_RED) {
            boolean z2 = ((double) m44806f) < 0.0d;
            float abs = Math.abs(m44806f);
            int i5 = 0;
            float f = Float.MAX_VALUE;
            float f2 = -3.4028235E38f;
            while (true) {
                if (i5 >= childCount) {
                    z = false;
                    break;
                }
                C0624m c0624m3 = motionLayout.f2486i.get(motionLayout.getChildAt(i5));
                if (!Float.isNaN(c0624m3.f2720i)) {
                    z = true;
                    break;
                }
                float f3 = c0624m3.f2716e.f2743f;
                float f4 = c0624m3.f2716e.f2744g;
                float f5 = z2 ? f4 - f3 : f4 + f3;
                f = Math.min(f, f5);
                f2 = Math.max(f2, f5);
                i5++;
            }
            if (!z) {
                for (int i6 = 0; i6 < childCount; i6++) {
                    C0624m c0624m4 = motionLayout.f2486i.get(motionLayout.getChildAt(i6));
                    float f6 = c0624m4.f2716e.f2743f;
                    float f7 = c0624m4.f2716e.f2744g;
                    float f8 = z2 ? f7 - f6 : f7 + f6;
                    c0624m4.f2722k = 1.0f / (1.0f - abs);
                    c0624m4.f2721j = abs - (((f8 - f) * abs) / (f2 - f));
                }
                return;
            }
            int i7 = 0;
            float f9 = Float.MAX_VALUE;
            float f10 = -3.4028235E38f;
            while (true) {
                if (i7 < childCount) {
                    C0624m c0624m5 = motionLayout.f2486i.get(motionLayout.getChildAt(i7));
                    float f11 = f10;
                    float f12 = f9;
                    if (!Float.isNaN(c0624m5.f2720i)) {
                        f12 = Math.min(f9, c0624m5.f2720i);
                        f11 = Math.max(f10, c0624m5.f2720i);
                    }
                    i7++;
                    f10 = f11;
                    f9 = f12;
                }
            }
            for (i = 0; i < childCount; i++) {
                C0624m c0624m6 = motionLayout.f2486i.get(motionLayout.getChildAt(i));
                if (!Float.isNaN(c0624m6.f2720i)) {
                    c0624m6.f2722k = 1.0f / (1.0f - abs);
                    if (z2) {
                        c0624m6.f2721j = abs - (((f10 - c0624m6.f2720i) / (f10 - f9)) * abs);
                    } else {
                        c0624m6.f2721j = abs - (((c0624m6.f2720i - f9) * abs) / (f10 - f9));
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m45048a(float f) {
        C0627p c0627p = this.f2479b;
        if (c0627p == null) {
            return;
        }
        float f2 = this.f2489l;
        float f3 = this.f2488k;
        if (f2 != f3 && this.f2458ae) {
            this.f2489l = f3;
        }
        float f4 = this.f2489l;
        if (f4 == f) {
            return;
        }
        this.f2462ai = false;
        this.f2490m = f;
        this.f2487j = c0627p.m44807e() / 1000.0f;
        setProgress(this.f2490m);
        this.f2480c = this.f2479b.m44808d();
        this.f2458ae = false;
        this.f2456ac = System.nanoTime();
        this.f2491n = true;
        this.f2488k = f4;
        this.f2489l = f4;
        invalidate();
    }

    /* renamed from: a */
    public final void m45046a(int i) {
        if (i == EnumC0590h.f2553d && this.f2483f == -1) {
            return;
        }
        int i2 = this.f2451L;
        this.f2451L = i;
        if (i2 == EnumC0590h.f2552c && i == EnumC0590h.f2552c) {
            m45030d();
        }
        int i3 = C05822.f2506a[i2 - 1];
        if (i3 != 1 && i3 != 2) {
            if (i3 != 3 || i != EnumC0590h.f2553d) {
                return;
            }
            m45027e();
            return;
        }
        if (i == EnumC0590h.f2552c) {
            m45030d();
        }
        if (i != EnumC0590h.f2553d) {
            return;
        }
        m45027e();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00da  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m45045a(int r9, float r10, float r11) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.m45045a(int, float, float):void");
    }

    /* renamed from: a */
    public final void m45044a(int i, float f, float f2, float f3, float[] fArr) {
        HashMap<View, C0624m> hashMap = this.f2486i;
        View viewById = getViewById(i);
        C0624m c0624m = hashMap.get(viewById);
        if (c0624m == null) {
            Log.w("MotionLayout", "WARNING could not find view id ".concat(String.valueOf(viewById == null ? String.valueOf(i) : viewById.getContext().getResources().getResourceName(i))));
            return;
        }
        c0624m.m44844a(f, f2, f3, fArr);
        float y = viewById.getY();
        this.f2460ag = f;
        this.f2461ah = y;
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final void mo44023a(View view, int i) {
        C0627p c0627p = this.f2479b;
        if (c0627p == null) {
            return;
        }
        float f = this.f2501x;
        float f2 = this.f2440A;
        float f3 = f / f2;
        float f4 = this.f2502y / f2;
        if (c0627p.f2756c == null || c0627p.f2756c.f2787l == null) {
            return;
        }
        C0663s c0663s = c0627p.f2756c.f2787l;
        boolean z = false;
        c0663s.f2833i = false;
        float f5 = c0663s.f2837m.f2489l;
        c0663s.f2837m.m45044a(c0663s.f2826b, f5, c0663s.f2830f, c0663s.f2829e, c0663s.f2834j);
        float f6 = c0663s.f2831g != BitmapDescriptorFactory.HUE_RED ? (f3 * c0663s.f2831g) / c0663s.f2834j[0] : (f4 * c0663s.f2832h) / c0663s.f2834j[1];
        float f7 = f5;
        if (!Float.isNaN(f6)) {
            f7 = f5 + (f6 / 3.0f);
        }
        if (f7 == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        boolean z2 = f7 != 1.0f;
        if (c0663s.f2825a != 3) {
            z = true;
        }
        if (!z || !z2) {
            return;
        }
        c0663s.f2837m.m45045a(c0663s.f2825a, ((double) f7) < 0.5d ? 0.0f : 1.0f, f6);
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final void mo44021a(View view, int i, int i2, int i3, int i4, int i5) {
    }

    @Override // androidx.core.view.AbstractC0920p
    /* renamed from: a */
    public final void mo44020a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (this.f2500w || i != 0 || i2 != 0) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
        }
        this.f2500w = false;
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final void mo44019a(final View view, int i, int i2, int[] iArr, int i3) {
        float f;
        C0663s c0663s;
        int i4;
        C0627p c0627p = this.f2479b;
        if (c0627p == null || c0627p.f2756c == null || !this.f2479b.f2756c.m44802a()) {
            return;
        }
        C0627p.C0629a c0629a = this.f2479b.f2756c;
        if (c0629a != null && c0629a.m44802a() && (c0663s = c0629a.f2787l) != null && (i4 = c0663s.f2827c) != -1 && view.getId() != i4) {
            return;
        }
        C0627p c0627p2 = this.f2479b;
        if (c0627p2 != null) {
            if ((c0627p2.f2756c == null || c0627p2.f2756c.f2787l == null) ? false : c0627p2.f2756c.f2787l.f2840p) {
                float f2 = this.f2488k;
                if ((f2 == 1.0f || f2 == BitmapDescriptorFactory.HUE_RED) && view.canScrollVertically(-1)) {
                    return;
                }
            }
        }
        if (c0629a.f2787l != null && (this.f2479b.f2756c.f2787l.f2842r & 1) != 0) {
            C0627p c0627p3 = this.f2479b;
            float f3 = i;
            float f4 = i2;
            if (c0627p3.f2756c == null || c0627p3.f2756c.f2787l == null) {
                f = 0.0f;
            } else {
                C0663s c0663s2 = c0627p3.f2756c.f2787l;
                c0663s2.f2837m.m45044a(c0663s2.f2826b, c0663s2.f2837m.f2489l, c0663s2.f2830f, c0663s2.f2829e, c0663s2.f2834j);
                if (c0663s2.f2831g != BitmapDescriptorFactory.HUE_RED) {
                    if (c0663s2.f2834j[0] == BitmapDescriptorFactory.HUE_RED) {
                        c0663s2.f2834j[0] = 1.0E-7f;
                    }
                    f = (f3 * c0663s2.f2831g) / c0663s2.f2834j[0];
                } else {
                    if (c0663s2.f2834j[1] == BitmapDescriptorFactory.HUE_RED) {
                        c0663s2.f2834j[1] = 1.0E-7f;
                    }
                    f = (f4 * c0663s2.f2832h) / c0663s2.f2834j[1];
                }
            }
            float f5 = this.f2489l;
            if ((f5 <= BitmapDescriptorFactory.HUE_RED && f < BitmapDescriptorFactory.HUE_RED) || (f5 >= 1.0f && f > BitmapDescriptorFactory.HUE_RED)) {
                if (Build.VERSION.SDK_INT < 21) {
                    return;
                }
                view.setNestedScrollingEnabled(false);
                view.post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        view.setNestedScrollingEnabled(true);
                    }
                });
                return;
            }
        }
        float f6 = this.f2488k;
        long nanoTime = System.nanoTime();
        float f7 = i;
        this.f2501x = f7;
        float f8 = i2;
        this.f2502y = f8;
        this.f2440A = (float) ((nanoTime - this.f2503z) * 1.0E-9d);
        this.f2503z = nanoTime;
        C0627p c0627p4 = this.f2479b;
        if (c0627p4.f2756c != null && c0627p4.f2756c.f2787l != null) {
            C0663s c0663s3 = c0627p4.f2756c.f2787l;
            float f9 = c0663s3.f2837m.f2489l;
            if (!c0663s3.f2833i) {
                c0663s3.f2833i = true;
                c0663s3.f2837m.setProgress(f9);
            }
            c0663s3.f2837m.m45044a(c0663s3.f2826b, f9, c0663s3.f2830f, c0663s3.f2829e, c0663s3.f2834j);
            if (Math.abs((c0663s3.f2831g * c0663s3.f2834j[0]) + (c0663s3.f2832h * c0663s3.f2834j[1])) < 0.01d) {
                c0663s3.f2834j[0] = 0.01f;
                c0663s3.f2834j[1] = 0.01f;
            }
            float max = Math.max(Math.min(f9 + (c0663s3.f2831g != BitmapDescriptorFactory.HUE_RED ? (f7 * c0663s3.f2831g) / c0663s3.f2834j[0] : (f8 * c0663s3.f2832h) / c0663s3.f2834j[1]), 1.0f), (float) BitmapDescriptorFactory.HUE_RED);
            if (max != c0663s3.f2837m.f2489l) {
                c0663s3.f2837m.setProgress(max);
            }
        }
        if (f6 != this.f2488k) {
            iArr[0] = i;
            iArr[1] = i2;
        }
        m45037a(false);
        if (iArr[0] == 0 && iArr[1] == 0) {
            return;
        }
        this.f2500w = true;
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* renamed from: a */
    public final void m45038a(C0627p.C0629a c0629a) {
        this.f2479b.m44815a(c0629a);
        m45046a(EnumC0590h.f2551b);
        if (this.f2483f == this.f2479b.m44809c()) {
            this.f2489l = 1.0f;
            this.f2488k = 1.0f;
            this.f2490m = 1.0f;
        } else {
            this.f2489l = BitmapDescriptorFactory.HUE_RED;
            this.f2488k = BitmapDescriptorFactory.HUE_RED;
            this.f2490m = BitmapDescriptorFactory.HUE_RED;
        }
        boolean z = true;
        if ((c0629a.f2793r & 1) == 0) {
            z = false;
        }
        this.f2457ad = z ? (char) 65535 : System.nanoTime();
        int m44813b = this.f2479b.m44813b();
        int m44809c = this.f2479b.m44809c();
        if (m44813b == this.f2482e && m44809c == this.f2484g) {
            return;
        }
        this.f2482e = m44813b;
        this.f2484g = m44809c;
        this.f2479b.m44822a(m44813b, m44809c);
        this.f2452M.m44996a(this.f2479b.m44824a(this.f2482e), this.f2479b.m44824a(this.f2484g));
        this.f2452M.m45000a(this.f2482e, this.f2484g);
        this.f2452M.m45001a();
        m45021g();
    }

    /* JADX WARN: Code restructure failed: missing block: B:141:0x03ee, code lost:
        if (r22 == com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0056, code lost:
        if (r8.f2490m != r0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0225, code lost:
        if (r10 <= r8.f2490m) goto L71;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x042b  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0271  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m45037a(boolean r9) {
        /*
            Method dump skipped, instructions count: 1148
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.m45037a(boolean):void");
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final boolean mo44017a(View view, View view2, int i, int i2) {
        C0627p c0627p = this.f2479b;
        return (c0627p == null || c0627p.f2756c == null || this.f2479b.f2756c.f2787l == null || (this.f2479b.f2756c.f2787l.f2842r & 2) != 0) ? false : true;
    }

    /* renamed from: b */
    public final void m45036b() {
        C0627p c0627p = this.f2479b;
        if (c0627p == null) {
            return;
        }
        if (c0627p.m44810b(this, this.f2483f)) {
            requestLayout();
            return;
        }
        int i = this.f2483f;
        if (i != -1) {
            this.f2479b.m44817a(this, i);
        }
        if (!this.f2479b.m44825a()) {
            return;
        }
        this.f2479b.m44803i();
    }

    /* renamed from: b */
    public final void m45035b(int i) {
        int i2;
        if (!isAttachedToWindow()) {
            if (this.f2475av == null) {
                this.f2475av = new C0588f();
            }
            this.f2475av.f2544d = i;
            return;
        }
        C0627p c0627p = this.f2479b;
        int i3 = i;
        if (c0627p != null) {
            i3 = i;
            if (c0627p.f2755b != null) {
                C0690f c0690f = this.f2479b.f2755b;
                int i4 = this.f2483f;
                C0690f.C0691a c0691a = c0690f.f3161d.get(i);
                if (c0691a == null) {
                    i4 = i;
                } else if (c0691a.f3166c != i4) {
                    Iterator<C0690f.C0692b> it2 = c0691a.f3165b.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (i4 == it2.next().f3172e) {
                                break;
                            }
                        } else {
                            i4 = c0691a.f3166c;
                            break;
                        }
                    }
                }
                i3 = i;
                if (i4 != -1) {
                    i3 = i4;
                }
            }
        }
        int i5 = this.f2483f;
        if (i5 == i3) {
            return;
        }
        if (this.f2482e == i3) {
            m45048a(BitmapDescriptorFactory.HUE_RED);
        } else if (this.f2484g == i3) {
            m45048a(1.0f);
        } else {
            this.f2484g = i3;
            if (i5 != -1) {
                setTransition(i5, i3);
                m45048a(1.0f);
                this.f2489l = BitmapDescriptorFactory.HUE_RED;
                m45048a(1.0f);
                return;
            }
            this.f2462ai = false;
            this.f2490m = 1.0f;
            this.f2488k = BitmapDescriptorFactory.HUE_RED;
            this.f2489l = BitmapDescriptorFactory.HUE_RED;
            this.f2457ad = System.nanoTime();
            this.f2456ac = System.nanoTime();
            this.f2458ae = false;
            this.f2480c = null;
            this.f2487j = this.f2479b.m44807e() / 1000.0f;
            this.f2482e = -1;
            this.f2479b.m44822a(-1, this.f2484g);
            this.f2479b.m44813b();
            int childCount = getChildCount();
            this.f2486i.clear();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = getChildAt(i6);
                this.f2486i.put(childAt, new C0624m(childAt));
            }
            this.f2491n = true;
            this.f2452M.m44996a((C0680c) null, this.f2479b.m44824a(i3));
            m45021g();
            this.f2452M.m44995b();
            int childCount2 = getChildCount();
            for (int i7 = 0; i7 < childCount2; i7++) {
                View childAt2 = getChildAt(i7);
                C0624m c0624m = this.f2486i.get(childAt2);
                if (c0624m != null) {
                    c0624m.f2715d.f2741d = BitmapDescriptorFactory.HUE_RED;
                    c0624m.f2715d.f2742e = BitmapDescriptorFactory.HUE_RED;
                    c0624m.f2715d.m44831a(childAt2.getX(), childAt2.getY(), childAt2.getWidth(), childAt2.getHeight());
                    C0623l c0623l = c0624m.f2717f;
                    c0623l.m44848a(childAt2.getX(), childAt2.getY(), childAt2.getWidth(), childAt2.getHeight());
                    c0623l.f2687c = childAt2.getVisibility();
                    c0623l.f2685a = childAt2.getVisibility() != 0 ? 0.0f : childAt2.getAlpha();
                    c0623l.f2688d = false;
                    if (Build.VERSION.SDK_INT >= 21) {
                        c0623l.f2689e = childAt2.getElevation();
                    }
                    c0623l.f2690f = childAt2.getRotation();
                    c0623l.f2691g = childAt2.getRotationX();
                    c0623l.f2692h = childAt2.getRotationY();
                    c0623l.f2693i = childAt2.getScaleX();
                    c0623l.f2694j = childAt2.getScaleY();
                    c0623l.f2695k = childAt2.getPivotX();
                    c0623l.f2696l = childAt2.getPivotY();
                    c0623l.f2697m = childAt2.getTranslationX();
                    c0623l.f2698n = childAt2.getTranslationY();
                    if (Build.VERSION.SDK_INT >= 21) {
                        c0623l.f2699o = childAt2.getTranslationZ();
                    }
                }
            }
            int width = getWidth();
            int height = getHeight();
            for (int i8 = 0; i8 < childCount; i8++) {
                C0624m c0624m2 = this.f2486i.get(getChildAt(i8));
                this.f2479b.m44816a(c0624m2);
                c0624m2.m44841a(width, height, System.nanoTime());
            }
            float m44806f = this.f2479b.m44806f();
            if (m44806f != BitmapDescriptorFactory.HUE_RED) {
                float f = Float.MAX_VALUE;
                float f2 = -3.4028235E38f;
                int i9 = 0;
                while (true) {
                    if (i9 < childCount) {
                        C0624m c0624m3 = this.f2486i.get(getChildAt(i9));
                        float f3 = c0624m3.f2716e.f2744g + c0624m3.f2716e.f2743f;
                        f = Math.min(f, f3);
                        f2 = Math.max(f2, f3);
                        i9++;
                    }
                }
                for (i2 = 0; i2 < childCount; i2++) {
                    C0624m c0624m4 = this.f2486i.get(getChildAt(i2));
                    float f4 = c0624m4.f2716e.f2743f;
                    float f5 = c0624m4.f2716e.f2744g;
                    c0624m4.f2722k = 1.0f / (1.0f - m44806f);
                    c0624m4.f2721j = m44806f - ((((f4 + f5) - f) * m44806f) / (f2 - f));
                }
            }
            this.f2488k = BitmapDescriptorFactory.HUE_RED;
            this.f2489l = BitmapDescriptorFactory.HUE_RED;
            this.f2491n = true;
            invalidate();
        }
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: b */
    public final void mo44010b(View view, View view2, int i, int i2) {
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    /* renamed from: c */
    public final void mo44736c(int i) {
        this.f2912R = null;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        long j;
        m45037a(false);
        super.dispatchDraw(canvas);
        if (this.f2479b == null) {
            return;
        }
        if ((this.f2493p & 1) == 1 && !isInEditMode()) {
            this.f2468ao++;
            long nanoTime = System.nanoTime();
            long j2 = this.f2469ap;
            if (j2 != -1) {
                if (nanoTime - j2 > 200000000) {
                    this.f2470aq = ((int) ((this.f2468ao / (((float) j) * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.f2468ao = 0;
                    this.f2469ap = nanoTime;
                }
            } else {
                this.f2469ap = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            StringBuilder sb = new StringBuilder();
            sb.append(this.f2470aq + " fps " + C0591a.m44982a(this, this.f2482e) + " -> ");
            sb.append(C0591a.m44982a(this, this.f2484g));
            sb.append(" (progress: ");
            sb.append(((int) (this.f2489l * 1000.0f)) / 10.0f);
            sb.append(" ) state=");
            int i = this.f2483f;
            sb.append(i == -1 ? AdError.UNDEFINED_DOMAIN : C0591a.m44982a(this, i));
            String sb2 = sb.toString();
            paint.setColor(-16777216);
            canvas.drawText(sb2, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(sb2, 10.0f, getHeight() - 30, paint);
        }
        if (this.f2493p <= 1) {
            return;
        }
        if (this.f2494q == null) {
            this.f2494q = new C0584b();
        }
        this.f2494q.m45008a(canvas, this.f2486i, this.f2479b.m44807e(), this.f2493p);
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return Build.VERSION.SDK_INT >= 19 ? super.isAttachedToWindow() : getWindowToken() != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        int i;
        boolean z;
        super.onAttachedToWindow();
        C0627p c0627p = this.f2479b;
        if (c0627p != null && (i = this.f2483f) != -1) {
            C0680c m44824a = c0627p.m44824a(i);
            C0627p c0627p2 = this.f2479b;
            int i2 = 0;
            while (true) {
                if (i2 < c0627p2.f2758e.size()) {
                    int keyAt = c0627p2.f2758e.keyAt(i2);
                    int i3 = c0627p2.f2759f.get(keyAt);
                    int size = c0627p2.f2759f.size();
                    while (true) {
                        if (i3 <= 0) {
                            z = false;
                            break;
                        } else if (i3 == keyAt) {
                            z = true;
                            break;
                        } else if (size < 0) {
                            z = true;
                            break;
                        } else {
                            i3 = c0627p2.f2759f.get(i3);
                            size--;
                        }
                    }
                    if (z) {
                        Log.e("MotionScene", "Cannot be derived from yourself");
                        break;
                    } else {
                        c0627p2.m44812b(keyAt);
                        i2++;
                    }
                } else {
                    for (int i4 = 0; i4 < c0627p2.f2758e.size(); i4++) {
                        C0680c valueAt = c0627p2.f2758e.valueAt(i4);
                        int childCount = getChildCount();
                        for (int i5 = 0; i5 < childCount; i5++) {
                            View childAt = getChildAt(i5);
                            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                            int id = childAt.getId();
                            if (valueAt.f3057b && id == -1) {
                                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                            }
                            if (!valueAt.f3058c.containsKey(Integer.valueOf(id))) {
                                valueAt.f3058c.put(Integer.valueOf(id), new C0680c.C0681a());
                            }
                            C0680c.C0681a c0681a = valueAt.f3058c.get(Integer.valueOf(id));
                            if (!c0681a.f3063d.f3104b) {
                                c0681a.m44686a(id, layoutParams);
                                if (childAt instanceof ConstraintHelper) {
                                    c0681a.f3063d.f3098ae = ((ConstraintHelper) childAt).m44756b();
                                    if (childAt instanceof Barrier) {
                                        Barrier barrier = (Barrier) childAt;
                                        c0681a.f3063d.f3103aj = barrier.f2898b.f1921b;
                                        c0681a.f3063d.f3095ab = barrier.f2897a;
                                        c0681a.f3063d.f3096ac = barrier.f2898b.f1922c;
                                    }
                                }
                                c0681a.f3063d.f3104b = true;
                            }
                            if (!c0681a.f3061b.f3137a) {
                                c0681a.f3061b.f3138b = childAt.getVisibility();
                                c0681a.f3061b.f3140d = childAt.getAlpha();
                                c0681a.f3061b.f3137a = true;
                            }
                            if (Build.VERSION.SDK_INT >= 17 && !c0681a.f3064e.f3143a) {
                                c0681a.f3064e.f3143a = true;
                                c0681a.f3064e.f3144b = childAt.getRotation();
                                c0681a.f3064e.f3145c = childAt.getRotationX();
                                c0681a.f3064e.f3146d = childAt.getRotationY();
                                c0681a.f3064e.f3147e = childAt.getScaleX();
                                c0681a.f3064e.f3148f = childAt.getScaleY();
                                float pivotX = childAt.getPivotX();
                                float pivotY = childAt.getPivotY();
                                if (pivotX != 0.0d || pivotY != 0.0d) {
                                    c0681a.f3064e.f3149g = pivotX;
                                    c0681a.f3064e.f3150h = pivotY;
                                }
                                c0681a.f3064e.f3151i = childAt.getTranslationX();
                                c0681a.f3064e.f3152j = childAt.getTranslationY();
                                if (Build.VERSION.SDK_INT >= 21) {
                                    c0681a.f3064e.f3153k = childAt.getTranslationZ();
                                    if (c0681a.f3064e.f3154l) {
                                        c0681a.f3064e.f3155m = childAt.getElevation();
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (m44824a != null) {
                m44824a.m44693b(this);
            }
            this.f2482e = this.f2483f;
        }
        m45036b();
        C0588f c0588f = this.f2475av;
        if (c0588f != null) {
            c0588f.m44987a();
            return;
        }
        C0627p c0627p3 = this.f2479b;
        if (c0627p3 == null || c0627p3.f2756c == null || this.f2479b.f2756c.f2789n != 4) {
            return;
        }
        m45048a(1.0f);
        m45046a(EnumC0590h.f2551b);
        m45046a(EnumC0590h.f2552c);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        C0627p.C0629a c0629a;
        C0663s c0663s;
        int i;
        RectF m44778a;
        C0627p c0627p = this.f2479b;
        if (c0627p == null || !this.f2485h || (c0629a = c0627p.f2756c) == null || !c0629a.m44802a() || (c0663s = c0629a.f2787l) == null) {
            return false;
        }
        if ((motionEvent.getAction() == 0 && (m44778a = c0663s.m44778a(this, new RectF())) != null && !m44778a.contains(motionEvent.getX(), motionEvent.getY())) || (i = c0663s.f2827c) == -1) {
            return false;
        }
        View view = this.f2478ay;
        if (view == null || view.getId() != i) {
            this.f2478ay = findViewById(i);
        }
        View view2 = this.f2478ay;
        if (view2 == null) {
            return false;
        }
        this.f2477ax.set(view2.getLeft(), this.f2478ay.getTop(), this.f2478ay.getRight(), this.f2478ay.getBottom());
        if (this.f2477ax.contains(motionEvent.getX(), motionEvent.getY()) && !m45047a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f2478ay, motionEvent)) {
            return onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f2474au = true;
        try {
            if (this.f2479b == null) {
                super.onLayout(z, i, i2, i3, i4);
                return;
            }
            int i5 = i3 - i;
            int i6 = i4 - i2;
            if (this.f2498u != i5 || this.f2499v != i6) {
                m45021g();
                m45037a(true);
            }
            this.f2498u = i5;
            this.f2499v = i6;
            this.f2496s = i5;
            this.f2497t = i6;
        } finally {
            this.f2474au = false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0094, code lost:
        if (((r0 == r0.f2536e && r0 == r0.f2537f) ? false : true) != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x024e, code lost:
        if (r19 <= r7.f2490m) goto L80;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[RETURN, SYNTHETIC] */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 683
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        C0627p c0627p = this.f2479b;
        if (c0627p != null) {
            c0627p.m44814a(isRtl());
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        C0627p c0627p = this.f2479b;
        if (c0627p == null || !this.f2485h || !c0627p.m44825a()) {
            return super.onTouchEvent(motionEvent);
        }
        C0627p.C0629a c0629a = this.f2479b.f2756c;
        if (c0629a != null && !c0629a.m44802a()) {
            return super.onTouchEvent(motionEvent);
        }
        this.f2479b.m44818a(motionEvent, this.f2483f, this);
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.f2441B == null) {
                this.f2441B = new ArrayList<>();
            }
            this.f2441B.add(motionHelper);
            if (motionHelper.f2435a) {
                if (this.f2466am == null) {
                    this.f2466am = new ArrayList<>();
                }
                this.f2466am.add(motionHelper);
            }
            if (!motionHelper.f2436b) {
                return;
            }
            if (this.f2467an == null) {
                this.f2467an = new ArrayList<>();
            }
            this.f2467an.add(motionHelper);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.f2466am;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.f2467an;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        C0627p c0627p;
        if (this.f2443D || this.f2483f != -1 || (c0627p = this.f2479b) == null || c0627p.f2756c == null || this.f2479b.f2756c.f2792q != 0) {
            super.requestLayout();
        }
    }

    public void setDebugMode(int i) {
        this.f2493p = i;
        invalidate();
    }

    public void setInteractionEnabled(boolean z) {
        this.f2485h = z;
    }

    public void setInterpolatedProgress(float f) {
        if (this.f2479b != null) {
            m45046a(EnumC0590h.f2552c);
            Interpolator m44808d = this.f2479b.m44808d();
            if (m44808d != null) {
                setProgress(m44808d.getInterpolation(f));
                return;
            }
        }
        setProgress(f);
    }

    public void setOnHide(float f) {
        ArrayList<MotionHelper> arrayList = this.f2467an;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f2467an.get(i).setProgress(f);
            }
        }
    }

    public void setOnShow(float f) {
        ArrayList<MotionHelper> arrayList = this.f2466am;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f2466am.get(i).setProgress(f);
            }
        }
    }

    public void setProgress(float f) {
        int i = (f > BitmapDescriptorFactory.HUE_RED ? 1 : (f == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        if (i < 0 || f > 1.0f) {
            Log.w("MotionLayout", "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.f2475av == null) {
                this.f2475av = new C0588f();
            }
            this.f2475av.f2541a = f;
            return;
        }
        if (i <= 0) {
            this.f2483f = this.f2482e;
            if (this.f2489l == BitmapDescriptorFactory.HUE_RED) {
                m45046a(EnumC0590h.f2553d);
            }
        } else if (f >= 1.0f) {
            this.f2483f = this.f2484g;
            if (this.f2489l == 1.0f) {
                m45046a(EnumC0590h.f2553d);
            }
        } else {
            this.f2483f = -1;
            m45046a(EnumC0590h.f2552c);
        }
        if (this.f2479b == null) {
            return;
        }
        this.f2458ae = true;
        this.f2490m = f;
        this.f2488k = f;
        this.f2457ad = -1L;
        this.f2456ac = -1L;
        this.f2480c = null;
        this.f2491n = true;
        invalidate();
    }

    public void setProgress(float f, float f2) {
        if (!isAttachedToWindow()) {
            if (this.f2475av == null) {
                this.f2475av = new C0588f();
            }
            this.f2475av.f2541a = f;
            this.f2475av.f2542b = f2;
            return;
        }
        setProgress(f);
        m45046a(EnumC0590h.f2552c);
        this.f2481d = f2;
        m45048a(1.0f);
    }

    public void setScene(C0627p c0627p) {
        this.f2479b = c0627p;
        c0627p.m44814a(isRtl());
        m45021g();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int i, int i2, int i3) {
        m45046a(EnumC0590h.f2551b);
        this.f2483f = i;
        this.f2482e = -1;
        this.f2484g = -1;
        if (this.f2912R != null) {
            this.f2912R.m44718a(i, i2, i3);
            return;
        }
        C0627p c0627p = this.f2479b;
        if (c0627p == null) {
            return;
        }
        c0627p.m44824a(i).m44693b(this);
    }

    public void setTransition(int i) {
        C0627p.C0629a c0629a;
        C0627p c0627p = this.f2479b;
        if (c0627p != null) {
            Iterator<C0627p.C0629a> it2 = c0627p.f2757d.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    c0629a = null;
                    break;
                }
                c0629a = it2.next();
                if (c0629a.f2776a == i) {
                    break;
                }
            }
            this.f2482e = c0629a.f2779d;
            this.f2484g = c0629a.f2778c;
            if (!isAttachedToWindow()) {
                if (this.f2475av == null) {
                    this.f2475av = new C0588f();
                }
                this.f2475av.f2543c = this.f2482e;
                this.f2475av.f2544d = this.f2484g;
                return;
            }
            float f = Float.NaN;
            int i2 = this.f2483f;
            if (i2 == this.f2482e) {
                f = 0.0f;
            } else if (i2 == this.f2484g) {
                f = 1.0f;
            }
            this.f2479b.m44815a(c0629a);
            this.f2452M.m44996a(this.f2479b.m44824a(this.f2482e), this.f2479b.m44824a(this.f2484g));
            m45021g();
            this.f2489l = Float.isNaN(f) ? 0.0f : f;
            if (!Float.isNaN(f)) {
                setProgress(f);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(C0591a.m44985a());
            sb.append(" transitionToStart ");
            m45048a(BitmapDescriptorFactory.HUE_RED);
        }
    }

    public void setTransition(int i, int i2) {
        if (!isAttachedToWindow()) {
            if (this.f2475av == null) {
                this.f2475av = new C0588f();
            }
            this.f2475av.f2543c = i;
            this.f2475av.f2544d = i2;
            return;
        }
        C0627p c0627p = this.f2479b;
        if (c0627p == null) {
            return;
        }
        this.f2482e = i;
        this.f2484g = i2;
        c0627p.m44822a(i, i2);
        this.f2452M.m44996a(this.f2479b.m44824a(i), this.f2479b.m44824a(i2));
        m45021g();
        this.f2489l = BitmapDescriptorFactory.HUE_RED;
        m45048a(BitmapDescriptorFactory.HUE_RED);
    }

    public void setTransitionDuration(int i) {
        C0627p c0627p = this.f2479b;
        if (c0627p == null) {
            Log.e("MotionLayout", "MotionScene not defined");
        } else if (c0627p.f2756c != null) {
            c0627p.f2756c.f2783h = i;
        } else {
            c0627p.f2760g = i;
        }
    }

    public void setTransitionListener(AbstractC0589g abstractC0589g) {
        this.f2459af = abstractC0589g;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.f2475av == null) {
            this.f2475av = new C0588f();
        }
        C0588f c0588f = this.f2475av;
        c0588f.f2541a = bundle.getFloat("motion.progress");
        c0588f.f2542b = bundle.getFloat("motion.velocity");
        c0588f.f2543c = bundle.getInt("motion.StartState");
        c0588f.f2544d = bundle.getInt("motion.EndState");
        if (isAttachedToWindow()) {
            this.f2475av.m44987a();
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return C0591a.m44984a(context, this.f2482e) + "->" + C0591a.m44984a(context, this.f2484g) + " (pos:" + this.f2489l + " Dpos/Dt:" + this.f2481d;
    }
}
