package p1727n3.p1795i.p1796a.p1798b;

import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.HashMap;
import p1727n3.p1795i.p1796a.p1797a.AbstractC26271b;
import p1727n3.p1795i.p1802c.C26383a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.i.a.b.s */
/* loaded from: classes-dex2jar.jar:n3/i/a/b/s.class */
public abstract class AbstractC26334s {

    /* renamed from: a */
    public AbstractC26271b f73521a;

    /* renamed from: e */
    public int f73525e;

    /* renamed from: f */
    public String f73526f;

    /* renamed from: i */
    public long f73529i;

    /* renamed from: b */
    public int f73522b = 0;

    /* renamed from: c */
    public int[] f73523c = new int[10];

    /* renamed from: d */
    public float[][] f73524d = new float[10][3];

    /* renamed from: g */
    public float[] f73527g = new float[3];

    /* renamed from: h */
    public boolean f73528h = false;

    /* renamed from: j */
    public float f73530j = Float.NaN;

    /* renamed from: n3.i.a.b.s$a */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/s$a.class */
    public static class C26335a extends AbstractC26334s {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26334s
        /* renamed from: d */
        public boolean mo2162d(View view, float f, long j, C26283d c26283d) {
            view.setAlpha(m2165b(f, j, view, c26283d));
            return this.f73528h;
        }
    }

    /* renamed from: n3.i.a.b.s$b */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/s$b.class */
    public static class C26336b extends AbstractC26334s {

        /* renamed from: k */
        public String f73531k;

        /* renamed from: l */
        public SparseArray<C26383a> f73532l;

        /* renamed from: m */
        public SparseArray<float[]> f73533m = new SparseArray<>();

        /* renamed from: n */
        public float[] f73534n;

        /* renamed from: o */
        public float[] f73535o;

        public C26336b(String str, SparseArray<C26383a> sparseArray) {
            this.f73531k = str.split(",")[1];
            this.f73532l = sparseArray;
        }

        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26334s
        /* renamed from: c */
        public void mo2164c(int i, float f, float f2, int i2, float f3) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26334s
        /* renamed from: d */
        public boolean mo2162d(View view, float f, long j, C26283d c26283d) {
            this.f73521a.mo2226d(f, this.f73534n);
            float[] fArr = this.f73534n;
            float f2 = fArr[fArr.length - 2];
            float f3 = fArr[fArr.length - 1];
            long j2 = this.f73529i;
            if (Float.isNaN(this.f73530j)) {
                float m2217a = c26283d.m2217a(view, this.f73531k, 0);
                this.f73530j = m2217a;
                if (Float.isNaN(m2217a)) {
                    this.f73530j = 0.0f;
                }
            }
            float f4 = (float) (((((j - j2) * 1.0E-9d) * f2) + this.f73530j) % 1.0d);
            this.f73530j = f4;
            this.f73529i = j;
            float m2166a = m2166a(f4);
            this.f73528h = false;
            int i = 0;
            while (true) {
                float[] fArr2 = this.f73535o;
                if (i >= fArr2.length) {
                    break;
                }
                boolean z = this.f73528h;
                float[] fArr3 = this.f73534n;
                this.f73528h = z | (((double) fArr3[i]) != PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
                fArr2[i] = (fArr3[i] * m2166a) + f3;
                i++;
            }
            this.f73532l.valueAt(0).m1991g(view, this.f73535o);
            if (f2 != 0.0f) {
                this.f73528h = true;
            }
            return this.f73528h;
        }

        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26334s
        /* renamed from: e */
        public void mo2163e(int i) {
            float[] fArr;
            int size = this.f73532l.size();
            int m1994d = this.f73532l.valueAt(0).m1994d();
            double[] dArr = new double[size];
            int i2 = m1994d + 2;
            this.f73534n = new float[i2];
            this.f73535o = new float[m1994d];
            double[][] dArr2 = new double[size][i2];
            for (int i3 = 0; i3 < size; i3++) {
                int keyAt = this.f73532l.keyAt(i3);
                C26383a valueAt = this.f73532l.valueAt(i3);
                float[] valueAt2 = this.f73533m.valueAt(i3);
                dArr[i3] = keyAt * 0.01d;
                valueAt.m1995c(this.f73534n);
                int i4 = 0;
                while (true) {
                    if (i4 < this.f73534n.length) {
                        dArr2[i3][i4] = fArr[i4];
                        i4++;
                    }
                }
                dArr2[i3][m1994d] = valueAt2[0];
                dArr2[i3][m1994d + 1] = valueAt2[1];
            }
            this.f73521a = AbstractC26271b.m2234a(i, dArr, dArr2);
        }
    }

    /* renamed from: n3.i.a.b.s$c */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/s$c.class */
    public static class C26337c extends AbstractC26334s {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26334s
        /* renamed from: d */
        public boolean mo2162d(View view, float f, long j, C26283d c26283d) {
            view.setElevation(m2165b(f, j, view, c26283d));
            return this.f73528h;
        }
    }

