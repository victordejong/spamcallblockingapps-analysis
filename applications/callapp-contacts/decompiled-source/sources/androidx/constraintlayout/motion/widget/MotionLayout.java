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
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.i;
import androidx.constraintlayout.a.a.j;
import androidx.constraintlayout.a.a.l;
import androidx.constraintlayout.motion.widget.p;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.c;
import androidx.constraintlayout.widget.e;
import androidx.constraintlayout.widget.f;
import androidx.core.view.p;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout.class */
public class MotionLayout extends ConstraintLayout implements p {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f1463a;
    float A;
    int E;
    int F;
    int G;
    int H;
    int I;
    int J;
    float K;
    private long ad;
    private boolean ae;
    private g af;
    private float ag;
    private float ah;
    private f av;

    /* renamed from: b  reason: collision with root package name */
    p f1464b;

    /* renamed from: c  reason: collision with root package name */
    public Interpolator f1465c;
    b q;
    int s;
    int t;
    int u;
    int v;
    float x;
    float y;
    long z;

    /* renamed from: d  reason: collision with root package name */
    public float f1466d = BitmapDescriptorFactory.HUE_RED;
    int e = -1;
    int f = -1;
    int g = -1;
    private int aa = 0;
    private int ab = 0;
    boolean h = true;
    public HashMap<View, m> i = new HashMap<>();
    private long ac = 0;
    public float j = 1.0f;
    float k = BitmapDescriptorFactory.HUE_RED;
    public float l = BitmapDescriptorFactory.HUE_RED;
    public float m = BitmapDescriptorFactory.HUE_RED;
    boolean n = false;
    boolean o = false;
    int p = 0;
    private boolean ai = false;
    private androidx.constraintlayout.motion.a.g aj = new androidx.constraintlayout.motion.a.g();
    private a ak = new a();
    boolean r = true;
    boolean w = false;
    private boolean al = false;
    private ArrayList<MotionHelper> am = null;
    private ArrayList<MotionHelper> an = null;
    ArrayList<g> B = null;
    private int ao = 0;
    private long ap = -1;
    private float aq = BitmapDescriptorFactory.HUE_RED;
    private int ar = 0;
    private float as = BitmapDescriptorFactory.HUE_RED;
    boolean C = false;
    protected boolean D = false;
    private androidx.constraintlayout.motion.widget.d at = new androidx.constraintlayout.motion.widget.d();
    private boolean au = false;
    int L = h.f1488a;
    c M = new c();
    private boolean aw = false;
    private RectF ax = new RectF();
    private View ay = null;
    ArrayList<Integer> N = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$2  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$2.class */
    public static final /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1469a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0032 -> B:19:0x0013). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0036 -> B:17:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003a -> B:15:0x0027). Please submit an issue!!! */
        static {
            int[] iArr = new int[h.a().length];
            f1469a = iArr;
            try {
                iArr[h.f1488a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1469a[h.f1489b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1469a[h.f1490c - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1469a[h.f1491d - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$a.class */
    public final class a extends n {

        /* renamed from: a  reason: collision with root package name */
        float f1470a = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: b  reason: collision with root package name */
        float f1471b = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: c  reason: collision with root package name */
        float f1472c;

        a() {
        }

        @Override // androidx.constraintlayout.motion.widget.n
        public final float a() {
            return MotionLayout.this.f1466d;
        }

        public final void a(float f, float f2, float f3) {
            this.f1470a = f;
            this.f1471b = f2;
            this.f1472c = f3;
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2;
            float f3;
            float f4 = this.f1470a;
            if (f4 > BitmapDescriptorFactory.HUE_RED) {
                float f5 = this.f1472c;
                float f6 = f;
                if (f4 / f5 < f) {
                    f6 = f4 / f5;
                }
                MotionLayout.this.f1466d = f4 - (f5 * f6);
                f2 = (this.f1470a * f6) - (((this.f1472c * f6) * f6) / 2.0f);
                f3 = this.f1471b;
            } else {
                float f7 = -f4;
                float f8 = this.f1472c;
                float f9 = f;
                if (f7 / f8 < f) {
                    f9 = (-f4) / f8;
                }
                MotionLayout.this.f1466d = f4 + (f8 * f9);
                f2 = (this.f1470a * f9) + (((this.f1472c * f9) * f9) / 2.0f);
                f3 = this.f1471b;
            }
            return f2 + f3;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$b.class */
    final class b {

        /* renamed from: a  reason: collision with root package name */
        float[] f1474a;

        /* renamed from: d  reason: collision with root package name */
        Path f1477d;
        Paint e;
        Paint f;
        Paint g;
        Paint h;
        Paint i;
        DashPathEffect o;
        int p;
        int s;
        final int j = -21965;
        final int k = -2067046;
        final int l = -13391360;
        final int m = 1996488704;
        final int n = 10;
        Rect q = new Rect();
        boolean r = false;
        private float[] u = new float[8];

        /* renamed from: c  reason: collision with root package name */
        float[] f1476c = new float[100];

        /* renamed from: b  reason: collision with root package name */
        int[] f1475b = new int[50];

        public b() {
            this.s = 1;
            Paint paint = new Paint();
            this.e = paint;
            paint.setAntiAlias(true);
            this.e.setColor(-21965);
            this.e.setStrokeWidth(2.0f);
            this.e.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.f = paint2;
            paint2.setAntiAlias(true);
            this.f.setColor(-2067046);
            this.f.setStrokeWidth(2.0f);
            this.f.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint();
            this.g = paint3;
            paint3.setAntiAlias(true);
            this.g.setColor(-13391360);
            this.g.setStrokeWidth(2.0f);
            this.g.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint();
            this.h = paint4;
            paint4.setAntiAlias(true);
            this.h.setColor(-13391360);
            this.h.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            Paint paint5 = new Paint();
            this.i = paint5;
            paint5.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, BitmapDescriptorFactory.HUE_RED);
            this.o = dashPathEffect;
            this.g.setPathEffect(dashPathEffect);
            if (this.r) {
                this.e.setStrokeWidth(8.0f);
                this.i.setStrokeWidth(8.0f);
                this.f.setStrokeWidth(8.0f);
                this.s = 4;
            }
        }

        private void a(Canvas canvas) {
            canvas.drawLines(this.f1474a, this.e);
        }

        private void a(Canvas canvas, float f, float f2) {
            float[] fArr = this.f1474a;
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
            a(sb2, this.h);
            canvas.drawTextOnPath(sb2, path, (hypot2 / 2.0f) - (this.q.width() / 2), -20.0f, this.h);
            canvas.drawLine(f, f2, f10, f11, this.g);
        }

        private void a(Canvas canvas, float f, float f2, int i, int i2) {
            StringBuilder sb = new StringBuilder();
            sb.append(((int) ((((f - (i / 2)) * 100.0f) / (MotionLayout.this.getWidth() - i)) + 0.5d)) / 100.0f);
            String sb2 = sb.toString();
            a(sb2, this.h);
            canvas.drawText(sb2, ((f / 2.0f) - (this.q.width() / 2)) + BitmapDescriptorFactory.HUE_RED, f2 - 20.0f, this.h);
            canvas.drawLine(f, f2, Math.min((float) BitmapDescriptorFactory.HUE_RED, 1.0f), f2, this.g);
            StringBuilder sb3 = new StringBuilder();
            sb3.append(((int) ((((f2 - (i2 / 2)) * 100.0f) / (MotionLayout.this.getHeight() - i2)) + 0.5d)) / 100.0f);
            String sb4 = sb3.toString();
            a(sb4, this.h);
            canvas.drawText(sb4, f + 5.0f, BitmapDescriptorFactory.HUE_RED - ((f2 / 2.0f) - (this.q.height() / 2)), this.h);
            canvas.drawLine(f, f2, f, Math.max((float) BitmapDescriptorFactory.HUE_RED, 1.0f), this.g);
        }

        private void a(Canvas canvas, int i, int i2, m mVar) {
            if (i == 4) {
                c(canvas);
            }
            if (i == 2) {
                b(canvas);
            }
            if (i == 3) {
                d(canvas);
            }
            a(canvas);
            b(canvas, i, i2, mVar);
        }

        private void a(Canvas canvas, m mVar) {
            this.f1477d.reset();
            for (int i = 0; i <= 50; i++) {
                float[] fArr = this.u;
                mVar.g[0].a(mVar.a(i / 50.0f, (float[]) null), mVar.m);
                o oVar = mVar.f1524d;
                int[] iArr = mVar.l;
                double[] dArr = mVar.m;
                float f = oVar.f;
                float f2 = oVar.g;
                float f3 = oVar.h;
                float f4 = oVar.i;
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
                Path path = this.f1477d;
                float[] fArr2 = this.u;
                path.moveTo(fArr2[0], fArr2[1]);
                Path path2 = this.f1477d;
                float[] fArr3 = this.u;
                path2.lineTo(fArr3[2], fArr3[3]);
                Path path3 = this.f1477d;
                float[] fArr4 = this.u;
                path3.lineTo(fArr4[4], fArr4[5]);
                Path path4 = this.f1477d;
                float[] fArr5 = this.u;
                path4.lineTo(fArr5[6], fArr5[7]);
                this.f1477d.close();
            }
            this.e.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.f1477d, this.e);
            canvas.translate(-2.0f, -2.0f);
            this.e.setColor(-65536);
            canvas.drawPath(this.f1477d, this.e);
        }

        private void a(String str, Paint paint) {
            paint.getTextBounds(str, 0, str.length(), this.q);
        }

        private void b(Canvas canvas) {
            float[] fArr = this.f1474a;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.g);
        }

        private void b(Canvas canvas, float f, float f2) {
            float[] fArr = this.f1474a;
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
            a(sb2, this.h);
            canvas.drawText(sb2, ((min2 / 2.0f) - (this.q.width() / 2)) + min, f2 - 20.0f, this.h);
            canvas.drawLine(f, f2, Math.min(f3, f5), f2, this.g);
            StringBuilder sb3 = new StringBuilder();
            sb3.append(((int) (((max2 * 100.0f) / Math.abs(f6 - f4)) + 0.5d)) / 100.0f);
            String sb4 = sb3.toString();
            a(sb4, this.h);
            canvas.drawText(sb4, f + 5.0f, max - ((max2 / 2.0f) - (this.q.height() / 2)), this.h);
            canvas.drawLine(f, f2, f, Math.max(f4, f6), this.g);
        }

        private void b(Canvas canvas, int i, int i2, m mVar) {
            int i3;
            int i4;
            if (mVar.f1521a != null) {
                i4 = mVar.f1521a.getWidth();
                i3 = mVar.f1521a.getHeight();
            } else {
                i4 = 0;
                i3 = 0;
            }
            for (int i5 = 1; i5 < i2 - 1; i5++) {
                if (i != 4 || this.f1475b[i5 - 1] != 0) {
                    float[] fArr = this.f1476c;
                    int i6 = i5 * 2;
                    float f = fArr[i6];
                    float f2 = fArr[i6 + 1];
                    this.f1477d.reset();
                    this.f1477d.moveTo(f, f2 + 10.0f);
                    this.f1477d.lineTo(f + 10.0f, f2);
                    this.f1477d.lineTo(f, f2 - 10.0f);
                    this.f1477d.lineTo(f - 10.0f, f2);
                    this.f1477d.close();
                    int i7 = i5 - 1;
                    mVar.a(i7);
                    if (i == 4) {
                        int[] iArr = this.f1475b;
                        if (iArr[i7] == 1) {
                            a(canvas, f - BitmapDescriptorFactory.HUE_RED, f2 - BitmapDescriptorFactory.HUE_RED);
                        } else if (iArr[i7] == 2) {
                            b(canvas, f - BitmapDescriptorFactory.HUE_RED, f2 - BitmapDescriptorFactory.HUE_RED);
                        } else if (iArr[i7] == 3) {
                            a(canvas, f - BitmapDescriptorFactory.HUE_RED, f2 - BitmapDescriptorFactory.HUE_RED, i4, i3);
                        }
                        canvas.drawPath(this.f1477d, this.i);
                    }
                    if (i == 2) {
                        a(canvas, f - BitmapDescriptorFactory.HUE_RED, f2 - BitmapDescriptorFactory.HUE_RED);
                    }
                    if (i == 3) {
                        b(canvas, f - BitmapDescriptorFactory.HUE_RED, f2 - BitmapDescriptorFactory.HUE_RED);
                    }
                    if (i == 6) {
                        a(canvas, f - BitmapDescriptorFactory.HUE_RED, f2 - BitmapDescriptorFactory.HUE_RED, i4, i3);
                    }
                    canvas.drawPath(this.f1477d, this.i);
                }
            }
            float[] fArr2 = this.f1474a;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.f);
                float[] fArr3 = this.f1474a;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.f);
            }
        }

        private void c(Canvas canvas) {
            boolean z = false;
            boolean z2 = false;
            for (int i = 0; i < this.p; i++) {
                int[] iArr = this.f1475b;
                if (iArr[i] == 1) {
                    z = true;
                }
                if (iArr[i] == 2) {
                    z2 = true;
                }
            }
            if (z) {
                b(canvas);
            }
            if (z2) {
                d(canvas);
            }
        }

        private void d(Canvas canvas) {
            float[] fArr = this.f1474a;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[fArr.length - 2];
            float f4 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f, f3), Math.max(f2, f4), Math.max(f, f3), Math.max(f2, f4), this.g);
            canvas.drawLine(Math.min(f, f3), Math.min(f2, f4), Math.min(f, f3), Math.max(f2, f4), this.g);
        }

        public final void a(Canvas canvas, HashMap<View, m> hashMap, int i, int i2) {
            if (!(hashMap == null || hashMap.size() == 0)) {
                canvas.save();
                if (!MotionLayout.this.isInEditMode() && (i2 & 1) == 2) {
                    String str = MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.g) + ":" + MotionLayout.this.l;
                    canvas.drawText(str, 10.0f, MotionLayout.this.getHeight() - 30, this.h);
                    canvas.drawText(str, 11.0f, MotionLayout.this.getHeight() - 29, this.e);
                }
                for (m mVar : hashMap.values()) {
                    int a2 = mVar.a();
                    int i3 = a2;
                    if (i2 > 0) {
                        i3 = a2;
                        if (a2 == 0) {
                            i3 = 1;
                        }
                    }
                    if (i3 != 0) {
                        this.p = mVar.a(this.f1476c, this.f1475b);
                        if (i3 > 0) {
                            int i4 = i / 16;
                            float[] fArr = this.f1474a;
                            if (fArr == null || fArr.length != i4 * 2) {
                                this.f1474a = new float[i4 * 2];
                                this.f1477d = new Path();
                            }
                            int i5 = this.s;
                            canvas.translate(i5, i5);
                            this.e.setColor(1996488704);
                            this.i.setColor(1996488704);
                            this.f.setColor(1996488704);
                            this.g.setColor(1996488704);
                            mVar.a(this.f1474a, i4);
                            a(canvas, i3, this.p, mVar);
                            this.e.setColor(-21965);
                            this.f.setColor(-2067046);
                            this.i.setColor(-2067046);
                            this.g.setColor(-13391360);
                            int i6 = this.s;
                            canvas.translate(-i6, -i6);
                            a(canvas, i3, this.p, mVar);
                            if (i3 == 5) {
                                a(canvas, mVar);
                            }
                        }
                    }
                }
                canvas.restore();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$c.class */
    public final class c {

        /* renamed from: a  reason: collision with root package name */
        androidx.constraintlayout.a.a.f f1478a = new androidx.constraintlayout.a.a.f();

        /* renamed from: b  reason: collision with root package name */
        androidx.constraintlayout.a.a.f f1479b = new androidx.constraintlayout.a.a.f();

        /* renamed from: c  reason: collision with root package name */
        androidx.constraintlayout.widget.c f1480c = null;

        /* renamed from: d  reason: collision with root package name */
        androidx.constraintlayout.widget.c f1481d = null;
        int e;
        int f;

        c() {
        }

        private static androidx.constraintlayout.a.a.e a(androidx.constraintlayout.a.a.f fVar, View view) {
            if (fVar.aj == view) {
                return fVar;
            }
            ArrayList<androidx.constraintlayout.a.a.e> arrayList = fVar.be;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                androidx.constraintlayout.a.a.e eVar = arrayList.get(i);
                if (eVar.aj == view) {
                    return eVar;
                }
            }
            return null;
        }

        private static void a(androidx.constraintlayout.a.a.f fVar, androidx.constraintlayout.a.a.f fVar2) {
            ArrayList<androidx.constraintlayout.a.a.e> arrayList = fVar.be;
            HashMap<androidx.constraintlayout.a.a.e, androidx.constraintlayout.a.a.e> hashMap = new HashMap<>();
            hashMap.put(fVar, fVar2);
            fVar2.be.clear();
            fVar2.a(fVar, hashMap);
            Iterator<androidx.constraintlayout.a.a.e> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                androidx.constraintlayout.a.a.e next = it2.next();
                androidx.constraintlayout.a.a.e aVar = next instanceof androidx.constraintlayout.a.a.a ? new androidx.constraintlayout.a.a.a() : next instanceof androidx.constraintlayout.a.a.h ? new androidx.constraintlayout.a.a.h() : next instanceof androidx.constraintlayout.a.a.g ? new androidx.constraintlayout.a.a.g() : next instanceof i ? new j() : new androidx.constraintlayout.a.a.e();
                fVar2.a(aVar);
                hashMap.put(next, aVar);
            }
            Iterator<androidx.constraintlayout.a.a.e> it3 = arrayList.iterator();
            while (it3.hasNext()) {
                androidx.constraintlayout.a.a.e next2 = it3.next();
                hashMap.get(next2).a(next2, hashMap);
            }
        }

        private void a(androidx.constraintlayout.a.a.f fVar, androidx.constraintlayout.widget.c cVar) {
            SparseArray<androidx.constraintlayout.a.a.e> sparseArray = new SparseArray<>();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, fVar);
            sparseArray.put(MotionLayout.this.getId(), fVar);
            Iterator<androidx.constraintlayout.a.a.e> it2 = fVar.be.iterator();
            while (it2.hasNext()) {
                androidx.constraintlayout.a.a.e next = it2.next();
                sparseArray.put(((View) next.aj).getId(), next);
            }
            Iterator<androidx.constraintlayout.a.a.e> it3 = fVar.be.iterator();
            while (it3.hasNext()) {
                androidx.constraintlayout.a.a.e next2 = it3.next();
                View view = (View) next2.aj;
                cVar.a(view.getId(), layoutParams);
                next2.g(cVar.d(view.getId()));
                next2.h(cVar.c(view.getId()));
                if (view instanceof ConstraintHelper) {
                    cVar.a((ConstraintHelper) view, next2, layoutParams, sparseArray);
                    if (view instanceof Barrier) {
                        ((Barrier) view).c();
                    }
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    layoutParams.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
                } else {
                    layoutParams.resolveLayoutDirection(0);
                }
                MotionLayout.this.a(false, view, next2, (ConstraintLayout.LayoutParams) layoutParams, sparseArray);
                if (cVar.a(view.getId()) == 1) {
                    next2.ak = view.getVisibility();
                } else {
                    next2.ak = cVar.b(view.getId());
                }
            }
            Iterator<androidx.constraintlayout.a.a.e> it4 = fVar.be.iterator();
            while (it4.hasNext()) {
                androidx.constraintlayout.a.a.e next3 = it4.next();
                if (next3 instanceof l) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) next3.aj;
                    i iVar = (i) next3;
                    constraintHelper.a(iVar, sparseArray);
                    ((l) iVar).d();
                }
            }
        }

        private void b(int i, int i2) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            MotionLayout.this.I = mode;
            MotionLayout.this.J = mode2;
            int optimizationLevel = MotionLayout.this.getOptimizationLevel();
            if (MotionLayout.this.f == MotionLayout.this.e) {
                MotionLayout.this.a(this.f1479b, optimizationLevel, i, i2);
                if (this.f1480c != null) {
                    MotionLayout.this.a(this.f1478a, optimizationLevel, i, i2);
                }
            } else {
                if (this.f1480c != null) {
                    MotionLayout.this.a(this.f1478a, optimizationLevel, i, i2);
                }
                MotionLayout.this.a(this.f1479b, optimizationLevel, i, i2);
            }
            if (((MotionLayout.this.getParent() instanceof MotionLayout) && mode == 1073741824 && mode2 == 1073741824) ? false : true) {
                MotionLayout.this.I = mode;
                MotionLayout.this.J = mode2;
                if (MotionLayout.this.f == MotionLayout.this.e) {
                    MotionLayout.this.a(this.f1479b, optimizationLevel, i, i2);
                    if (this.f1480c != null) {
                        MotionLayout.this.a(this.f1478a, optimizationLevel, i, i2);
                    }
                } else {
                    if (this.f1480c != null) {
                        MotionLayout.this.a(this.f1478a, optimizationLevel, i, i2);
                    }
                    MotionLayout.this.a(this.f1479b, optimizationLevel, i, i2);
                }
                MotionLayout.this.E = this.f1478a.o();
                MotionLayout.this.F = this.f1478a.p();
                MotionLayout.this.G = this.f1479b.o();
                MotionLayout.this.H = this.f1479b.p();
                MotionLayout motionLayout = MotionLayout.this;
                motionLayout.D = (motionLayout.E == MotionLayout.this.G && MotionLayout.this.F == MotionLayout.this.H) ? false : true;
            }
            int i3 = MotionLayout.this.E;
            int i4 = MotionLayout.this.F;
            if (MotionLayout.this.I == Integer.MIN_VALUE || MotionLayout.this.I == 0) {
                i3 = (int) (MotionLayout.this.E + (MotionLayout.this.K * (MotionLayout.this.G - MotionLayout.this.E)));
            }
            if (MotionLayout.this.J == Integer.MIN_VALUE || MotionLayout.this.J == 0) {
                i4 = (int) (MotionLayout.this.F + (MotionLayout.this.K * (MotionLayout.this.H - MotionLayout.this.F)));
            }
            MotionLayout.this.a(i, i2, i3, i4, this.f1478a.aZ || this.f1479b.aZ, this.f1478a.ba || this.f1479b.ba);
        }

        public final void a() {
            b(MotionLayout.this.aa, MotionLayout.this.ab);
            MotionLayout.j(MotionLayout.this);
        }

        public final void a(int i, int i2) {
            this.e = i;
            this.f = i2;
        }

        final void a(androidx.constraintlayout.widget.c cVar, androidx.constraintlayout.widget.c cVar2) {
            this.f1480c = cVar;
            this.f1481d = cVar2;
            this.f1478a = new androidx.constraintlayout.a.a.f();
            this.f1479b = new androidx.constraintlayout.a.a.f();
            this.f1478a.a(MotionLayout.this.P.f());
            this.f1479b.a(MotionLayout.this.P.f());
            this.f1478a.be.clear();
            this.f1479b.be.clear();
            a(MotionLayout.this.P, this.f1478a);
            a(MotionLayout.this.P, this.f1479b);
            if (MotionLayout.this.l > 0.5d) {
                if (cVar != null) {
                    a(this.f1478a, cVar);
                }
                a(this.f1479b, cVar2);
            } else {
                a(this.f1479b, cVar2);
                if (cVar != null) {
                    a(this.f1478a, cVar);
                }
            }
            this.f1478a.f1377d = MotionLayout.this.isRtl();
            this.f1478a.e();
            this.f1479b.f1377d = MotionLayout.this.isRtl();
            this.f1479b.e();
            ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    androidx.constraintlayout.a.a.f fVar = this.f1478a;
                    fVar.R[0] = e.a.WRAP_CONTENT;
                    androidx.constraintlayout.a.a.f fVar2 = this.f1479b;
                    fVar2.R[0] = e.a.WRAP_CONTENT;
                }
                if (layoutParams.height == -2) {
                    androidx.constraintlayout.a.a.f fVar3 = this.f1478a;
                    fVar3.R[1] = e.a.WRAP_CONTENT;
                    androidx.constraintlayout.a.a.f fVar4 = this.f1479b;
                    fVar4.R[1] = e.a.WRAP_CONTENT;
                }
            }
        }

        public final void b() {
            int childCount = MotionLayout.this.getChildCount();
            MotionLayout.this.i.clear();
            for (int i = 0; i < childCount; i++) {
                View childAt = MotionLayout.this.getChildAt(i);
                MotionLayout.this.i.put(childAt, new m(childAt));
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt2 = MotionLayout.this.getChildAt(i2);
                m mVar = MotionLayout.this.i.get(childAt2);
                if (mVar != null) {
                    if (this.f1480c != null) {
                        androidx.constraintlayout.a.a.e a2 = a(this.f1478a, childAt2);
                        if (a2 != null) {
                            mVar.a(a2, this.f1480c);
                        } else if (MotionLayout.this.p != 0) {
                            Log.e("MotionLayout", androidx.constraintlayout.motion.widget.a.a() + "no widget for  " + androidx.constraintlayout.motion.widget.a.a(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                    if (this.f1481d != null) {
                        androidx.constraintlayout.a.a.e a3 = a(this.f1479b, childAt2);
                        if (a3 != null) {
                            mVar.b(a3, this.f1481d);
                        } else if (MotionLayout.this.p != 0) {
                            Log.e("MotionLayout", androidx.constraintlayout.motion.widget.a.a() + "no widget for  " + androidx.constraintlayout.motion.widget.a.a(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$d.class */
    public interface d {
        void a();

        void a(MotionEvent motionEvent);

        void b();

        float c();

        float d();
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$e.class */
    static final class e implements d {

        /* renamed from: b  reason: collision with root package name */
        private static e f1482b = new e();

        /* renamed from: a  reason: collision with root package name */
        VelocityTracker f1483a;

        private e() {
        }

        public static e e() {
            f1482b.f1483a = VelocityTracker.obtain();
            return f1482b;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.d
        public final void a() {
            VelocityTracker velocityTracker = this.f1483a;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f1483a = null;
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.d
        public final void a(MotionEvent motionEvent) {
            VelocityTracker velocityTracker = this.f1483a;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.d
        public final void b() {
            VelocityTracker velocityTracker = this.f1483a;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(1000);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.d
        public final float c() {
            VelocityTracker velocityTracker = this.f1483a;
            return velocityTracker != null ? velocityTracker.getXVelocity() : BitmapDescriptorFactory.HUE_RED;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.d
        public final float d() {
            VelocityTracker velocityTracker = this.f1483a;
            return velocityTracker != null ? velocityTracker.getYVelocity() : BitmapDescriptorFactory.HUE_RED;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$f.class */
    public final class f {

        /* renamed from: a  reason: collision with root package name */
        float f1484a = Float.NaN;

        /* renamed from: b  reason: collision with root package name */
        float f1485b = Float.NaN;

        /* renamed from: c  reason: collision with root package name */
        int f1486c = -1;

        /* renamed from: d  reason: collision with root package name */
        int f1487d = -1;
        final String e = "motion.progress";
        final String f = "motion.velocity";
        final String g = "motion.StartState";
        final String h = "motion.EndState";

        f() {
        }

        final void a() {
            int i = this.f1486c;
            if (!(i == -1 && this.f1487d == -1)) {
                if (i == -1) {
                    MotionLayout.this.b(this.f1487d);
                } else {
                    int i2 = this.f1487d;
                    if (i2 == -1) {
                        MotionLayout.this.setState(i, -1, -1);
                    } else {
                        MotionLayout.this.setTransition(i, i2);
                    }
                }
                MotionLayout.this.a(h.f1489b);
            }
            if (!Float.isNaN(this.f1485b)) {
                MotionLayout.this.setProgress(this.f1484a, this.f1485b);
                this.f1484a = Float.NaN;
                this.f1485b = Float.NaN;
                this.f1486c = -1;
                this.f1487d = -1;
            } else if (!Float.isNaN(this.f1484a)) {
                MotionLayout.this.setProgress(this.f1484a);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$g.class */
    public interface g {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$h.class */
    public static final class h extends Enum<h> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f1488a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f1489b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f1490c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f1491d = 4;
        private static final /* synthetic */ int[] e = {1, 2, 3, 4};

        private h(String str, int i) {
        }

        public static int[] a() {
            return (int[]) e.clone();
        }
    }

    public MotionLayout(Context context) {
        super(context);
        a((AttributeSet) null);
    }

    public MotionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    public MotionLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static d a() {
        return e.e();
    }

    private void a(AttributeSet attributeSet) {
        p pVar;
        Context context;
        View childAt;
        f1463a = isInEditMode();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, e.b.MotionLayout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            boolean z = true;
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.MotionLayout_layoutDescription) {
                    this.f1464b = new p(getContext(), this, obtainStyledAttributes.getResourceId(index, -1));
                    z = z;
                } else if (index == e.b.MotionLayout_currentState) {
                    this.f = obtainStyledAttributes.getResourceId(index, -1);
                    z = z;
                } else if (index == e.b.MotionLayout_motionProgress) {
                    this.m = obtainStyledAttributes.getFloat(index, BitmapDescriptorFactory.HUE_RED);
                    this.n = true;
                    z = z;
                } else if (index == e.b.MotionLayout_applyMotionScene) {
                    z = obtainStyledAttributes.getBoolean(index, z);
                } else if (index == e.b.MotionLayout_showPaths) {
                    z = z;
                    if (this.p == 0) {
                        this.p = obtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                        z = z;
                    }
                } else {
                    z = z;
                    if (index == e.b.MotionLayout_motionDebug) {
                        this.p = obtainStyledAttributes.getInt(index, 0);
                        z = z;
                    }
                }
            }
            obtainStyledAttributes.recycle();
            if (this.f1464b == null) {
                Log.e("MotionLayout", "WARNING NO app:layoutDescription tag");
            }
            if (!z) {
                this.f1464b = null;
            }
        }
        if (this.p != 0) {
            p pVar2 = this.f1464b;
            if (pVar2 == null) {
                Log.e("MotionLayout", "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            } else {
                int b2 = pVar2.b();
                p pVar3 = this.f1464b;
                androidx.constraintlayout.widget.c a2 = pVar3.a(pVar3.b());
                String a3 = androidx.constraintlayout.motion.widget.a.a(getContext(), b2);
                int childCount = getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    int id = getChildAt(i2).getId();
                    if (id == -1) {
                        Log.w("MotionLayout", "CHECK: " + a3 + " ALL VIEWS SHOULD HAVE ID's " + childAt.getClass().getName() + " does not!");
                    }
                    if ((a2.f1623c.containsKey(Integer.valueOf(id)) ? a2.f1623c.get(Integer.valueOf(id)) : null) == null) {
                        Log.w("MotionLayout", "CHECK: " + a3 + " NO CONSTRAINTS for " + androidx.constraintlayout.motion.widget.a.a(childAt));
                    }
                }
                int[] a4 = a2.a();
                for (int i3 = 0; i3 < a4.length; i3++) {
                    int i4 = a4[i3];
                    String a5 = androidx.constraintlayout.motion.widget.a.a(getContext(), i4);
                    if (findViewById(a4[i3]) == null) {
                        Log.w("MotionLayout", "CHECK: " + a3 + " NO View matches id " + a5);
                    }
                    if (a2.c(i4) == -1) {
                        Log.w("MotionLayout", "CHECK: " + a3 + "(" + a5 + ") no LAYOUT_HEIGHT");
                    }
                    if (a2.d(i4) == -1) {
                        Log.w("MotionLayout", "CHECK: " + a3 + "(" + a5 + ") no LAYOUT_HEIGHT");
                    }
                }
                SparseIntArray sparseIntArray = new SparseIntArray();
                SparseIntArray sparseIntArray2 = new SparseIntArray();
                Iterator<p.a> it2 = this.f1464b.f1532d.iterator();
                while (it2.hasNext()) {
                    p.a next = it2.next();
                    StringBuilder sb = new StringBuilder("CHECK: transition = ");
                    String resourceEntryName = next.f1538d == -1 ? JsonReaderKt.NULL : getContext().getResources().getResourceEntryName(next.f1538d);
                    sb.append(next.f1537c == -1 ? resourceEntryName + " -> null" : resourceEntryName + " -> " + context.getResources().getResourceEntryName(next.f1537c));
                    new StringBuilder("CHECK: transition.setDuration = ").append(next.h);
                    if (next.f1538d == next.f1537c) {
                        Log.e("MotionLayout", "CHECK: start and end constraint set should not be the same!");
                    }
                    int i5 = next.f1538d;
                    int i6 = next.f1537c;
                    String a6 = androidx.constraintlayout.motion.widget.a.a(getContext(), i5);
                    String a7 = androidx.constraintlayout.motion.widget.a.a(getContext(), i6);
                    if (sparseIntArray.get(i5) == i6) {
                        Log.e("MotionLayout", "CHECK: two transitions with the same start and end " + a6 + "->" + a7);
                    }
                    if (sparseIntArray2.get(i6) == i5) {
                        Log.e("MotionLayout", "CHECK: you can't have reverse transitions" + a6 + "->" + a7);
                    }
                    sparseIntArray.put(i5, i6);
                    sparseIntArray2.put(i6, i5);
                    if (this.f1464b.a(i5) == null) {
                        Log.e("MotionLayout", " no such constraintSetStart ".concat(String.valueOf(a6)));
                    }
                    if (this.f1464b.a(i6) == null) {
                        Log.e("MotionLayout", " no such constraintSetEnd ".concat(String.valueOf(a6)));
                    }
                }
            }
        }
        if (this.f == -1 && (pVar = this.f1464b) != null) {
            this.f = pVar.b();
            this.e = this.f1464b.b();
            this.g = this.f1464b.c();
        }
    }

    private boolean a(float f2, float f3, View view, MotionEvent motionEvent) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (a(view.getLeft() + f2, view.getTop() + f3, viewGroup.getChildAt(i), motionEvent)) {
                    return true;
                }
            }
        }
        this.ax.set(view.getLeft() + f2, view.getTop() + f3, f2 + view.getRight(), f3 + view.getBottom());
        return motionEvent.getAction() == 0 ? this.ax.contains(motionEvent.getX(), motionEvent.getY()) && view.onTouchEvent(motionEvent) : view.onTouchEvent(motionEvent);
    }

    private void d() {
        ArrayList<g> arrayList;
        if ((this.af != null || ((arrayList = this.B) != null && !arrayList.isEmpty())) && this.as != this.k) {
            if (this.ar != -1) {
                ArrayList<g> arrayList2 = this.B;
                if (arrayList2 != null) {
                    Iterator<g> it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        it2.next();
                    }
                }
                this.C = true;
            }
            this.ar = -1;
            this.as = this.k;
            ArrayList<g> arrayList3 = this.B;
            if (arrayList3 != null) {
                Iterator<g> it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    it3.next();
                }
            }
            this.C = true;
        }
    }

    private void e() {
        int i;
        ArrayList<g> arrayList;
        if ((this.af != null || ((arrayList = this.B) != null && !arrayList.isEmpty())) && this.ar == -1) {
            this.ar = this.f;
            if (!this.N.isEmpty()) {
                ArrayList<Integer> arrayList2 = this.N;
                i = arrayList2.get(arrayList2.size() - 1).intValue();
            } else {
                i = -1;
            }
            int i2 = this.f;
            if (!(i == i2 || i2 == -1)) {
                this.N.add(Integer.valueOf(i2));
            }
        }
        f();
    }

    private void f() {
        ArrayList<g> arrayList;
        if (this.af != null || ((arrayList = this.B) != null && !arrayList.isEmpty())) {
            this.C = false;
            Iterator<Integer> it2 = this.N.iterator();
            while (it2.hasNext()) {
                Integer next = it2.next();
                if (this.af != null) {
                    next.intValue();
                }
                ArrayList<g> arrayList2 = this.B;
                if (arrayList2 != null) {
                    Iterator<g> it3 = arrayList2.iterator();
                    while (it3.hasNext()) {
                        it3.next();
                        next.intValue();
                    }
                }
            }
            this.N.clear();
        }
    }

    private void g() {
        this.M.a();
        invalidate();
    }

    static /* synthetic */ void j(MotionLayout motionLayout) {
        int childCount = motionLayout.getChildCount();
        motionLayout.M.b();
        boolean z = true;
        motionLayout.n = true;
        int width = motionLayout.getWidth();
        int height = motionLayout.getHeight();
        p pVar = motionLayout.f1464b;
        int i = pVar.f1531c != null ? pVar.f1531c.p : -1;
        if (i != -1) {
            for (int i2 = 0; i2 < childCount; i2++) {
                m mVar = motionLayout.i.get(motionLayout.getChildAt(i2));
                if (mVar != null) {
                    mVar.s = i;
                }
            }
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            m mVar2 = motionLayout.i.get(motionLayout.getChildAt(i3));
            if (mVar2 != null) {
                motionLayout.f1464b.a(mVar2);
                mVar2.a(width, height, System.nanoTime());
            }
        }
        float f2 = motionLayout.f1464b.f();
        if (f2 != BitmapDescriptorFactory.HUE_RED) {
            boolean z2 = ((double) f2) < 0.0d;
            float abs = Math.abs(f2);
            float f3 = -3.4028235E38f;
            float f4 = Float.MAX_VALUE;
            int i4 = 0;
            float f5 = Float.MAX_VALUE;
            float f6 = -3.4028235E38f;
            while (true) {
                if (i4 >= childCount) {
                    z = false;
                    break;
                }
                m mVar3 = motionLayout.i.get(motionLayout.getChildAt(i4));
                if (!Float.isNaN(mVar3.i)) {
                    break;
                }
                float f7 = mVar3.e.f;
                float f8 = mVar3.e.g;
                float f9 = z2 ? f8 - f7 : f8 + f7;
                f5 = Math.min(f5, f9);
                f6 = Math.max(f6, f9);
                i4++;
            }
            if (z) {
                for (int i5 = 0; i5 < childCount; i5++) {
                    m mVar4 = motionLayout.i.get(motionLayout.getChildAt(i5));
                    f3 = f3;
                    f4 = f4;
                    if (!Float.isNaN(mVar4.i)) {
                        f4 = Math.min(f4, mVar4.i);
                        f3 = Math.max(f3, mVar4.i);
                    }
                }
                for (int i6 = 0; i6 < childCount; i6++) {
                    m mVar5 = motionLayout.i.get(motionLayout.getChildAt(i6));
                    if (!Float.isNaN(mVar5.i)) {
                        mVar5.k = 1.0f / (1.0f - abs);
                        if (z2) {
                            mVar5.j = abs - (((f3 - mVar5.i) / (f3 - f4)) * abs);
                        } else {
                            mVar5.j = abs - (((mVar5.i - f4) * abs) / (f3 - f4));
                        }
                    }
                }
                return;
            }
            for (int i7 = 0; i7 < childCount; i7++) {
                m mVar6 = motionLayout.i.get(motionLayout.getChildAt(i7));
                float f10 = mVar6.e.f;
                float f11 = mVar6.e.g;
                float f12 = z2 ? f11 - f10 : f11 + f10;
                mVar6.k = 1.0f / (1.0f - abs);
                mVar6.j = abs - (((f12 - f5) * abs) / (f6 - f5));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f2) {
        p pVar = this.f1464b;
        if (pVar != null) {
            float f3 = this.l;
            float f4 = this.k;
            if (f3 != f4 && this.ae) {
                this.l = f4;
            }
            float f5 = this.l;
            if (f5 != f2) {
                this.ai = false;
                this.m = f2;
                this.j = pVar.e() / 1000.0f;
                setProgress(this.m);
                this.f1465c = this.f1464b.d();
                this.ae = false;
                this.ac = System.nanoTime();
                this.n = true;
                this.k = f5;
                this.l = f5;
                invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        if (i != h.f1491d || this.f != -1) {
            int i2 = this.L;
            this.L = i;
            if (i2 == h.f1490c && i == h.f1490c) {
                d();
            }
            int i3 = AnonymousClass2.f1469a[i2 - 1];
            if (i3 == 1 || i3 == 2) {
                if (i == h.f1490c) {
                    d();
                }
                if (i == h.f1491d) {
                    e();
                }
            } else if (i3 == 3 && i == h.f1491d) {
                e();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r9, float r10, float r11) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.a(int, float, float):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, float f2, float f3, float f4, float[] fArr) {
        HashMap<View, m> hashMap = this.i;
        View viewById = getViewById(i);
        m mVar = hashMap.get(viewById);
        if (mVar != null) {
            mVar.a(f2, f3, f4, fArr);
            float y = viewById.getY();
            this.ag = f2;
            this.ah = y;
            return;
        }
        Log.w("MotionLayout", "WARNING could not find view id ".concat(String.valueOf(viewById == null ? String.valueOf(i) : viewById.getContext().getResources().getResourceName(i))));
    }

    @Override // androidx.core.view.o
    public final void a(View view, int i) {
        p pVar = this.f1464b;
        if (pVar != null) {
            float f2 = this.x;
            float f3 = this.A;
            float f4 = f2 / f3;
            float f5 = this.y / f3;
            if (pVar.f1531c != null && pVar.f1531c.l != null) {
                s sVar = pVar.f1531c.l;
                boolean z = false;
                sVar.i = false;
                float f6 = sVar.m.l;
                sVar.m.a(sVar.f1551b, f6, sVar.f, sVar.e, sVar.j);
                float f7 = sVar.g;
                float f8 = BitmapDescriptorFactory.HUE_RED;
                float f9 = f7 != BitmapDescriptorFactory.HUE_RED ? (f4 * sVar.g) / sVar.j[0] : (f5 * sVar.h) / sVar.j[1];
                float f10 = f6;
                if (!Float.isNaN(f9)) {
                    f10 = f6 + (f9 / 3.0f);
                }
                if (f10 != BitmapDescriptorFactory.HUE_RED) {
                    boolean z2 = f10 != 1.0f;
                    if (sVar.f1550a != 3) {
                        z = true;
                    }
                    if (z && z2) {
                        MotionLayout motionLayout = sVar.m;
                        int i2 = sVar.f1550a;
                        if (f10 >= 0.5d) {
                            f8 = 1.0f;
                        }
                        motionLayout.a(i2, f8, f9);
                    }
                }
            }
        }
    }

    @Override // androidx.core.view.o
    public final void a(View view, int i, int i2, int i3, int i4, int i5) {
    }

    @Override // androidx.core.view.p
    public final void a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (!(!this.w && i == 0 && i2 == 0)) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
        }
        this.w = false;
    }

    @Override // androidx.core.view.o
    public final void a(final View view, int i, int i2, int[] iArr, int i3) {
        float f2;
        s sVar;
        int i4;
        p pVar = this.f1464b;
        if (pVar != null && pVar.f1531c != null && this.f1464b.f1531c.a()) {
            p.a aVar = this.f1464b.f1531c;
            if (aVar == null || !aVar.a() || (sVar = aVar.l) == null || (i4 = sVar.f1552c) == -1 || view.getId() == i4) {
                p pVar2 = this.f1464b;
                if (pVar2 != null) {
                    if ((pVar2.f1531c == null || pVar2.f1531c.l == null) ? false : pVar2.f1531c.l.p) {
                        float f3 = this.k;
                        if ((f3 == 1.0f || f3 == BitmapDescriptorFactory.HUE_RED) && view.canScrollVertically(-1)) {
                            return;
                        }
                    }
                }
                if (!(aVar.l == null || (this.f1464b.f1531c.l.r & 1) == 0)) {
                    p pVar3 = this.f1464b;
                    float f4 = i;
                    float f5 = i2;
                    if (pVar3.f1531c == null || pVar3.f1531c.l == null) {
                        f2 = BitmapDescriptorFactory.HUE_RED;
                    } else {
                        s sVar2 = pVar3.f1531c.l;
                        sVar2.m.a(sVar2.f1551b, sVar2.m.l, sVar2.f, sVar2.e, sVar2.j);
                        if (sVar2.g != BitmapDescriptorFactory.HUE_RED) {
                            if (sVar2.j[0] == BitmapDescriptorFactory.HUE_RED) {
                                sVar2.j[0] = 1.0E-7f;
                            }
                            f2 = (f4 * sVar2.g) / sVar2.j[0];
                        } else {
                            if (sVar2.j[1] == BitmapDescriptorFactory.HUE_RED) {
                                sVar2.j[1] = 1.0E-7f;
                            }
                            f2 = (f5 * sVar2.h) / sVar2.j[1];
                        }
                    }
                    float f6 = this.l;
                    if ((f6 <= BitmapDescriptorFactory.HUE_RED && f2 < BitmapDescriptorFactory.HUE_RED) || (f6 >= 1.0f && f2 > BitmapDescriptorFactory.HUE_RED)) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            view.setNestedScrollingEnabled(false);
                            view.post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    view.setNestedScrollingEnabled(true);
                                }
                            });
                            return;
                        }
                        return;
                    }
                }
                float f7 = this.k;
                long nanoTime = System.nanoTime();
                float f8 = i;
                this.x = f8;
                float f9 = i2;
                this.y = f9;
                this.A = (float) ((nanoTime - this.z) * 1.0E-9d);
                this.z = nanoTime;
                p pVar4 = this.f1464b;
                if (!(pVar4.f1531c == null || pVar4.f1531c.l == null)) {
                    s sVar3 = pVar4.f1531c.l;
                    float f10 = sVar3.m.l;
                    if (!sVar3.i) {
                        sVar3.i = true;
                        sVar3.m.setProgress(f10);
                    }
                    sVar3.m.a(sVar3.f1551b, f10, sVar3.f, sVar3.e, sVar3.j);
                    if (Math.abs((sVar3.g * sVar3.j[0]) + (sVar3.h * sVar3.j[1])) < 0.01d) {
                        sVar3.j[0] = 0.01f;
                        sVar3.j[1] = 0.01f;
                    }
                    float max = Math.max(Math.min(f10 + (sVar3.g != BitmapDescriptorFactory.HUE_RED ? (f8 * sVar3.g) / sVar3.j[0] : (f9 * sVar3.h) / sVar3.j[1]), 1.0f), (float) BitmapDescriptorFactory.HUE_RED);
                    if (max != sVar3.m.l) {
                        sVar3.m.setProgress(max);
                    }
                }
                if (f7 != this.k) {
                    iArr[0] = i;
                    iArr[1] = i2;
                }
                a(false);
                if (iArr[0] != 0 || iArr[1] != 0) {
                    this.w = true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(p.a aVar) {
        this.f1464b.a(aVar);
        a(h.f1489b);
        if (this.f == this.f1464b.c()) {
            this.l = 1.0f;
            this.k = 1.0f;
            this.m = 1.0f;
        } else {
            this.l = BitmapDescriptorFactory.HUE_RED;
            this.k = BitmapDescriptorFactory.HUE_RED;
            this.m = BitmapDescriptorFactory.HUE_RED;
        }
        boolean z = true;
        if ((aVar.r & 1) == 0) {
            z = false;
        }
        this.ad = z ? -1L : System.nanoTime();
        int b2 = this.f1464b.b();
        int c2 = this.f1464b.c();
        if (b2 != this.e || c2 != this.g) {
            this.e = b2;
            this.g = c2;
            this.f1464b.a(b2, c2);
            this.M.a(this.f1464b.a(this.e), this.f1464b.a(this.g));
            this.M.a(this.e, this.g);
            this.M.a();
            g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x03ee, code lost:
        if (r22 == com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L_0x03f1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0056, code lost:
        if (r8.m != r0) goto L_0x0059;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0225, code lost:
        if (r10 <= r8.m) goto L_0x0228;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x042b  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0271  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(boolean r9) {
        /*
            Method dump skipped, instructions count: 1148
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.a(boolean):void");
    }

    @Override // androidx.core.view.o
    public final boolean a(View view, View view2, int i, int i2) {
        p pVar = this.f1464b;
        return (pVar == null || pVar.f1531c == null || this.f1464b.f1531c.l == null || (this.f1464b.f1531c.l.r & 2) != 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        p pVar = this.f1464b;
        if (pVar != null) {
            if (pVar.b(this, this.f)) {
                requestLayout();
                return;
            }
            int i = this.f;
            if (i != -1) {
                this.f1464b.a(this, i);
            }
            if (this.f1464b.a()) {
                this.f1464b.i();
            }
        }
    }

    public final void b(int i) {
        if (!isAttachedToWindow()) {
            if (this.av == null) {
                this.av = new f();
            }
            this.av.f1487d = i;
            return;
        }
        p pVar = this.f1464b;
        int i2 = i;
        if (pVar != null) {
            i2 = i;
            if (pVar.f1530b != null) {
                androidx.constraintlayout.widget.f fVar = this.f1464b.f1530b;
                int i3 = this.f;
                f.a aVar = fVar.f1648d.get(i);
                if (aVar == null) {
                    i3 = i;
                } else if (aVar.f1651c != i3) {
                    Iterator<f.b> it2 = aVar.f1650b.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (i3 == it2.next().e) {
                                break;
                            }
                        } else {
                            i3 = aVar.f1651c;
                            break;
                        }
                    }
                }
                i2 = i;
                if (i3 != -1) {
                    i2 = i3;
                }
            }
        }
        int i4 = this.f;
        if (i4 == i2) {
            return;
        }
        if (this.e == i2) {
            a(BitmapDescriptorFactory.HUE_RED);
        } else if (this.g == i2) {
            a(1.0f);
        } else {
            this.g = i2;
            if (i4 != -1) {
                setTransition(i4, i2);
                a(1.0f);
                this.l = BitmapDescriptorFactory.HUE_RED;
                a(1.0f);
                return;
            }
            this.ai = false;
            this.m = 1.0f;
            this.k = BitmapDescriptorFactory.HUE_RED;
            this.l = BitmapDescriptorFactory.HUE_RED;
            this.ad = System.nanoTime();
            this.ac = System.nanoTime();
            this.ae = false;
            this.f1465c = null;
            this.j = this.f1464b.e() / 1000.0f;
            this.e = -1;
            this.f1464b.a(-1, this.g);
            this.f1464b.b();
            int childCount = getChildCount();
            this.i.clear();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                this.i.put(childAt, new m(childAt));
            }
            this.n = true;
            this.M.a((androidx.constraintlayout.widget.c) null, this.f1464b.a(i2));
            g();
            this.M.b();
            int childCount2 = getChildCount();
            for (int i6 = 0; i6 < childCount2; i6++) {
                View childAt2 = getChildAt(i6);
                m mVar = this.i.get(childAt2);
                if (mVar != null) {
                    mVar.f1524d.f1528d = BitmapDescriptorFactory.HUE_RED;
                    mVar.f1524d.e = BitmapDescriptorFactory.HUE_RED;
                    mVar.f1524d.a(childAt2.getX(), childAt2.getY(), childAt2.getWidth(), childAt2.getHeight());
                    l lVar = mVar.f;
                    lVar.a(childAt2.getX(), childAt2.getY(), childAt2.getWidth(), childAt2.getHeight());
                    lVar.f1519c = childAt2.getVisibility();
                    lVar.f1517a = childAt2.getVisibility() != 0 ? BitmapDescriptorFactory.HUE_RED : childAt2.getAlpha();
                    lVar.f1520d = false;
                    if (Build.VERSION.SDK_INT >= 21) {
                        lVar.e = childAt2.getElevation();
                    }
                    lVar.f = childAt2.getRotation();
                    lVar.g = childAt2.getRotationX();
                    lVar.h = childAt2.getRotationY();
                    lVar.i = childAt2.getScaleX();
                    lVar.j = childAt2.getScaleY();
                    lVar.k = childAt2.getPivotX();
                    lVar.l = childAt2.getPivotY();
                    lVar.m = childAt2.getTranslationX();
                    lVar.n = childAt2.getTranslationY();
                    if (Build.VERSION.SDK_INT >= 21) {
                        lVar.o = childAt2.getTranslationZ();
                    }
                }
            }
            int width = getWidth();
            int height = getHeight();
            for (int i7 = 0; i7 < childCount; i7++) {
                m mVar2 = this.i.get(getChildAt(i7));
                this.f1464b.a(mVar2);
                mVar2.a(width, height, System.nanoTime());
            }
            float f2 = this.f1464b.f();
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                float f3 = Float.MAX_VALUE;
                float f4 = -3.4028235E38f;
                for (int i8 = 0; i8 < childCount; i8++) {
                    m mVar3 = this.i.get(getChildAt(i8));
                    float f5 = mVar3.e.g + mVar3.e.f;
                    f3 = Math.min(f3, f5);
                    f4 = Math.max(f4, f5);
                }
                for (int i9 = 0; i9 < childCount; i9++) {
                    m mVar4 = this.i.get(getChildAt(i9));
                    float f6 = mVar4.e.f;
                    float f7 = mVar4.e.g;
                    mVar4.k = 1.0f / (1.0f - f2);
                    mVar4.j = f2 - ((((f6 + f7) - f3) * f2) / (f4 - f3));
                }
            }
            this.k = BitmapDescriptorFactory.HUE_RED;
            this.l = BitmapDescriptorFactory.HUE_RED;
            this.n = true;
            invalidate();
        }
    }

    @Override // androidx.core.view.o
    public final void b(View view, View view2, int i, int i2) {
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public final void c(int i) {
        this.R = null;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        long j;
        a(false);
        super.dispatchDraw(canvas);
        if (this.f1464b != null) {
            if ((this.p & 1) == 1 && !isInEditMode()) {
                this.ao++;
                long nanoTime = System.nanoTime();
                long j2 = this.ap;
                if (j2 != -1) {
                    if (nanoTime - j2 > 200000000) {
                        this.aq = ((int) ((this.ao / (((float) j) * 1.0E-9f)) * 100.0f)) / 100.0f;
                        this.ao = 0;
                        this.ap = nanoTime;
                    }
                } else {
                    this.ap = nanoTime;
                }
                Paint paint = new Paint();
                paint.setTextSize(42.0f);
                StringBuilder sb = new StringBuilder();
                sb.append(this.aq + " fps " + androidx.constraintlayout.motion.widget.a.a(this, this.e) + " -> ");
                sb.append(androidx.constraintlayout.motion.widget.a.a(this, this.g));
                sb.append(" (progress: ");
                sb.append(((int) (this.l * 1000.0f)) / 10.0f);
                sb.append(" ) state=");
                int i = this.f;
                sb.append(i == -1 ? AdError.UNDEFINED_DOMAIN : androidx.constraintlayout.motion.widget.a.a(this, i));
                String sb2 = sb.toString();
                paint.setColor(-16777216);
                canvas.drawText(sb2, 11.0f, getHeight() - 29, paint);
                paint.setColor(-7864184);
                canvas.drawText(sb2, 10.0f, getHeight() - 30, paint);
            }
            if (this.p > 1) {
                if (this.q == null) {
                    this.q = new b();
                }
                this.q.a(canvas, this.i, this.f1464b.e(), this.p);
            }
        }
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
        p pVar = this.f1464b;
        if (!(pVar == null || (i = this.f) == -1)) {
            androidx.constraintlayout.widget.c a2 = pVar.a(i);
            p pVar2 = this.f1464b;
            int i2 = 0;
            while (true) {
                if (i2 < pVar2.e.size()) {
                    int keyAt = pVar2.e.keyAt(i2);
                    int i3 = pVar2.f.get(keyAt);
                    int size = pVar2.f.size();
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
                            i3 = pVar2.f.get(i3);
                            size--;
                        }
                    }
                    if (z) {
                        Log.e("MotionScene", "Cannot be derived from yourself");
                        break;
                    } else {
                        pVar2.b(keyAt);
                        i2++;
                    }
                } else {
                    for (int i4 = 0; i4 < pVar2.e.size(); i4++) {
                        androidx.constraintlayout.widget.c valueAt = pVar2.e.valueAt(i4);
                        int childCount = getChildCount();
                        for (int i5 = 0; i5 < childCount; i5++) {
                            View childAt = getChildAt(i5);
                            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                            int id = childAt.getId();
                            if (!valueAt.f1622b || id != -1) {
                                if (!valueAt.f1623c.containsKey(Integer.valueOf(id))) {
                                    valueAt.f1623c.put(Integer.valueOf(id), new c.a());
                                }
                                c.a aVar = valueAt.f1623c.get(Integer.valueOf(id));
                                if (!aVar.f1628d.f1630b) {
                                    aVar.a(id, layoutParams);
                                    if (childAt instanceof ConstraintHelper) {
                                        aVar.f1628d.ae = ((ConstraintHelper) childAt).b();
                                        if (childAt instanceof Barrier) {
                                            Barrier barrier = (Barrier) childAt;
                                            aVar.f1628d.aj = barrier.f1580b.f1314b;
                                            aVar.f1628d.ab = barrier.f1579a;
                                            aVar.f1628d.ac = barrier.f1580b.f1315c;
                                        }
                                    }
                                    aVar.f1628d.f1630b = true;
                                }
                                if (!aVar.f1626b.f1637a) {
                                    aVar.f1626b.f1638b = childAt.getVisibility();
                                    aVar.f1626b.f1640d = childAt.getAlpha();
                                    aVar.f1626b.f1637a = true;
                                }
                                if (Build.VERSION.SDK_INT >= 17 && !aVar.e.f1641a) {
                                    aVar.e.f1641a = true;
                                    aVar.e.f1642b = childAt.getRotation();
                                    aVar.e.f1643c = childAt.getRotationX();
                                    aVar.e.f1644d = childAt.getRotationY();
                                    aVar.e.e = childAt.getScaleX();
                                    aVar.e.f = childAt.getScaleY();
                                    float pivotX = childAt.getPivotX();
                                    float pivotY = childAt.getPivotY();
                                    if (!(pivotX == 0.0d && pivotY == 0.0d)) {
                                        aVar.e.g = pivotX;
                                        aVar.e.h = pivotY;
                                    }
                                    aVar.e.i = childAt.getTranslationX();
                                    aVar.e.j = childAt.getTranslationY();
                                    if (Build.VERSION.SDK_INT >= 21) {
                                        aVar.e.k = childAt.getTranslationZ();
                                        if (aVar.e.l) {
                                            aVar.e.m = childAt.getElevation();
                                        }
                                    }
                                }
                            } else {
                                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                            }
                        }
                    }
                }
            }
            if (a2 != null) {
                a2.b(this);
            }
            this.e = this.f;
        }
        b();
        f fVar = this.av;
        if (fVar != null) {
            fVar.a();
            return;
        }
        p pVar3 = this.f1464b;
        if (!(pVar3 == null || pVar3.f1531c == null || this.f1464b.f1531c.n != 4)) {
            a(1.0f);
            a(h.f1489b);
            a(h.f1490c);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        p.a aVar;
        s sVar;
        int i;
        RectF a2;
        p pVar = this.f1464b;
        if (pVar == null || !this.h || (aVar = pVar.f1531c) == null || !aVar.a() || (sVar = aVar.l) == null) {
            return false;
        }
        if ((motionEvent.getAction() == 0 && (a2 = sVar.a(this, new RectF())) != null && !a2.contains(motionEvent.getX(), motionEvent.getY())) || (i = sVar.f1552c) == -1) {
            return false;
        }
        View view = this.ay;
        if (view == null || view.getId() != i) {
            this.ay = findViewById(i);
        }
        View view2 = this.ay;
        if (view2 == null) {
            return false;
        }
        this.ax.set(view2.getLeft(), this.ay.getTop(), this.ay.getRight(), this.ay.getBottom());
        if (!this.ax.contains(motionEvent.getX(), motionEvent.getY()) || a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.ay, motionEvent)) {
            return false;
        }
        return onTouchEvent(motionEvent);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.au = true;
        try {
            if (this.f1464b == null) {
                super.onLayout(z, i, i2, i3, i4);
                return;
            }
            int i5 = i3 - i;
            int i6 = i4 - i2;
            if (!(this.u == i5 && this.v == i6)) {
                g();
                a(true);
            }
            this.u = i5;
            this.v = i6;
            this.s = i5;
            this.t = i6;
        } finally {
            this.au = false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0094, code lost:
        if (((r0 == r0.e && r0 == r0.f) ? false : true) != false) goto L_0x0097;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x024e, code lost:
        if (r19 <= r7.m) goto L_0x0251;
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

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        p pVar = this.f1464b;
        if (pVar != null) {
            pVar.a(isRtl());
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        p pVar = this.f1464b;
        if (pVar == null || !this.h || !pVar.a()) {
            return super.onTouchEvent(motionEvent);
        }
        p.a aVar = this.f1464b.f1531c;
        if (aVar != null && !aVar.a()) {
            return super.onTouchEvent(motionEvent);
        }
        this.f1464b.a(motionEvent, this.f, this);
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.B == null) {
                this.B = new ArrayList<>();
            }
            this.B.add(motionHelper);
            if (motionHelper.f1459a) {
                if (this.am == null) {
                    this.am = new ArrayList<>();
                }
                this.am.add(motionHelper);
            }
            if (motionHelper.f1460b) {
                if (this.an == null) {
                    this.an = new ArrayList<>();
                }
                this.an.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.am;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.an;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        p pVar;
        if (this.D || this.f != -1 || (pVar = this.f1464b) == null || pVar.f1531c == null || this.f1464b.f1531c.q != 0) {
            super.requestLayout();
        }
    }

    public void setDebugMode(int i) {
        this.p = i;
        invalidate();
    }

    public void setInteractionEnabled(boolean z) {
        this.h = z;
    }

    public void setInterpolatedProgress(float f2) {
        if (this.f1464b != null) {
            a(h.f1490c);
            Interpolator d2 = this.f1464b.d();
            if (d2 != null) {
                setProgress(d2.getInterpolation(f2));
                return;
            }
        }
        setProgress(f2);
    }

    public void setOnHide(float f2) {
        ArrayList<MotionHelper> arrayList = this.an;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.an.get(i).setProgress(f2);
            }
        }
    }

    public void setOnShow(float f2) {
        ArrayList<MotionHelper> arrayList = this.am;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.am.get(i).setProgress(f2);
            }
        }
    }

    public void setProgress(float f2) {
        int i = (f2 > BitmapDescriptorFactory.HUE_RED ? 1 : (f2 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        if (i < 0 || f2 > 1.0f) {
            Log.w("MotionLayout", "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.av == null) {
                this.av = new f();
            }
            this.av.f1484a = f2;
            return;
        }
        if (i <= 0) {
            this.f = this.e;
            if (this.l == BitmapDescriptorFactory.HUE_RED) {
                a(h.f1491d);
            }
        } else if (f2 >= 1.0f) {
            this.f = this.g;
            if (this.l == 1.0f) {
                a(h.f1491d);
            }
        } else {
            this.f = -1;
            a(h.f1490c);
        }
        if (this.f1464b != null) {
            this.ae = true;
            this.m = f2;
            this.k = f2;
            this.ad = -1L;
            this.ac = -1L;
            this.f1465c = null;
            this.n = true;
            invalidate();
        }
    }

    public void setProgress(float f2, float f3) {
        if (!isAttachedToWindow()) {
            if (this.av == null) {
                this.av = new f();
            }
            this.av.f1484a = f2;
            this.av.f1485b = f3;
            return;
        }
        setProgress(f2);
        a(h.f1490c);
        this.f1466d = f3;
        a(1.0f);
    }

    public void setScene(p pVar) {
        this.f1464b = pVar;
        pVar.a(isRtl());
        g();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int i, int i2, int i3) {
        a(h.f1489b);
        this.f = i;
        this.e = -1;
        this.g = -1;
        if (this.R != null) {
            this.R.a(i, i2, i3);
            return;
        }
        p pVar = this.f1464b;
        if (pVar != null) {
            pVar.a(i).b(this);
        }
    }

    public void setTransition(int i) {
        p.a aVar;
        p pVar = this.f1464b;
        if (pVar != null) {
            Iterator<p.a> it2 = pVar.f1532d.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    aVar = null;
                    break;
                }
                aVar = it2.next();
                if (aVar.f1535a == i) {
                    break;
                }
            }
            this.e = aVar.f1538d;
            this.g = aVar.f1537c;
            if (!isAttachedToWindow()) {
                if (this.av == null) {
                    this.av = new f();
                }
                this.av.f1486c = this.e;
                this.av.f1487d = this.g;
                return;
            }
            float f2 = Float.NaN;
            int i2 = this.f;
            if (i2 == this.e) {
                f2 = BitmapDescriptorFactory.HUE_RED;
            } else if (i2 == this.g) {
                f2 = 1.0f;
            }
            this.f1464b.a(aVar);
            this.M.a(this.f1464b.a(this.e), this.f1464b.a(this.g));
            g();
            this.l = Float.isNaN(f2) ? BitmapDescriptorFactory.HUE_RED : f2;
            if (Float.isNaN(f2)) {
                StringBuilder sb = new StringBuilder();
                sb.append(androidx.constraintlayout.motion.widget.a.a());
                sb.append(" transitionToStart ");
                a(BitmapDescriptorFactory.HUE_RED);
                return;
            }
            setProgress(f2);
        }
    }

    public void setTransition(int i, int i2) {
        if (!isAttachedToWindow()) {
            if (this.av == null) {
                this.av = new f();
            }
            this.av.f1486c = i;
            this.av.f1487d = i2;
            return;
        }
        p pVar = this.f1464b;
        if (pVar != null) {
            this.e = i;
            this.g = i2;
            pVar.a(i, i2);
            this.M.a(this.f1464b.a(i), this.f1464b.a(i2));
            g();
            this.l = BitmapDescriptorFactory.HUE_RED;
            a(BitmapDescriptorFactory.HUE_RED);
        }
    }

    public void setTransitionDuration(int i) {
        p pVar = this.f1464b;
        if (pVar == null) {
            Log.e("MotionLayout", "MotionScene not defined");
        } else if (pVar.f1531c != null) {
            pVar.f1531c.h = i;
        } else {
            pVar.g = i;
        }
    }

    public void setTransitionListener(g gVar) {
        this.af = gVar;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.av == null) {
            this.av = new f();
        }
        f fVar = this.av;
        fVar.f1484a = bundle.getFloat("motion.progress");
        fVar.f1485b = bundle.getFloat("motion.velocity");
        fVar.f1486c = bundle.getInt("motion.StartState");
        fVar.f1487d = bundle.getInt("motion.EndState");
        if (isAttachedToWindow()) {
            this.av.a();
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return androidx.constraintlayout.motion.widget.a.a(context, this.e) + "->" + androidx.constraintlayout.motion.widget.a.a(context, this.g) + " (pos:" + this.l + " Dpos/Dt:" + this.f1466d;
    }
}
