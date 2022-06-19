package androidx.constraintlayout.motion.widget;

import android.view.View;
import androidx.constraintlayout.widget.C0515b;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.util.Arrays;
import java.util.LinkedHashMap;
import p020b.p037f.p038a.p039a.C1508c;
/* renamed from: androidx.constraintlayout.motion.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/p.class */
public class C0414p implements Comparable<C0414p> {

    /* renamed from: d */
    static String[] f1858d = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: e */
    C1508c f1859e;

    /* renamed from: f */
    int f1860f;

    /* renamed from: g */
    float f1861g;

    /* renamed from: h */
    float f1862h;

    /* renamed from: i */
    float f1863i;

    /* renamed from: j */
    float f1864j;

    /* renamed from: k */
    float f1865k;

    /* renamed from: l */
    float f1866l;

    /* renamed from: m */
    float f1867m;

    /* renamed from: n */
    float f1868n;

    /* renamed from: o */
    int f1869o;

    /* renamed from: p */
    LinkedHashMap<String, ConstraintAttribute> f1870p;

    /* renamed from: q */
    int f1871q;

    /* renamed from: r */
    double[] f1872r;

    /* renamed from: s */
    double[] f1873s;

    public C0414p() {
        this.f1860f = 0;
        this.f1867m = Float.NaN;
        this.f1868n = Float.NaN;
        this.f1869o = AbstractC0380c.f1675a;
        this.f1870p = new LinkedHashMap<>();
        this.f1871q = 0;
        this.f1872r = new double[18];
        this.f1873s = new double[18];
    }

    public C0414p(int i, int i2, C0404i c0404i, C0414p c0414p, C0414p c0414p2) {
        this.f1860f = 0;
        this.f1867m = Float.NaN;
        this.f1868n = Float.NaN;
        this.f1869o = AbstractC0380c.f1675a;
        this.f1870p = new LinkedHashMap<>();
        this.f1871q = 0;
        this.f1872r = new double[18];
        this.f1873s = new double[18];
        int i3 = c0404i.f1757q;
        if (i3 == 1) {
            m34299n(c0404i, c0414p, c0414p2);
        } else if (i3 != 2) {
            m34300m(c0404i, c0414p, c0414p2);
        } else {
            m34298o(i, i2, c0404i, c0414p, c0414p2);
        }
    }

    /* renamed from: e */
    private boolean m34308e(float f, float f2) {
        boolean z = true;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            return Float.isNaN(f) != Float.isNaN(f2);
        }
        if (Math.abs(f - f2) <= 1.0E-6f) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public void m34310a(C0515b.C0516a c0516a) {
        this.f1859e = C1508c.m29884c(c0516a.f2623c.f2693d);
        C0515b.C0518c c0518c = c0516a.f2623c;
        this.f1869o = c0518c.f2694e;
        this.f1867m = c0518c.f2697h;
        this.f1860f = c0518c.f2695f;
        this.f1868n = c0516a.f2622b.f2702e;
        for (String str : c0516a.f2626f.keySet()) {
            ConstraintAttribute constraintAttribute = c0516a.f2626f.get(str);
            if (constraintAttribute.m33716c() != ConstraintAttribute.AttributeType.STRING_TYPE) {
                this.f1870p.put(str, constraintAttribute);
            }
        }
    }

    /* renamed from: d */
    public int compareTo(C0414p c0414p) {
        return Float.compare(this.f1862h, c0414p.f1862h);
    }

    /* renamed from: f */
    public void m34307f(C0414p c0414p, boolean[] zArr, String[] strArr, boolean z) {
        zArr[0] = zArr[0] | m34308e(this.f1862h, c0414p.f1862h);
        zArr[1] = zArr[1] | m34308e(this.f1863i, c0414p.f1863i) | z;
        zArr[2] = z | m34308e(this.f1864j, c0414p.f1864j) | zArr[2];
        zArr[3] = zArr[3] | m34308e(this.f1865k, c0414p.f1865k);
        zArr[4] = m34308e(this.f1866l, c0414p.f1866l) | zArr[4];
    }

