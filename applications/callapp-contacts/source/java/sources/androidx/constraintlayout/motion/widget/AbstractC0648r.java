package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.p029a.AbstractC0572b;
import androidx.constraintlayout.widget.C0674a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.HashMap;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: androidx.constraintlayout.motion.widget.r */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r.class */
public abstract class AbstractC0648r {

    /* renamed from: k */
    private static float f2806k = 6.2831855f;

    /* renamed from: a */
    protected AbstractC0572b f2807a;

    /* renamed from: e */
    String f2811e;

    /* renamed from: g */
    long f2813g;

    /* renamed from: i */
    private int f2815i;

    /* renamed from: b */
    protected int f2808b = 0;

    /* renamed from: c */
    protected int[] f2809c = new int[10];

    /* renamed from: d */
    protected float[][] f2810d = new float[10][3];

    /* renamed from: j */
    private float[] f2816j = new float[3];

    /* renamed from: f */
    protected boolean f2812f = false;

    /* renamed from: h */
    float f2814h = Float.NaN;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$a.class */
    public static final class C0649a extends AbstractC0648r {
        C0649a() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0648r
        /* renamed from: a */
        public final boolean mo44781a(View view, float f, long j, C0595d c0595d) {
            view.setAlpha(m44790a(f, j, view, c0595d));
            return this.f2812f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$b.class */
    public static final class C0650b extends AbstractC0648r {

        /* renamed from: i */
        String f2817i;

        /* renamed from: j */
        SparseArray<C0674a> f2818j;

        /* renamed from: k */
        SparseArray<float[]> f2819k = new SparseArray<>();

        /* renamed from: l */
        float[] f2820l;

        /* renamed from: m */
        float[] f2821m;

        public C0650b(String str, SparseArray<C0674a> sparseArray) {
            this.f2817i = str.split(",")[1];
            this.f2818j = sparseArray;
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0648r
        /* renamed from: a */
        public final void mo44787a(int i) {
            float[] fArr;
            int size = this.f2818j.size();
            int m44727a = this.f2818j.valueAt(0).m44727a();
            double[] dArr = new double[size];
            int i2 = m44727a + 2;
            this.f2820l = new float[i2];
            this.f2821m = new float[m44727a];
            double[][] dArr2 = new double[size][i2];
            for (int i3 = 0; i3 < size; i3++) {
                int keyAt = this.f2818j.keyAt(i3);
                C0674a valueAt = this.f2818j.valueAt(i3);
                float[] valueAt2 = this.f2819k.valueAt(i3);
                dArr[i3] = keyAt * 0.01d;
                valueAt.m44720a(this.f2820l);
                int i4 = 0;
                while (true) {
                    if (i4 < this.f2820l.length) {
                        dArr2[i3][i4] = fArr[i4];
                        i4++;
                    }
                }
                dArr2[i3][m44727a] = valueAt2[0];
                dArr2[i3][m44727a + 1] = valueAt2[1];
            }
            this.f2807a = AbstractC0572b.m45079a(i, dArr, dArr2);
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0648r
        /* renamed from: a */
        public final void mo44786a(int i, float f, float f2, int i2, float f3) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        /* renamed from: a */
        public final void m44785a(int i, C0674a c0674a, float f, int i2, float f2) {
            this.f2818j.append(i, c0674a);
            this.f2819k.append(i, new float[]{f, f2});
            this.f2808b = Math.max(this.f2808b, i2);
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0648r
        /* renamed from: a */
        public final boolean mo44781a(View view, float f, long j, C0595d c0595d) {
            this.f2807a.mo45069a(f, this.f2820l);
            float[] fArr = this.f2820l;
            float f2 = fArr[fArr.length - 2];
            float f3 = fArr[fArr.length - 1];
            long j2 = this.f2813g;
            if (Float.isNaN(this.f2814h)) {
                this.f2814h = c0595d.m44948a(view, this.f2817i);
                if (Float.isNaN(this.f2814h)) {
                    this.f2814h = BitmapDescriptorFactory.HUE_RED;
                }
            }
            this.f2814h = (float) ((this.f2814h + (((j - j2) * 1.0E-9d) * f2)) % 1.0d);
            this.f2813g = j;
            float a = m44791a(this.f2814h);
            this.f2812f = false;
            for (int i = 0; i < this.f2821m.length; i++) {
                this.f2812f |= ((double) this.f2820l[i]) != 0.0d;
                this.f2821m[i] = (this.f2820l[i] * a) + f3;
            }
            this.f2818j.valueAt(0).m44723a(view, this.f2821m);
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                this.f2812f = true;
            }
            return this.f2812f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$c */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$c.class */
    public static final class C0651c extends AbstractC0648r {
        C0651c() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0648r
        /* renamed from: a */
        public final boolean mo44781a(View view, float f, long j, C0595d c0595d) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(m44790a(f, j, view, c0595d));
            }
            return this.f2812f;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.r$d */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$d.class */
    public static final class C0652d extends AbstractC0648r {
        C0652d() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0648r
        /* renamed from: a */
        public final boolean mo44781a(View view, float f, long j, C0595d c0595d) {
            return this.f2812f;
        }

        /* renamed from: a */
        public final boolean m44784a(View view, C0595d c0595d, float f, long j, double d, double d2) {
            view.setRotation(m44790a(f, j, view, c0595d) + ((float) Math.toDegrees(Math.atan2(d2, d))));
            return this.f2812f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$e */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$e.class */
    public static final class C0653e extends AbstractC0648r {

        /* renamed from: i */
        boolean f2822i = false;

        C0653e() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0648r
        /* renamed from: a */
        public final boolean mo44781a(View view, float f, long j, C0595d c0595d) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(m44790a(f, j, view, c0595d));
            } else if (this.f2822i) {
                return false;
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.f2822i = true;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(m44790a(f, j, view, c0595d)));
                    } catch (IllegalAccessException e2) {
                        Log.e("SplineSet", "unable to setProgress", e2);
                    } catch (InvocationTargetException e3) {
                        Log.e("SplineSet", "unable to setProgress", e3);
                    }
                }
            }
            return this.f2812f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$f */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$f.class */
    public static final class C0654f extends AbstractC0648r {
        C0654f() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0648r
        /* renamed from: a */
        public final boolean mo44781a(View view, float f, long j, C0595d c0595d) {
            view.setRotation(m44790a(f, j, view, c0595d));
            return this.f2812f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$g */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$g.class */
    public static final class C0655g extends AbstractC0648r {
        C0655g() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0648r
        /* renamed from: a */
        public final boolean mo44781a(View view, float f, long j, C0595d c0595d) {
            view.setRotationX(m44790a(f, j, view, c0595d));
            return this.f2812f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$h */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$h.class */
    public static final class C0656h extends AbstractC0648r {
        C0656h() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0648r
        /* renamed from: a */
        public final boolean mo44781a(View view, float f, long j, C0595d c0595d) {
            view.setRotationY(m44790a(f, j, view, c0595d));
            return this.f2812f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$i */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$i.class */
    public static final class C0657i extends AbstractC0648r {
        C0657i() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0648r
        /* renamed from: a */
        public final boolean mo44781a(View view, float f, long j, C0595d c0595d) {
            view.setScaleX(m44790a(f, j, view, c0595d));
            return this.f2812f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$j */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$j.class */
    public static final class C0658j extends AbstractC0648r {
        C0658j() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0648r
        /* renamed from: a */
        public final boolean mo44781a(View view, float f, long j, C0595d c0595d) {
            view.setScaleY(m44790a(f, j, view, c0595d));
            return this.f2812f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$k */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$k.class */
    public static final class C0659k {
        private C0659k() {
        }

        /* renamed from: a */
        static void m44783a(int[] iArr, float[][] fArr, int i) {
            int i2;
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i;
            iArr2[1] = 0;
            int i3 = 2;
            while (i3 > 0) {
                int i4 = i3 - 1;
                int i5 = iArr2[i4];
                int i6 = i4 - 1;
                int i7 = iArr2[i6];
                i3 = i6;
                if (i5 < i7) {
                    int i8 = iArr[i7];
                    int i9 = i5;
                    int i10 = i9;
                    while (true) {
                        i2 = i10;
                        if (i9 >= i7) {
                            break;
                        }
                        int i11 = i2;
                        if (iArr[i9] <= i8) {
                            m44782a(iArr, fArr, i2, i9);
                            i11 = i2 + 1;
                        }
                        i9++;
                        i10 = i11;
                    }
                    m44782a(iArr, fArr, i2, i7);
                    int i12 = i6 + 1;
                    iArr2[i6] = i2 - 1;
                    int i13 = i12 + 1;
                    iArr2[i12] = i5;
                    int i14 = i13 + 1;
                    iArr2[i13] = i7;
                    i3 = i14 + 1;
                    iArr2[i14] = i2 + 1;
                }
            }
        }

        /* renamed from: a */
        private static void m44782a(int[] iArr, float[][] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float[] fArr2 = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = fArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$l */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$l.class */
    public static final class C0660l extends AbstractC0648r {
        C0660l() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0648r
        /* renamed from: a */
        public final boolean mo44781a(View view, float f, long j, C0595d c0595d) {
            view.setTranslationX(m44790a(f, j, view, c0595d));
            return this.f2812f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$m */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$m.class */
    public static final class C0661m extends AbstractC0648r {
        C0661m() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0648r
        /* renamed from: a */
        public final boolean mo44781a(View view, float f, long j, C0595d c0595d) {
            view.setTranslationY(m44790a(f, j, view, c0595d));
            return this.f2812f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$n */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$n.class */
    public static final class C0662n extends AbstractC0648r {
        C0662n() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0648r
        /* renamed from: a */
        public final boolean mo44781a(View view, float f, long j, C0595d c0595d) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(m44790a(f, j, view, c0595d));
            }
            return this.f2812f;
        }
    }

    /* renamed from: a */
    public static AbstractC0648r m44789a(String str, long j) {
        C0649a c0649a;
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    z = false;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    z = true;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    z = true;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    z = true;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    z = true;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals(EventConstants.PROGRESS)) {
                    z = true;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    z = true;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    z = true;
                    break;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    z = true;
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    z = true;
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    z = true;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                c0649a = new C0655g();
                break;
            case true:
                c0649a = new C0656h();
                break;
            case true:
                c0649a = new C0660l();
                break;
            case true:
                c0649a = new C0661m();
                break;
            case true:
                c0649a = new C0662n();
                break;
            case true:
                c0649a = new C0653e();
                break;
            case true:
                c0649a = new C0657i();
                break;
            case true:
                c0649a = new C0658j();
                break;
            case true:
                c0649a = new C0654f();
                break;
            case true:
                c0649a = new C0651c();
                break;
            case true:
                c0649a = new C0652d();
                break;
            case true:
                c0649a = new C0649a();
                break;
            default:
                return null;
        }
        c0649a.f2813g = j;
        return c0649a;
    }

    /* renamed from: a */
    public static AbstractC0648r m44788a(String str, SparseArray<C0674a> sparseArray) {
        return new C0650b(str, sparseArray);
    }

    /* renamed from: a */
    protected final float m44791a(float f) {
        float abs;
        switch (this.f2808b) {
            case 1:
                return Math.signum(f * f2806k);
            case 2:
                abs = Math.abs(f);
                break;
            case 3:
                return (((f * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                abs = ((f * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f * f2806k);
            case 6:
                float abs2 = 1.0f - Math.abs(((f * 4.0f) % 4.0f) - 2.0f);
                abs = abs2 * abs2;
                break;
            default:
                return (float) Math.sin(f * f2806k);
        }
        return 1.0f - abs;
    }

    /* renamed from: a */
    public final float m44790a(float f, long j, View view, C0595d c0595d) {
        this.f2807a.mo45069a(f, this.f2816j);
        float[] fArr = this.f2816j;
        float f2 = fArr[1];
        int i = (f2 > BitmapDescriptorFactory.HUE_RED ? 1 : (f2 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        if (i == 0) {
            this.f2812f = false;
            return fArr[2];
        }
        if (Float.isNaN(this.f2814h)) {
            float m44948a = c0595d.m44948a(view, this.f2811e);
            this.f2814h = m44948a;
            if (Float.isNaN(m44948a)) {
                this.f2814h = BitmapDescriptorFactory.HUE_RED;
            }
        }
        float f3 = (float) ((this.f2814h + (((j - this.f2813g) * 1.0E-9d) * f2)) % 1.0d);
        this.f2814h = f3;
        String str = this.f2811e;
        if (!c0595d.f2579a.containsKey(view)) {
            HashMap<String, float[]> hashMap = new HashMap<>();
            hashMap.put(str, new float[]{f3});
            c0595d.f2579a.put(view, hashMap);
        } else {
            HashMap<String, float[]> hashMap2 = c0595d.f2579a.get(view);
            if (!hashMap2.containsKey(str)) {
                hashMap2.put(str, new float[]{f3});
                c0595d.f2579a.put(view, hashMap2);
            } else {
                float[] fArr2 = hashMap2.get(str);
                float[] fArr3 = fArr2;
                if (fArr2.length <= 0) {
                    fArr3 = Arrays.copyOf(fArr2, 1);
                }
                fArr3[0] = f3;
                hashMap2.put(str, fArr3);
            }
        }
        this.f2813g = j;
        float f4 = this.f2816j[0];
        float m44791a = m44791a(this.f2814h);
        float f5 = this.f2816j[2];
        boolean z = true;
        if (f4 == BitmapDescriptorFactory.HUE_RED) {
            z = i != 0;
        }
        this.f2812f = z;
        return (m44791a * f4) + f5;
    }

    /* renamed from: a */
    public void mo44787a(int i) {
        int i2;
        int i3;
        int i4 = this.f2815i;
        if (i4 == 0) {
            Log.e("SplineSet", "Error no points added to " + this.f2811e);
            return;
        }
        C0659k.m44783a(this.f2809c, this.f2810d, i4 - 1);
        int i5 = 1;
        int i6 = 0;
        while (true) {
            i2 = i6;
            int[] iArr = this.f2809c;
            if (i5 >= iArr.length) {
                break;
            }
            int i7 = i2;
            if (iArr[i5] != iArr[i5 - 1]) {
                i7 = i2 + 1;
            }
            i5++;
            i6 = i7;
        }
        int i8 = i2;
        if (i2 == 0) {
            i8 = 1;
        }
        double[] dArr = new double[i8];
        double[][] dArr2 = new double[i8][3];
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int i11 = i10;
            if (i9 >= this.f2815i) {
                this.f2807a = AbstractC0572b.m45079a(i, dArr, dArr2);
                return;
            }
            if (i9 > 0) {
                int[] iArr2 = this.f2809c;
                i3 = i11;
                if (iArr2[i9] == iArr2[i9 - 1]) {
                    i9++;
                    i10 = i3;
                }
            }
            dArr[i11] = this.f2809c[i9] * 0.01d;
            double[] dArr3 = dArr2[i11];
            float[][] fArr = this.f2810d;
            dArr3[0] = fArr[i9][0];
            dArr2[i11][1] = fArr[i9][1];
            dArr2[i11][2] = fArr[i9][2];
            i3 = i11 + 1;
            i9++;
            i10 = i3;
        }
    }

    /* renamed from: a */
    public void mo44786a(int i, float f, float f2, int i2, float f3) {
        int[] iArr = this.f2809c;
        int i3 = this.f2815i;
        iArr[i3] = i;
        float[][] fArr = this.f2810d;
        fArr[i3][0] = f;
        fArr[i3][1] = f2;
        fArr[i3][2] = f3;
        this.f2808b = Math.max(this.f2808b, i2);
        this.f2815i++;
    }

    /* renamed from: a */
    public abstract boolean mo44781a(View view, float f, long j, C0595d c0595d);

    public String toString() {
        String str = this.f2811e;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.f2815i; i++) {
            str = str + "[" + this.f2809c[i] + " , " + decimalFormat.format(this.f2810d[i]) + "] ";
        }
        return str;
    }
}
