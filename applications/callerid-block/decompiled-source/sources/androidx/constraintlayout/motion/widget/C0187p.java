package androidx.constraintlayout.motion.widget;

import androidx.constraintlayout.widget.C0221b;
import androidx.constraintlayout.widget.ConstraintAttribute;
import d.f.a.a.c;
import java.util.LinkedHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.constraintlayout.motion.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/p.class */
public class C0187p implements Comparable<C0187p> {

    /* renamed from: p */
    static String[] f914p = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: b */
    c f915b;

    /* renamed from: c */
    int f916c;

    /* renamed from: d */
    float f917d;

    /* renamed from: e */
    float f918e;

    /* renamed from: f */
    float f919f;

    /* renamed from: g */
    float f920g;

    /* renamed from: h */
    float f921h;

    /* renamed from: i */
    float f922i;

    /* renamed from: j */
    float f923j;

    /* renamed from: k */
    int f924k;

    /* renamed from: l */
    LinkedHashMap<String, ConstraintAttribute> f925l;

    /* renamed from: m */
    int f926m;

    /* renamed from: n */
    double[] f927n;

    /* renamed from: o */
    double[] f928o;

    public C0187p() {
        this.f916c = 0;
        this.f923j = Float.NaN;
        this.f924k = AbstractC0177c.f838e;
        this.f925l = new LinkedHashMap<>();
        this.f926m = 0;
        this.f927n = new double[18];
        this.f928o = new double[18];
    }

    public C0187p(int i, int i2, i iVar, C0187p pVar, C0187p pVar2) {
        this.f916c = 0;
        this.f923j = Float.NaN;
        this.f924k = AbstractC0177c.f838e;
        this.f925l = new LinkedHashMap<>();
        this.f926m = 0;
        this.f927n = new double[18];
        this.f928o = new double[18];
        int i3 = iVar.p;
        if (i3 == 1) {
            m14206r(iVar, pVar, pVar2);
        } else if (i3 != 2) {
            m14207q(iVar, pVar, pVar2);
        } else {
            m14205s(i, i2, iVar, pVar, pVar2);
        }
    }

    /* renamed from: h */
    private boolean m14215h(float f, float f2) {
        boolean z = true;
        boolean z2 = true;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            if (Float.isNaN(f) == Float.isNaN(f2)) {
                z = false;
            }
            return z;
        }
        if (Math.abs(f - f2) <= 1.0E-6f) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: a */
    public void m14217a(C0221b.C0222a aVar) {
        this.f915b = c.c(aVar.f1428c.f1498c);
        C0221b.C0224c cVar = aVar.f1428c;
        this.f924k = cVar.f1499d;
        this.f923j = cVar.f1502g;
        this.f916c = cVar.f1500e;
        float f = aVar.f1427b.f1507e;
        for (String str : aVar.f1431f.keySet()) {
            ConstraintAttribute constraintAttribute = aVar.f1431f.get(str);
            if (constraintAttribute.m13870c() != ConstraintAttribute.AttributeType.STRING_TYPE) {
                this.f925l.put(str, constraintAttribute);
            }
        }
    }