    /* renamed from: g */
    public void m34306g(double[] dArr, int[] iArr) {
        float f = this.f1862h;
        int i = 0;
        float f2 = this.f1863i;
        float f3 = this.f1864j;
        float f4 = this.f1865k;
        float f5 = this.f1866l;
        float f6 = this.f1867m;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < iArr.length) {
                int i4 = i3;
                if (iArr[i] < 6) {
                    dArr[i3] = new float[]{f, f2, f3, f4, f5, f6}[iArr[i]];
                    i4 = i3 + 1;
                }
                i++;
                i2 = i4;
            } else {
                return;
            }
        }
    }

    /* renamed from: h */
    public void m34305h(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f1863i;
        float f2 = this.f1864j;
        float f3 = this.f1865k;
        float f4 = this.f1866l;
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
        fArr[i] = f + (f3 / 2.0f) + 0.0f;
        fArr[i + 1] = f2 + (f4 / 2.0f) + 0.0f;
    }

    /* renamed from: i */
    public int m34304i(String str, double[] dArr, int i) {
        float[] fArr;
        ConstraintAttribute constraintAttribute = this.f1870p.get(str);
        if (constraintAttribute.m33713f() == 1) {
            dArr[i] = constraintAttribute.m33715d();
            return 1;
        }
        int m33713f = constraintAttribute.m33713f();
        constraintAttribute.m33714e(new float[m33713f]);
        int i2 = 0;
        while (i2 < m33713f) {
            dArr[i] = fArr[i2];
            i2++;
            i++;
        }
        return m33713f;
    }

    /* renamed from: j */
    public int m34303j(String str) {
        return this.f1870p.get(str).m33713f();
    }

    /* renamed from: k */
    public void m34302k(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f1863i;
        float f2 = this.f1864j;
        float f3 = this.f1865k;
        float f4 = this.f1866l;
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
        float f6 = f3 + f;
        float f7 = f4 + f2;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        int i4 = i + 1;
        fArr[i] = f + 0.0f;
        int i5 = i4 + 1;
        fArr[i4] = f2 + 0.0f;
        int i6 = i5 + 1;
        fArr[i5] = f6 + 0.0f;
        int i7 = i6 + 1;
        fArr[i6] = f2 + 0.0f;
        int i8 = i7 + 1;
        fArr[i7] = f6 + 0.0f;
        int i9 = i8 + 1;
        fArr[i8] = f7 + 0.0f;
        fArr[i9] = f + 0.0f;
        fArr[i9 + 1] = f7 + 0.0f;
    }

    /* renamed from: l */
    public boolean m34301l(String str) {
        return this.f1870p.containsKey(str);
    }

    /* renamed from: m */
    void m34300m(C0404i c0404i, C0414p c0414p, C0414p c0414p2) {
        float f;
        float f2;
        float f3 = c0404i.f1676b / 100.0f;
        this.f1861g = f3;
        this.f1860f = c0404i.f1750j;
        float f4 = Float.isNaN(c0404i.f1751k) ? f3 : c0404i.f1751k;
        float f5 = Float.isNaN(c0404i.f1752l) ? f3 : c0404i.f1752l;
        float f6 = c0414p2.f1865k;
        float f7 = c0414p.f1865k;
        float f8 = c0414p2.f1866l;
        float f9 = c0414p.f1866l;
        this.f1862h = this.f1861g;
        float f10 = c0414p.f1863i;
        float f11 = f7 / 2.0f;
        float f12 = c0414p.f1864j;
        float f13 = f9 / 2.0f;
        float f14 = f6 / 2.0f;
        float f15 = f8 / 2.0f;
        float f16 = (c0414p2.f1863i + f14) - (f11 + f10);
        float f17 = (c0414p2.f1864j + f15) - (f12 + f13);
        float f18 = ((f6 - f7) * f4) / 2.0f;
        this.f1863i = (int) ((f10 + (f16 * f3)) - f18);
        float f19 = ((f8 - f9) * f5) / 2.0f;
        this.f1864j = (int) ((f12 + (f17 * f3)) - f19);
        this.f1865k = (int) (f7 + f);
        this.f1866l = (int) (f9 + f2);
        float f20 = Float.isNaN(c0404i.f1753m) ? f3 : c0404i.f1753m;
        float f21 = 0.0f;
        float f22 = Float.isNaN(c0404i.f1756p) ? 0.0f : c0404i.f1756p;
        if (!Float.isNaN(c0404i.f1754n)) {
            f3 = c0404i.f1754n;
        }
        if (!Float.isNaN(c0404i.f1755o)) {
            f21 = c0404i.f1755o;
        }
        this.f1871q = 2;
        this.f1863i = (int) (((c0414p.f1863i + (f20 * f16)) + (f21 * f17)) - f18);
        this.f1864j = (int) (((c0414p.f1864j + (f16 * f22)) + (f17 * f3)) - f19);
        this.f1859e = C1508c.m29884c(c0404i.f1748h);
        this.f1869o = c0404i.f1749i;
    }

    /* renamed from: n */
    void m34299n(C0404i c0404i, C0414p c0414p, C0414p c0414p2) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5 = c0404i.f1676b / 100.0f;
        this.f1861g = f5;
        this.f1860f = c0404i.f1750j;
        float f6 = Float.isNaN(c0404i.f1751k) ? f5 : c0404i.f1751k;
        float f7 = Float.isNaN(c0404i.f1752l) ? f5 : c0404i.f1752l;
        float f8 = c0414p2.f1865k;
        float f9 = c0414p.f1865k;
        float f10 = c0414p2.f1866l;
        float f11 = c0414p.f1866l;
        this.f1862h = this.f1861g;
        if (!Float.isNaN(c0404i.f1753m)) {
            f5 = c0404i.f1753m;
        }
        float f12 = c0414p.f1863i;
        float f13 = c0414p.f1865k / 2.0f;
        float f14 = c0414p.f1864j;
        float f15 = c0414p.f1866l / 2.0f;
        float f16 = (c0414p2.f1863i + (c0414p2.f1865k / 2.0f)) - (f13 + f12);
        float f17 = (c0414p2.f1864j + (c0414p2.f1866l / 2.0f)) - (f15 + f14);
        float f18 = f16 * f5;
        float f19 = ((f8 - f9) * f6) / 2.0f;
        this.f1863i = (int) ((f12 + f18) - f19);
        float f20 = f5 * f17;
        float f21 = ((f10 - f11) * f7) / 2.0f;
        this.f1864j = (int) ((f14 + f20) - f21);
        this.f1865k = (int) (f + f3);
        this.f1866l = (int) (f2 + f4);
        float f22 = Float.isNaN(c0404i.f1754n) ? 0.0f : c0404i.f1754n;
        float f23 = -f17;
        this.f1871q = 1;
        float f24 = (int) ((c0414p.f1863i + f18) - f19);
        this.f1863i = f24;
        float f25 = (int) ((c0414p.f1864j + f20) - f21);
        this.f1864j = f25;
        this.f1863i = f24 + (f23 * f22);
        this.f1864j = f25 + (f16 * f22);
        this.f1859e = C1508c.m29884c(c0404i.f1748h);
        this.f1869o = c0404i.f1749i;
    }

    /* renamed from: o */
    void m34298o(int i, int i2, C0404i c0404i, C0414p c0414p, C0414p c0414p2) {
        float f = c0404i.f1676b / 100.0f;
        this.f1861g = f;
        this.f1860f = c0404i.f1750j;
        float f2 = Float.isNaN(c0404i.f1751k) ? f : c0404i.f1751k;
        float f3 = Float.isNaN(c0404i.f1752l) ? f : c0404i.f1752l;
        float f4 = c0414p2.f1865k;
        float f5 = c0414p.f1865k;
        float f6 = c0414p2.f1866l;
        float f7 = c0414p.f1866l;
        this.f1862h = this.f1861g;
        float f8 = c0414p.f1863i;
        float f9 = f5 / 2.0f;
        float f10 = c0414p.f1864j;
        float f11 = f7 / 2.0f;
        float f12 = c0414p2.f1863i;
        float f13 = f4 / 2.0f;
        float f14 = c0414p2.f1864j;
        float f15 = f6 / 2.0f;
        float f16 = (f4 - f5) * f2;
        this.f1863i = (int) ((f8 + (((f12 + f13) - (f9 + f8)) * f)) - (f16 / 2.0f));
        float f17 = (f6 - f7) * f3;
        this.f1864j = (int) ((f10 + (((f14 + f15) - (f10 + f11)) * f)) - (f17 / 2.0f));
        this.f1865k = (int) (f5 + f16);
        this.f1866l = (int) (f7 + f17);
        this.f1871q = 3;
        if (!Float.isNaN(c0404i.f1753m)) {
            this.f1863i = (int) (c0404i.f1753m * ((int) (i - this.f1865k)));
        }
        if (!Float.isNaN(c0404i.f1754n)) {
            this.f1864j = (int) (c0404i.f1754n * ((int) (i2 - this.f1866l)));
        }
        this.f1859e = C1508c.m29884c(c0404i.f1748h);
        this.f1869o = c0404i.f1749i;
    }

    /* renamed from: p */
    public void m34297p(float f, float f2, float f3, float f4) {
        this.f1863i = f;
        this.f1864j = f2;
        this.f1865k = f3;
        this.f1866l = f4;
    }

    /* renamed from: q */
    public void m34296q(float f, float f2, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        for (int i = 0; i < iArr.length; i++) {
            float f7 = (float) dArr[i];
            double d = dArr2[i];
            int i2 = iArr[i];
            if (i2 == 1) {
                f3 = f7;
            } else if (i2 == 2) {
                f5 = f7;
            } else if (i2 == 3) {
                f4 = f7;
            } else if (i2 == 4) {
                f6 = f7;
            }
        }
        float f8 = f3 - ((0.0f * f4) / 2.0f);
        float f9 = f5 - ((0.0f * f6) / 2.0f);
        fArr[0] = (f8 * (1.0f - f)) + (((f4 * 1.0f) + f8) * f) + 0.0f;
        fArr[1] = (f9 * (1.0f - f2)) + (((f6 * 1.0f) + f9) * f2) + 0.0f;
    }

    /* JADX WARN: Type inference failed for: r0v95, types: [double] */
    /* JADX WARN: Type inference failed for: r0v97 */
    /* renamed from: r */
    public void m34295r(View view, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3) {
        float f = this.f1863i;
        float f2 = this.f1864j;
        float f3 = this.f1865k;
        float f4 = this.f1866l;
        if (iArr.length != 0 && this.f1872r.length <= iArr[iArr.length - 1]) {
            int i = iArr[iArr.length - 1] + 1;
            this.f1872r = new double[i];
            this.f1873s = new double[i];
        }
        Arrays.fill(this.f1872r, Double.NaN);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.f1872r[iArr[i2]] = dArr[i2];
            this.f1873s[iArr[i2]] = dArr2[i2];
        }
        int i3 = 0;
        float f5 = Float.NaN;
        float f6 = 0.0f;
        float f7 = 0.0f;
        float f8 = 0.0f;
        float f9 = 0.0f;
        while (true) {
            double[] dArr4 = this.f1872r;
            if (i3 >= dArr4.length) {
                break;
            }
            char c = 0;
            if (!Double.isNaN(dArr4[i3]) || (dArr3 != 0 && dArr3[i3] != 0.0d)) {
                if (dArr3 != 0) {
                    c = dArr3[i3];
                }
                if (!Double.isNaN(this.f1872r[i3])) {
                    c = this.f1872r[i3] + c;
                }
                float f10 = c;
                float f11 = (float) this.f1873s[i3];
                if (i3 == 1) {
                    f6 = f11;
                    f = f10;
                } else if (i3 == 2) {
                    f2 = f10;
                    f8 = f11;
                } else if (i3 == 3) {
                    f3 = f10;
                    f7 = f11;
                } else if (i3 == 4) {
                    f4 = f10;
                    f9 = f11;
                } else if (i3 == 5) {
                    f5 = f10;
                }
            }
            i3++;
        }
        if (!Float.isNaN(f5)) {
            float f12 = Float.NaN;
            if (Float.isNaN(Float.NaN)) {
                f12 = 0.0f;
            }
            view.setRotation((float) (f12 + f5 + Math.toDegrees(Math.atan2(f8 + (f9 / 2.0f), f6 + (f7 / 2.0f)))));
        } else if (!Float.isNaN(Float.NaN)) {
            view.setRotation(Float.NaN);
        }
        float f13 = f + 0.5f;
        int i4 = (int) f13;
        float f14 = f2 + 0.5f;
        int i5 = (int) f14;
        int i6 = (int) (f13 + f3);
        int i7 = (int) (f14 + f4);
        int i8 = i6 - i4;
        int i9 = i7 - i5;
        if ((i8 == view.getMeasuredWidth() && i9 == view.getMeasuredHeight()) ? false : true) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i8, 1073741824), View.MeasureSpec.makeMeasureSpec(i9, 1073741824));
        }
        view.layout(i4, i5, i6, i7);
    }
}
