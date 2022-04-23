package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.HashMap;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r.class */
public abstract class r {
    private static float k = 6.2831855f;

    /* renamed from: a  reason: collision with root package name */
    protected androidx.constraintlayout.motion.a.b f1546a;
    String e;
    long g;
    private int i;

    /* renamed from: b  reason: collision with root package name */
    protected int f1547b = 0;

    /* renamed from: c  reason: collision with root package name */
    protected int[] f1548c = new int[10];

    /* renamed from: d  reason: collision with root package name */
    protected float[][] f1549d = new float[10][3];
    private float[] j = new float[3];
    protected boolean f = false;
    float h = Float.NaN;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$a.class */
    public static final class a extends r {
        a() {
        }

        @Override // androidx.constraintlayout.motion.widget.r
        public final boolean a(View view, float f, long j, androidx.constraintlayout.motion.widget.d dVar) {
            view.setAlpha(a(f, j, view, dVar));
            return this.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$b.class */
    public static final class b extends r {
        String i;
        SparseArray<androidx.constraintlayout.widget.a> j;
        SparseArray<float[]> k = new SparseArray<>();
        float[] l;
        float[] m;

        public b(String str, SparseArray<androidx.constraintlayout.widget.a> sparseArray) {
            this.i = str.split(",")[1];
            this.j = sparseArray;
        }

        @Override // androidx.constraintlayout.motion.widget.r
        public final void a(int i) {
            int size = this.j.size();
            int a2 = this.j.valueAt(0).a();
            double[] dArr = new double[size];
            int i2 = a2 + 2;
            this.l = new float[i2];
            this.m = new float[a2];
            double[][] dArr2 = new double[size][i2];
            for (int i3 = 0; i3 < size; i3++) {
                int keyAt = this.j.keyAt(i3);
                androidx.constraintlayout.widget.a valueAt = this.j.valueAt(i3);
                float[] valueAt2 = this.k.valueAt(i3);
                dArr[i3] = keyAt * 0.01d;
                valueAt.a(this.l);
                int i4 = 0;
                while (true) {
                    float[] fArr = this.l;
                    if (i4 < fArr.length) {
                        dArr2[i3][i4] = fArr[i4];
                        i4++;
                    }
                }
                dArr2[i3][a2] = valueAt2[0];
                dArr2[i3][a2 + 1] = valueAt2[1];
            }
            this.f1546a = androidx.constraintlayout.motion.a.b.a(i, dArr, dArr2);
        }

        @Override // androidx.constraintlayout.motion.widget.r
        public final void a(int i, float f, float f2, int i2, float f3) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        public final void a(int i, androidx.constraintlayout.widget.a aVar, float f, int i2, float f2) {
            this.j.append(i, aVar);
            this.k.append(i, new float[]{f, f2});
            this.f1547b = Math.max(this.f1547b, i2);
        }

        @Override // androidx.constraintlayout.motion.widget.r
        public final boolean a(View view, float f, long j, androidx.constraintlayout.motion.widget.d dVar) {
            this.f1546a.a(f, this.l);
            float[] fArr = this.l;
            float f2 = fArr[fArr.length - 2];
            float f3 = fArr[fArr.length - 1];
            long j2 = this.g;
            if (Float.isNaN(this.h)) {
                this.h = dVar.a(view, this.i);
                if (Float.isNaN(this.h)) {
                    this.h = BitmapDescriptorFactory.HUE_RED;
                }
            }
            this.h = (float) ((this.h + (((j - j2) * 1.0E-9d) * f2)) % 1.0d);
            this.g = j;
            float a2 = a(this.h);
            this.f = false;
            for (int i = 0; i < this.m.length; i++) {
                this.f |= ((double) this.l[i]) != 0.0d;
                this.m[i] = (this.l[i] * a2) + f3;
            }
            this.j.valueAt(0).a(view, this.m);
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                this.f = true;
            }
            return this.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$c.class */
    public static final class c extends r {
        c() {
        }

        @Override // androidx.constraintlayout.motion.widget.r
        public final boolean a(View view, float f, long j, androidx.constraintlayout.motion.widget.d dVar) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(a(f, j, view, dVar));
            }
            return this.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$d.class */
    public static final class d extends r {
        d() {
        }

        @Override // androidx.constraintlayout.motion.widget.r
        public final boolean a(View view, float f, long j, androidx.constraintlayout.motion.widget.d dVar) {
            return this.f;
        }

        public final boolean a(View view, androidx.constraintlayout.motion.widget.d dVar, float f, long j, double d2, double d3) {
            view.setRotation(a(f, j, view, dVar) + ((float) Math.toDegrees(Math.atan2(d3, d2))));
            return this.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$e.class */
    public static final class e extends r {
        boolean i = false;

        e() {
        }

        @Override // androidx.constraintlayout.motion.widget.r
        public final boolean a(View view, float f, long j, androidx.constraintlayout.motion.widget.d dVar) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(a(f, j, view, dVar));
            } else if (this.i) {
                return false;
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.i = true;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(a(f, j, view, dVar)));
                    } catch (IllegalAccessException e2) {
                        Log.e("SplineSet", "unable to setProgress", e2);
                    } catch (InvocationTargetException e3) {
                        Log.e("SplineSet", "unable to setProgress", e3);
                    }
                }
            }
            return this.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$f.class */
    public static final class f extends r {
        f() {
        }

        @Override // androidx.constraintlayout.motion.widget.r
        public final boolean a(View view, float f, long j, androidx.constraintlayout.motion.widget.d dVar) {
            view.setRotation(a(f, j, view, dVar));
            return this.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$g.class */
    public static final class g extends r {
        g() {
        }

        @Override // androidx.constraintlayout.motion.widget.r
        public final boolean a(View view, float f, long j, androidx.constraintlayout.motion.widget.d dVar) {
            view.setRotationX(a(f, j, view, dVar));
            return this.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$h.class */
    public static final class h extends r {
        h() {
        }

        @Override // androidx.constraintlayout.motion.widget.r
        public final boolean a(View view, float f, long j, androidx.constraintlayout.motion.widget.d dVar) {
            view.setRotationY(a(f, j, view, dVar));
            return this.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$i.class */
    public static final class i extends r {
        i() {
        }

        @Override // androidx.constraintlayout.motion.widget.r
        public final boolean a(View view, float f, long j, androidx.constraintlayout.motion.widget.d dVar) {
            view.setScaleX(a(f, j, view, dVar));
            return this.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$j.class */
    public static final class j extends r {
        j() {
        }

        @Override // androidx.constraintlayout.motion.widget.r
        public final boolean a(View view, float f, long j, androidx.constraintlayout.motion.widget.d dVar) {
            view.setScaleY(a(f, j, view, dVar));
            return this.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$k.class */
    public static final class k {
        private k() {
        }

        static void a(int[] iArr, float[][] fArr, int i) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i;
            iArr2[1] = 0;
            int i2 = 2;
            while (i2 > 0) {
                int i3 = i2 - 1;
                int i4 = iArr2[i3];
                int i5 = i3 - 1;
                int i6 = iArr2[i5];
                i2 = i5;
                if (i4 < i6) {
                    int i7 = iArr[i6];
                    int i8 = i4;
                    int i9 = i8;
                    while (i8 < i6) {
                        i9 = i9;
                        if (iArr[i8] <= i7) {
                            a(iArr, fArr, i9, i8);
                            i9++;
                        }
                        i8++;
                    }
                    a(iArr, fArr, i9, i6);
                    int i10 = i5 + 1;
                    iArr2[i5] = i9 - 1;
                    int i11 = i10 + 1;
                    iArr2[i10] = i4;
                    int i12 = i11 + 1;
                    iArr2[i11] = i6;
                    i2 = i12 + 1;
                    iArr2[i12] = i9 + 1;
                }
            }
        }

        private static void a(int[] iArr, float[][] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float[] fArr2 = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = fArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$l.class */
    public static final class l extends r {
        l() {
        }

        @Override // androidx.constraintlayout.motion.widget.r
        public final boolean a(View view, float f, long j, androidx.constraintlayout.motion.widget.d dVar) {
            view.setTranslationX(a(f, j, view, dVar));
            return this.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$m.class */
    public static final class m extends r {
        m() {
        }

        @Override // androidx.constraintlayout.motion.widget.r
        public final boolean a(View view, float f, long j, androidx.constraintlayout.motion.widget.d dVar) {
            view.setTranslationY(a(f, j, view, dVar));
            return this.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$n.class */
    public static final class n extends r {
        n() {
        }

        @Override // androidx.constraintlayout.motion.widget.r
        public final boolean a(View view, float f, long j, androidx.constraintlayout.motion.widget.d dVar) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(a(f, j, view, dVar));
            }
            return this.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r a(String str, long j2) {
        r rVar;
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c2 = 2;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c2 = 3;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c2 = 4;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals(EventConstants.PROGRESS)) {
                    c2 = 5;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c2 = 6;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c2 = 7;
                    break;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c2 = '\b';
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c2 = 11;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                rVar = new g();
                break;
            case 1:
                rVar = new h();
                break;
            case 2:
                rVar = new l();
                break;
            case 3:
                rVar = new m();
                break;
            case 4:
                rVar = new n();
                break;
            case 5:
                rVar = new e();
                break;
            case 6:
                rVar = new i();
                break;
            case 7:
                rVar = new j();
                break;
            case '\b':
                rVar = new f();
                break;
            case '\t':
                rVar = new c();
                break;
            case '\n':
                rVar = new d();
                break;
            case 11:
                rVar = new a();
                break;
            default:
                return null;
        }
        rVar.g = j2;
        return rVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r a(String str, SparseArray<androidx.constraintlayout.widget.a> sparseArray) {
        return new b(str, sparseArray);
    }

    protected final float a(float f2) {
        float abs;
        switch (this.f1547b) {
            case 1:
                return Math.signum(f2 * k);
            case 2:
                abs = Math.abs(f2);
                break;
            case 3:
                return (((f2 * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                abs = ((f2 * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f2 * k);
            case 6:
                float abs2 = 1.0f - Math.abs(((f2 * 4.0f) % 4.0f) - 2.0f);
                abs = abs2 * abs2;
                break;
            default:
                return (float) Math.sin(f2 * k);
        }
        return 1.0f - abs;
    }

    public final float a(float f2, long j2, View view, androidx.constraintlayout.motion.widget.d dVar) {
        this.f1546a.a(f2, this.j);
        float[] fArr = this.j;
        float f3 = fArr[1];
        int i2 = (f3 > BitmapDescriptorFactory.HUE_RED ? 1 : (f3 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        if (i2 == 0) {
            this.f = false;
            return fArr[2];
        }
        if (Float.isNaN(this.h)) {
            float a2 = dVar.a(view, this.e);
            this.h = a2;
            if (Float.isNaN(a2)) {
                this.h = BitmapDescriptorFactory.HUE_RED;
            }
        }
        float f4 = (float) ((this.h + (((j2 - this.g) * 1.0E-9d) * f3)) % 1.0d);
        this.h = f4;
        String str = this.e;
        if (!dVar.f1497a.containsKey(view)) {
            HashMap<String, float[]> hashMap = new HashMap<>();
            hashMap.put(str, new float[]{f4});
            dVar.f1497a.put(view, hashMap);
        } else {
            HashMap<String, float[]> hashMap2 = dVar.f1497a.get(view);
            if (!hashMap2.containsKey(str)) {
                hashMap2.put(str, new float[]{f4});
                dVar.f1497a.put(view, hashMap2);
            } else {
                float[] fArr2 = hashMap2.get(str);
                float[] fArr3 = fArr2;
                if (fArr2.length <= 0) {
                    fArr3 = Arrays.copyOf(fArr2, 1);
                }
                fArr3[0] = f4;
                hashMap2.put(str, fArr3);
            }
        }
        this.g = j2;
        float f5 = this.j[0];
        float a3 = a(this.h);
        float f6 = this.j[2];
        boolean z = true;
        if (f5 == BitmapDescriptorFactory.HUE_RED) {
            z = i2 != 0;
        }
        this.f = z;
        return (a3 * f5) + f6;
    }

    public void a(int i2) {
        int i3 = this.i;
        if (i3 == 0) {
            Log.e("SplineSet", "Error no points added to " + this.e);
            return;
        }
        k.a(this.f1548c, this.f1549d, i3 - 1);
        int i4 = 1;
        int i5 = 0;
        while (true) {
            int[] iArr = this.f1548c;
            if (i4 >= iArr.length) {
                break;
            }
            i5 = i5;
            if (iArr[i4] != iArr[i4 - 1]) {
                i5++;
            }
            i4++;
        }
        int i6 = i5;
        if (i5 == 0) {
            i6 = 1;
        }
        double[] dArr = new double[i6];
        double[][] dArr2 = new double[i6][3];
        int i7 = 0;
        for (int i8 = 0; i8 < this.i; i8++) {
            if (i8 > 0) {
                int[] iArr2 = this.f1548c;
                i7 = i7;
                if (iArr2[i8] == iArr2[i8 - 1]) {
                }
            }
            dArr[i7] = this.f1548c[i8] * 0.01d;
            double[] dArr3 = dArr2[i7];
            float[][] fArr = this.f1549d;
            dArr3[0] = fArr[i8][0];
            dArr2[i7][1] = fArr[i8][1];
            dArr2[i7][2] = fArr[i8][2];
            i7++;
        }
        this.f1546a = androidx.constraintlayout.motion.a.b.a(i2, dArr, dArr2);
    }

    public void a(int i2, float f2, float f3, int i3, float f4) {
        int[] iArr = this.f1548c;
        int i4 = this.i;
        iArr[i4] = i2;
        float[][] fArr = this.f1549d;
        fArr[i4][0] = f2;
        fArr[i4][1] = f3;
        fArr[i4][2] = f4;
        this.f1547b = Math.max(this.f1547b, i3);
        this.i++;
    }

    public abstract boolean a(View view, float f2, long j2, androidx.constraintlayout.motion.widget.d dVar);

    public String toString() {
        String str = this.e;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i2 = 0; i2 < this.i; i2++) {
            str = str + "[" + this.f1548c[i2] + " , " + decimalFormat.format(this.f1549d[i2]) + "] ";
        }
        return str;
    }
}