    /* renamed from: n3.i.a.b.s$d */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/s$d.class */
    public static class C26338d extends AbstractC26334s {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26334s
        /* renamed from: d */
        public boolean mo2162d(View view, float f, long j, C26283d c26283d) {
            return this.f73528h;
        }
    }

    /* renamed from: n3.i.a.b.s$e */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/s$e.class */
    public static class C26339e extends AbstractC26334s {

        /* renamed from: k */
        public boolean f73536k = false;

        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26334s
        /* renamed from: d */
        public boolean mo2162d(View view, float f, long j, C26283d c26283d) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(m2165b(f, j, view, c26283d));
            } else if (this.f73536k) {
                return false;
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.f73536k = true;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(m2165b(f, j, view, c26283d)));
                    } catch (IllegalAccessException | InvocationTargetException e2) {
                    }
                }
            }
            return this.f73528h;
        }
    }

    /* renamed from: n3.i.a.b.s$f */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/s$f.class */
    public static class C26340f extends AbstractC26334s {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26334s
        /* renamed from: d */
        public boolean mo2162d(View view, float f, long j, C26283d c26283d) {
            view.setRotation(m2165b(f, j, view, c26283d));
            return this.f73528h;
        }
    }

    /* renamed from: n3.i.a.b.s$g */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/s$g.class */
    public static class C26341g extends AbstractC26334s {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26334s
        /* renamed from: d */
        public boolean mo2162d(View view, float f, long j, C26283d c26283d) {
            view.setRotationX(m2165b(f, j, view, c26283d));
            return this.f73528h;
        }
    }

    /* renamed from: n3.i.a.b.s$h */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/s$h.class */
    public static class C26342h extends AbstractC26334s {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26334s
        /* renamed from: d */
        public boolean mo2162d(View view, float f, long j, C26283d c26283d) {
            view.setRotationY(m2165b(f, j, view, c26283d));
            return this.f73528h;
        }
    }

    /* renamed from: n3.i.a.b.s$i */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/s$i.class */
    public static class C26343i extends AbstractC26334s {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26334s
        /* renamed from: d */
        public boolean mo2162d(View view, float f, long j, C26283d c26283d) {
            view.setScaleX(m2165b(f, j, view, c26283d));
            return this.f73528h;
        }
    }

    /* renamed from: n3.i.a.b.s$j */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/s$j.class */
    public static class C26344j extends AbstractC26334s {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26334s
        /* renamed from: d */
        public boolean mo2162d(View view, float f, long j, C26283d c26283d) {
            view.setScaleY(m2165b(f, j, view, c26283d));
            return this.f73528h;
        }
    }

    /* renamed from: n3.i.a.b.s$k */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/s$k.class */
    public static class C26345k extends AbstractC26334s {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26334s
        /* renamed from: d */
        public boolean mo2162d(View view, float f, long j, C26283d c26283d) {
            view.setTranslationX(m2165b(f, j, view, c26283d));
            return this.f73528h;
        }
    }

    /* renamed from: n3.i.a.b.s$l */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/s$l.class */
    public static class C26346l extends AbstractC26334s {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26334s
        /* renamed from: d */
        public boolean mo2162d(View view, float f, long j, C26283d c26283d) {
            view.setTranslationY(m2165b(f, j, view, c26283d));
            return this.f73528h;
        }
    }

    /* renamed from: n3.i.a.b.s$m */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/s$m.class */
    public static class C26347m extends AbstractC26334s {
        @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26334s
        /* renamed from: d */
        public boolean mo2162d(View view, float f, long j, C26283d c26283d) {
            view.setTranslationZ(m2165b(f, j, view, c26283d));
            return this.f73528h;
        }
    }

    /* renamed from: a */
    public float m2166a(float f) {
        float abs;
        switch (this.f73522b) {
            case 1:
                return Math.signum(f * 6.2831855f);
            case 2:
                abs = Math.abs(f);
                break;
            case 3:
                return (((f * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                abs = ((f * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f * 6.2831855f);
            case 6:
                float abs2 = 1.0f - Math.abs(((f * 4.0f) % 4.0f) - 2.0f);
                abs = abs2 * abs2;
                break;
            default:
                return (float) Math.sin(f * 6.2831855f);
        }
        return 1.0f - abs;
    }

    /* renamed from: b */
    public float m2165b(float f, long j, View view, C26283d c26283d) {
        this.f73521a.mo2226d(f, this.f73527g);
        float[] fArr = this.f73527g;
        float f2 = fArr[1];
        int i = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
        if (i == 0) {
            this.f73528h = false;
            return fArr[2];
        }
        if (Float.isNaN(this.f73530j)) {
            float m2217a = c26283d.m2217a(view, this.f73526f, 0);
            this.f73530j = m2217a;
            if (Float.isNaN(m2217a)) {
                this.f73530j = 0.0f;
            }
        }
        float f3 = (float) (((((j - this.f73529i) * 1.0E-9d) * f2) + this.f73530j) % 1.0d);
        this.f73530j = f3;
        String str = this.f73526f;
        if (!c26283d.f73331a.containsKey(view)) {
            HashMap<String, float[]> hashMap = new HashMap<>();
            hashMap.put(str, new float[]{f3});
            c26283d.f73331a.put(view, hashMap);
        } else {
            HashMap<String, float[]> hashMap2 = c26283d.f73331a.get(view);
            if (!hashMap2.containsKey(str)) {
                hashMap2.put(str, new float[]{f3});
                c26283d.f73331a.put(view, hashMap2);
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
        this.f73529i = j;
        float f4 = this.f73527g[0];
        float m2166a = m2166a(this.f73530j);
        float f5 = this.f73527g[2];
        boolean z = true;
        if (f4 == 0.0f) {
            z = i != 0;
        }
        this.f73528h = z;
        return (m2166a * f4) + f5;
    }

    /* renamed from: c */
    public void mo2164c(int i, float f, float f2, int i2, float f3) {
        int[] iArr = this.f73523c;
        int i3 = this.f73525e;
        iArr[i3] = i;
        float[][] fArr = this.f73524d;
        fArr[i3][0] = f;
        fArr[i3][1] = f2;
        fArr[i3][2] = f3;
        this.f73522b = Math.max(this.f73522b, i2);
        this.f73525e++;
    }

    /* renamed from: d */
    public abstract boolean mo2162d(View view, float f, long j, C26283d c26283d);

    /* renamed from: e */
    public void mo2163e(int i) {
        int i2;
        int i3;
        int i4 = this.f73525e;
        if (i4 == 0) {
            return;
        }
        int[] iArr = this.f73523c;
        float[][] fArr = this.f73524d;
        int[] iArr2 = new int[iArr.length + 10];
        iArr2[0] = i4 - 1;
        iArr2[1] = 0;
        int i5 = 2;
        while (i5 > 0) {
            int i6 = i5 - 1;
            int i7 = iArr2[i6];
            int i8 = i6 - 1;
            int i9 = iArr2[i8];
            i5 = i8;
            if (i7 < i9) {
                int i10 = iArr[i9];
                int i11 = i7;
                int i12 = i11;
                while (true) {
                    i3 = i12;
                    if (i11 >= i9) {
                        break;
                    }
                    int i13 = i3;
                    if (iArr[i11] <= i10) {
                        int i14 = iArr[i3];
                        iArr[i3] = iArr[i11];
                        iArr[i11] = i14;
                        float[] fArr2 = fArr[i3];
                        fArr[i3] = fArr[i11];
                        fArr[i11] = fArr2;
                        i13 = i3 + 1;
                    }
                    i11++;
                    i12 = i13;
                }
                int i15 = iArr[i3];
                iArr[i3] = iArr[i9];
                iArr[i9] = i15;
                float[] fArr3 = fArr[i3];
                fArr[i3] = fArr[i9];
                fArr[i9] = fArr3;
                int i16 = i8 + 1;
                iArr2[i8] = i3 - 1;
                int i17 = i16 + 1;
                iArr2[i16] = i7;
                int i18 = i17 + 1;
                iArr2[i17] = i9;
                i5 = i18 + 1;
                iArr2[i18] = i3 + 1;
            }
        }
        int i19 = 1;
        int i20 = 0;
        while (true) {
            i2 = i20;
            int[] iArr3 = this.f73523c;
            if (i19 >= iArr3.length) {
                break;
            }
            int i21 = i2;
            if (iArr3[i19] != iArr3[i19 - 1]) {
                i21 = i2 + 1;
            }
            i19++;
            i20 = i21;
        }
        int i22 = i2;
        if (i2 == 0) {
            i22 = 1;
        }
        double[] dArr = new double[i22];
        double[][] dArr2 = new double[i22][3];
        int i23 = 0;
        for (int i24 = 0; i24 < this.f73525e; i24++) {
            if (i24 > 0) {
                int[] iArr4 = this.f73523c;
                if (iArr4[i24] == iArr4[i24 - 1]) {
                }
            }
            dArr[i23] = this.f73523c[i24] * 0.01d;
            double[] dArr3 = dArr2[i23];
            float[][] fArr4 = this.f73524d;
            dArr3[0] = fArr4[i24][0];
            dArr2[i23][1] = fArr4[i24][1];
            dArr2[i23][2] = fArr4[i24][2];
            i23++;
        }
        this.f73521a = AbstractC26271b.m2234a(i, dArr, dArr2);
    }

    public String toString() {
        String str = this.f73526f;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.f73525e; i++) {
            StringBuilder m8696K = C22128a.m8696K(str, "[");
            m8696K.append(this.f73523c[i]);
            m8696K.append(" , ");
            m8696K.append(decimalFormat.format(this.f73524d[i]));
            m8696K.append("] ");
            str = m8696K.toString();
        }
        return str;
    }
}
