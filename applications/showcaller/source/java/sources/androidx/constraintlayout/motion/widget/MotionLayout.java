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
import androidx.constraintlayout.motion.widget.C0415q;
import androidx.constraintlayout.solver.widgets.AbstractC0498g;
import androidx.constraintlayout.solver.widgets.C0470a;
import androidx.constraintlayout.solver.widgets.C0493d;
import androidx.constraintlayout.solver.widgets.C0494e;
import androidx.constraintlayout.solver.widgets.C0496f;
import androidx.constraintlayout.solver.widgets.C0499h;
import androidx.constraintlayout.solver.widgets.C0501j;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.C0512a;
import androidx.constraintlayout.widget.C0515b;
import androidx.constraintlayout.widget.C0523e;
import androidx.constraintlayout.widget.C0524f;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import p020b.p037f.p038a.p039a.C1513g;
import p020b.p041h.p050l.AbstractC1670n;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout.class */
public class MotionLayout extends ConstraintLayout implements AbstractC1670n {

    /* renamed from: A */
    public static boolean f1551A;

    /* renamed from: B */
    C0415q f1553B;

    /* renamed from: B0 */
    int f1554B0;

    /* renamed from: C */
    Interpolator f1555C;

    /* renamed from: C0 */
    int f1556C0;

    /* renamed from: D0 */
    int f1558D0;

    /* renamed from: E0 */
    int f1560E0;

    /* renamed from: F0 */
    int f1562F0;

    /* renamed from: G0 */
    int f1564G0;

    /* renamed from: H0 */
    float f1566H0;

    /* renamed from: K0 */
    private C0376h f1572K0;

    /* renamed from: P */
    private long f1581P;

    /* renamed from: R */
    private boolean f1585R;

    /* renamed from: U */
    private AbstractC0377i f1588U;

    /* renamed from: V */
    private float f1589V;

    /* renamed from: W */
    private float f1590W;

    /* renamed from: b0 */
    C0372d f1592b0;

    /* renamed from: f0 */
    private C0379b f1596f0;

    /* renamed from: h0 */
    int f1598h0;

    /* renamed from: i0 */
    int f1599i0;

    /* renamed from: j0 */
    int f1600j0;

    /* renamed from: k0 */
    int f1601k0;

    /* renamed from: m0 */
    float f1603m0;

    /* renamed from: n0 */
    float f1604n0;

    /* renamed from: o0 */
    long f1605o0;

    /* renamed from: p0 */
    float f1606p0;

    /* renamed from: D */
    float f1557D = 0.0f;

    /* renamed from: E */
    private int f1559E = -1;

    /* renamed from: F */
    int f1561F = -1;

    /* renamed from: G */
    private int f1563G = -1;

    /* renamed from: H */
    private int f1565H = 0;

    /* renamed from: I */
    private int f1567I = 0;

    /* renamed from: J */
    private boolean f1569J = true;

    /* renamed from: K */
    HashMap<View, C0412n> f1571K = new HashMap<>();

    /* renamed from: L */
    private long f1573L = 0;

    /* renamed from: M */
    private float f1575M = 1.0f;

    /* renamed from: N */
    float f1577N = 0.0f;

    /* renamed from: O */
    float f1579O = 0.0f;

    /* renamed from: Q */
    float f1583Q = 0.0f;

    /* renamed from: S */
    boolean f1586S = false;

    /* renamed from: T */
    boolean f1587T = false;

    /* renamed from: a0 */
    int f1591a0 = 0;

    /* renamed from: c0 */
    private boolean f1593c0 = false;

    /* renamed from: d0 */
    private C1513g f1594d0 = new C1513g();

    /* renamed from: e0 */
    private C0371c f1595e0 = new C0371c();

    /* renamed from: g0 */
    boolean f1597g0 = true;

    /* renamed from: l0 */
    boolean f1602l0 = false;

    /* renamed from: q0 */
    private boolean f1607q0 = false;

    /* renamed from: r0 */
    private ArrayList<MotionHelper> f1608r0 = null;

    /* renamed from: s0 */
    private ArrayList<MotionHelper> f1609s0 = null;

    /* renamed from: t0 */
    private ArrayList<AbstractC0377i> f1610t0 = null;

    /* renamed from: u0 */
    private int f1611u0 = 0;

    /* renamed from: v0 */
    private long f1612v0 = -1;

    /* renamed from: w0 */
    private float f1613w0 = 0.0f;

    /* renamed from: x0 */
    private int f1614x0 = 0;

    /* renamed from: y0 */
    private float f1615y0 = 0.0f;

    /* renamed from: z0 */
    boolean f1616z0 = false;

    /* renamed from: A0 */
    protected boolean f1552A0 = false;

    /* renamed from: I0 */
    private C0383e f1568I0 = new C0383e();

    /* renamed from: J0 */
    private boolean f1570J0 = false;

    /* renamed from: L0 */
    TransitionState f1574L0 = TransitionState.UNDEFINED;

    /* renamed from: M0 */
    C0373e f1576M0 = new C0373e();

    /* renamed from: N0 */
    private boolean f1578N0 = false;

    /* renamed from: O0 */
    private RectF f1580O0 = new RectF();

    /* renamed from: P0 */
    private View f1582P0 = null;

    /* renamed from: Q0 */
    ArrayList<Integer> f1584Q0 = new ArrayList<>();

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$TransitionState.class */
    public enum TransitionState {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$a.class */
    class RunnableC0369a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ View f1622d;

