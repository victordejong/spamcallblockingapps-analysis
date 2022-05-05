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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.utils.StopLogic;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Flow;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import androidx.constraintlayout.solver.widgets.VirtualLayout;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.C0178R;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayoutStates;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.StateSet;
import androidx.core.view.NestedScrollingParent3;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout.class */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {

    /* renamed from: J0 */
    public static boolean f1830J0;

    /* renamed from: C0 */
    private StateCache f1836C0;

    /* renamed from: M */
    private long f1852M;

    /* renamed from: O */
    private boolean f1854O;

    /* renamed from: Q */
    private TransitionListener f1856Q;

    /* renamed from: R */
    private float f1857R;

    /* renamed from: S */
    private float f1858S;

    /* renamed from: U */
    DevModeDraw f1860U;

    /* renamed from: b0 */
    private DesignTool f1864b0;

    /* renamed from: c0 */
    int f1865c0;

    /* renamed from: d0 */
    int f1866d0;

    /* renamed from: f0 */
    float f1868f0;

    /* renamed from: g0 */
    float f1869g0;

    /* renamed from: h0 */
    long f1870h0;

    /* renamed from: i0 */
    float f1871i0;

    /* renamed from: t0 */
    int f1882t0;

    /* renamed from: u0 */
    int f1883u0;

    /* renamed from: v0 */
    int f1884v0;

    /* renamed from: w0 */
    int f1885w0;

    /* renamed from: x0 */
    int f1886x0;

    /* renamed from: y */
    MotionScene f1887y;

    /* renamed from: y0 */
    int f1888y0;

    /* renamed from: z */
    Interpolator f1889z;

    /* renamed from: z0 */
    float f1890z0;

    /* renamed from: A */
    float f1831A = 0.0f;

    /* renamed from: B */
    private int f1833B = -1;

    /* renamed from: C */
    int f1835C = -1;

    /* renamed from: D */
    private int f1837D = -1;

    /* renamed from: E */
    private int f1839E = 0;

    /* renamed from: F */
    private int f1841F = 0;

    /* renamed from: G */
    private boolean f1843G = true;

    /* renamed from: H */
    HashMap<View, MotionController> f1845H = new HashMap<>();

    /* renamed from: I */
    private long f1847I = 0;

    /* renamed from: J */
    private float f1849J = 1.0f;

    /* renamed from: K */
    float f1850K = 0.0f;

    /* renamed from: L */
    float f1851L = 0.0f;

    /* renamed from: N */
    float f1853N = 0.0f;

    /* renamed from: P */
    boolean f1855P = false;

    /* renamed from: T */
    int f1859T = 0;

    /* renamed from: V */
    private boolean f1861V = false;

    /* renamed from: W */
    private StopLogic f1862W = new StopLogic();

    /* renamed from: a0 */
    private DecelerateInterpolator f1863a0 = new DecelerateInterpolator();

    /* renamed from: e0 */
    boolean f1867e0 = false;

    /* renamed from: j0 */
    private boolean f1872j0 = false;

    /* renamed from: k0 */
    private ArrayList<MotionHelper> f1873k0 = null;

    /* renamed from: l0 */
    private ArrayList<MotionHelper> f1874l0 = null;

    /* renamed from: m0 */
    private ArrayList<TransitionListener> f1875m0 = null;

    /* renamed from: n0 */
    private int f1876n0 = 0;

    /* renamed from: o0 */
    private long f1877o0 = -1;

    /* renamed from: p0 */
    private float f1878p0 = 0.0f;

    /* renamed from: q0 */
    private int f1879q0 = 0;

    /* renamed from: r0 */
    private float f1880r0 = 0.0f;

    /* renamed from: s0 */
    protected boolean f1881s0 = false;

    /* renamed from: A0 */
    private KeyCache f1832A0 = new KeyCache();

    /* renamed from: B0 */
    private boolean f1834B0 = false;

    /* renamed from: D0 */
    TransitionState f1838D0 = TransitionState.UNDEFINED;

    /* renamed from: E0 */
    Model f1840E0 = new Model();

    /* renamed from: F0 */
    private boolean f1842F0 = false;

    /* renamed from: G0 */
    private RectF f1844G0 = new RectF();

    /* renamed from: H0 */
    private View f1846H0 = null;

    /* renamed from: I0 */
    ArrayList<Integer> f1848I0 = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$2 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$2.class */
    public static /* synthetic */ class C01552 {

        /* renamed from: a */
        static final /* synthetic */ int[] f1892a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[TransitionState.values().length];
            f1892a = iArr;
            try {
                iArr[TransitionState.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1892a[TransitionState.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1892a[TransitionState.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1892a[TransitionState.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator.class */
    class DecelerateInterpolator extends MotionInterpolator {

        /* renamed from: a */
        float f1893a = 0.0f;

        /* renamed from: b */
        float f1894b = 0.0f;

        /* renamed from: c */
        float f1895c;

        DecelerateInterpolator() {
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
        /* renamed from: a */
        public float mo20710a() {
            return MotionLayout.this.f1831A;
        }

        /* renamed from: b */
        public void m20709b(float f, float f2, float f3) {
            this.f1893a = f;
            this.f1894b = f2;
            this.f1895c = f3;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2;
            float f3;
            float f4 = this.f1893a;
            if (f4 > 0.0f) {
                float f5 = this.f1895c;
                float f6 = f;
                if (f4 / f5 < f) {
                    f6 = f4 / f5;
                }
                MotionLayout motionLayout = MotionLayout.this;
                float f7 = this.f1893a;
                float f8 = this.f1895c;
                motionLayout.f1831A = f7 - (f8 * f6);
                f2 = (f7 * f6) - (((f8 * f6) * f6) / 2.0f);
                f3 = this.f1894b;
            } else {
                float f9 = -f4;
                float f10 = this.f1895c;
                float f11 = f;
                if (f9 / f10 < f) {
                    f11 = (-f4) / f10;
                }
                MotionLayout motionLayout2 = MotionLayout.this;
                float f12 = this.f1893a;
                float f13 = this.f1895c;
                motionLayout2.f1831A = (f13 * f11) + f12;
                f2 = (f12 * f11) + (((f13 * f11) * f11) / 2.0f);
                f3 = this.f1894b;
            }
            return f2 + f3;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw.class */
    private class DevModeDraw {

        /* renamed from: a */
        float[] f1897a;

        /* renamed from: d */
        Path f1900d;

        /* renamed from: e */
        Paint f1901e;

        /* renamed from: f */
        Paint f1902f;

        /* renamed from: g */
        Paint f1903g;

        /* renamed from: h */
        Paint f1904h;

        /* renamed from: i */
        Paint f1905i;

        /* renamed from: k */
        DashPathEffect f1907k;

        /* renamed from: l */
        int f1908l;

        /* renamed from: o */
        int f1911o;

        /* renamed from: m */
        Rect f1909m = new Rect();

        /* renamed from: n */
        boolean f1910n = false;

        /* renamed from: j */
        private float[] f1906j = new float[8];

        /* renamed from: c */
        float[] f1899c = new float[100];

        /* renamed from: b */
        int[] f1898b = new int[50];

        public DevModeDraw() {
            this.f1911o = 1;
            Paint paint = new Paint();
            this.f1901e = paint;
            paint.setAntiAlias(true);
            this.f1901e.setColor(-21965);
            this.f1901e.setStrokeWidth(2.0f);
            this.f1901e.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.f1902f = paint2;
            paint2.setAntiAlias(true);
            this.f1902f.setColor(-2067046);
            this.f1902f.setStrokeWidth(2.0f);
            this.f1902f.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint();
            this.f1903g = paint3;
            paint3.setAntiAlias(true);
            this.f1903g.setColor(-13391360);
            this.f1903g.setStrokeWidth(2.0f);
            this.f1903g.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint();
            this.f1904h = paint4;
            paint4.setAntiAlias(true);
            this.f1904h.setColor(-13391360);
            this.f1904h.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            Paint paint5 = new Paint();
            this.f1905i = paint5;
            paint5.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
            this.f1907k = dashPathEffect;
            this.f1903g.setPathEffect(dashPathEffect);
            if (this.f1910n) {
                this.f1901e.setStrokeWidth(8.0f);
                this.f1905i.setStrokeWidth(8.0f);
                this.f1902f.setStrokeWidth(8.0f);
                this.f1911o = 4;
            }
        }

        /* renamed from: c */
        private void m20706c(Canvas canvas) {
            canvas.drawLines(this.f1897a, this.f1901e);
        }

        /* renamed from: d */
        private void m20705d(Canvas canvas) {
            boolean z = false;
            boolean z2 = false;
            for (int i = 0; i < this.f1908l; i++) {
                if (this.f1898b[i] == 1) {
                    z = true;
                }
                if (this.f1898b[i] == 2) {
                    z2 = true;
                }
            }
            if (z) {
                m20702g(canvas);
            }
            if (z2) {
                m20704e(canvas);
            }
        }

        /* renamed from: e */
        private void m20704e(Canvas canvas) {
            float[] fArr = this.f1897a;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[fArr.length - 2];
            float f4 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f, f3), Math.max(f2, f4), Math.max(f, f3), Math.max(f2, f4), this.f1903g);
            canvas.drawLine(Math.min(f, f3), Math.min(f2, f4), Math.min(f, f3), Math.max(f2, f4), this.f1903g);
        }

        /* renamed from: f */
        private void m20703f(Canvas canvas, float f, float f2) {
            float[] fArr = this.f1897a;
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            float min = Math.min(f3, f5);
            float max = Math.max(f4, f6);
            float min2 = f - Math.min(f3, f5);
            float max2 = Math.max(f4, f6) - f2;
            String str = "" + (((int) (((min2 * 100.0f) / Math.abs(f5 - f3)) + 0.5d)) / 100.0f);
            m20697l(str, this.f1904h);
            canvas.drawText(str, ((min2 / 2.0f) - (this.f1909m.width() / 2)) + min, f2 - 20.0f, this.f1904h);
            canvas.drawLine(f, f2, Math.min(f3, f5), f2, this.f1903g);
            String str2 = "" + (((int) (((max2 * 100.0f) / Math.abs(f6 - f4)) + 0.5d)) / 100.0f);
            m20697l(str2, this.f1904h);
            canvas.drawText(str2, f + 5.0f, max - ((max2 / 2.0f) - (this.f1909m.height() / 2)), this.f1904h);
            canvas.drawLine(f, f2, f, Math.max(f4, f6), this.f1903g);
        }

        /* renamed from: g */
        private void m20702g(Canvas canvas) {
            float[] fArr = this.f1897a;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.f1903g);
        }

        /* renamed from: h */
        private void m20701h(Canvas canvas, float f, float f2) {
            float[] fArr = this.f1897a;
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
            m20697l(str, this.f1904h);
            canvas.drawTextOnPath(str, path, (hypot2 / 2.0f) - (this.f1909m.width() / 2), -20.0f, this.f1904h);
            canvas.drawLine(f, f2, f10, f11, this.f1903g);
        }

        /* renamed from: i */
        private void m20700i(Canvas canvas, float f, float f2, int i, int i2) {
            String str = "" + (((int) ((((f - (i / 2)) * 100.0f) / (MotionLayout.this.getWidth() - i)) + 0.5d)) / 100.0f);
            m20697l(str, this.f1904h);
            canvas.drawText(str, ((f / 2.0f) - (this.f1909m.width() / 2)) + 0.0f, f2 - 20.0f, this.f1904h);
            canvas.drawLine(f, f2, Math.min(0.0f, 1.0f), f2, this.f1903g);
            String str2 = "" + (((int) ((((f2 - (i2 / 2)) * 100.0f) / (MotionLayout.this.getHeight() - i2)) + 0.5d)) / 100.0f);
            m20697l(str2, this.f1904h);
            canvas.drawText(str2, f + 5.0f, 0.0f - ((f2 / 2.0f) - (this.f1909m.height() / 2)), this.f1904h);
            canvas.drawLine(f, f2, f, Math.max(0.0f, 1.0f), this.f1903g);
        }

        /* renamed from: j */
        private void m20699j(Canvas canvas, MotionController motionController) {
            this.f1900d.reset();
            for (int i = 0; i <= 50; i++) {
                motionController.m20778e(i / 50, this.f1906j, 0);
                Path path = this.f1900d;
                float[] fArr = this.f1906j;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.f1900d;
                float[] fArr2 = this.f1906j;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.f1900d;
                float[] fArr3 = this.f1906j;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.f1900d;
                float[] fArr4 = this.f1906j;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.f1900d.close();
            }
            this.f1901e.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.f1900d, this.f1901e);
            canvas.translate(-2.0f, -2.0f);
            this.f1901e.setColor(-65536);
            canvas.drawPath(this.f1900d, this.f1901e);
        }

        /* renamed from: k */
        private void m20698k(Canvas canvas, int i, int i2, MotionController motionController) {
            int i3;
            int i4;
            View view = motionController.f1800a;
            if (view != null) {
                i4 = view.getWidth();
                i3 = motionController.f1800a.getHeight();
            } else {
                i4 = 0;
                i3 = 0;
            }
            for (int i5 = 1; i5 < i2 - 1; i5++) {
                if (i != 4 || this.f1898b[i5 - 1] != 0) {
                    float[] fArr = this.f1899c;
                    int i6 = i5 * 2;
                    float f = fArr[i6];
                    float f2 = fArr[i6 + 1];
                    this.f1900d.reset();
                    this.f1900d.moveTo(f, f2 + 10.0f);
                    this.f1900d.lineTo(f + 10.0f, f2);
                    this.f1900d.lineTo(f, f2 - 10.0f);
                    this.f1900d.lineTo(f - 10.0f, f2);
                    this.f1900d.close();
                    int i7 = i5 - 1;
                    motionController.m20772k(i7);
                    if (i == 4) {
                        int[] iArr = this.f1898b;
                        if (iArr[i7] == 1) {
                            m20701h(canvas, f - 0.0f, f2 - 0.0f);
                        } else if (iArr[i7] == 2) {
                            m20703f(canvas, f - 0.0f, f2 - 0.0f);
                        } else if (iArr[i7] == 3) {
                            m20700i(canvas, f - 0.0f, f2 - 0.0f, i4, i3);
                        }
                        canvas.drawPath(this.f1900d, this.f1905i);
                    }
                    if (i == 2) {
                        m20701h(canvas, f - 0.0f, f2 - 0.0f);
                    }
                    if (i == 3) {
                        m20703f(canvas, f - 0.0f, f2 - 0.0f);
                    }
                    if (i == 6) {
                        m20700i(canvas, f - 0.0f, f2 - 0.0f, i4, i3);
                    }
                    canvas.drawPath(this.f1900d, this.f1905i);
                }
            }
            float[] fArr2 = this.f1897a;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.f1902f);
                float[] fArr3 = this.f1897a;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.f1902f);
            }
        }

        /* renamed from: a */
        public void m20708a(Canvas canvas, HashMap<View, MotionController> hashMap, int i, int i2) {
            if (!(hashMap == null || hashMap.size() == 0)) {
                canvas.save();
                if (!MotionLayout.this.isInEditMode() && (i2 & 1) == 2) {
                    String str = MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.f1837D) + ":" + MotionLayout.this.getProgress();
                    canvas.drawText(str, 10.0f, MotionLayout.this.getHeight() - 30, this.f1904h);
                    canvas.drawText(str, 11.0f, MotionLayout.this.getHeight() - 29, this.f1901e);
                }
                for (MotionController motionController : hashMap.values()) {
                    int h = motionController.m20775h();
                    int i3 = h;
                    if (i2 > 0) {
                        i3 = h;
                        if (h == 0) {
                            i3 = 1;
                        }
                    }
                    if (i3 != 0) {
                        this.f1908l = motionController.m20780c(this.f1899c, this.f1898b);
                        if (i3 >= 1) {
                            int i4 = i / 16;
                            float[] fArr = this.f1897a;
                            if (fArr == null || fArr.length != i4 * 2) {
                                this.f1897a = new float[i4 * 2];
                                this.f1900d = new Path();
                            }
                            int i5 = this.f1911o;
                            canvas.translate(i5, i5);
                            this.f1901e.setColor(1996488704);
                            this.f1905i.setColor(1996488704);
                            this.f1902f.setColor(1996488704);
                            this.f1903g.setColor(1996488704);
                            motionController.m20779d(this.f1897a, i4);
                            m20707b(canvas, i3, this.f1908l, motionController);
                            this.f1901e.setColor(-21965);
                            this.f1902f.setColor(-2067046);
                            this.f1905i.setColor(-2067046);
                            this.f1903g.setColor(-13391360);
                            int i6 = this.f1911o;
                            canvas.translate(-i6, -i6);
                            m20707b(canvas, i3, this.f1908l, motionController);
                            if (i3 == 5) {
                                m20699j(canvas, motionController);
                            }
                        }
                    }
                }
                canvas.restore();
            }
        }

        /* renamed from: b */
        public void m20707b(Canvas canvas, int i, int i2, MotionController motionController) {
            if (i == 4) {
                m20705d(canvas);
            }
            if (i == 2) {
                m20702g(canvas);
            }
            if (i == 3) {
                m20704e(canvas);
            }
            m20706c(canvas);
            m20698k(canvas, i, i2, motionController);
        }

        /* renamed from: l */
        void m20697l(String str, Paint paint) {
            paint.getTextBounds(str, 0, str.length(), this.f1909m);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$Model.class */
    public class Model {

        /* renamed from: a */
        ConstraintWidgetContainer f1913a = new ConstraintWidgetContainer();

        /* renamed from: b */
        ConstraintWidgetContainer f1914b = new ConstraintWidgetContainer();

        /* renamed from: c */
        ConstraintSet f1915c = null;

        /* renamed from: d */
        ConstraintSet f1916d = null;

        /* renamed from: e */
        int f1917e;

        /* renamed from: f */
        int f1918f;

        Model() {
        }

        /* renamed from: i */
        private void m20688i(ConstraintWidgetContainer constraintWidgetContainer, ConstraintSet constraintSet) {
            SparseArray<ConstraintWidget> sparseArray = new SparseArray<>();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, constraintWidgetContainer);
            sparseArray.put(MotionLayout.this.getId(), constraintWidgetContainer);
            Iterator<ConstraintWidget> it = constraintWidgetContainer.m20168e1().iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                sparseArray.put(((View) next.m20315t()).getId(), next);
            }
            Iterator<ConstraintWidget> it2 = constraintWidgetContainer.m20168e1().iterator();
            while (it2.hasNext()) {
                ConstraintWidget next2 = it2.next();
                View view = (View) next2.m20315t();
                constraintSet.m20007g(view.getId(), layoutParams);
                next2.m20347Y0(constraintSet.m19992v(view.getId()));
                next2.m20302z0(constraintSet.m19997q(view.getId()));
                if (view instanceof ConstraintHelper) {
                    constraintSet.m20009e((ConstraintHelper) view, next2, layoutParams, sparseArray);
                    if (view instanceof Barrier) {
                        ((Barrier) view).m20051u();
                    }
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    layoutParams.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
                } else {
                    layoutParams.resolveLayoutDirection(0);
                }
                MotionLayout.this.m20048c(false, view, next2, layoutParams, sparseArray);
                if (constraintSet.m19993u(view.getId()) == 1) {
                    next2.m20349X0(view.getVisibility());
                } else {
                    next2.m20349X0(constraintSet.m19994t(view.getId()));
                }
            }
            Iterator<ConstraintWidget> it3 = constraintWidgetContainer.m20168e1().iterator();
            while (it3.hasNext()) {
                ConstraintWidget next3 = it3.next();
                if (next3 instanceof VirtualLayout) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) next3.m20315t();
                    Helper helper = (Helper) next3;
                    constraintHelper.m20053s(constraintWidgetContainer, helper, sparseArray);
                    ((VirtualLayout) helper).m20188h1();
                }
            }
        }

        /* renamed from: a */
        public void m20696a() {
            int childCount = MotionLayout.this.getChildCount();
            MotionLayout.this.f1845H.clear();
            for (int i = 0; i < childCount; i++) {
                View childAt = MotionLayout.this.getChildAt(i);
                MotionLayout.this.f1845H.put(childAt, new MotionController(childAt));
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt2 = MotionLayout.this.getChildAt(i2);
                MotionController motionController = MotionLayout.this.f1845H.get(childAt2);
                if (motionController != null) {
                    if (this.f1915c != null) {
                        ConstraintWidget c = m20694c(this.f1913a, childAt2);
                        if (c != null) {
                            motionController.m20763t(c, this.f1915c);
                        } else if (MotionLayout.this.f1859T != 0) {
                            Log.e("MotionLayout", Debug.m20943a() + "no widget for  " + Debug.m20941c(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                    if (this.f1916d != null) {
                        ConstraintWidget c2 = m20694c(this.f1914b, childAt2);
                        if (c2 != null) {
                            motionController.m20766q(c2, this.f1916d);
                        } else if (MotionLayout.this.f1859T != 0) {
                            Log.e("MotionLayout", Debug.m20943a() + "no widget for  " + Debug.m20941c(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                }
            }
        }

        /* renamed from: b */
        void m20695b(ConstraintWidgetContainer constraintWidgetContainer, ConstraintWidgetContainer constraintWidgetContainer2) {
            ArrayList<ConstraintWidget> e1 = constraintWidgetContainer.m20168e1();
            HashMap<ConstraintWidget, ConstraintWidget> hashMap = new HashMap<>();
            hashMap.put(constraintWidgetContainer, constraintWidgetContainer2);
            constraintWidgetContainer2.m20168e1().clear();
            constraintWidgetContainer2.mo20194m(constraintWidgetContainer, hashMap);
            Iterator<ConstraintWidget> it = e1.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                ConstraintWidget barrier = next instanceof androidx.constraintlayout.solver.widgets.Barrier ? new androidx.constraintlayout.solver.widgets.Barrier() : next instanceof Guideline ? new Guideline() : next instanceof Flow ? new Flow() : next instanceof Helper ? new HelperWidget() : new ConstraintWidget();
                constraintWidgetContainer2.m20169a(barrier);
                hashMap.put(next, barrier);
            }
            Iterator<ConstraintWidget> it2 = e1.iterator();
            while (it2.hasNext()) {
                ConstraintWidget next2 = it2.next();
                hashMap.get(next2).mo20194m(next2, hashMap);
            }
        }

        /* renamed from: c */
        ConstraintWidget m20694c(ConstraintWidgetContainer constraintWidgetContainer, View view) {
            if (constraintWidgetContainer.m20315t() == view) {
                return constraintWidgetContainer;
            }
            ArrayList<ConstraintWidget> e1 = constraintWidgetContainer.m20168e1();
            int size = e1.size();
            for (int i = 0; i < size; i++) {
                ConstraintWidget constraintWidget = e1.get(i);
                if (constraintWidget.m20315t() == view) {
                    return constraintWidget;
                }
            }
            return null;
        }

        /* renamed from: d */
        void m20693d(ConstraintWidgetContainer constraintWidgetContainer, ConstraintSet constraintSet, ConstraintSet constraintSet2) {
            this.f1915c = constraintSet;
            this.f1916d = constraintSet2;
            this.f1913a = new ConstraintWidgetContainer();
            this.f1914b = new ConstraintWidgetContainer();
            this.f1913a.m20293I1(((ConstraintLayout) MotionLayout.this).f2506h.m20274v1());
            this.f1914b.m20293I1(((ConstraintLayout) MotionLayout.this).f2506h.m20274v1());
            this.f1913a.m20165h1();
            this.f1914b.m20165h1();
            m20695b(((ConstraintLayout) MotionLayout.this).f2506h, this.f1913a);
            m20695b(((ConstraintLayout) MotionLayout.this).f2506h, this.f1914b);
            if (MotionLayout.this.f1851L > 0.5d) {
                if (constraintSet != null) {
                    m20688i(this.f1913a, constraintSet);
                }
                m20688i(this.f1914b, constraintSet2);
            } else {
                m20688i(this.f1914b, constraintSet2);
                if (constraintSet != null) {
                    m20688i(this.f1913a, constraintSet);
                }
            }
            this.f1913a.m20291K1(MotionLayout.this.m20040q());
            this.f1913a.m20289M1();
            this.f1914b.m20291K1(MotionLayout.this.m20040q());
            this.f1914b.m20289M1();
            ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    this.f1913a.m20389D0(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
                    this.f1914b.m20389D0(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
                }
                if (layoutParams.height == -2) {
                    this.f1913a.m20355U0(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
                    this.f1914b.m20355U0(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
                }
            }
        }

        /* renamed from: e */
        public boolean m20692e(int i, int i2) {
            return (i == this.f1917e && i2 == this.f1918f) ? false : true;
        }

        /* renamed from: f */
        public void m20691f(int i, int i2) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            MotionLayout motionLayout = MotionLayout.this;
            motionLayout.f1886x0 = mode;
            motionLayout.f1888y0 = mode2;
            int optimizationLevel = motionLayout.getOptimizationLevel();
            MotionLayout motionLayout2 = MotionLayout.this;
            if (motionLayout2.f1835C == motionLayout2.getStartState()) {
                MotionLayout.this.m20036u(this.f1914b, optimizationLevel, i, i2);
                if (this.f1915c != null) {
                    MotionLayout.this.m20036u(this.f1913a, optimizationLevel, i, i2);
                }
            } else {
                if (this.f1915c != null) {
                    MotionLayout.this.m20036u(this.f1913a, optimizationLevel, i, i2);
                }
                MotionLayout.this.m20036u(this.f1914b, optimizationLevel, i, i2);
            }
            if (((MotionLayout.this.getParent() instanceof MotionLayout) && mode == 1073741824 && mode2 == 1073741824) ? false : true) {
                MotionLayout motionLayout3 = MotionLayout.this;
                motionLayout3.f1886x0 = mode;
                motionLayout3.f1888y0 = mode2;
                if (motionLayout3.f1835C == motionLayout3.getStartState()) {
                    MotionLayout.this.m20036u(this.f1914b, optimizationLevel, i, i2);
                    if (this.f1915c != null) {
                        MotionLayout.this.m20036u(this.f1913a, optimizationLevel, i, i2);
                    }
                } else {
                    if (this.f1915c != null) {
                        MotionLayout.this.m20036u(this.f1913a, optimizationLevel, i, i2);
                    }
                    MotionLayout.this.m20036u(this.f1914b, optimizationLevel, i, i2);
                }
                MotionLayout.this.f1882t0 = this.f1913a.m20356U();
                MotionLayout.this.f1883u0 = this.f1913a.m20305y();
                MotionLayout.this.f1884v0 = this.f1914b.m20356U();
                MotionLayout.this.f1885w0 = this.f1914b.m20305y();
                MotionLayout motionLayout4 = MotionLayout.this;
                motionLayout4.f1881s0 = (motionLayout4.f1882t0 == motionLayout4.f1884v0 && motionLayout4.f1883u0 == motionLayout4.f1885w0) ? false : true;
            }
            MotionLayout motionLayout5 = MotionLayout.this;
            int i3 = motionLayout5.f1882t0;
            int i4 = motionLayout5.f1883u0;
            int i5 = motionLayout5.f1886x0;
            if (i5 == Integer.MIN_VALUE || i5 == 0) {
                MotionLayout motionLayout6 = MotionLayout.this;
                int i6 = motionLayout6.f1882t0;
                i3 = (int) (i6 + (motionLayout6.f1890z0 * (motionLayout6.f1884v0 - i6)));
            }
            int i7 = MotionLayout.this.f1888y0;
            if (i7 == Integer.MIN_VALUE || i7 == 0) {
                MotionLayout motionLayout7 = MotionLayout.this;
                int i8 = motionLayout7.f1883u0;
                i4 = (int) (i8 + (motionLayout7.f1890z0 * (motionLayout7.f1885w0 - i8)));
            }
            MotionLayout.this.m20037t(i, i2, i3, i4, this.f1913a.m20298D1() || this.f1914b.m20298D1(), this.f1913a.m20300B1() || this.f1914b.m20300B1());
        }

        /* renamed from: g */
        public void m20690g() {
            m20691f(MotionLayout.this.f1839E, MotionLayout.this.f1841F);
            MotionLayout.this.m20719n0();
        }

        /* renamed from: h */
        public void m20689h(int i, int i2) {
            this.f1917e = i;
            this.f1918f = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$MotionTracker.class */
    public interface MotionTracker {
        /* renamed from: a */
        void mo20687a();

        /* renamed from: b */
        void mo20686b(MotionEvent motionEvent);

        /* renamed from: c */
        float mo20685c();

        /* renamed from: d */
        float mo20684d();

        /* renamed from: e */
        void mo20683e(int i);
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$MyTracker.class */
    private static class MyTracker implements MotionTracker {

        /* renamed from: b */
        private static MyTracker f1920b = new MyTracker();

        /* renamed from: a */
        VelocityTracker f1921a;

        private MyTracker() {
        }

        /* renamed from: f */
        public static MyTracker m20682f() {
            f1920b.f1921a = VelocityTracker.obtain();
            return f1920b;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        /* renamed from: a */
        public void mo20687a() {
            this.f1921a.recycle();
            this.f1921a = null;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        /* renamed from: b */
        public void mo20686b(MotionEvent motionEvent) {
            VelocityTracker velocityTracker = this.f1921a;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        /* renamed from: c */
        public float mo20685c() {
            return this.f1921a.getYVelocity();
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        /* renamed from: d */
        public float mo20684d() {
            return this.f1921a.getXVelocity();
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        /* renamed from: e */
        public void mo20683e(int i) {
            this.f1921a.computeCurrentVelocity(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$StateCache.class */
    public class StateCache {

        /* renamed from: a */
        float f1922a = Float.NaN;

        /* renamed from: b */
        float f1923b = Float.NaN;

        /* renamed from: c */
        int f1924c = -1;

        /* renamed from: d */
        int f1925d = -1;

        StateCache() {
        }

        /* renamed from: a */
        void m20681a() {
            if (!(this.f1924c == -1 && this.f1925d == -1)) {
                int i = this.f1924c;
                if (i == -1) {
                    MotionLayout.this.m20715r0(this.f1925d);
                } else {
                    int i2 = this.f1925d;
                    if (i2 == -1) {
                        MotionLayout.this.setState(i, -1, -1);
                    } else {
                        MotionLayout.this.setTransition(i, i2);
                    }
                }
                MotionLayout.this.setState(TransitionState.SETUP);
            }
            if (!Float.isNaN(this.f1923b)) {
                MotionLayout.this.setProgress(this.f1922a, this.f1923b);
                this.f1922a = Float.NaN;
                this.f1923b = Float.NaN;
                this.f1924c = -1;
                this.f1925d = -1;
            } else if (!Float.isNaN(this.f1922a)) {
                MotionLayout.this.setProgress(this.f1922a);
            }
        }

        /* renamed from: b */
        public Bundle m20680b() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.f1922a);
            bundle.putFloat("motion.velocity", this.f1923b);
            bundle.putInt("motion.StartState", this.f1924c);
            bundle.putInt("motion.EndState", this.f1925d);
            return bundle;
        }

        /* renamed from: c */
        public void m20679c() {
            this.f1925d = MotionLayout.this.f1837D;
            this.f1924c = MotionLayout.this.f1833B;
            this.f1923b = MotionLayout.this.getVelocity();
            this.f1922a = MotionLayout.this.getProgress();
        }

        /* renamed from: d */
        public void m20678d(int i) {
            this.f1925d = i;
        }

        /* renamed from: e */
        public void m20677e(float f) {
            this.f1922a = f;
        }

        /* renamed from: f */
        public void m20676f(int i) {
            this.f1924c = i;
        }

        /* renamed from: g */
        public void m20675g(Bundle bundle) {
            this.f1922a = bundle.getFloat("motion.progress");
            this.f1923b = bundle.getFloat("motion.velocity");
            this.f1924c = bundle.getInt("motion.StartState");
            this.f1925d = bundle.getInt("motion.EndState");
        }

        /* renamed from: h */
        public void m20674h(float f) {
            this.f1923b = f;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$TransitionListener.class */
    public interface TransitionListener {
        /* renamed from: a */
        void mo20534a(MotionLayout motionLayout, int i, int i2, float f);

        /* renamed from: b */
        void mo20533b(MotionLayout motionLayout, int i, int i2);

        /* renamed from: c */
        void mo20532c(MotionLayout motionLayout, int i, boolean z, float f);

        /* renamed from: d */
        void mo20531d(MotionLayout motionLayout, int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$TransitionState.class */
    public enum TransitionState {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    public MotionLayout(@NonNull Context context) {
        super(context);
        m20725h0(null);
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        m20725h0(attributeSet);
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m20725h0(attributeSet);
    }

    /* renamed from: U */
    private void m20738U() {
        MotionScene motionScene = this.f1887y;
        if (motionScene == null) {
            Log.e("MotionLayout", "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            return;
        }
        int x = motionScene.m20617x();
        MotionScene motionScene2 = this.f1887y;
        m20737V(x, motionScene2.m20632i(motionScene2.m20617x()));
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        Iterator<MotionScene.Transition> it = this.f1887y.m20629l().iterator();
        while (it.hasNext()) {
            MotionScene.Transition next = it.next();
            if (next == this.f1887y.f1944c) {
                Log.v("MotionLayout", "CHECK: CURRENT");
            }
            m20736W(next);
            int B = next.m20613B();
            int z = next.m20583z();
            String b = Debug.m20942b(getContext(), B);
            String b2 = Debug.m20942b(getContext(), z);
            if (sparseIntArray.get(B) == z) {
                Log.e("MotionLayout", "CHECK: two transitions with the same start and end " + b + "->" + b2);
            }
            if (sparseIntArray2.get(z) == B) {
                Log.e("MotionLayout", "CHECK: you can't have reverse transitions" + b + "->" + b2);
            }
            sparseIntArray.put(B, z);
            sparseIntArray2.put(z, B);
            if (this.f1887y.m20632i(B) == null) {
                Log.e("MotionLayout", " no such constraintSetStart " + b);
            }
            if (this.f1887y.m20632i(z) == null) {
                Log.e("MotionLayout", " no such constraintSetEnd " + b);
            }
        }
    }

    /* renamed from: V */
    private void m20737V(int i, ConstraintSet constraintSet) {
        String b = Debug.m20942b(getContext(), i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            if (id == -1) {
                Log.w("MotionLayout", "CHECK: " + b + " ALL VIEWS SHOULD HAVE ID's " + childAt.getClass().getName() + " does not!");
            }
            if (constraintSet.m19998p(id) == null) {
                Log.w("MotionLayout", "CHECK: " + b + " NO CONSTRAINTS for " + Debug.m20941c(childAt));
            }
        }
        int[] r = constraintSet.m19996r();
        for (int i3 = 0; i3 < r.length; i3++) {
            int i4 = r[i3];
            String b2 = Debug.m20942b(getContext(), i4);
            if (findViewById(r[i3]) == null) {
                Log.w("MotionLayout", "CHECK: " + b + " NO View matches id " + b2);
            }
            if (constraintSet.m19997q(i4) == -1) {
                Log.w("MotionLayout", "CHECK: " + b + "(" + b2 + ") no LAYOUT_HEIGHT");
            }
            if (constraintSet.m19992v(i4) == -1) {
                Log.w("MotionLayout", "CHECK: " + b + "(" + b2 + ") no LAYOUT_HEIGHT");
            }
        }
    }

    /* renamed from: W */
    private void m20736W(MotionScene.Transition transition) {
        Log.v("MotionLayout", "CHECK: transition = " + transition.m20588u(getContext()));
        Log.v("MotionLayout", "CHECK: transition.setDuration = " + transition.m20584y());
        if (transition.m20613B() == transition.m20583z()) {
            Log.e("MotionLayout", "CHECK: start and end constraint set should not be the same!");
        }
    }

    /* renamed from: X */
    private void m20735X() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            MotionController motionController = this.f1845H.get(childAt);
            if (motionController != null) {
                motionController.m20764s(childAt);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e7, code lost:
        if (r11 <= r7.f1853N) goto L_0x00ea;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* renamed from: Z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m20733Z() {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.m20733Z():void");
    }

    /* renamed from: a0 */
    private void m20732a0() {
        ArrayList<TransitionListener> arrayList;
        if ((this.f1856Q != null || ((arrayList = this.f1875m0) != null && !arrayList.isEmpty())) && this.f1880r0 != this.f1850K) {
            if (this.f1879q0 != -1) {
                TransitionListener transitionListener = this.f1856Q;
                if (transitionListener != null) {
                    transitionListener.mo20533b(this, this.f1833B, this.f1837D);
                }
                ArrayList<TransitionListener> arrayList2 = this.f1875m0;
                if (arrayList2 != null) {
                    Iterator<TransitionListener> it = arrayList2.iterator();
                    while (it.hasNext()) {
                        it.next().mo20533b(this, this.f1833B, this.f1837D);
                    }
                }
            }
            this.f1879q0 = -1;
            float f = this.f1850K;
            this.f1880r0 = f;
            TransitionListener transitionListener2 = this.f1856Q;
            if (transitionListener2 != null) {
                transitionListener2.mo20534a(this, this.f1833B, this.f1837D, f);
            }
            ArrayList<TransitionListener> arrayList3 = this.f1875m0;
            if (arrayList3 != null) {
                Iterator<TransitionListener> it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    it2.next().mo20534a(this, this.f1833B, this.f1837D, this.f1850K);
                }
            }
        }
    }

    /* renamed from: g0 */
    private boolean m20726g0(float f, float f2, View view, MotionEvent motionEvent) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (m20726g0(view.getLeft() + f, view.getTop() + f2, viewGroup.getChildAt(i), motionEvent)) {
                    return true;
                }
            }
        }
        this.f1844G0.set(view.getLeft() + f, view.getTop() + f2, f + view.getRight(), f2 + view.getBottom());
        return motionEvent.getAction() == 0 ? this.f1844G0.contains(motionEvent.getX(), motionEvent.getY()) && view.onTouchEvent(motionEvent) : view.onTouchEvent(motionEvent);
    }

    /* renamed from: h0 */
    private void m20725h0(AttributeSet attributeSet) {
        MotionScene motionScene;
        f1830J0 = isInEditMode();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0178R.styleable.MotionLayout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            boolean z = true;
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.MotionLayout_layoutDescription) {
                    this.f1887y = new MotionScene(getContext(), this, obtainStyledAttributes.getResourceId(index, -1));
                    z = z;
                } else if (index == C0178R.styleable.MotionLayout_currentState) {
                    this.f1835C = obtainStyledAttributes.getResourceId(index, -1);
                    z = z;
                } else if (index == C0178R.styleable.MotionLayout_motionProgress) {
                    this.f1853N = obtainStyledAttributes.getFloat(index, 0.0f);
                    this.f1855P = true;
                    z = z;
                } else if (index == C0178R.styleable.MotionLayout_applyMotionScene) {
                    z = obtainStyledAttributes.getBoolean(index, z);
                } else if (index == C0178R.styleable.MotionLayout_showPaths) {
                    z = z;
                    if (this.f1859T == 0) {
                        this.f1859T = obtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                        z = z;
                    }
                } else {
                    z = z;
                    if (index == C0178R.styleable.MotionLayout_motionDebug) {
                        this.f1859T = obtainStyledAttributes.getInt(index, 0);
                        z = z;
                    }
                }
            }
            obtainStyledAttributes.recycle();
            if (this.f1887y == null) {
                Log.e("MotionLayout", "WARNING NO app:layoutDescription tag");
            }
            if (!z) {
                this.f1887y = null;
            }
        }
        if (this.f1859T != 0) {
            m20738U();
        }
        if (this.f1835C == -1 && (motionScene = this.f1887y) != null) {
            this.f1835C = motionScene.m20617x();
            this.f1833B = this.f1887y.m20617x();
            this.f1837D = this.f1887y.m20627n();
        }
    }

    /* renamed from: l0 */
    private void m20721l0() {
        ArrayList<TransitionListener> arrayList;
        if (this.f1856Q != null || ((arrayList = this.f1875m0) != null && !arrayList.isEmpty())) {
            Iterator<Integer> it = this.f1848I0.iterator();
            while (it.hasNext()) {
                Integer next = it.next();
                TransitionListener transitionListener = this.f1856Q;
                if (transitionListener != null) {
                    transitionListener.mo20531d(this, next.intValue());
                }
                ArrayList<TransitionListener> arrayList2 = this.f1875m0;
                if (arrayList2 != null) {
                    Iterator<TransitionListener> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        it2.next().mo20531d(this, next.intValue());
                    }
                }
            }
            this.f1848I0.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n0 */
    public void m20719n0() {
        int childCount = getChildCount();
        this.f1840E0.m20696a();
        boolean z = true;
        this.f1855P = true;
        int width = getWidth();
        int height = getHeight();
        int h = this.f1887y.m20633h();
        if (h != -1) {
            for (int i = 0; i < childCount; i++) {
                MotionController motionController = this.f1845H.get(getChildAt(i));
                if (motionController != null) {
                    motionController.m20765r(h);
                }
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            MotionController motionController2 = this.f1845H.get(getChildAt(i2));
            if (motionController2 != null) {
                this.f1887y.m20624q(motionController2);
                motionController2.m20761v(width, height, this.f1849J, getNanoTime());
            }
        }
        float w = this.f1887y.m20618w();
        if (w != 0.0f) {
            boolean z2 = ((double) w) < 0.0d;
            float abs = Math.abs(w);
            float f = -3.4028235E38f;
            float f2 = Float.MAX_VALUE;
            int i3 = 0;
            float f3 = Float.MAX_VALUE;
            float f4 = -3.4028235E38f;
            while (true) {
                if (i3 >= childCount) {
                    z = false;
                    break;
                }
                MotionController motionController3 = this.f1845H.get(getChildAt(i3));
                if (!Float.isNaN(motionController3.f1809j)) {
                    break;
                }
                float i4 = motionController3.m20774i();
                float j = motionController3.m20773j();
                float f5 = z2 ? j - i4 : j + i4;
                f3 = Math.min(f3, f5);
                f4 = Math.max(f4, f5);
                i3++;
            }
            if (z) {
                for (int i5 = 0; i5 < childCount; i5++) {
                    MotionController motionController4 = this.f1845H.get(getChildAt(i5));
                    f = f;
                    f2 = f2;
                    if (!Float.isNaN(motionController4.f1809j)) {
                        f2 = Math.min(f2, motionController4.f1809j);
                        f = Math.max(f, motionController4.f1809j);
                    }
                }
                for (int i6 = 0; i6 < childCount; i6++) {
                    MotionController motionController5 = this.f1845H.get(getChildAt(i6));
                    if (!Float.isNaN(motionController5.f1809j)) {
                        motionController5.f1811l = 1.0f / (1.0f - abs);
                        if (z2) {
                            motionController5.f1810k = abs - (((f - motionController5.f1809j) / (f - f2)) * abs);
                        } else {
                            motionController5.f1810k = abs - (((motionController5.f1809j - f2) * abs) / (f - f2));
                        }
                    }
                }
                return;
            }
            for (int i7 = 0; i7 < childCount; i7++) {
                MotionController motionController6 = this.f1845H.get(getChildAt(i7));
                float i8 = motionController6.m20774i();
                float j2 = motionController6.m20773j();
                float f6 = z2 ? j2 - i8 : j2 + i8;
                motionController6.f1811l = 1.0f / (1.0f - abs);
                motionController6.f1810k = abs - (((f6 - f3) * abs) / (f4 - f3));
            }
        }
    }

    /* renamed from: t0 */
    private static boolean m20713t0(float f, float f2, float f3) {
        boolean z = true;
        boolean z2 = true;
        if (f > 0.0f) {
            float f4 = f / f3;
            if (f2 + ((f * f4) - (((f3 * f4) * f4) / 2.0f)) <= 1.0f) {
                z2 = false;
            }
            return z2;
        }
        float f5 = (-f) / f3;
        if (f2 + (f * f5) + (((f3 * f5) * f5) / 2.0f) >= 0.0f) {
            z = false;
        }
        return z;
    }

    /* renamed from: T */
    void m20739T(float f) {
        if (this.f1887y != null) {
            float f2 = this.f1851L;
            float f3 = this.f1850K;
            if (f2 != f3 && this.f1854O) {
                this.f1851L = f3;
            }
            float f4 = this.f1851L;
            if (f4 != f) {
                this.f1861V = false;
                this.f1853N = f;
                this.f1849J = this.f1887y.m20628m() / 1000.0f;
                setProgress(this.f1853N);
                this.f1889z = this.f1887y.m20625p();
                this.f1854O = false;
                this.f1847I = getNanoTime();
                this.f1855P = true;
                this.f1850K = f4;
                this.f1851L = f4;
                invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x03f9, code lost:
        if (r21 == 0.0f) goto L_0x03fc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005a, code lost:
        if (r8.f1853N != r8.f1851L) goto L_0x005d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x022f, code lost:
        if (r10 <= r8.f1853N) goto L_0x0232;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x03f1  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x040f  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0430  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0467  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x027c  */
    /* renamed from: Y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m20734Y(boolean r9) {
        /*
            Method dump skipped, instructions count: 1147
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.m20734Y(boolean):void");
    }

    /* renamed from: b0 */
    protected void m20731b0() {
        int i;
        ArrayList<TransitionListener> arrayList;
        if ((this.f1856Q != null || ((arrayList = this.f1875m0) != null && !arrayList.isEmpty())) && this.f1879q0 == -1) {
            this.f1879q0 = this.f1835C;
            if (!this.f1848I0.isEmpty()) {
                ArrayList<Integer> arrayList2 = this.f1848I0;
                i = arrayList2.get(arrayList2.size() - 1).intValue();
            } else {
                i = -1;
            }
            int i2 = this.f1835C;
            if (!(i == i2 || i2 == -1)) {
                this.f1848I0.add(Integer.valueOf(i2));
            }
        }
        m20721l0();
    }

    /* renamed from: c0 */
    public void m20730c0(int i, boolean z, float f) {
        TransitionListener transitionListener = this.f1856Q;
        if (transitionListener != null) {
            transitionListener.mo20532c(this, i, z, f);
        }
        ArrayList<TransitionListener> arrayList = this.f1875m0;
        if (arrayList != null) {
            Iterator<TransitionListener> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo20532c(this, i, z, f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d0 */
    public void m20729d0(int i, float f, float f2, float f3, float[] fArr) {
        String str;
        HashMap<View, MotionController> hashMap = this.f1845H;
        View h = m20043h(i);
        MotionController motionController = hashMap.get(h);
        if (motionController != null) {
            motionController.m20776g(f, f2, f3, fArr);
            float y = h.getY();
            float f4 = this.f1857R;
            this.f1857R = f;
            this.f1858S = y;
            return;
        }
        if (h == null) {
            str = "" + i;
        } else {
            str = h.getContext().getResources().getResourceName(i);
        }
        Log.w("MotionLayout", "WARNING could not find view id " + str);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        long j;
        m20734Y(false);
        super.dispatchDraw(canvas);
        if (this.f1887y != null) {
            if ((this.f1859T & 1) == 1 && !isInEditMode()) {
                this.f1876n0++;
                long nanoTime = getNanoTime();
                long j2 = this.f1877o0;
                if (j2 != -1) {
                    if (nanoTime - j2 > 200000000) {
                        this.f1878p0 = ((int) ((this.f1876n0 / (((float) j) * 1.0E-9f)) * 100.0f)) / 100.0f;
                        this.f1876n0 = 0;
                        this.f1877o0 = nanoTime;
                    }
                } else {
                    this.f1877o0 = nanoTime;
                }
                Paint paint = new Paint();
                paint.setTextSize(42.0f);
                StringBuilder sb = new StringBuilder();
                sb.append(this.f1878p0 + " fps " + Debug.m20940d(this, this.f1833B) + " -> ");
                sb.append(Debug.m20940d(this, this.f1837D));
                sb.append(" (progress: ");
                sb.append(((int) (getProgress() * 1000.0f)) / 10.0f);
                sb.append(" ) state=");
                int i = this.f1835C;
                sb.append(i == -1 ? "undefined" : Debug.m20940d(this, i));
                String sb2 = sb.toString();
                paint.setColor(-16777216);
                canvas.drawText(sb2, 11.0f, getHeight() - 29, paint);
                paint.setColor(-7864184);
                canvas.drawText(sb2, 10.0f, getHeight() - 30, paint);
            }
            if (this.f1859T > 1) {
                if (this.f1860U == null) {
                    this.f1860U = new DevModeDraw();
                }
                this.f1860U.m20708a(canvas, this.f1845H, this.f1887y.m20628m(), this.f1859T);
            }
        }
    }

    /* renamed from: e0 */
    public MotionScene.Transition m20728e0(int i) {
        return this.f1887y.m20616y(i);
    }

    /* renamed from: f0 */
    public void m20727f0(View view, float f, float f2, float[] fArr, int i) {
        float f3 = this.f1831A;
        float f4 = this.f1851L;
        if (this.f1889z != null) {
            float signum = Math.signum(this.f1853N - f4);
            float interpolation = this.f1889z.getInterpolation(this.f1851L + 1.0E-5f);
            f4 = this.f1889z.getInterpolation(this.f1851L);
            f3 = (signum * ((interpolation - f4) / 1.0E-5f)) / this.f1849J;
        }
        Interpolator interpolator = this.f1889z;
        if (interpolator instanceof MotionInterpolator) {
            f3 = ((MotionInterpolator) interpolator).mo20710a();
        }
        MotionController motionController = this.f1845H.get(view);
        if ((i & 1) == 0) {
            motionController.m20771l(f4, view.getWidth(), view.getHeight(), f, f2, fArr);
        } else {
            motionController.m20776g(f4, f, f2, fArr);
        }
        if (i < 2) {
            fArr[0] = fArr[0] * f3;
            fArr[1] = fArr[1] * f3;
        }
    }

    public int[] getConstraintSetIds() {
        MotionScene motionScene = this.f1887y;
        if (motionScene == null) {
            return null;
        }
        return motionScene.m20630k();
    }

    public int getCurrentState() {
        return this.f1835C;
    }

    public ArrayList<MotionScene.Transition> getDefinedTransitions() {
        MotionScene motionScene = this.f1887y;
        if (motionScene == null) {
            return null;
        }
        return motionScene.m20629l();
    }

    public DesignTool getDesignTool() {
        if (this.f1864b0 == null) {
            this.f1864b0 = new DesignTool(this);
        }
        return this.f1864b0;
    }

    public int getEndState() {
        return this.f1837D;
    }

    protected long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.f1851L;
    }

    public int getStartState() {
        return this.f1833B;
    }

    public float getTargetPosition() {
        return this.f1853N;
    }

    public Bundle getTransitionState() {
        if (this.f1836C0 == null) {
            this.f1836C0 = new StateCache();
        }
        this.f1836C0.m20679c();
        return this.f1836C0.m20680b();
    }

    public long getTransitionTimeMs() {
        MotionScene motionScene = this.f1887y;
        if (motionScene != null) {
            this.f1849J = motionScene.m20628m() / 1000.0f;
        }
        return this.f1849J * 1000.0f;
    }

    public float getVelocity() {
        return this.f1831A;
    }

    @Override // androidx.core.view.NestedScrollingParent3
    /* renamed from: i */
    public void mo18867i(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (!(!this.f1867e0 && i == 0 && i2 == 0)) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
        }
        this.f1867e0 = false;
    }

    /* renamed from: i0 */
    public boolean m20724i0() {
        return this.f1843G;
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        if (Build.VERSION.SDK_INT >= 19) {
            return super.isAttachedToWindow();
        }
        return getWindowToken() != null;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: j */
    public void mo18866j(View view, int i, int i2, int i3, int i4, int i5) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: j0 */
    public MotionTracker m20723j0() {
        return MyTracker.m20682f();
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: k */
    public boolean mo18865k(View view, View view2, int i, int i2) {
        MotionScene.Transition transition;
        MotionScene motionScene = this.f1887y;
        return (motionScene == null || (transition = motionScene.f1944c) == null || transition.m20612C() == null || (this.f1887y.f1944c.m20612C().m20549d() & 2) != 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k0 */
    public void m20722k0() {
        MotionScene motionScene = this.f1887y;
        if (motionScene != null) {
            if (motionScene.m20635f(this, this.f1835C)) {
                requestLayout();
                return;
            }
            int i = this.f1835C;
            if (i != -1) {
                this.f1887y.m20636e(this, i);
            }
            if (this.f1887y.m20641Q()) {
                this.f1887y.m20643O();
            }
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: l */
    public void mo18864l(View view, View view2, int i, int i2) {
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: m */
    public void mo18863m(View view, int i) {
        MotionScene motionScene = this.f1887y;
        if (motionScene != null) {
            float f = this.f1868f0;
            float f2 = this.f1871i0;
            motionScene.m20651G(f / f2, this.f1869g0 / f2);
        }
    }

    /* renamed from: m0 */
    public void m20720m0() {
        this.f1840E0.m20690g();
        invalidate();
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: n */
    public void mo18862n(final View view, int i, int i2, int[] iArr, int i3) {
        MotionScene.Transition transition;
        TouchResponse C;
        int k;
        MotionScene motionScene = this.f1887y;
        if (motionScene != null && (transition = motionScene.f1944c) != null && transition.m20611D()) {
            MotionScene.Transition transition2 = this.f1887y.f1944c;
            if (transition2 == null || !transition2.m20611D() || (C = transition2.m20612C()) == null || (k = C.m20542k()) == -1 || view.getId() == k) {
                MotionScene motionScene2 = this.f1887y;
                if (motionScene2 != null && motionScene2.m20621t()) {
                    float f = this.f1850K;
                    if ((f == 1.0f || f == 0.0f) && view.canScrollVertically(-1)) {
                        return;
                    }
                }
                if (!(transition2.m20612C() == null || (this.f1887y.f1944c.m20612C().m20549d() & 1) == 0)) {
                    float u = this.f1887y.m20620u(i, i2);
                    if ((this.f1851L <= 0.0f && u < 0.0f) || (this.f1851L >= 1.0f && u > 0.0f)) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            view.setNestedScrollingEnabled(false);
                            view.post(new Runnable(this) { // from class: androidx.constraintlayout.motion.widget.MotionLayout.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    view.setNestedScrollingEnabled(true);
                                }
                            });
                            return;
                        }
                        return;
                    }
                }
                float f2 = this.f1850K;
                long nanoTime = getNanoTime();
                float f3 = i;
                this.f1868f0 = f3;
                float f4 = i2;
                this.f1869g0 = f4;
                this.f1871i0 = (float) ((nanoTime - this.f1870h0) * 1.0E-9d);
                this.f1870h0 = nanoTime;
                this.f1887y.m20652F(f3, f4);
                if (f2 != this.f1850K) {
                    iArr[0] = i;
                    iArr[1] = i2;
                }
                m20734Y(false);
                if (iArr[0] != 0 || iArr[1] != 0) {
                    this.f1867e0 = true;
                }
            }
        }
    }

    /* renamed from: o0 */
    public void m20718o0(int i, float f, float f2) {
        if (this.f1887y != null && this.f1851L != f) {
            this.f1861V = true;
            this.f1847I = getNanoTime();
            this.f1849J = this.f1887y.m20628m() / 1000.0f;
            this.f1853N = f;
            this.f1855P = true;
            if (i == 0 || i == 1 || i == 2) {
                if (i == 1) {
                    f = 0.0f;
                } else if (i == 2) {
                    f = 1.0f;
                }
                this.f1862W.m20954c(this.f1851L, f, f2, this.f1849J, this.f1887y.m20623r(), this.f1887y.m20622s());
                int i2 = this.f1835C;
                this.f1853N = f;
                this.f1835C = i2;
                this.f1889z = this.f1862W;
            } else if (i == 4) {
                this.f1863a0.m20709b(f2, this.f1851L, this.f1887y.m20623r());
                this.f1889z = this.f1863a0;
            } else if (i == 5) {
                if (m20713t0(f2, this.f1851L, this.f1887y.m20623r())) {
                    this.f1863a0.m20709b(f2, this.f1851L, this.f1887y.m20623r());
                    this.f1889z = this.f1863a0;
                } else {
                    this.f1862W.m20954c(this.f1851L, f, f2, this.f1849J, this.f1887y.m20623r(), this.f1887y.m20622s());
                    this.f1831A = 0.0f;
                    int i3 = this.f1835C;
                    this.f1853N = f;
                    this.f1835C = i3;
                    this.f1889z = this.f1862W;
                }
            }
            this.f1854O = false;
            this.f1847I = getNanoTime();
            invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        int i;
        super.onAttachedToWindow();
        MotionScene motionScene = this.f1887y;
        if (!(motionScene == null || (i = this.f1835C) == -1)) {
            ConstraintSet i2 = motionScene.m20632i(i);
            this.f1887y.m20648J(this);
            if (i2 != null) {
                i2.m20010d(this);
            }
            this.f1833B = this.f1835C;
        }
        m20722k0();
        StateCache stateCache = this.f1836C0;
        if (stateCache != null) {
            stateCache.m20681a();
        } else if (this.f1887y.f1944c.m20585x() == 4) {
            m20717p0();
            setState(TransitionState.SETUP);
            setState(TransitionState.MOVING);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        MotionScene.Transition transition;
        TouchResponse C;
        int k;
        RectF j;
        MotionScene motionScene = this.f1887y;
        if (motionScene == null || !this.f1843G || (transition = motionScene.f1944c) == null || !transition.m20611D() || (C = transition.m20612C()) == null) {
            return false;
        }
        if ((motionEvent.getAction() == 0 && (j = C.m20543j(this, new RectF())) != null && !j.contains(motionEvent.getX(), motionEvent.getY())) || (k = C.m20542k()) == -1) {
            return false;
        }
        View view = this.f1846H0;
        if (view == null || view.getId() != k) {
            this.f1846H0 = findViewById(k);
        }
        View view2 = this.f1846H0;
        if (view2 == null) {
            return false;
        }
        this.f1844G0.set(view2.getLeft(), this.f1846H0.getTop(), this.f1846H0.getRight(), this.f1846H0.getBottom());
        if (!this.f1844G0.contains(motionEvent.getX(), motionEvent.getY()) || m20726g0(0.0f, 0.0f, this.f1846H0, motionEvent)) {
            return false;
        }
        return onTouchEvent(motionEvent);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f1834B0 = true;
        try {
            if (this.f1887y == null) {
                super.onLayout(z, i, i2, i3, i4);
                return;
            }
            int i5 = i3 - i;
            int i6 = i4 - i2;
            if (!(this.f1865c0 == i5 && this.f1866d0 == i6)) {
                m20720m0();
                m20734Y(true);
            }
            this.f1865c0 = i5;
            this.f1866d0 = i6;
        } finally {
            this.f1834B0 = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f1887y == null) {
            super.onMeasure(i, i2);
            return;
        }
        boolean z = false;
        boolean z2 = (this.f1839E == i && this.f1841F == i2) ? false : true;
        if (this.f1842F0) {
            this.f1842F0 = false;
            m20722k0();
            m20721l0();
            z2 = true;
        }
        if (this.f2511m) {
            z2 = true;
        }
        this.f1839E = i;
        this.f1841F = i2;
        int x = this.f1887y.m20617x();
        int n = this.f1887y.m20627n();
        if ((z2 || this.f1840E0.m20692e(x, n)) && this.f1833B != -1) {
            super.onMeasure(i, i2);
            this.f1840E0.m20693d(this.f2506h, this.f1887y.m20632i(x), this.f1887y.m20632i(n));
            this.f1840E0.m20690g();
            this.f1840E0.m20689h(x, n);
        } else {
            z = true;
        }
        if (this.f1881s0 || z) {
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int U = this.f2506h.m20356U() + getPaddingLeft() + getPaddingRight();
            int y = this.f2506h.m20305y() + paddingTop + paddingBottom;
            int i3 = this.f1886x0;
            if (i3 == Integer.MIN_VALUE || i3 == 0) {
                int i4 = this.f1882t0;
                U = (int) (i4 + (this.f1890z0 * (this.f1884v0 - i4)));
                requestLayout();
            }
            int i5 = this.f1888y0;
            if (i5 == Integer.MIN_VALUE || i5 == 0) {
                int i6 = this.f1883u0;
                y = (int) (i6 + (this.f1890z0 * (this.f1885w0 - i6)));
                requestLayout();
            }
            setMeasuredDimension(U, y);
        }
        m20733Z();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        MotionScene motionScene = this.f1887y;
        if (motionScene != null) {
            motionScene.m20646L(m20040q());
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionScene motionScene = this.f1887y;
        if (motionScene == null || !this.f1843G || !motionScene.m20641Q()) {
            return super.onTouchEvent(motionEvent);
        }
        MotionScene.Transition transition = this.f1887y.f1944c;
        if (transition != null && !transition.m20611D()) {
            return super.onTouchEvent(motionEvent);
        }
        this.f1887y.m20650H(motionEvent, getCurrentState(), this);
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.f1875m0 == null) {
                this.f1875m0 = new ArrayList<>();
            }
            this.f1875m0.add(motionHelper);
            if (motionHelper.m20759w()) {
                if (this.f1873k0 == null) {
                    this.f1873k0 = new ArrayList<>();
                }
                this.f1873k0.add(motionHelper);
            }
            if (motionHelper.m20760v()) {
                if (this.f1874l0 == null) {
                    this.f1874l0 = new ArrayList<>();
                }
                this.f1874l0.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.f1873k0;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.f1874l0;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    /* renamed from: p0 */
    public void m20717p0() {
        m20739T(1.0f);
    }

    /* renamed from: q0 */
    public void m20716q0() {
        m20739T(0.0f);
    }

    /* renamed from: r0 */
    public void m20715r0(int i) {
        if (!isAttachedToWindow()) {
            if (this.f1836C0 == null) {
                this.f1836C0 = new StateCache();
            }
            this.f1836C0.m20678d(i);
            return;
        }
        m20714s0(i, -1, -1);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        MotionScene motionScene;
        MotionScene.Transition transition;
        if (this.f1881s0 || this.f1835C != -1 || (motionScene = this.f1887y) == null || (transition = motionScene.f1944c) == null || transition.m20614A() != 0) {
            super.requestLayout();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    /* renamed from: s */
    protected void mo20038s(int i) {
        this.f2514p = null;
    }

    /* renamed from: s0 */
    public void m20714s0(int i, int i2, int i3) {
        MotionScene motionScene = this.f1887y;
        int i4 = i;
        if (motionScene != null) {
            StateSet stateSet = motionScene.f1943b;
            i4 = i;
            if (stateSet != null) {
                int a = stateSet.m19962a(this.f1835C, i, i2, i3);
                i4 = i;
                if (a != -1) {
                    i4 = a;
                }
            }
        }
        int i5 = this.f1835C;
        if (i5 != i4) {
            if (this.f1833B == i4) {
                m20739T(0.0f);
            } else if (this.f1837D == i4) {
                m20739T(1.0f);
            } else {
                this.f1837D = i4;
                if (i5 != -1) {
                    setTransition(i5, i4);
                    m20739T(1.0f);
                    this.f1851L = 0.0f;
                    m20717p0();
                    return;
                }
                this.f1861V = false;
                this.f1853N = 1.0f;
                this.f1850K = 0.0f;
                this.f1851L = 0.0f;
                this.f1852M = getNanoTime();
                this.f1847I = getNanoTime();
                this.f1854O = false;
                this.f1889z = null;
                this.f1849J = this.f1887y.m20628m() / 1000.0f;
                this.f1833B = -1;
                this.f1887y.m20645M(-1, this.f1837D);
                this.f1887y.m20617x();
                int childCount = getChildCount();
                this.f1845H.clear();
                for (int i6 = 0; i6 < childCount; i6++) {
                    View childAt = getChildAt(i6);
                    this.f1845H.put(childAt, new MotionController(childAt));
                }
                this.f1855P = true;
                this.f1840E0.m20693d(this.f2506h, null, this.f1887y.m20632i(i4));
                m20720m0();
                this.f1840E0.m20696a();
                m20735X();
                int width = getWidth();
                int height = getHeight();
                for (int i7 = 0; i7 < childCount; i7++) {
                    MotionController motionController = this.f1845H.get(getChildAt(i7));
                    this.f1887y.m20624q(motionController);
                    motionController.m20761v(width, height, this.f1849J, getNanoTime());
                }
                float w = this.f1887y.m20618w();
                if (w != 0.0f) {
                    float f = Float.MAX_VALUE;
                    float f2 = -3.4028235E38f;
                    for (int i8 = 0; i8 < childCount; i8++) {
                        MotionController motionController2 = this.f1845H.get(getChildAt(i8));
                        float j = motionController2.m20773j() + motionController2.m20774i();
                        f = Math.min(f, j);
                        f2 = Math.max(f2, j);
                    }
                    for (int i9 = 0; i9 < childCount; i9++) {
                        MotionController motionController3 = this.f1845H.get(getChildAt(i9));
                        float i10 = motionController3.m20774i();
                        float j2 = motionController3.m20773j();
                        motionController3.f1811l = 1.0f / (1.0f - w);
                        motionController3.f1810k = w - ((((i10 + j2) - f) * w) / (f2 - f));
                    }
                }
                this.f1850K = 0.0f;
                this.f1851L = 0.0f;
                this.f1855P = true;
                invalidate();
            }
        }
    }

    public void setDebugMode(int i) {
        this.f1859T = i;
        invalidate();
    }

    public void setInteractionEnabled(boolean z) {
        this.f1843G = z;
    }

    public void setInterpolatedProgress(float f) {
        if (this.f1887y != null) {
            setState(TransitionState.MOVING);
            Interpolator p = this.f1887y.m20625p();
            if (p != null) {
                setProgress(p.getInterpolation(f));
                return;
            }
        }
        setProgress(f);
    }

    public void setOnHide(float f) {
        ArrayList<MotionHelper> arrayList = this.f1874l0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f1874l0.get(i).setProgress(f);
            }
        }
    }

    public void setOnShow(float f) {
        ArrayList<MotionHelper> arrayList = this.f1873k0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f1873k0.get(i).setProgress(f);
            }
        }
    }

    public void setProgress(float f) {
        int i = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
        if (i < 0 || f > 1.0f) {
            Log.w("MotionLayout", "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.f1836C0 == null) {
                this.f1836C0 = new StateCache();
            }
            this.f1836C0.m20677e(f);
            return;
        }
        if (i <= 0) {
            this.f1835C = this.f1833B;
            if (this.f1851L == 0.0f) {
                setState(TransitionState.FINISHED);
            }
        } else if (f >= 1.0f) {
            this.f1835C = this.f1837D;
            if (this.f1851L == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.f1835C = -1;
            setState(TransitionState.MOVING);
        }
        if (this.f1887y != null) {
            this.f1854O = true;
            this.f1853N = f;
            this.f1850K = f;
            this.f1852M = -1L;
            this.f1847I = -1L;
            this.f1889z = null;
            this.f1855P = true;
            invalidate();
        }
    }

    public void setProgress(float f, float f2) {
        if (!isAttachedToWindow()) {
            if (this.f1836C0 == null) {
                this.f1836C0 = new StateCache();
            }
            this.f1836C0.m20677e(f);
            this.f1836C0.m20674h(f2);
            return;
        }
        setProgress(f);
        setState(TransitionState.MOVING);
        this.f1831A = f2;
        m20739T(1.0f);
    }

    public void setScene(MotionScene motionScene) {
        this.f1887y = motionScene;
        motionScene.m20646L(m20040q());
        m20720m0();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int i, int i2, int i3) {
        setState(TransitionState.SETUP);
        this.f1835C = i;
        this.f1833B = -1;
        this.f1837D = -1;
        ConstraintLayoutStates constraintLayoutStates = this.f2514p;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.m20022d(i, i2, i3);
            return;
        }
        MotionScene motionScene = this.f1887y;
        if (motionScene != null) {
            motionScene.m20632i(i).m20010d(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setState(TransitionState transitionState) {
        if (transitionState != TransitionState.FINISHED || this.f1835C != -1) {
            TransitionState transitionState2 = this.f1838D0;
            this.f1838D0 = transitionState;
            TransitionState transitionState3 = TransitionState.MOVING;
            if (transitionState2 == transitionState3 && transitionState == transitionState3) {
                m20732a0();
            }
            int i = C01552.f1892a[transitionState2.ordinal()];
            if (i == 1 || i == 2) {
                if (transitionState == TransitionState.MOVING) {
                    m20732a0();
                }
                if (transitionState == TransitionState.FINISHED) {
                    m20731b0();
                }
            } else if (i == 3 && transitionState == TransitionState.FINISHED) {
                m20731b0();
            }
        }
    }

    public void setTransition(int i) {
        if (this.f1887y != null) {
            MotionScene.Transition e0 = m20728e0(i);
            this.f1833B = e0.m20613B();
            this.f1837D = e0.m20583z();
            if (!isAttachedToWindow()) {
                if (this.f1836C0 == null) {
                    this.f1836C0 = new StateCache();
                }
                this.f1836C0.m20676f(this.f1833B);
                this.f1836C0.m20678d(this.f1837D);
                return;
            }
            float f = Float.NaN;
            int i2 = this.f1835C;
            float f2 = 0.0f;
            if (i2 == this.f1833B) {
                f = 0.0f;
            } else if (i2 == this.f1837D) {
                f = 1.0f;
            }
            this.f1887y.m20644N(e0);
            this.f1840E0.m20693d(this.f2506h, this.f1887y.m20632i(this.f1833B), this.f1887y.m20632i(this.f1837D));
            m20720m0();
            if (!Float.isNaN(f)) {
                f2 = f;
            }
            this.f1851L = f2;
            if (Float.isNaN(f)) {
                Log.v("MotionLayout", Debug.m20943a() + " transitionToStart ");
                m20716q0();
                return;
            }
            setProgress(f);
        }
    }

    public void setTransition(int i, int i2) {
        if (!isAttachedToWindow()) {
            if (this.f1836C0 == null) {
                this.f1836C0 = new StateCache();
            }
            this.f1836C0.m20676f(i);
            this.f1836C0.m20678d(i2);
            return;
        }
        MotionScene motionScene = this.f1887y;
        if (motionScene != null) {
            this.f1833B = i;
            this.f1837D = i2;
            motionScene.m20645M(i, i2);
            this.f1840E0.m20693d(this.f2506h, this.f1887y.m20632i(i), this.f1887y.m20632i(i2));
            m20720m0();
            this.f1851L = 0.0f;
            m20716q0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setTransition(MotionScene.Transition transition) {
        this.f1887y.m20644N(transition);
        setState(TransitionState.SETUP);
        if (this.f1835C == this.f1887y.m20627n()) {
            this.f1851L = 1.0f;
            this.f1850K = 1.0f;
            this.f1853N = 1.0f;
        } else {
            this.f1851L = 0.0f;
            this.f1850K = 0.0f;
            this.f1853N = 0.0f;
        }
        this.f1852M = transition.m20610E(1) ? -1L : getNanoTime();
        int x = this.f1887y.m20617x();
        int n = this.f1887y.m20627n();
        if (x != this.f1833B || n != this.f1837D) {
            this.f1833B = x;
            this.f1837D = n;
            this.f1887y.m20645M(x, n);
            this.f1840E0.m20693d(this.f2506h, this.f1887y.m20632i(this.f1833B), this.f1887y.m20632i(this.f1837D));
            this.f1840E0.m20689h(this.f1833B, this.f1837D);
            this.f1840E0.m20690g();
            m20720m0();
        }
    }

    public void setTransitionDuration(int i) {
        MotionScene motionScene = this.f1887y;
        if (motionScene == null) {
            Log.e("MotionLayout", "MotionScene not defined");
        } else {
            motionScene.m20647K(i);
        }
    }

    public void setTransitionListener(TransitionListener transitionListener) {
        this.f1856Q = transitionListener;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.f1836C0 == null) {
            this.f1836C0 = new StateCache();
        }
        this.f1836C0.m20675g(bundle);
        if (isAttachedToWindow()) {
            this.f1836C0.m20681a();
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return Debug.m20942b(context, this.f1833B) + "->" + Debug.m20942b(context, this.f1837D) + " (pos:" + this.f1851L + " Dpos/Dt:" + this.f1831A;
    }
}