    /* renamed from: e */
    public int compareTo(C0187p pVar) {
        return Float.compare(this.f918e, pVar.f918e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m14214j(C0187p pVar, boolean[] zArr, String[] strArr, boolean z) {
        zArr[0] = zArr[0] | m14215h(this.f918e, pVar.f918e);
        zArr[1] = zArr[1] | m14215h(this.f919f, pVar.f919f) | z;
        zArr[2] = z | m14215h(this.f920g, pVar.f920g) | zArr[2];
        zArr[3] = zArr[3] | m14215h(this.f921h, pVar.f921h);
        zArr[4] = m14215h(this.f922i, pVar.f922i) | zArr[4];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public void m14213k(double[] dArr, int[] iArr) {
        float f = this.f918e;
        float f2 = this.f919f;
        float f3 = this.f920g;
        float f4 = this.f921h;
        float f5 = this.f922i;
        float f6 = this.f923j;
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            i = i;
            if (iArr[i2] < 6) {
                dArr[i] = new float[]{f, f2, f3, f4, f5, f6}[iArr[i2]];
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m14212l(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f919f;
        float f2 = this.f920g;
        float f3 = this.f921h;
        float f4 = this.f922i;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public int m14211m(String str, double[] dArr, int i) {
        ConstraintAttribute constraintAttribute = this.f925l.get(str);
        if (constraintAttribute.m13867f() == 1) {
            dArr[i] = constraintAttribute.m13869d();
            return 1;
        }
        int f = constraintAttribute.m13867f();
        float[] fArr = new float[f];
        constraintAttribute.m13868e(fArr);
        int i2 = 0;
        while (i2 < f) {
            dArr[i] = fArr[i2];
            i2++;
            i++;
        }
        return f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public int m14210n(String str) {
        return this.f925l.get(str).m13867f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m14209o(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f919f;
        float f2 = this.f920g;
        float f3 = this.f921h;
        float f4 = this.f922i;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public boolean m14208p(String str) {
        return this.f925l.containsKey(str);
    }

    /* renamed from: q */
    void m14207q(i iVar, C0187p pVar, C0187p pVar2) {
        float f = iVar.f839a / 100.0f;
        this.f917d = f;
        this.f916c = iVar.i;
        float f2 = Float.isNaN(iVar.j) ? f : iVar.j;
        float f3 = Float.isNaN(iVar.k) ? f : iVar.k;
        float f4 = pVar2.f921h;
        float f5 = pVar.f921h;
        float f6 = pVar2.f922i;
        float f7 = pVar.f922i;
        this.f918e = this.f917d;
        float f8 = pVar.f919f;
        float f9 = f5 / 2.0f;
        float f10 = pVar.f920g;
        float f11 = f7 / 2.0f;
        float f12 = f4 / 2.0f;
        float f13 = f6 / 2.0f;
        float f14 = (pVar2.f919f + f12) - (f9 + f8);
        float f15 = (pVar2.f920g + f13) - (f10 + f11);
        float f16 = (f4 - f5) * f2;
        float f17 = f16 / 2.0f;
        this.f919f = (int) ((f8 + (f14 * f)) - f17);
        float f18 = (f6 - f7) * f3;
        float f19 = f18 / 2.0f;
        this.f920g = (int) ((f10 + (f15 * f)) - f19);
        this.f921h = (int) (f5 + f16);
        this.f922i = (int) (f7 + f18);
        float f20 = Float.isNaN(iVar.l) ? f : iVar.l;
        float f21 = 0.0f;
        float f22 = Float.isNaN(iVar.o) ? 0.0f : iVar.o;
        if (!Float.isNaN(iVar.m)) {
            f = iVar.m;
        }
        if (!Float.isNaN(iVar.n)) {
            f21 = iVar.n;
        }
        this.f926m = 2;
        this.f919f = (int) (((pVar.f919f + (f20 * f14)) + (f21 * f15)) - f17);
        this.f920g = (int) (((pVar.f920g + (f14 * f22)) + (f15 * f)) - f19);
        this.f915b = c.c(iVar.g);
        this.f924k = iVar.h;
    }

    /* renamed from: r */
    void m14206r(i iVar, C0187p pVar, C0187p pVar2) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5 = iVar.f839a / 100.0f;
        this.f917d = f5;
        this.f916c = iVar.i;
        float f6 = Float.isNaN(iVar.j) ? f5 : iVar.j;
        float f7 = Float.isNaN(iVar.k) ? f5 : iVar.k;
        float f8 = pVar2.f921h;
        float f9 = pVar.f921h;
        float f10 = pVar2.f922i;
        float f11 = pVar.f922i;
        this.f918e = this.f917d;
        if (!Float.isNaN(iVar.l)) {
            f5 = iVar.l;
        }
        float f12 = pVar.f919f;
        float f13 = pVar.f921h / 2.0f;
        float f14 = pVar.f920g;
        float f15 = pVar.f922i / 2.0f;
        float f16 = (pVar2.f919f + (pVar2.f921h / 2.0f)) - (f13 + f12);
        float f17 = (pVar2.f920g + (pVar2.f922i / 2.0f)) - (f15 + f14);
        float f18 = f16 * f5;
        float f19 = ((f8 - f9) * f6) / 2.0f;
        this.f919f = (int) ((f12 + f18) - f19);
        float f20 = f5 * f17;
        float f21 = ((f10 - f11) * f7) / 2.0f;
        this.f920g = (int) ((f14 + f20) - f21);
        this.f921h = (int) (f + f3);
        this.f922i = (int) (f2 + f4);
        float f22 = Float.isNaN(iVar.m) ? 0.0f : iVar.m;
        float f23 = -f17;
        this.f926m = 1;
        float f24 = (int) ((pVar.f919f + f18) - f19);
        this.f919f = f24;
        float f25 = (int) ((pVar.f920g + f20) - f21);
        this.f920g = f25;
        this.f919f = f24 + (f23 * f22);
        this.f920g = f25 + (f16 * f22);
        this.f915b = c.c(iVar.g);
        this.f924k = iVar.h;
    }

    /* renamed from: s */
    void m14205s(int i, int i2, i iVar, C0187p pVar, C0187p pVar2) {
        float f = iVar.f839a / 100.0f;
        this.f917d = f;
        this.f916c = iVar.i;
        float f2 = Float.isNaN(iVar.j) ? f : iVar.j;
        float f3 = Float.isNaN(iVar.k) ? f : iVar.k;
        float f4 = pVar2.f921h;
        float f5 = pVar.f921h;
        float f6 = pVar2.f922i;
        float f7 = pVar.f922i;
        this.f918e = this.f917d;
        float f8 = pVar.f919f;
        float f9 = f5 / 2.0f;
        float f10 = pVar.f920g;
        float f11 = f7 / 2.0f;
        float f12 = pVar2.f919f;
        float f13 = f4 / 2.0f;
        float f14 = pVar2.f920g;
        float f15 = f6 / 2.0f;
        float f16 = (f4 - f5) * f2;
        this.f919f = (int) ((f8 + (((f12 + f13) - (f9 + f8)) * f)) - (f16 / 2.0f));
        float f17 = (f6 - f7) * f3;
        this.f920g = (int) ((f10 + (((f14 + f15) - (f10 + f11)) * f)) - (f17 / 2.0f));
        this.f921h = (int) (f5 + f16);
        this.f922i = (int) (f7 + f17);
        this.f926m = 3;
        if (!Float.isNaN(iVar.l)) {
            this.f919f = (int) (iVar.l * ((int) (i - this.f921h)));
        }
        if (!Float.isNaN(iVar.m)) {
            this.f920g = (int) (iVar.m * ((int) (i2 - this.f922i)));
        }
        this.f915b = c.c(iVar.g);
        this.f924k = iVar.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public void m14204t(float f, float f2, float f3, float f4) {
        this.f919f = f;
        this.f920g = f2;
        this.f921h = f3;
        this.f922i = f4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public void m14203u(float f, float f2, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x015b, code lost:
        if (java.lang.Float.isNaN(Float.NaN) == false) goto L_0x015e;
     */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m14202v(android.view.View r8, int[] r9, double[] r10, double[] r11, double[] r12) {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0187p.m14202v(android.view.View, int[], double[], double[], double[]):void");
    }
}