        RunnableC0369a(View view) {
            MotionLayout.this = r4;
            this.f1622d = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1622d.setNestedScrollingEnabled(true);
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$b.class */
    public static /* synthetic */ class C0370b {

        /* renamed from: a */
        static final /* synthetic */ int[] f1624a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[TransitionState.values().length];
            f1624a = iArr;
            try {
                iArr[TransitionState.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1624a[TransitionState.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1624a[TransitionState.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1624a[TransitionState.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$c.class */
    public class C0371c extends AbstractanimationInterpolatorC0413o {

        /* renamed from: a */
        float f1625a = 0.0f;

        /* renamed from: b */
        float f1626b = 0.0f;

        /* renamed from: c */
        float f1627c;

        C0371c() {
            MotionLayout.this = r4;
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractanimationInterpolatorC0413o
        /* renamed from: a */
        public float mo29864a() {
            return MotionLayout.this.f1557D;
        }

        /* renamed from: b */
        public void m34533b(float f, float f2, float f3) {
            this.f1625a = f;
            this.f1626b = f2;
            this.f1627c = f3;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2;
            float f3;
            float f4 = this.f1625a;
            if (f4 > 0.0f) {
                float f5 = this.f1627c;
                float f6 = f;
                if (f4 / f5 < f) {
                    f6 = f4 / f5;
                }
                MotionLayout.this.f1557D = f4 - (f5 * f6);
                f2 = (f4 * f6) - (((f5 * f6) * f6) / 2.0f);
                f3 = this.f1626b;
            } else {
                float f7 = -f4;
                float f8 = this.f1627c;
                float f9 = f;
                if (f7 / f8 < f) {
                    f9 = (-f4) / f8;
                }
                MotionLayout.this.f1557D = (f8 * f9) + f4;
                f2 = (f4 * f9) + (((f8 * f9) * f9) / 2.0f);
                f3 = this.f1626b;
            }
            return f2 + f3;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$d.class */
    private class C0372d {

        /* renamed from: a */
        float[] f1629a;

        /* renamed from: d */
        Path f1632d;

        /* renamed from: e */
        Paint f1633e;

        /* renamed from: f */
        Paint f1634f;

        /* renamed from: g */
        Paint f1635g;

        /* renamed from: h */
        Paint f1636h;

        /* renamed from: i */
        Paint f1637i;

        /* renamed from: p */
        DashPathEffect f1644p;

        /* renamed from: q */
        int f1645q;

        /* renamed from: t */
        int f1648t;

        /* renamed from: k */
        final int f1639k = -21965;

        /* renamed from: l */
        final int f1640l = -2067046;

        /* renamed from: m */
        final int f1641m = -13391360;

        /* renamed from: n */
        final int f1642n = 1996488704;

        /* renamed from: o */
        final int f1643o = 10;

        /* renamed from: r */
        Rect f1646r = new Rect();

        /* renamed from: s */
        boolean f1647s = false;

        /* renamed from: j */
        private float[] f1638j = new float[8];

        /* renamed from: c */
        float[] f1631c = new float[100];

        /* renamed from: b */
        int[] f1630b = new int[50];

        public C0372d() {
            MotionLayout.this = r8;
            this.f1648t = 1;
            Paint paint = new Paint();
            this.f1633e = paint;
            paint.setAntiAlias(true);
            this.f1633e.setColor(-21965);
            this.f1633e.setStrokeWidth(2.0f);
            this.f1633e.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.f1634f = paint2;
            paint2.setAntiAlias(true);
            this.f1634f.setColor(-2067046);
            this.f1634f.setStrokeWidth(2.0f);
            this.f1634f.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint();
            this.f1635g = paint3;
            paint3.setAntiAlias(true);
            this.f1635g.setColor(-13391360);
            this.f1635g.setStrokeWidth(2.0f);
            this.f1635g.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint();
            this.f1636h = paint4;
            paint4.setAntiAlias(true);
            this.f1636h.setColor(-13391360);
            this.f1636h.setTextSize(r8.getContext().getResources().getDisplayMetrics().density * 12.0f);
            Paint paint5 = new Paint();
            this.f1637i = paint5;
            paint5.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
            this.f1644p = dashPathEffect;
            this.f1635g.setPathEffect(dashPathEffect);
            if (this.f1647s) {
                this.f1633e.setStrokeWidth(8.0f);
                this.f1637i.setStrokeWidth(8.0f);
                this.f1634f.setStrokeWidth(8.0f);
                this.f1648t = 4;
            }
        }

        /* renamed from: c */
        private void m34530c(Canvas canvas) {
            canvas.drawLines(this.f1629a, this.f1633e);
        }

        /* renamed from: d */
        private void m34529d(Canvas canvas) {
            boolean z = false;
            boolean z2 = false;
            for (int i = 0; i < this.f1645q; i++) {
                int[] iArr = this.f1630b;
                if (iArr[i] == 1) {
                    z = true;
                }
                if (iArr[i] == 2) {
                    z2 = true;
                }
            }
            if (z) {
                m34526g(canvas);
            }
            if (z2) {
                m34528e(canvas);
            }
        }

        /* renamed from: e */
        private void m34528e(Canvas canvas) {
            float[] fArr = this.f1629a;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[fArr.length - 2];
            float f4 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f, f3), Math.max(f2, f4), Math.max(f, f3), Math.max(f2, f4), this.f1635g);
            canvas.drawLine(Math.min(f, f3), Math.min(f2, f4), Math.min(f, f3), Math.max(f2, f4), this.f1635g);
        }

        /* renamed from: f */
        private void m34527f(Canvas canvas, float f, float f2) {
            float[] fArr = this.f1629a;
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            float min = Math.min(f3, f5);
            float max = Math.max(f4, f6);
            float min2 = f - Math.min(f3, f5);
            float max2 = Math.max(f4, f6) - f2;
            String str = "" + (((int) (((min2 * 100.0f) / Math.abs(f5 - f3)) + 0.5d)) / 100.0f);
            m34521l(str, this.f1636h);
            canvas.drawText(str, ((min2 / 2.0f) - (this.f1646r.width() / 2)) + min, f2 - 20.0f, this.f1636h);
            canvas.drawLine(f, f2, Math.min(f3, f5), f2, this.f1635g);
            String str2 = "" + (((int) (((max2 * 100.0f) / Math.abs(f6 - f4)) + 0.5d)) / 100.0f);
            m34521l(str2, this.f1636h);
            canvas.drawText(str2, f + 5.0f, max - ((max2 / 2.0f) - (this.f1646r.height() / 2)), this.f1636h);
            canvas.drawLine(f, f2, f, Math.max(f4, f6), this.f1635g);
        }

        /* renamed from: g */
        private void m34526g(Canvas canvas) {
            float[] fArr = this.f1629a;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.f1635g);
        }

        /* renamed from: h */
        private void m34525h(Canvas canvas, float f, float f2) {
            float[] fArr = this.f1629a;
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
            String str = "" + (((int) ((hypot2 * 100.0f) / hypot)) / 100.0f);
            m34521l(str, this.f1636h);
            canvas.drawTextOnPath(str, path, (hypot2 / 2.0f) - (this.f1646r.width() / 2), -20.0f, this.f1636h);
            canvas.drawLine(f, f2, f10, f11, this.f1635g);
        }

        /* renamed from: i */
        private void m34524i(Canvas canvas, float f, float f2, int i, int i2) {
            String str = "" + (((int) ((((f - (i / 2)) * 100.0f) / (MotionLayout.this.getWidth() - i)) + 0.5d)) / 100.0f);
            m34521l(str, this.f1636h);
            canvas.drawText(str, ((f / 2.0f) - (this.f1646r.width() / 2)) + 0.0f, f2 - 20.0f, this.f1636h);
            canvas.drawLine(f, f2, Math.min(0.0f, 1.0f), f2, this.f1635g);
            String str2 = "" + (((int) ((((f2 - (i2 / 2)) * 100.0f) / (MotionLayout.this.getHeight() - i2)) + 0.5d)) / 100.0f);
            m34521l(str2, this.f1636h);
            canvas.drawText(str2, f + 5.0f, 0.0f - ((f2 / 2.0f) - (this.f1646r.height() / 2)), this.f1636h);
            canvas.drawLine(f, f2, f, Math.max(0.0f, 1.0f), this.f1635g);
        }

        /* renamed from: j */
        private void m34523j(Canvas canvas, C0412n c0412n) {
            this.f1632d.reset();
            for (int i = 0; i <= 50; i++) {
                c0412n.m34328e(i / 50, this.f1638j, 0);
                Path path = this.f1632d;
                float[] fArr = this.f1638j;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.f1632d;
                float[] fArr2 = this.f1638j;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.f1632d;
                float[] fArr3 = this.f1638j;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.f1632d;
                float[] fArr4 = this.f1638j;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.f1632d.close();
            }
            this.f1633e.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.f1632d, this.f1633e);
            canvas.translate(-2.0f, -2.0f);
            this.f1633e.setColor(-65536);
            canvas.drawPath(this.f1632d, this.f1633e);
        }

        /* renamed from: k */
        private void m34522k(Canvas canvas, int i, int i2, C0412n c0412n) {
            int i3;
            int i4;
            View view = c0412n.f1832a;
            if (view != null) {
                i4 = view.getWidth();
                i3 = c0412n.f1832a.getHeight();
            } else {
                i4 = 0;
                i3 = 0;
            }
            for (int i5 = 1; i5 < i2 - 1; i5++) {
                if (i != 4 || this.f1630b[i5 - 1] != 0) {
                    float[] fArr = this.f1631c;
                    int i6 = i5 * 2;
                    float f = fArr[i6];
                    float f2 = fArr[i6 + 1];
                    this.f1632d.reset();
                    this.f1632d.moveTo(f, f2 + 10.0f);
                    this.f1632d.lineTo(f + 10.0f, f2);
                    this.f1632d.lineTo(f, f2 - 10.0f);
                    this.f1632d.lineTo(f - 10.0f, f2);
                    this.f1632d.close();
                    int i7 = i5 - 1;
                    c0412n.m34322k(i7);
                    if (i == 4) {
                        int[] iArr = this.f1630b;
                        if (iArr[i7] == 1) {
                            m34525h(canvas, f - 0.0f, f2 - 0.0f);
                        } else if (iArr[i7] == 2) {
                            m34527f(canvas, f - 0.0f, f2 - 0.0f);
                        } else if (iArr[i7] == 3) {
                            m34524i(canvas, f - 0.0f, f2 - 0.0f, i4, i3);
                        }
                        canvas.drawPath(this.f1632d, this.f1637i);
                    }
                    if (i == 2) {
                        m34525h(canvas, f - 0.0f, f2 - 0.0f);
                    }
                    if (i == 3) {
                        m34527f(canvas, f - 0.0f, f2 - 0.0f);
                    }
                    if (i == 6) {
                        m34524i(canvas, f - 0.0f, f2 - 0.0f, i4, i3);
                    }
                    canvas.drawPath(this.f1632d, this.f1637i);
                }
            }
            float[] fArr2 = this.f1629a;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.f1634f);
                float[] fArr3 = this.f1629a;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.f1634f);
            }
        }

        /* renamed from: a */
        public void m34532a(Canvas canvas, HashMap<View, C0412n> hashMap, int i, int i2) {
            if (hashMap == null || hashMap.size() == 0) {
                return;
            }
            canvas.save();
            if (!MotionLayout.this.isInEditMode() && (i2 & 1) == 2) {
                String str = MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.f1563G) + ":" + MotionLayout.this.getProgress();
                canvas.drawText(str, 10.0f, MotionLayout.this.getHeight() - 30, this.f1636h);
                canvas.drawText(str, 11.0f, MotionLayout.this.getHeight() - 29, this.f1633e);
            }
            for (C0412n c0412n : hashMap.values()) {
                int m34325h = c0412n.m34325h();
                int i3 = m34325h;
                if (i2 > 0) {
                    i3 = m34325h;
                    if (m34325h == 0) {
                        i3 = 1;
                    }
                }
                if (i3 != 0) {
                    this.f1645q = c0412n.m34330c(this.f1631c, this.f1630b);
                    if (i3 >= 1) {
                        int i4 = i / 16;
                        float[] fArr = this.f1629a;
                        if (fArr == null || fArr.length != i4 * 2) {
                            this.f1629a = new float[i4 * 2];
                            this.f1632d = new Path();
                        }
                        int i5 = this.f1648t;
                        canvas.translate(i5, i5);
                        this.f1633e.setColor(1996488704);
                        this.f1637i.setColor(1996488704);
                        this.f1634f.setColor(1996488704);
                        this.f1635g.setColor(1996488704);
                        c0412n.m34329d(this.f1629a, i4);
                        m34531b(canvas, i3, this.f1645q, c0412n);
                        this.f1633e.setColor(-21965);
                        this.f1634f.setColor(-2067046);
                        this.f1637i.setColor(-2067046);
                        this.f1635g.setColor(-13391360);
                        int i6 = this.f1648t;
                        canvas.translate(-i6, -i6);
                        m34531b(canvas, i3, this.f1645q, c0412n);
                        if (i3 == 5) {
                            m34523j(canvas, c0412n);
                        }
                    }
                }
            }
            canvas.restore();
        }

        /* renamed from: b */
        public void m34531b(Canvas canvas, int i, int i2, C0412n c0412n) {
            if (i == 4) {
                m34529d(canvas);
            }
            if (i == 2) {
                m34526g(canvas);
            }
            if (i == 3) {
                m34528e(canvas);
            }
            m34530c(canvas);
            m34522k(canvas, i, i2, c0412n);
        }

        /* renamed from: l */
        void m34521l(String str, Paint paint) {
            paint.getTextBounds(str, 0, str.length(), this.f1646r);
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$e.class */
    public class C0373e {

        /* renamed from: a */
        C0493d f1650a = new C0493d();

        /* renamed from: b */
        C0493d f1651b = new C0493d();

        /* renamed from: c */
        C0515b f1652c = null;

        /* renamed from: d */
        C0515b f1653d = null;

        /* renamed from: e */
        int f1654e;

        /* renamed from: f */
        int f1655f;

        C0373e() {
            MotionLayout.this = r5;
        }

        /* renamed from: i */
        private void m34512i(C0493d c0493d, C0515b c0515b) {
            SparseArray<ConstraintWidget> sparseArray = new SparseArray<>();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, c0493d);
            sparseArray.put(MotionLayout.this.getId(), c0493d);
            Iterator<ConstraintWidget> it = c0493d.m33738e1().iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                sparseArray.put(((View) next.m33972t()).getId(), next);
            }
            Iterator<ConstraintWidget> it2 = c0493d.m33738e1().iterator();
            while (it2.hasNext()) {
                ConstraintWidget next2 = it2.next();
                View view = (View) next2.m33972t();
                c0515b.m33641g(view.getId(), layoutParams);
                next2.m34004Y0(c0515b.m33626v(view.getId()));
                next2.m33959z0(c0515b.m33631q(view.getId()));
                if (view instanceof ConstraintHelper) {
                    c0515b.m33643e((ConstraintHelper) view, next2, layoutParams, sparseArray);
                    if (view instanceof Barrier) {
                        ((Barrier) view).m33693v();
                    }
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    layoutParams.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
                } else {
                    layoutParams.resolveLayoutDirection(0);
                }
                MotionLayout.this.m33690d(false, view, next2, layoutParams, sparseArray);
                if (c0515b.m33627u(view.getId()) == 1) {
                    next2.m34006X0(view.getVisibility());
                } else {
                    next2.m34006X0(c0515b.m33628t(view.getId()));
                }
            }
            Iterator<ConstraintWidget> it3 = c0493d.m33738e1().iterator();
            while (it3.hasNext()) {
                ConstraintWidget next3 = it3.next();
                if (next3 instanceof C0501j) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) next3.m33972t();
                    AbstractC0498g abstractC0498g = (AbstractC0498g) next3;
                    constraintHelper.m33695t(c0493d, abstractC0498g, sparseArray);
                    ((C0501j) abstractC0498g).m33758h1();
                }
            }
        }

        /* renamed from: a */
        public void m34520a() {
            int i;
            int childCount = MotionLayout.this.getChildCount();
            MotionLayout.this.f1571K.clear();
            int i2 = 0;
            while (true) {
                if (i2 < childCount) {
                    View childAt = MotionLayout.this.getChildAt(i2);
                    MotionLayout.this.f1571K.put(childAt, new C0412n(childAt));
                    i2++;
                }
            }
            for (i = 0; i < childCount; i++) {
                View childAt2 = MotionLayout.this.getChildAt(i);
                C0412n c0412n = MotionLayout.this.f1571K.get(childAt2);
                if (c0412n != null) {
                    if (this.f1652c != null) {
                        ConstraintWidget m34518c = m34518c(this.f1650a, childAt2);
                        if (m34518c != null) {
                            c0412n.m34313t(m34518c, this.f1652c);
                        } else if (MotionLayout.this.f1591a0 != 0) {
                            Log.e("MotionLayout", C0378a.m34493a() + "no widget for  " + C0378a.m34491c(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                    if (this.f1653d != null) {
                        ConstraintWidget m34518c2 = m34518c(this.f1651b, childAt2);
                        if (m34518c2 != null) {
                            c0412n.m34316q(m34518c2, this.f1653d);
                        } else if (MotionLayout.this.f1591a0 != 0) {
                            Log.e("MotionLayout", C0378a.m34493a() + "no widget for  " + C0378a.m34491c(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                }
            }
        }

        /* renamed from: b */
        void m34519b(C0493d c0493d, C0493d c0493d2) {
            ArrayList<ConstraintWidget> m33738e1 = c0493d.m33738e1();
            HashMap<ConstraintWidget, ConstraintWidget> hashMap = new HashMap<>();
            hashMap.put(c0493d, c0493d2);
            c0493d2.m33738e1().clear();
            c0493d2.mo33764m(c0493d, hashMap);
            Iterator<ConstraintWidget> it = m33738e1.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                ConstraintWidget c0470a = next instanceof C0470a ? new C0470a() : next instanceof C0496f ? new C0496f() : next instanceof C0494e ? new C0494e() : next instanceof AbstractC0498g ? new C0499h() : new ConstraintWidget();
                c0493d2.m33739a(c0470a);
                hashMap.put(next, c0470a);
            }
            Iterator<ConstraintWidget> it2 = m33738e1.iterator();
            while (it2.hasNext()) {
                ConstraintWidget next2 = it2.next();
                hashMap.get(next2).mo33764m(next2, hashMap);
            }
        }

        /* renamed from: c */
        ConstraintWidget m34518c(C0493d c0493d, View view) {
            if (c0493d.m33972t() == view) {
                return c0493d;
            }
            ArrayList<ConstraintWidget> m33738e1 = c0493d.m33738e1();
            int size = m33738e1.size();
            for (int i = 0; i < size; i++) {
                ConstraintWidget constraintWidget = m33738e1.get(i);
                if (constraintWidget.m33972t() == view) {
                    return constraintWidget;
                }
            }
            return null;
        }

        /* renamed from: d */
        void m34517d(C0493d c0493d, C0515b c0515b, C0515b c0515b2) {
            this.f1652c = c0515b;
            this.f1653d = c0515b2;
            this.f1650a = new C0493d();
            this.f1651b = new C0493d();
            this.f1650a.m33863I1(((ConstraintLayout) MotionLayout.this).f2481f.m33844v1());
            this.f1651b.m33863I1(((ConstraintLayout) MotionLayout.this).f2481f.m33844v1());
            this.f1650a.m33735h1();
            this.f1651b.m33735h1();
            m34519b(((ConstraintLayout) MotionLayout.this).f2481f, this.f1650a);
            m34519b(((ConstraintLayout) MotionLayout.this).f2481f, this.f1651b);
            if (MotionLayout.this.f1579O > 0.5d) {
                if (c0515b != null) {
                    m34512i(this.f1650a, c0515b);
                }
                m34512i(this.f1651b, c0515b2);
            } else {
                m34512i(this.f1651b, c0515b2);
                if (c0515b != null) {
                    m34512i(this.f1650a, c0515b);
                }
            }
            this.f1650a.m33861K1(MotionLayout.this.m33682r());
            this.f1650a.m33859M1();
            this.f1651b.m33861K1(MotionLayout.this.m33682r());
            this.f1651b.m33859M1();
            ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    C0493d c0493d2 = this.f1650a;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    c0493d2.m34046D0(dimensionBehaviour);
                    this.f1651b.m34046D0(dimensionBehaviour);
                }
                if (layoutParams.height != -2) {
                    return;
                }
                C0493d c0493d3 = this.f1650a;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                c0493d3.m34012U0(dimensionBehaviour2);
                this.f1651b.m34012U0(dimensionBehaviour2);
            }
        }

        /* renamed from: e */
        public boolean m34516e(int i, int i2) {
            return (i == this.f1654e && i2 == this.f1655f) ? false : true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:40:0x01b6, code lost:
            if (r0 == 0) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x01e3, code lost:
            if (r0 == 0) goto L46;
         */
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m34515f(int r9, int r10) {
            /*
                Method dump skipped, instructions count: 579
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.C0373e.m34515f(int, int):void");
        }

        /* renamed from: g */
        public void m34514g() {
            m34515f(MotionLayout.this.f1565H, MotionLayout.this.f1567I);
            MotionLayout.this.m34541o0();
        }

        /* renamed from: h */
        public void m34513h(int i, int i2) {
            this.f1654e = i;
            this.f1655f = i2;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$f */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$f.class */
    public interface AbstractC0374f {
        /* renamed from: a */
        void mo34511a();

        /* renamed from: b */
        void mo34510b(MotionEvent motionEvent);

        /* renamed from: c */
        float mo34509c();

        /* renamed from: d */
        float mo34508d();

        /* renamed from: e */
        void mo34507e(int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$g */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$g.class */
    public static class C0375g implements AbstractC0374f {

        /* renamed from: a */
        private static C0375g f1657a = new C0375g();

        /* renamed from: b */
        VelocityTracker f1658b;

        private C0375g() {
        }

        /* renamed from: f */
        public static C0375g m34506f() {
            f1657a.f1658b = VelocityTracker.obtain();
            return f1657a;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.AbstractC0374f
        /* renamed from: a */
        public void mo34511a() {
            VelocityTracker velocityTracker = this.f1658b;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f1658b = null;
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.AbstractC0374f
        /* renamed from: b */
        public void mo34510b(MotionEvent motionEvent) {
            VelocityTracker velocityTracker = this.f1658b;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.AbstractC0374f
        /* renamed from: c */
        public float mo34509c() {
            VelocityTracker velocityTracker = this.f1658b;
            if (velocityTracker != null) {
                return velocityTracker.getYVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.AbstractC0374f
        /* renamed from: d */
        public float mo34508d() {
            VelocityTracker velocityTracker = this.f1658b;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.AbstractC0374f
        /* renamed from: e */
        public void mo34507e(int i) {
            VelocityTracker velocityTracker = this.f1658b;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(i);
            }
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$h */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$h.class */
    public class C0376h {

        /* renamed from: a */
        float f1659a = Float.NaN;

        /* renamed from: b */
        float f1660b = Float.NaN;

        /* renamed from: c */
        int f1661c = -1;

        /* renamed from: d */
        int f1662d = -1;

        /* renamed from: e */
        final String f1663e = "motion.progress";

        /* renamed from: f */
        final String f1664f = "motion.velocity";

        /* renamed from: g */
        final String f1665g = "motion.StartState";

        /* renamed from: h */
        final String f1666h = "motion.EndState";

        C0376h() {
            MotionLayout.this = r4;
        }

        /* renamed from: a */
        void m34505a() {
            int i = this.f1661c;
            if (i != -1 || this.f1662d != -1) {
                if (i == -1) {
                    MotionLayout.this.m34537s0(this.f1662d);
                } else {
                    int i2 = this.f1662d;
                    if (i2 == -1) {
                        MotionLayout.this.setState(i, -1, -1);
                    } else {
                        MotionLayout.this.setTransition(i, i2);
                    }
                }
                MotionLayout.this.setState(TransitionState.SETUP);
            }
            if (Float.isNaN(this.f1660b)) {
                if (Float.isNaN(this.f1659a)) {
                    return;
                }
                MotionLayout.this.setProgress(this.f1659a);
                return;
            }
            MotionLayout.this.setProgress(this.f1659a, this.f1660b);
            this.f1659a = Float.NaN;
            this.f1660b = Float.NaN;
            this.f1661c = -1;
            this.f1662d = -1;
        }

        /* renamed from: b */
        public Bundle m34504b() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.f1659a);
            bundle.putFloat("motion.velocity", this.f1660b);
            bundle.putInt("motion.StartState", this.f1661c);
            bundle.putInt("motion.EndState", this.f1662d);
            return bundle;
        }

        /* renamed from: c */
        public void m34503c() {
            this.f1662d = MotionLayout.this.f1563G;
            this.f1661c = MotionLayout.this.f1559E;
            this.f1660b = MotionLayout.this.getVelocity();
            this.f1659a = MotionLayout.this.getProgress();
        }

        /* renamed from: d */
        public void m34502d(int i) {
            this.f1662d = i;
        }

        /* renamed from: e */
        public void m34501e(float f) {
            this.f1659a = f;
        }

        /* renamed from: f */
        public void m34500f(int i) {
            this.f1661c = i;
        }

        /* renamed from: g */
        public void m34499g(Bundle bundle) {
            this.f1659a = bundle.getFloat("motion.progress");
            this.f1660b = bundle.getFloat("motion.velocity");
            this.f1661c = bundle.getInt("motion.StartState");
            this.f1662d = bundle.getInt("motion.EndState");
        }

        /* renamed from: h */
        public void m34498h(float f) {
            this.f1660b = f;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$i */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$i.class */
    public interface AbstractC0377i {
        /* renamed from: a */
        void mo34497a(MotionLayout motionLayout, int i, int i2, float f);

        /* renamed from: b */
        void mo34496b(MotionLayout motionLayout, int i, int i2);

        /* renamed from: c */
        void mo34495c(MotionLayout motionLayout, int i, boolean z, float f);

        /* renamed from: d */
        void mo34494d(MotionLayout motionLayout, int i);
    }

    public MotionLayout(Context context) {
        super(context);
        m34547i0(null);
    }

    public MotionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m34547i0(attributeSet);
    }

    public MotionLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m34547i0(attributeSet);
    }

    /* renamed from: V */
    private void m34560V() {
        C0415q c0415q = this.f1553B;
        if (c0415q == null) {
            Log.e("MotionLayout", "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            return;
        }
        int m34254x = c0415q.m34254x();
        C0415q c0415q2 = this.f1553B;
        m34559W(m34254x, c0415q2.m34269i(c0415q2.m34254x()));
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        Iterator<C0415q.C0417b> it = this.f1553B.m34266l().iterator();
        while (it.hasNext()) {
            C0415q.C0417b next = it.next();
            if (next == this.f1553B.f1876c) {
                Log.v("MotionLayout", "CHECK: CURRENT");
            }
            m34558X(next);
            int m34250B = next.m34250B();
            int m34220z = next.m34220z();
            String m34492b = C0378a.m34492b(getContext(), m34250B);
            String m34492b2 = C0378a.m34492b(getContext(), m34220z);
            if (sparseIntArray.get(m34250B) == m34220z) {
                Log.e("MotionLayout", "CHECK: two transitions with the same start and end " + m34492b + "->" + m34492b2);
            }
            if (sparseIntArray2.get(m34220z) == m34250B) {
                Log.e("MotionLayout", "CHECK: you can't have reverse transitions" + m34492b + "->" + m34492b2);
            }
            sparseIntArray.put(m34250B, m34220z);
            sparseIntArray2.put(m34220z, m34250B);
            if (this.f1553B.m34269i(m34250B) == null) {
                Log.e("MotionLayout", " no such constraintSetStart " + m34492b);
            }
            if (this.f1553B.m34269i(m34220z) == null) {
                Log.e("MotionLayout", " no such constraintSetEnd " + m34492b);
            }
        }
    }

    /* renamed from: W */
    private void m34559W(int i, C0515b c0515b) {
        View childAt;
        String m34492b = C0378a.m34492b(getContext(), i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            int id = getChildAt(i2).getId();
            if (id == -1) {
                Log.w("MotionLayout", "CHECK: " + m34492b + " ALL VIEWS SHOULD HAVE ID's " + childAt.getClass().getName() + " does not!");
            }
            if (c0515b.m33632p(id) == null) {
                Log.w("MotionLayout", "CHECK: " + m34492b + " NO CONSTRAINTS for " + C0378a.m34491c(childAt));
            }
        }
        int[] m33630r = c0515b.m33630r();
        for (int i3 = 0; i3 < m33630r.length; i3++) {
            int i4 = m33630r[i3];
            String m34492b2 = C0378a.m34492b(getContext(), i4);
            if (findViewById(m33630r[i3]) == null) {
                Log.w("MotionLayout", "CHECK: " + m34492b + " NO View matches id " + m34492b2);
            }
            if (c0515b.m33631q(i4) == -1) {
                Log.w("MotionLayout", "CHECK: " + m34492b + "(" + m34492b2 + ") no LAYOUT_HEIGHT");
            }
            if (c0515b.m33626v(i4) == -1) {
                Log.w("MotionLayout", "CHECK: " + m34492b + "(" + m34492b2 + ") no LAYOUT_HEIGHT");
            }
        }
    }

    /* renamed from: X */
    private void m34558X(C0415q.C0417b c0417b) {
        Log.v("MotionLayout", "CHECK: transition = " + c0417b.m34225u(getContext()));
        Log.v("MotionLayout", "CHECK: transition.setDuration = " + c0417b.m34221y());
        if (c0417b.m34250B() == c0417b.m34220z()) {
            Log.e("MotionLayout", "CHECK: start and end constraint set should not be the same!");
        }
    }

    /* renamed from: Y */
    private void m34557Y() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            C0412n c0412n = this.f1571K.get(childAt);
            if (c0412n != null) {
                c0412n.m34314s(childAt);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e5, code lost:
        if (r12 <= r7.f1583Q) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* renamed from: a0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m34555a0() {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.m34555a0():void");
    }

    /* renamed from: b0 */
    private void m34554b0() {
        ArrayList<AbstractC0377i> arrayList;
        if ((this.f1588U != null || ((arrayList = this.f1610t0) != null && !arrayList.isEmpty())) && this.f1615y0 != this.f1577N) {
            if (this.f1614x0 != -1) {
                AbstractC0377i abstractC0377i = this.f1588U;
                if (abstractC0377i != null) {
                    abstractC0377i.mo34496b(this, this.f1559E, this.f1563G);
                }
                ArrayList<AbstractC0377i> arrayList2 = this.f1610t0;
                if (arrayList2 != null) {
                    Iterator<AbstractC0377i> it = arrayList2.iterator();
                    while (it.hasNext()) {
                        it.next().mo34496b(this, this.f1559E, this.f1563G);
                    }
                }
                this.f1616z0 = true;
            }
            this.f1614x0 = -1;
            float f = this.f1577N;
            this.f1615y0 = f;
            AbstractC0377i abstractC0377i2 = this.f1588U;
            if (abstractC0377i2 != null) {
                abstractC0377i2.mo34497a(this, this.f1559E, this.f1563G, f);
            }
            ArrayList<AbstractC0377i> arrayList3 = this.f1610t0;
            if (arrayList3 != null) {
                Iterator<AbstractC0377i> it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    it2.next().mo34497a(this, this.f1559E, this.f1563G, this.f1577N);
                }
            }
            this.f1616z0 = true;
        }
    }

    /* renamed from: h0 */
    private boolean m34548h0(float f, float f2, View view, MotionEvent motionEvent) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (m34548h0(view.getLeft() + f, view.getTop() + f2, viewGroup.getChildAt(i), motionEvent)) {
                    return true;
                }
            }
        }
        this.f1580O0.set(view.getLeft() + f, view.getTop() + f2, f + view.getRight(), f2 + view.getBottom());
        return motionEvent.getAction() == 0 ? this.f1580O0.contains(motionEvent.getX(), motionEvent.getY()) && view.onTouchEvent(motionEvent) : view.onTouchEvent(motionEvent);
    }

    /* renamed from: i0 */
    private void m34547i0(AttributeSet attributeSet) {
        C0415q c0415q;
        boolean z;
        boolean z2;
        f1551A = isInEditMode();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0523e.MotionLayout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            int i = 0;
            boolean z3 = true;
            while (true) {
                z = z3;
                if (i >= indexCount) {
                    break;
                }
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.MotionLayout_layoutDescription) {
                    this.f1553B = new C0415q(getContext(), this, obtainStyledAttributes.getResourceId(index, -1));
                    z2 = z;
                } else if (index == C0523e.MotionLayout_currentState) {
                    this.f1561F = obtainStyledAttributes.getResourceId(index, -1);
                    z2 = z;
                } else if (index == C0523e.MotionLayout_motionProgress) {
                    this.f1583Q = obtainStyledAttributes.getFloat(index, 0.0f);
                    this.f1586S = true;
                    z2 = z;
                } else if (index == C0523e.MotionLayout_applyMotionScene) {
                    z2 = obtainStyledAttributes.getBoolean(index, z);
                } else if (index == C0523e.MotionLayout_showPaths) {
                    z2 = z;
                    if (this.f1591a0 == 0) {
                        this.f1591a0 = obtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                        z2 = z;
                    }
                } else {
                    z2 = z;
                    if (index == C0523e.MotionLayout_motionDebug) {
                        this.f1591a0 = obtainStyledAttributes.getInt(index, 0);
                        z2 = z;
                    }
                }
                i++;
                z3 = z2;
            }
            obtainStyledAttributes.recycle();
            if (this.f1553B == null) {
                Log.e("MotionLayout", "WARNING NO app:layoutDescription tag");
            }
            if (!z) {
                this.f1553B = null;
            }
        }
        if (this.f1591a0 != 0) {
            m34560V();
        }
        if (this.f1561F != -1 || (c0415q = this.f1553B) == null) {
            return;
        }
        this.f1561F = c0415q.m34254x();
        this.f1559E = this.f1553B.m34254x();
        this.f1563G = this.f1553B.m34264n();
    }

    /* renamed from: m0 */
    private void m34543m0() {
        ArrayList<AbstractC0377i> arrayList;
        if (this.f1588U != null || ((arrayList = this.f1610t0) != null && !arrayList.isEmpty())) {
            this.f1616z0 = false;
            Iterator<Integer> it = this.f1584Q0.iterator();
            while (it.hasNext()) {
                Integer next = it.next();
                AbstractC0377i abstractC0377i = this.f1588U;
                if (abstractC0377i != null) {
                    abstractC0377i.mo34494d(this, next.intValue());
                }
                ArrayList<AbstractC0377i> arrayList2 = this.f1610t0;
                if (arrayList2 != null) {
                    Iterator<AbstractC0377i> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        it2.next().mo34494d(this, next.intValue());
                    }
                }
            }
            this.f1584Q0.clear();
        }
    }

    /* renamed from: o0 */
    public void m34541o0() {
        boolean z;
        int i;
        int childCount = getChildCount();
        this.f1576M0.m34520a();
        this.f1586S = true;
        int width = getWidth();
        int height = getHeight();
        int m34270h = this.f1553B.m34270h();
        if (m34270h != -1) {
            for (int i2 = 0; i2 < childCount; i2++) {
                C0412n c0412n = this.f1571K.get(getChildAt(i2));
                if (c0412n != null) {
                    c0412n.m34315r(m34270h);
                }
            }
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            C0412n c0412n2 = this.f1571K.get(getChildAt(i3));
            if (c0412n2 != null) {
                this.f1553B.m34261q(c0412n2);
                c0412n2.m34311v(width, height, this.f1575M, getNanoTime());
            }
        }
        float m34255w = this.f1553B.m34255w();
        if (m34255w != 0.0f) {
            boolean z2 = ((double) m34255w) < 0.0d;
            float abs = Math.abs(m34255w);
            int i4 = 0;
            float f = Float.MAX_VALUE;
            float f2 = -3.4028235E38f;
            while (true) {
                if (i4 >= childCount) {
                    z = false;
                    break;
                }
                C0412n c0412n3 = this.f1571K.get(getChildAt(i4));
                if (!Float.isNaN(c0412n3.f1842k)) {
                    z = true;
                    break;
                }
                float m34324i = c0412n3.m34324i();
                float m34323j = c0412n3.m34323j();
                float f3 = z2 ? m34323j - m34324i : m34323j + m34324i;
                f = Math.min(f, f3);
                f2 = Math.max(f2, f3);
                i4++;
            }
            if (!z) {
                for (int i5 = 0; i5 < childCount; i5++) {
                    C0412n c0412n4 = this.f1571K.get(getChildAt(i5));
                    float m34324i2 = c0412n4.m34324i();
                    float m34323j2 = c0412n4.m34323j();
                    float f4 = z2 ? m34323j2 - m34324i2 : m34323j2 + m34324i2;
                    c0412n4.f1844m = 1.0f / (1.0f - abs);
                    c0412n4.f1843l = abs - (((f4 - f) * abs) / (f2 - f));
                }
                return;
            }
            int i6 = 0;
            float f5 = Float.MAX_VALUE;
            float f6 = -3.4028235E38f;
            while (true) {
                if (i6 < childCount) {
                    C0412n c0412n5 = this.f1571K.get(getChildAt(i6));
                    float f7 = f6;
                    float f8 = f5;
                    if (!Float.isNaN(c0412n5.f1842k)) {
                        f8 = Math.min(f5, c0412n5.f1842k);
                        f7 = Math.max(f6, c0412n5.f1842k);
                    }
                    i6++;
                    f6 = f7;
                    f5 = f8;
                }
            }
            for (i = 0; i < childCount; i++) {
                C0412n c0412n6 = this.f1571K.get(getChildAt(i));
                if (!Float.isNaN(c0412n6.f1842k)) {
                    c0412n6.f1844m = 1.0f / (1.0f - abs);
                    if (z2) {
                        c0412n6.f1843l = abs - (((f6 - c0412n6.f1842k) / (f6 - f5)) * abs);
                    } else {
                        c0412n6.f1843l = abs - (((c0412n6.f1842k - f5) * abs) / (f6 - f5));
                    }
                }
            }
        }
    }

    /* renamed from: u0 */
    private static boolean m34535u0(float f, float f2, float f3) {
        boolean z = true;
        if (f <= 0.0f) {
            float f4 = (-f) / f3;
            return f2 + ((f * f4) + (((f3 * f4) * f4) / 2.0f)) < 0.0f;
        }
        float f5 = f / f3;
        if (f2 + ((f * f5) - (((f3 * f5) * f5) / 2.0f)) <= 1.0f) {
            z = false;
        }
        return z;
    }

    /* renamed from: U */
    void m34561U(float f) {
        C0415q c0415q = this.f1553B;
        if (c0415q == null) {
            return;
        }
        float f2 = this.f1579O;
        float f3 = this.f1577N;
        if (f2 != f3 && this.f1585R) {
            this.f1579O = f3;
        }
        float f4 = this.f1579O;
        if (f4 == f) {
            return;
        }
        this.f1593c0 = false;
        this.f1583Q = f;
        this.f1575M = c0415q.m34265m() / 1000.0f;
        setProgress(this.f1583Q);
        this.f1555C = this.f1553B.m34262p();
        this.f1585R = false;
        this.f1573L = getNanoTime();
        this.f1586S = true;
        this.f1577N = f4;
        this.f1579O = f4;
        invalidate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:141:0x03f1, code lost:
        if (r22 == 0.0f) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
        if (r8.f1583Q != r0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0227, code lost:
        if (r10 <= r8.f1583Q) goto L71;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x035b  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0274  */
    /* renamed from: Z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m34556Z(boolean r9) {
        /*
            Method dump skipped, instructions count: 1151
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.m34556Z(boolean):void");
    }

    /* renamed from: c0 */
    protected void m34553c0() {
        int i;
        ArrayList<AbstractC0377i> arrayList;
        if ((this.f1588U != null || ((arrayList = this.f1610t0) != null && !arrayList.isEmpty())) && this.f1614x0 == -1) {
            this.f1614x0 = this.f1561F;
            if (!this.f1584Q0.isEmpty()) {
                ArrayList<Integer> arrayList2 = this.f1584Q0;
                i = arrayList2.get(arrayList2.size() - 1).intValue();
            } else {
                i = -1;
            }
            int i2 = this.f1561F;
            if (i != i2 && i2 != -1) {
                this.f1584Q0.add(Integer.valueOf(i2));
            }
        }
        m34543m0();
    }

    /* renamed from: d0 */
    public void m34552d0(int i, boolean z, float f) {
        AbstractC0377i abstractC0377i = this.f1588U;
        if (abstractC0377i != null) {
            abstractC0377i.mo34495c(this, i, z, f);
        }
        ArrayList<AbstractC0377i> arrayList = this.f1610t0;
        if (arrayList != null) {
            Iterator<AbstractC0377i> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo34495c(this, i, z, f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        long j;
        m34556Z(false);
        super.dispatchDraw(canvas);
        if (this.f1553B == null) {
            return;
        }
        if ((this.f1591a0 & 1) == 1 && !isInEditMode()) {
            this.f1611u0++;
            long nanoTime = getNanoTime();
            long j2 = this.f1612v0;
            if (j2 != -1) {
                if (nanoTime - j2 > 200000000) {
                    this.f1613w0 = ((int) ((this.f1611u0 / (((float) j) * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.f1611u0 = 0;
                    this.f1612v0 = nanoTime;
                }
            } else {
                this.f1612v0 = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            StringBuilder sb = new StringBuilder();
            sb.append(this.f1613w0 + " fps " + C0378a.m34490d(this, this.f1559E) + " -> ");
            sb.append(C0378a.m34490d(this, this.f1563G));
            sb.append(" (progress: ");
            sb.append(((int) (getProgress() * 1000.0f)) / 10.0f);
            sb.append(" ) state=");
            int i = this.f1561F;
            sb.append(i == -1 ? "undefined" : C0378a.m34490d(this, i));
            String sb2 = sb.toString();
            paint.setColor(-16777216);
            canvas.drawText(sb2, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(sb2, 10.0f, getHeight() - 30, paint);
        }
        if (this.f1591a0 <= 1) {
            return;
        }
        if (this.f1592b0 == null) {
            this.f1592b0 = new C0372d();
        }
        this.f1592b0.m34532a(canvas, this.f1571K, this.f1553B.m34265m(), this.f1591a0);
    }

    /* renamed from: e0 */
    public void m34551e0(int i, float f, float f2, float f3, float[] fArr) {
        String str;
        HashMap<View, C0412n> hashMap = this.f1571K;
        View m33685o = m33685o(i);
        C0412n c0412n = hashMap.get(m33685o);
        if (c0412n != null) {
            c0412n.m34326g(f, f2, f3, fArr);
            float y = m33685o.getY();
            float f4 = this.f1589V;
            this.f1589V = f;
            this.f1590W = y;
            return;
        }
        if (m33685o == null) {
            str = "" + i;
        } else {
            str = m33685o.getContext().getResources().getResourceName(i);
        }
        Log.w("MotionLayout", "WARNING could not find view id " + str);
    }

    /* renamed from: f0 */
    public C0415q.C0417b m34550f0(int i) {
        return this.f1553B.m34253y(i);
    }

    /* renamed from: g0 */
    public void m34549g0(View view, float f, float f2, float[] fArr, int i) {
        float f3 = this.f1557D;
        float f4 = this.f1579O;
        if (this.f1555C != null) {
            float signum = Math.signum(this.f1583Q - f4);
            float interpolation = this.f1555C.getInterpolation(this.f1579O + 1.0E-5f);
            f4 = this.f1555C.getInterpolation(this.f1579O);
            f3 = (signum * ((interpolation - f4) / 1.0E-5f)) / this.f1575M;
        }
        Interpolator interpolator = this.f1555C;
        if (interpolator instanceof AbstractanimationInterpolatorC0413o) {
            f3 = ((AbstractanimationInterpolatorC0413o) interpolator).mo29864a();
        }
        C0412n c0412n = this.f1571K.get(view);
        if ((i & 1) == 0) {
            c0412n.m34321l(f4, view.getWidth(), view.getHeight(), f, f2, fArr);
        } else {
            c0412n.m34326g(f4, f, f2, fArr);
        }
        if (i < 2) {
            fArr[0] = fArr[0] * f3;
            fArr[1] = fArr[1] * f3;
        }
    }

    public int[] getConstraintSetIds() {
        C0415q c0415q = this.f1553B;
        if (c0415q == null) {
            return null;
        }
        return c0415q.m34267k();
    }

    public int getCurrentState() {
        return this.f1561F;
    }

    public ArrayList<C0415q.C0417b> getDefinedTransitions() {
        C0415q c0415q = this.f1553B;
        if (c0415q == null) {
            return null;
        }
        return c0415q.m34266l();
    }

    public C0379b getDesignTool() {
        if (this.f1596f0 == null) {
            this.f1596f0 = new C0379b(this);
        }
        return this.f1596f0;
    }

    public int getEndState() {
        return this.f1563G;
    }

    protected long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.f1579O;
    }

    public int getStartState() {
        return this.f1559E;
    }

    public float getTargetPosition() {
        return this.f1583Q;
    }

    public Bundle getTransitionState() {
        if (this.f1572K0 == null) {
            this.f1572K0 = new C0376h();
        }
        this.f1572K0.m34503c();
        return this.f1572K0.m34504b();
    }

    public long getTransitionTimeMs() {
        C0415q c0415q = this.f1553B;
        if (c0415q != null) {
            this.f1575M = c0415q.m34265m() / 1000.0f;
        }
        return this.f1575M * 1000.0f;
    }

    public float getVelocity() {
        return this.f1557D;
    }

    @Override // p020b.p041h.p050l.AbstractC1670n
    /* renamed from: h */
    public void mo29361h(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (this.f1602l0 || i != 0 || i2 != 0) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
        }
        this.f1602l0 = false;
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: i */
    public void mo29366i(View view, int i, int i2, int i3, int i4, int i5) {
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        if (Build.VERSION.SDK_INT >= 19) {
            return super.isAttachedToWindow();
        }
        return getWindowToken() != null;
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: j */
    public boolean mo29365j(View view, View view2, int i, int i2) {
        C0415q.C0417b c0417b;
        C0415q c0415q = this.f1553B;
        return (c0415q == null || (c0417b = c0415q.f1876c) == null || c0417b.m34249C() == null || (this.f1553B.f1876c.m34249C().m34186d() & 2) != 0) ? false : true;
    }

    /* renamed from: j0 */
    public boolean m34546j0() {
        return this.f1569J;
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: k */
    public void mo29364k(View view, View view2, int i, int i2) {
    }

    /* renamed from: k0 */
    public AbstractC0374f m34545k0() {
        return C0375g.m34506f();
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: l */
    public void mo29363l(View view, int i) {
        C0415q c0415q = this.f1553B;
        if (c0415q == null) {
            return;
        }
        float f = this.f1603m0;
        float f2 = this.f1606p0;
        c0415q.m34288G(f / f2, this.f1604n0 / f2);
    }

    /* renamed from: l0 */
    public void m34544l0() {
        C0415q c0415q = this.f1553B;
        if (c0415q == null) {
            return;
        }
        if (c0415q.m34272f(this, this.f1561F)) {
            requestLayout();
            return;
        }
        int i = this.f1561F;
        if (i != -1) {
            this.f1553B.m34273e(this, i);
        }
        if (!this.f1553B.m34278Q()) {
            return;
        }
        this.f1553B.m34280O();
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: m */
    public void mo29362m(View view, int i, int i2, int[] iArr, int i3) {
        C0415q.C0417b c0417b;
        C0451t m34249C;
        int m34179k;
        C0415q c0415q = this.f1553B;
        if (c0415q == null || (c0417b = c0415q.f1876c) == null || !c0417b.m34248D()) {
            return;
        }
        C0415q.C0417b c0417b2 = this.f1553B.f1876c;
        if (c0417b2 != null && c0417b2.m34248D() && (m34249C = c0417b2.m34249C()) != null && (m34179k = m34249C.m34179k()) != -1 && view.getId() != m34179k) {
            return;
        }
        C0415q c0415q2 = this.f1553B;
        if (c0415q2 != null && c0415q2.m34258t()) {
            float f = this.f1577N;
            if ((f == 1.0f || f == 0.0f) && view.canScrollVertically(-1)) {
                return;
            }
        }
        if (c0417b2.m34249C() != null && (this.f1553B.f1876c.m34249C().m34186d() & 1) != 0) {
            float m34257u = this.f1553B.m34257u(i, i2);
            float f2 = this.f1579O;
            if ((f2 <= 0.0f && m34257u < 0.0f) || (f2 >= 1.0f && m34257u > 0.0f)) {
                if (Build.VERSION.SDK_INT < 21) {
                    return;
                }
                view.setNestedScrollingEnabled(false);
                view.post(new RunnableC0369a(view));
                return;
            }
        }
        float f3 = this.f1577N;
        long nanoTime = getNanoTime();
        float f4 = i;
        this.f1603m0 = f4;
        float f5 = i2;
        this.f1604n0 = f5;
        this.f1606p0 = (float) ((nanoTime - this.f1605o0) * 1.0E-9d);
        this.f1605o0 = nanoTime;
        this.f1553B.m34289F(f4, f5);
        if (f3 != this.f1577N) {
            iArr[0] = i;
            iArr[1] = i2;
        }
        m34556Z(false);
        if (iArr[0] == 0 && iArr[1] == 0) {
            return;
        }
        this.f1602l0 = true;
    }

    /* renamed from: n0 */
    public void m34542n0() {
        this.f1576M0.m34514g();
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        C0415q.C0417b c0417b;
        int i;
        super.onAttachedToWindow();
        C0415q c0415q = this.f1553B;
        if (c0415q != null && (i = this.f1561F) != -1) {
            C0515b m34269i = c0415q.m34269i(i);
            this.f1553B.m34285J(this);
            if (m34269i != null) {
                m34269i.m33644d(this);
            }
            this.f1559E = this.f1561F;
        }
        m34544l0();
        C0376h c0376h = this.f1572K0;
        if (c0376h != null) {
            c0376h.m34505a();
            return;
        }
        C0415q c0415q2 = this.f1553B;
        if (c0415q2 == null || (c0417b = c0415q2.f1876c) == null || c0417b.m34222x() != 4) {
            return;
        }
        m34539q0();
        setState(TransitionState.SETUP);
        setState(TransitionState.MOVING);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        C0415q.C0417b c0417b;
        C0451t m34249C;
        int m34179k;
        RectF m34180j;
        C0415q c0415q = this.f1553B;
        if (c0415q == null || !this.f1569J || (c0417b = c0415q.f1876c) == null || !c0417b.m34248D() || (m34249C = c0417b.m34249C()) == null) {
            return false;
        }
        if ((motionEvent.getAction() == 0 && (m34180j = m34249C.m34180j(this, new RectF())) != null && !m34180j.contains(motionEvent.getX(), motionEvent.getY())) || (m34179k = m34249C.m34179k()) == -1) {
            return false;
        }
        View view = this.f1582P0;
        if (view == null || view.getId() != m34179k) {
            this.f1582P0 = findViewById(m34179k);
        }
        View view2 = this.f1582P0;
        if (view2 == null) {
            return false;
        }
        this.f1580O0.set(view2.getLeft(), this.f1582P0.getTop(), this.f1582P0.getRight(), this.f1582P0.getBottom());
        if (this.f1580O0.contains(motionEvent.getX(), motionEvent.getY()) && !m34548h0(0.0f, 0.0f, this.f1582P0, motionEvent)) {
            return onTouchEvent(motionEvent);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f1570J0 = true;
        try {
            if (this.f1553B == null) {
                super.onLayout(z, i, i2, i3, i4);
                return;
            }
            int i5 = i3 - i;
            int i6 = i4 - i2;
            if (this.f1600j0 != i5 || this.f1601k0 != i6) {
                m34542n0();
                m34556Z(true);
            }
            this.f1600j0 = i5;
            this.f1601k0 = i6;
            this.f1598h0 = i5;
            this.f1599i0 = i6;
        } finally {
            this.f1570J0 = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        int i4;
        if (this.f1553B == null) {
            super.onMeasure(i, i2);
            return;
        }
        boolean z2 = (this.f1565H == i && this.f1567I == i2) ? false : true;
        if (this.f1578N0) {
            this.f1578N0 = false;
            m34544l0();
            m34543m0();
            z2 = true;
        }
        if (this.f2486k) {
            z2 = true;
        }
        this.f1565H = i;
        this.f1567I = i2;
        int m34254x = this.f1553B.m34254x();
        int m34264n = this.f1553B.m34264n();
        if ((z2 || this.f1576M0.m34516e(m34254x, m34264n)) && this.f1559E != -1) {
            super.onMeasure(i, i2);
            this.f1576M0.m34517d(this.f2481f, this.f1553B.m34269i(m34254x), this.f1553B.m34269i(m34264n));
            this.f1576M0.m34514g();
            this.f1576M0.m34513h(m34254x, m34264n);
            z = false;
        } else {
            z = true;
        }
        if (this.f1552A0 || z) {
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int m34013U = this.f2481f.m34013U() + getPaddingLeft() + getPaddingRight();
            int m33962y = this.f2481f.m33962y() + paddingTop + paddingBottom;
            int i5 = this.f1562F0;
            if (i5 == Integer.MIN_VALUE || i5 == 0) {
                m34013U = (int) (this.f1554B0 + (this.f1566H0 * (this.f1558D0 - i4)));
                requestLayout();
            }
            int i6 = this.f1564G0;
            if (i6 == Integer.MIN_VALUE || i6 == 0) {
                m33962y = (int) (this.f1556C0 + (this.f1566H0 * (this.f1560E0 - i3)));
                requestLayout();
            }
            setMeasuredDimension(m34013U, m33962y);
        }
        m34555a0();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        C0415q c0415q = this.f1553B;
        if (c0415q != null) {
            c0415q.m34283L(m33682r());
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        C0415q c0415q = this.f1553B;
        if (c0415q == null || !this.f1569J || !c0415q.m34278Q()) {
            return super.onTouchEvent(motionEvent);
        }
        C0415q.C0417b c0417b = this.f1553B.f1876c;
        if (c0417b != null && !c0417b.m34248D()) {
            return super.onTouchEvent(motionEvent);
        }
        this.f1553B.m34287H(motionEvent, getCurrentState(), this);
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.f1610t0 == null) {
                this.f1610t0 = new ArrayList<>();
            }
            this.f1610t0.add(motionHelper);
            if (motionHelper.m34582x()) {
                if (this.f1608r0 == null) {
                    this.f1608r0 = new ArrayList<>();
                }
                this.f1608r0.add(motionHelper);
            }
            if (!motionHelper.m34583w()) {
                return;
            }
            if (this.f1609s0 == null) {
                this.f1609s0 = new ArrayList<>();
            }
            this.f1609s0.add(motionHelper);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.f1608r0;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.f1609s0;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    /* renamed from: p0 */
    public void m34540p0(int i, float f, float f2) {
        if (this.f1553B == null || this.f1579O == f) {
            return;
        }
        this.f1593c0 = true;
        this.f1573L = getNanoTime();
        float m34265m = this.f1553B.m34265m() / 1000.0f;
        this.f1575M = m34265m;
        this.f1583Q = f;
        this.f1586S = true;
        if (i == 0 || i == 1 || i == 2) {
            if (i == 1) {
                f = 0.0f;
            } else if (i == 2) {
                f = 1.0f;
            }
            this.f1594d0.m29862c(this.f1579O, f, f2, m34265m, this.f1553B.m34260r(), this.f1553B.m34259s());
            int i2 = this.f1561F;
            this.f1583Q = f;
            this.f1561F = i2;
            this.f1555C = this.f1594d0;
        } else if (i == 4) {
            this.f1595e0.m34533b(f2, this.f1579O, this.f1553B.m34260r());
            this.f1555C = this.f1595e0;
        } else if (i == 5) {
            if (m34535u0(f2, this.f1579O, this.f1553B.m34260r())) {
                this.f1595e0.m34533b(f2, this.f1579O, this.f1553B.m34260r());
                this.f1555C = this.f1595e0;
            } else {
                this.f1594d0.m29862c(this.f1579O, f, f2, this.f1575M, this.f1553B.m34260r(), this.f1553B.m34259s());
                this.f1557D = 0.0f;
                int i3 = this.f1561F;
                this.f1583Q = f;
                this.f1561F = i3;
                this.f1555C = this.f1594d0;
            }
        }
        this.f1585R = false;
        this.f1573L = getNanoTime();
        invalidate();
    }

    /* renamed from: q0 */
    public void m34539q0() {
        m34561U(1.0f);
    }

    /* renamed from: r0 */
    public void m34538r0() {
        m34561U(0.0f);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        C0415q c0415q;
        C0415q.C0417b c0417b;
        if (this.f1552A0 || this.f1561F != -1 || (c0415q = this.f1553B) == null || (c0417b = c0415q.f1876c) == null || c0417b.m34251A() != 0) {
            super.requestLayout();
        }
    }

    /* renamed from: s0 */
    public void m34537s0(int i) {
        if (isAttachedToWindow()) {
            m34536t0(i, -1, -1);
            return;
        }
        if (this.f1572K0 == null) {
            this.f1572K0 = new C0376h();
        }
        this.f1572K0.m34502d(i);
    }

    public void setDebugMode(int i) {
        this.f1591a0 = i;
        invalidate();
    }

    public void setInteractionEnabled(boolean z) {
        this.f1569J = z;
    }

    public void setInterpolatedProgress(float f) {
        if (this.f1553B != null) {
            setState(TransitionState.MOVING);
            Interpolator m34262p = this.f1553B.m34262p();
            if (m34262p != null) {
                setProgress(m34262p.getInterpolation(f));
                return;
            }
        }
        setProgress(f);
    }

    public void setOnHide(float f) {
        ArrayList<MotionHelper> arrayList = this.f1609s0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f1609s0.get(i).setProgress(f);
            }
        }
    }

    public void setOnShow(float f) {
        ArrayList<MotionHelper> arrayList = this.f1608r0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f1608r0.get(i).setProgress(f);
            }
        }
    }

    public void setProgress(float f) {
        int i = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
        if (i < 0 || f > 1.0f) {
            Log.w("MotionLayout", "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.f1572K0 == null) {
                this.f1572K0 = new C0376h();
            }
            this.f1572K0.m34501e(f);
            return;
        }
        if (i <= 0) {
            this.f1561F = this.f1559E;
            if (this.f1579O == 0.0f) {
                setState(TransitionState.FINISHED);
            }
        } else if (f >= 1.0f) {
            this.f1561F = this.f1563G;
            if (this.f1579O == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.f1561F = -1;
            setState(TransitionState.MOVING);
        }
        if (this.f1553B == null) {
            return;
        }
        this.f1585R = true;
        this.f1583Q = f;
        this.f1577N = f;
        this.f1581P = -1L;
        this.f1573L = -1L;
        this.f1555C = null;
        this.f1586S = true;
        invalidate();
    }

    public void setProgress(float f, float f2) {
        if (!isAttachedToWindow()) {
            if (this.f1572K0 == null) {
                this.f1572K0 = new C0376h();
            }
            this.f1572K0.m34501e(f);
            this.f1572K0.m34498h(f2);
            return;
        }
        setProgress(f);
        setState(TransitionState.MOVING);
        this.f1557D = f2;
        m34561U(1.0f);
    }

    public void setScene(C0415q c0415q) {
        this.f1553B = c0415q;
        c0415q.m34283L(m33682r());
        m34542n0();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int i, int i2, int i3) {
        setState(TransitionState.SETUP);
        this.f1561F = i;
        this.f1559E = -1;
        this.f1563G = -1;
        C0512a c0512a = this.f2489n;
        if (c0512a != null) {
            c0512a.m33655d(i, i2, i3);
            return;
        }
        C0415q c0415q = this.f1553B;
        if (c0415q == null) {
            return;
        }
        c0415q.m34269i(i).m33644d(this);
    }

    public void setState(TransitionState transitionState) {
        TransitionState transitionState2 = TransitionState.FINISHED;
        if (transitionState == transitionState2 && this.f1561F == -1) {
            return;
        }
        TransitionState transitionState3 = this.f1574L0;
        this.f1574L0 = transitionState;
        TransitionState transitionState4 = TransitionState.MOVING;
        if (transitionState3 == transitionState4 && transitionState == transitionState4) {
            m34554b0();
        }
        int i = C0370b.f1624a[transitionState3.ordinal()];
        if (i != 1 && i != 2) {
            if (i != 3 || transitionState != transitionState2) {
                return;
            }
            m34553c0();
            return;
        }
        if (transitionState == transitionState4) {
            m34554b0();
        }
        if (transitionState != transitionState2) {
            return;
        }
        m34553c0();
    }

    public void setTransition(int i) {
        if (this.f1553B != null) {
            C0415q.C0417b m34550f0 = m34550f0(i);
            this.f1559E = m34550f0.m34250B();
            this.f1563G = m34550f0.m34220z();
            if (!isAttachedToWindow()) {
                if (this.f1572K0 == null) {
                    this.f1572K0 = new C0376h();
                }
                this.f1572K0.m34500f(this.f1559E);
                this.f1572K0.m34502d(this.f1563G);
                return;
            }
            float f = Float.NaN;
            int i2 = this.f1561F;
            float f2 = 0.0f;
            if (i2 == this.f1559E) {
                f = 0.0f;
            } else if (i2 == this.f1563G) {
                f = 1.0f;
            }
            this.f1553B.m34281N(m34550f0);
            this.f1576M0.m34517d(this.f2481f, this.f1553B.m34269i(this.f1559E), this.f1553B.m34269i(this.f1563G));
            m34542n0();
            if (!Float.isNaN(f)) {
                f2 = f;
            }
            this.f1579O = f2;
            if (!Float.isNaN(f)) {
                setProgress(f);
                return;
            }
            Log.v("MotionLayout", C0378a.m34493a() + " transitionToStart ");
            m34538r0();
        }
    }

    public void setTransition(int i, int i2) {
        if (!isAttachedToWindow()) {
            if (this.f1572K0 == null) {
                this.f1572K0 = new C0376h();
            }
            this.f1572K0.m34500f(i);
            this.f1572K0.m34502d(i2);
            return;
        }
        C0415q c0415q = this.f1553B;
        if (c0415q == null) {
            return;
        }
        this.f1559E = i;
        this.f1563G = i2;
        c0415q.m34282M(i, i2);
        this.f1576M0.m34517d(this.f2481f, this.f1553B.m34269i(i), this.f1553B.m34269i(i2));
        m34542n0();
        this.f1579O = 0.0f;
        m34538r0();
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    public void setTransition(C0415q.C0417b c0417b) {
        this.f1553B.m34281N(c0417b);
        setState(TransitionState.SETUP);
        if (this.f1561F == this.f1553B.m34264n()) {
            this.f1579O = 1.0f;
            this.f1577N = 1.0f;
            this.f1583Q = 1.0f;
        } else {
            this.f1579O = 0.0f;
            this.f1577N = 0.0f;
            this.f1583Q = 0.0f;
        }
        this.f1581P = c0417b.m34247E(1) ? (char) 65535 : getNanoTime();
        int m34254x = this.f1553B.m34254x();
        int m34264n = this.f1553B.m34264n();
        if (m34254x == this.f1559E && m34264n == this.f1563G) {
            return;
        }
        this.f1559E = m34254x;
        this.f1563G = m34264n;
        this.f1553B.m34282M(m34254x, m34264n);
        this.f1576M0.m34517d(this.f2481f, this.f1553B.m34269i(this.f1559E), this.f1553B.m34269i(this.f1563G));
        this.f1576M0.m34513h(this.f1559E, this.f1563G);
        this.f1576M0.m34514g();
        m34542n0();
    }

    public void setTransitionDuration(int i) {
        C0415q c0415q = this.f1553B;
        if (c0415q == null) {
            Log.e("MotionLayout", "MotionScene not defined");
        } else {
            c0415q.m34284K(i);
        }
    }

    public void setTransitionListener(AbstractC0377i abstractC0377i) {
        this.f1588U = abstractC0377i;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.f1572K0 == null) {
            this.f1572K0 = new C0376h();
        }
        this.f1572K0.m34499g(bundle);
        if (isAttachedToWindow()) {
            this.f1572K0.m34505a();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    /* renamed from: t */
    protected void mo33680t(int i) {
        this.f2489n = null;
    }

    /* renamed from: t0 */
    public void m34536t0(int i, int i2, int i3) {
        int i4;
        C0415q c0415q = this.f1553B;
        int i5 = i;
        if (c0415q != null) {
            C0524f c0524f = c0415q.f1875b;
            i5 = i;
            if (c0524f != null) {
                int m33605a = c0524f.m33605a(this.f1561F, i, i2, i3);
                i5 = i;
                if (m33605a != -1) {
                    i5 = m33605a;
                }
            }
        }
        int i6 = this.f1561F;
        if (i6 == i5) {
            return;
        }
        if (this.f1559E == i5) {
            m34561U(0.0f);
        } else if (this.f1563G == i5) {
            m34561U(1.0f);
        } else {
            this.f1563G = i5;
            if (i6 != -1) {
                setTransition(i6, i5);
                m34561U(1.0f);
                this.f1579O = 0.0f;
                m34539q0();
                return;
            }
            this.f1593c0 = false;
            this.f1583Q = 1.0f;
            this.f1577N = 0.0f;
            this.f1579O = 0.0f;
            this.f1581P = getNanoTime();
            this.f1573L = getNanoTime();
            this.f1585R = false;
            this.f1555C = null;
            this.f1575M = this.f1553B.m34265m() / 1000.0f;
            this.f1559E = -1;
            this.f1553B.m34282M(-1, this.f1563G);
            this.f1553B.m34254x();
            int childCount = getChildCount();
            this.f1571K.clear();
            for (int i7 = 0; i7 < childCount; i7++) {
                View childAt = getChildAt(i7);
                this.f1571K.put(childAt, new C0412n(childAt));
            }
            this.f1586S = true;
            this.f1576M0.m34517d(this.f2481f, null, this.f1553B.m34269i(i5));
            m34542n0();
            this.f1576M0.m34520a();
            m34557Y();
            int width = getWidth();
            int height = getHeight();
            for (int i8 = 0; i8 < childCount; i8++) {
                C0412n c0412n = this.f1571K.get(getChildAt(i8));
                this.f1553B.m34261q(c0412n);
                c0412n.m34311v(width, height, this.f1575M, getNanoTime());
            }
            float m34255w = this.f1553B.m34255w();
            if (m34255w != 0.0f) {
                float f = Float.MAX_VALUE;
                float f2 = -3.4028235E38f;
                int i9 = 0;
                while (true) {
                    if (i9 < childCount) {
                        C0412n c0412n2 = this.f1571K.get(getChildAt(i9));
                        float m34323j = c0412n2.m34323j() + c0412n2.m34324i();
                        f = Math.min(f, m34323j);
                        f2 = Math.max(f2, m34323j);
                        i9++;
                    }
                }
                for (i4 = 0; i4 < childCount; i4++) {
                    C0412n c0412n3 = this.f1571K.get(getChildAt(i4));
                    float m34324i = c0412n3.m34324i();
                    float m34323j2 = c0412n3.m34323j();
                    c0412n3.f1844m = 1.0f / (1.0f - m34255w);
                    c0412n3.f1843l = m34255w - ((((m34324i + m34323j2) - f) * m34255w) / (f2 - f));
                }
            }
            this.f1577N = 0.0f;
            this.f1579O = 0.0f;
            this.f1586S = true;
            invalidate();
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return C0378a.m34492b(context, this.f1559E) + "->" + C0378a.m34492b(context, this.f1563G) + " (pos:" + this.f1579O + " Dpos/Dt:" + this.f1557D;
    }
}
