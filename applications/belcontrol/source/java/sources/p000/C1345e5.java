package p000;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import i5;
import j5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import p000.C0012a7;
import x4;
/* renamed from: e5 */
/* loaded from: classes-dex2jar.jar:e5.class */
public class C1345e5 {

    /* renamed from: a */
    public View f6270a;

    /* renamed from: b */
    public int f6271b;

    /* renamed from: h */
    public k4[] f6277h;

    /* renamed from: i */
    public k4 f6278i;

    /* renamed from: m */
    public int[] f6282m;

    /* renamed from: n */
    public double[] f6283n;

    /* renamed from: o */
    public double[] f6284o;

    /* renamed from: p */
    public String[] f6285p;

    /* renamed from: q */
    public int[] f6286q;

    /* renamed from: w */
    public HashMap<String, j5> f6292w;

    /* renamed from: x */
    public HashMap<String, i5> f6293x;

    /* renamed from: y */
    public HashMap<String, x4> f6294y;

    /* renamed from: z */
    public c5[] f6295z;

    /* renamed from: c */
    public int f6272c = -1;

    /* renamed from: d */
    public g5 f6273d = new g5();

    /* renamed from: e */
    public g5 f6274e = new g5();

    /* renamed from: f */
    public C1276d5 f6275f = new C1276d5();

    /* renamed from: g */
    public C1276d5 f6276g = new C1276d5();

    /* renamed from: j */
    public float f6279j = Float.NaN;

    /* renamed from: k */
    public float f6280k = 0.0f;

    /* renamed from: l */
    public float f6281l = 1.0f;

    /* renamed from: r */
    public int f6287r = 4;

    /* renamed from: s */
    public float[] f6288s = new float[4];

    /* renamed from: t */
    public ArrayList<g5> f6289t = new ArrayList<>();

    /* renamed from: u */
    public float[] f6290u = new float[1];

    /* renamed from: v */
    public ArrayList<t4> f6291v = new ArrayList<>();

    /* renamed from: A */
    public int f6269A = t4.e;

    public C1345e5(View view) {
        m2221u(view);
    }

    /* renamed from: a */
    public void m2241a(t4 t4Var) {
        this.f6291v.add(t4Var);
    }

    /* renamed from: b */
    public void m2240b(ArrayList<t4> arrayList) {
        this.f6291v.addAll(arrayList);
    }

    /* renamed from: c */
    public int m2239c(float[] fArr, int[] iArr) {
        if (fArr != null) {
            double[] h = this.f6277h[0].h();
            if (iArr != null) {
                Iterator<g5> it = this.f6289t.iterator();
                int i = 0;
                while (it.hasNext()) {
                    iArr[i] = it.next().n;
                    i++;
                }
            }
            int i2 = 0;
            for (double d : h) {
                this.f6277h[0].d(d, this.f6283n);
                this.f6273d.f(this.f6282m, this.f6283n, fArr, i2);
                i2 += 2;
            }
            return i2 / 2;
        }
        return 0;
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [double] */
    /* JADX WARN: Type inference failed for: r0v77, types: [double] */
    /* renamed from: d */
    public void m2238d(float[] fArr, int i) {
        float f;
        float f2;
        float f3 = 1.0f / (i - 1);
        HashMap<String, i5> hashMap = this.f6293x;
        x4 x4Var = null;
        i5 i5Var = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, i5> hashMap2 = this.f6293x;
        i5 i5Var2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, x4> hashMap3 = this.f6294y;
        x4 x4Var2 = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, x4> hashMap4 = this.f6294y;
        if (hashMap4 != null) {
            x4Var = hashMap4.get("translationY");
        }
        for (int i2 = 0; i2 < i; i2++) {
            float f4 = i2 * f3;
            float f5 = this.f6281l;
            float f6 = f4;
            if (f5 != 1.0f) {
                float f7 = this.f6280k;
                float f8 = f4;
                if (f4 < f7) {
                    f8 = 0.0f;
                }
                f6 = f8;
                if (f8 > f7) {
                    f6 = f8;
                    if (f8 < 1.0d) {
                        f6 = (f8 - f7) * f5;
                    }
                }
            }
            char c = f6;
            l4 l4Var = this.f6273d.a;
            float f9 = Float.NaN;
            Iterator<g5> it = this.f6289t.iterator();
            float f10 = 0.0f;
            while (true) {
                f = f10;
                if (!it.hasNext()) {
                    break;
                }
                g5 next = it.next();
                l4 l4Var2 = next.a;
                l4 l4Var3 = l4Var;
                float f11 = f9;
                float f12 = f;
                if (l4Var2 != null) {
                    f12 = next.c;
                    if (f12 < f6) {
                        l4Var3 = l4Var2;
                        f11 = f9;
                    } else {
                        l4Var3 = l4Var;
                        f11 = f9;
                        f12 = f;
                        if (Float.isNaN(f9)) {
                            f11 = next.c;
                            f12 = f;
                            l4Var3 = l4Var;
                        }
                    }
                }
                l4Var = l4Var3;
                f9 = f11;
                f10 = f12;
            }
            if (l4Var != null) {
                float f13 = f9;
                if (Float.isNaN(f9)) {
                    f13 = 1.0f;
                }
                c = (((float) l4Var.a((f6 - f) / f2)) * (f13 - f)) + f;
            }
            this.f6277h[0].d(c, this.f6283n);
            k4 k4Var = this.f6278i;
            if (k4Var != null) {
                double[] dArr = this.f6283n;
                if (dArr.length > 0) {
                    k4Var.d(c, dArr);
                }
            }
            int i3 = i2 * 2;
            this.f6273d.f(this.f6282m, this.f6283n, fArr, i3);
            if (x4Var2 != null) {
                fArr[i3] = fArr[i3] + x4Var2.a(f6);
            } else if (i5Var != null) {
                fArr[i3] = fArr[i3] + i5Var.a(f6);
            }
            if (x4Var != null) {
                int i4 = i3 + 1;
                fArr[i4] = fArr[i4] + x4Var.a(f6);
            } else if (i5Var2 != null) {
                int i5 = i3 + 1;
                fArr[i5] = fArr[i5] + i5Var2.a(f6);
            }
        }
    }

    /* renamed from: e */
    public void m2237e(float f, float[] fArr, int i) {
        this.f6277h[0].d(m2236f(f, null), this.f6283n);
        this.f6273d.i(this.f6282m, this.f6283n, fArr, i);
    }

    /* renamed from: f */
    public final float m2236f(float f, float[] fArr) {
        float f2;
        if (fArr != null) {
            fArr[0] = 1.0f;
            f2 = f;
        } else {
            float f3 = this.f6281l;
            f2 = f;
            if (f3 != 1.0d) {
                float f4 = this.f6280k;
                float f5 = f;
                if (f < f4) {
                    f5 = 0.0f;
                }
                f2 = f5;
                if (f5 > f4) {
                    f2 = f5;
                    if (f5 < 1.0d) {
                        f2 = (f5 - f4) * f3;
                    }
                }
            }
        }
        l4 l4Var = this.f6273d.a;
        float f6 = Float.NaN;
        Iterator<g5> it = this.f6289t.iterator();
        float f7 = 0.0f;
        while (it.hasNext()) {
            g5 next = it.next();
            l4 l4Var2 = next.a;
            if (l4Var2 != null) {
                float f8 = next.c;
                if (f8 < f2) {
                    l4Var = l4Var2;
                    f7 = f8;
                } else if (Float.isNaN(f6)) {
                    f6 = next.c;
                }
            }
        }
        float f9 = f2;
        if (l4Var != null) {
            if (Float.isNaN(f6)) {
                f6 = 1.0f;
            }
            float f10 = f6 - f7;
            double d = (f2 - f7) / f10;
            float a = (((float) l4Var.a(d)) * f10) + f7;
            f9 = a;
            if (fArr != null) {
                fArr[0] = (float) l4Var.b(d);
                f9 = a;
            }
        }
        return f9;
    }

    /* renamed from: g */
    public void m2235g(float f, float f2, float f3, float[] fArr) {
        double[] dArr;
        float m2236f = m2236f(f, this.f6290u);
        k4[] k4VarArr = this.f6277h;
        int i = 0;
        if (k4VarArr == null) {
            g5 g5Var = this.f6274e;
            float f4 = g5Var.f;
            g5 g5Var2 = this.f6273d;
            float f5 = f4 - g5Var2.f;
            float f6 = g5Var.g - g5Var2.g;
            float f7 = g5Var.h;
            float f8 = g5Var2.h;
            float f9 = g5Var.j;
            float f10 = g5Var2.j;
            fArr[0] = (f5 * (1.0f - f2)) + (((f7 - f8) + f5) * f2);
            fArr[1] = (f6 * (1.0f - f3)) + (((f9 - f10) + f6) * f3);
            return;
        }
        k4 k4Var = k4VarArr[0];
        double d = m2236f;
        k4Var.g(d, this.f6284o);
        this.f6277h[0].d(d, this.f6283n);
        float f11 = this.f6290u[0];
        while (true) {
            dArr = this.f6284o;
            if (i >= dArr.length) {
                break;
            }
            dArr[i] = dArr[i] * f11;
            i++;
        }
        k4 k4Var2 = this.f6278i;
        if (k4Var2 == null) {
            this.f6273d.o(f2, f3, fArr, this.f6282m, dArr, this.f6283n);
            return;
        }
        double[] dArr2 = this.f6283n;
        if (dArr2.length <= 0) {
            return;
        }
        k4Var2.d(d, dArr2);
        this.f6278i.g(d, this.f6284o);
        this.f6273d.o(f2, f3, fArr, this.f6282m, this.f6284o, this.f6283n);
    }

    /* renamed from: h */
    public int m2234h() {
        int i = this.f6273d.b;
        Iterator<g5> it = this.f6289t.iterator();
        while (it.hasNext()) {
            i = Math.max(i, it.next().b);
        }
        return Math.max(i, this.f6274e.b);
    }

    /* renamed from: i */
    public float m2233i() {
        return this.f6274e.f;
    }

    /* renamed from: j */
    public float m2232j() {
        return this.f6274e.g;
    }

    /* renamed from: k */
    public g5 m2231k(int i) {
        return this.f6289t.get(i);
    }

    /* renamed from: l */
    public void m2230l(float f, int i, int i2, float f2, float f3, float[] fArr) {
        float m2236f = m2236f(f, this.f6290u);
        HashMap<String, i5> hashMap = this.f6293x;
        x4 x4Var = null;
        i5 i5Var = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, i5> hashMap2 = this.f6293x;
        i5 i5Var2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, i5> hashMap3 = this.f6293x;
        i5 i5Var3 = hashMap3 == null ? null : hashMap3.get("rotation");
        HashMap<String, i5> hashMap4 = this.f6293x;
        i5 i5Var4 = hashMap4 == null ? null : hashMap4.get("scaleX");
        HashMap<String, i5> hashMap5 = this.f6293x;
        i5 i5Var5 = hashMap5 == null ? null : hashMap5.get("scaleY");
        HashMap<String, x4> hashMap6 = this.f6294y;
        x4 x4Var2 = hashMap6 == null ? null : hashMap6.get("translationX");
        HashMap<String, x4> hashMap7 = this.f6294y;
        x4 x4Var3 = hashMap7 == null ? null : hashMap7.get("translationY");
        HashMap<String, x4> hashMap8 = this.f6294y;
        x4 x4Var4 = hashMap8 == null ? null : hashMap8.get("rotation");
        HashMap<String, x4> hashMap9 = this.f6294y;
        x4 x4Var5 = hashMap9 == null ? null : hashMap9.get("scaleX");
        HashMap<String, x4> hashMap10 = this.f6294y;
        if (hashMap10 != null) {
            x4Var = hashMap10.get("scaleY");
        }
        q4 q4Var = new q4();
        q4Var.b();
        q4Var.d(i5Var3, m2236f);
        q4Var.h(i5Var, i5Var2, m2236f);
        q4Var.f(i5Var4, i5Var5, m2236f);
        q4Var.c(x4Var4, m2236f);
        q4Var.g(x4Var2, x4Var3, m2236f);
        q4Var.e(x4Var5, x4Var, m2236f);
        k4 k4Var = this.f6278i;
        if (k4Var != null) {
            double[] dArr = this.f6283n;
            if (dArr.length > 0) {
                double d = m2236f;
                k4Var.d(d, dArr);
                this.f6278i.g(d, this.f6284o);
                this.f6273d.o(f2, f3, fArr, this.f6282m, this.f6284o, this.f6283n);
            }
            q4Var.a(f2, f3, i, i2, fArr);
            return;
        }
        int i3 = 0;
        if (this.f6277h == null) {
            g5 g5Var = this.f6274e;
            float f4 = g5Var.f;
            g5 g5Var2 = this.f6273d;
            float f5 = f4 - g5Var2.f;
            float f6 = g5Var.g - g5Var2.g;
            float f7 = g5Var.h;
            float f8 = g5Var2.h;
            float f9 = g5Var.j;
            float f10 = g5Var2.j;
            fArr[0] = (f5 * (1.0f - f2)) + (((f7 - f8) + f5) * f2);
            fArr[1] = (f6 * (1.0f - f3)) + (((f9 - f10) + f6) * f3);
            q4Var.b();
            q4Var.d(i5Var3, m2236f);
            q4Var.h(i5Var, i5Var2, m2236f);
            q4Var.f(i5Var4, i5Var5, m2236f);
            q4Var.c(x4Var4, m2236f);
            q4Var.g(x4Var2, x4Var3, m2236f);
            q4Var.e(x4Var5, x4Var, m2236f);
            q4Var.a(f2, f3, i, i2, fArr);
            return;
        }
        double m2236f2 = m2236f(m2236f, this.f6290u);
        this.f6277h[0].g(m2236f2, this.f6284o);
        this.f6277h[0].d(m2236f2, this.f6283n);
        float f11 = this.f6290u[0];
        while (true) {
            double[] dArr2 = this.f6284o;
            if (i3 >= dArr2.length) {
                this.f6273d.o(f2, f3, fArr, this.f6282m, dArr2, this.f6283n);
                q4Var.a(f2, f3, i, i2, fArr);
                return;
            }
            dArr2[i3] = dArr2[i3] * f11;
            i3++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* JADX WARN: Type inference failed for: r0v40, types: [double] */
    /* JADX WARN: Type inference failed for: r0v56, types: [double] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v5, types: [double] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* renamed from: m */
    public final float m2229m() {
        float f;
        float f2;
        float[] fArr = new float[2];
        float f3 = 1.0f / 99;
        ?? r12 = false;
        ?? r14 = false;
        int i = 0;
        float f4 = 0.0f;
        while (true) {
            float f5 = f4;
            if (i < 100) {
                float f6 = i * f3;
                ?? r19 = f6;
                l4 l4Var = this.f6273d.a;
                float f7 = Float.NaN;
                Iterator<g5> it = this.f6289t.iterator();
                float f8 = 0.0f;
                while (true) {
                    f = f8;
                    if (!it.hasNext()) {
                        break;
                    }
                    g5 next = it.next();
                    l4 l4Var2 = next.a;
                    l4 l4Var3 = l4Var;
                    float f9 = f7;
                    float f10 = f;
                    if (l4Var2 != null) {
                        f10 = next.c;
                        if (f10 < f6) {
                            l4Var3 = l4Var2;
                            f9 = f7;
                        } else {
                            l4Var3 = l4Var;
                            f9 = f7;
                            f10 = f;
                            if (Float.isNaN(f7)) {
                                f9 = next.c;
                                f10 = f;
                                l4Var3 = l4Var;
                            }
                        }
                    }
                    l4Var = l4Var3;
                    f7 = f9;
                    f8 = f10;
                }
                if (l4Var != null) {
                    float f11 = f7;
                    if (Float.isNaN(f7)) {
                        f11 = 1.0f;
                    }
                    r19 = (((float) l4Var.a((f6 - f) / f2)) * (f11 - f)) + f;
                }
                this.f6277h[0].d((double) r19, this.f6283n);
                this.f6273d.f(this.f6282m, this.f6283n, fArr, 0);
                float f12 = f5;
                if (i > 0) {
                    f12 = (float) (f5 + Math.hypot((r14 == true ? 1.0d : 0.0d) - fArr[1], (r12 == true ? 1.0d : 0.0d) - fArr[0]));
                }
                r12 = fArr[0];
                r14 = fArr[1];
                i++;
                f4 = f12;
            } else {
                return f5;
            }
        }
    }

    /* renamed from: n */
    public final void m2228n(g5 g5Var) {
        int binarySearch = Collections.binarySearch(this.f6289t, g5Var);
        if (binarySearch == 0) {
            Log.e("MotionController", " KeyPath positon \"" + g5Var.d + "\" outside of range");
        }
        this.f6289t.add((-binarySearch) - 1, g5Var);
    }

    /* renamed from: o */
    public boolean m2227o(View view, float f, long j, v4 v4Var) {
        boolean z;
        j5.d dVar;
        boolean z2;
        float m2236f = m2236f(f, null);
        HashMap<String, i5> hashMap = this.f6293x;
        if (hashMap != null) {
            for (i5 i5Var : hashMap.values()) {
                i5Var.f(view, m2236f);
            }
        }
        HashMap<String, j5> hashMap2 = this.f6292w;
        if (hashMap2 != null) {
            dVar = null;
            z = false;
            for (j5 j5Var : hashMap2.values()) {
                if (j5Var instanceof j5.d) {
                    dVar = (j5.d) j5Var;
                } else {
                    z |= j5Var.f(view, m2236f, j, v4Var);
                }
            }
        } else {
            dVar = null;
            z = false;
        }
        k4[] k4VarArr = this.f6277h;
        if (k4VarArr != null) {
            k4 k4Var = k4VarArr[0];
            double d = m2236f;
            k4Var.d(d, this.f6283n);
            this.f6277h[0].g(d, this.f6284o);
            k4 k4Var2 = this.f6278i;
            if (k4Var2 != null) {
                double[] dArr = this.f6283n;
                if (dArr.length > 0) {
                    k4Var2.d(d, dArr);
                    this.f6278i.g(d, this.f6284o);
                }
            }
            this.f6273d.p(view, this.f6282m, this.f6283n, this.f6284o, (double[]) null);
            HashMap<String, i5> hashMap3 = this.f6293x;
            if (hashMap3 != null) {
                Iterator<i5> it = hashMap3.values().iterator();
                while (it.hasNext()) {
                    i5.d dVar2 = (i5) it.next();
                    if (dVar2 instanceof i5.d) {
                        i5.d dVar3 = dVar2;
                        double[] dArr2 = this.f6284o;
                        dVar3.i(view, m2236f, dArr2[0], dArr2[1]);
                    }
                }
            }
            if (dVar != null) {
                double[] dArr3 = this.f6284o;
                z = dVar.j(view, v4Var, m2236f, j, dArr3[0], dArr3[1]) | z;
            }
            int i = 1;
            while (true) {
                k4[] k4VarArr2 = this.f6277h;
                if (i >= k4VarArr2.length) {
                    break;
                }
                k4VarArr2[i].e(d, this.f6288s);
                ((y6) this.f6273d.m.get(this.f6285p[i - 1])).i(view, this.f6288s);
                i++;
            }
            C1276d5 c1276d5 = this.f6275f;
            if (c1276d5.f5758b == 0) {
                if (m2236f > 0.0f) {
                    if (m2236f >= 1.0f) {
                        c1276d5 = this.f6276g;
                    } else if (this.f6276g.f5759c != c1276d5.f5759c) {
                        view.setVisibility(0);
                    }
                }
                view.setVisibility(c1276d5.f5759c);
            }
            z2 = z;
            if (this.f6295z != null) {
                int i2 = 0;
                while (true) {
                    c5[] c5VarArr = this.f6295z;
                    z2 = z;
                    if (i2 >= c5VarArr.length) {
                        break;
                    }
                    c5VarArr[i2].r(m2236f, view);
                    i2++;
                }
            }
        } else {
            g5 g5Var = this.f6273d;
            float f2 = g5Var.f;
            g5 g5Var2 = this.f6274e;
            float f3 = g5Var2.f;
            float f4 = g5Var.g;
            float f5 = g5Var2.g;
            float f6 = g5Var.h;
            float f7 = g5Var2.h;
            float f8 = g5Var.j;
            float f9 = g5Var2.j;
            float f10 = f2 + ((f3 - f2) * m2236f) + 0.5f;
            int i3 = (int) f10;
            float f11 = f4 + ((f5 - f4) * m2236f) + 0.5f;
            int i4 = (int) f11;
            int i5 = (int) (f10 + ((f7 - f6) * m2236f) + f6);
            int i6 = (int) (f11 + ((f9 - f8) * m2236f) + f8);
            if (f7 != f6 || f9 != f8) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i5 - i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i6 - i4, 1073741824));
            }
            view.layout(i3, i4, i5, i6);
            z2 = z;
        }
        HashMap<String, x4> hashMap4 = this.f6294y;
        if (hashMap4 != null) {
            Iterator<x4> it2 = hashMap4.values().iterator();
            while (it2.hasNext()) {
                x4.f fVar = (x4) it2.next();
                if (fVar instanceof x4.f) {
                    x4.f fVar2 = fVar;
                    double[] dArr4 = this.f6284o;
                    fVar2.j(view, m2236f, dArr4[0], dArr4[1]);
                } else {
                    fVar.f(view, m2236f);
                }
            }
        }
        return z2;
    }

    /* renamed from: p */
    public final void m2226p(g5 g5Var) {
        g5Var.n((int) this.f6270a.getX(), (int) this.f6270a.getY(), this.f6270a.getWidth(), this.f6270a.getHeight());
    }

    /* renamed from: q */
    public void m2225q(z5 z5Var, C0012a7 c0012a7) {
        g5 g5Var = this.f6274e;
        g5Var.c = 1.0f;
        g5Var.d = 1.0f;
        m2226p(g5Var);
        this.f6274e.n(z5Var.V(), z5Var.W(), z5Var.U(), z5Var.y());
        this.f6274e.a(c0012a7.m7356u(this.f6271b));
        this.f6276g.m2812i(z5Var, c0012a7, this.f6271b);
    }

    /* renamed from: r */
    public void m2224r(int i) {
        this.f6269A = i;
    }

    /* renamed from: s */
    public void m2223s(View view) {
        g5 g5Var = this.f6273d;
        g5Var.c = 0.0f;
        g5Var.d = 0.0f;
        g5Var.n(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f6275f.m2813h(view);
    }

    /* renamed from: t */
    public void m2222t(z5 z5Var, C0012a7 c0012a7) {
        g5 g5Var = this.f6273d;
        g5Var.c = 0.0f;
        g5Var.d = 0.0f;
        m2226p(g5Var);
        this.f6273d.n(z5Var.V(), z5Var.W(), z5Var.U(), z5Var.y());
        C0012a7.C0013a m7356u = c0012a7.m7356u(this.f6271b);
        this.f6273d.a(m7356u);
        this.f6279j = m7356u.f82c.f155f;
        this.f6275f.m2812i(z5Var, c0012a7, this.f6271b);
    }

    public String toString() {
        return " start: x: " + this.f6273d.f + " y: " + this.f6273d.g + " end: x: " + this.f6274e.f + " y: " + this.f6274e.g;
    }

    /* renamed from: u */
    public void m2221u(View view) {
        this.f6270a = view;
        this.f6271b = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            ((ConstraintLayout.LayoutParams) layoutParams).m6845a();
        }
    }

    /* renamed from: v */
    public void m2220v(int i, int i2, float f, long j) {
        ArrayList arrayList;
        String[] strArr;
        int i3;
        double[][] dArr;
        j5 j5Var;
        y6 y6Var;
        i5 i5Var;
        y6 y6Var2;
        new HashSet();
        HashSet hashSet = new HashSet();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet hashSet3 = new HashSet();
        HashMap hashMap = new HashMap();
        int i4 = this.f6269A;
        if (i4 != t4.e) {
            this.f6273d.l = i4;
        }
        this.f6275f.m2815f(this.f6276g, hashSet2);
        ArrayList<t4> arrayList2 = this.f6291v;
        if (arrayList2 != null) {
            Iterator<t4> it = arrayList2.iterator();
            ArrayList arrayList3 = null;
            while (true) {
                arrayList = arrayList3;
                if (!it.hasNext()) {
                    break;
                }
                c5 c5Var = (t4) it.next();
                if (c5Var instanceof z4) {
                    z4 z4Var = (z4) c5Var;
                    m2228n(new g5(i, i2, z4Var, this.f6273d, this.f6274e));
                    int i5 = ((a5) z4Var).f;
                    if (i5 != t4.e) {
                        this.f6272c = i5;
                    }
                } else if (c5Var instanceof w4) {
                    c5Var.b(hashSet3);
                } else if (c5Var instanceof b5) {
                    c5Var.b(hashSet);
                } else if (c5Var instanceof c5) {
                    ArrayList arrayList4 = arrayList3;
                    if (arrayList3 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add(c5Var);
                    arrayList3 = arrayList4;
                } else {
                    c5Var.e(hashMap);
                    c5Var.b(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.f6295z = (c5[]) arrayList.toArray(new c5[0]);
        }
        if (!hashSet2.isEmpty()) {
            this.f6293x = new HashMap<>();
            Iterator<String> it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                if (next.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str = next.split(",")[1];
                    Iterator<t4> it3 = this.f6291v.iterator();
                    while (it3.hasNext()) {
                        t4 next2 = it3.next();
                        HashMap hashMap2 = next2.d;
                        if (hashMap2 != null && (y6Var2 = (y6) hashMap2.get(str)) != null) {
                            sparseArray.append(next2.a, y6Var2);
                        }
                    }
                    i5Var = i5.c(next, sparseArray);
                } else {
                    i5Var = i5.d(next);
                }
                if (i5Var != null) {
                    i5Var.g(next);
                    this.f6293x.put(next, i5Var);
                }
            }
            ArrayList<t4> arrayList5 = this.f6291v;
            if (arrayList5 != null) {
                Iterator<t4> it4 = arrayList5.iterator();
                while (it4.hasNext()) {
                    t4 next3 = it4.next();
                    if (next3 instanceof u4) {
                        next3.a(this.f6293x);
                    }
                }
            }
            this.f6275f.m2820a(this.f6293x, 0);
            this.f6276g.m2820a(this.f6293x, 100);
            for (String str2 : this.f6293x.keySet()) {
                this.f6293x.get(str2).h(hashMap.containsKey(str2) ? ((Integer) hashMap.get(str2)).intValue() : 0);
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.f6292w == null) {
                this.f6292w = new HashMap<>();
            }
            Iterator it5 = hashSet.iterator();
            while (it5.hasNext()) {
                String str3 = (String) it5.next();
                if (!this.f6292w.containsKey(str3)) {
                    if (str3.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str4 = str3.split(",")[1];
                        Iterator<t4> it6 = this.f6291v.iterator();
                        while (it6.hasNext()) {
                            t4 next4 = it6.next();
                            HashMap hashMap3 = next4.d;
                            if (hashMap3 != null && (y6Var = (y6) hashMap3.get(str4)) != null) {
                                sparseArray2.append(next4.a, y6Var);
                            }
                        }
                        j5Var = j5.c(str3, sparseArray2);
                    } else {
                        j5Var = j5.d(str3, j);
                    }
                    if (j5Var != null) {
                        j5Var.h(str3);
                        this.f6292w.put(str3, j5Var);
                    }
                }
            }
            ArrayList<t4> arrayList6 = this.f6291v;
            if (arrayList6 != null) {
                Iterator<t4> it7 = arrayList6.iterator();
                while (it7.hasNext()) {
                    b5 b5Var = (t4) it7.next();
                    if (b5Var instanceof b5) {
                        b5Var.M(this.f6292w);
                    }
                }
            }
            for (String str5 : this.f6292w.keySet()) {
                this.f6292w.get(str5).i(hashMap.containsKey(str5) ? ((Integer) hashMap.get(str5)).intValue() : 0);
            }
        }
        int size = this.f6289t.size() + 2;
        g5[] g5VarArr = new g5[size];
        g5VarArr[0] = this.f6273d;
        g5VarArr[size - 1] = this.f6274e;
        if (this.f6289t.size() > 0 && this.f6272c == -1) {
            this.f6272c = 0;
        }
        Iterator<g5> it8 = this.f6289t.iterator();
        int i6 = 1;
        while (it8.hasNext()) {
            g5VarArr[i6] = it8.next();
            i6++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str6 : this.f6274e.m.keySet()) {
            if (this.f6273d.m.containsKey(str6)) {
                if (!hashSet2.contains("CUSTOM," + str6)) {
                    hashSet4.add(str6);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.f6285p = strArr2;
        this.f6286q = new int[strArr2.length];
        int i7 = 0;
        while (true) {
            strArr = this.f6285p;
            if (i7 >= strArr.length) {
                break;
            }
            String str7 = strArr[i7];
            this.f6286q[i7] = 0;
            int i8 = 0;
            while (true) {
                if (i8 >= size) {
                    break;
                } else if (g5VarArr[i8].m.containsKey(str7)) {
                    int[] iArr = this.f6286q;
                    iArr[i7] = iArr[i7] + ((y6) g5VarArr[i8].m.get(str7)).f();
                    break;
                } else {
                    i8++;
                }
            }
            i7++;
        }
        boolean z = g5VarArr[0].l != t4.e;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i9 = 1; i9 < size; i9++) {
            g5VarArr[i9].d(g5VarArr[i9 - 1], zArr, this.f6285p, z);
        }
        int i10 = 1;
        int i11 = 0;
        while (true) {
            i3 = i11;
            if (i10 >= length) {
                break;
            }
            int i12 = i3;
            if (zArr[i10]) {
                i12 = i3 + 1;
            }
            i10++;
            i11 = i12;
        }
        int[] iArr2 = new int[i3];
        this.f6282m = iArr2;
        this.f6283n = new double[iArr2.length];
        this.f6284o = new double[iArr2.length];
        int i13 = 1;
        int i14 = 0;
        while (true) {
            int i15 = i14;
            if (i13 >= length) {
                break;
            }
            int i16 = i15;
            if (zArr[i13]) {
                this.f6282m[i15] = i13;
                i16 = i15 + 1;
            }
            i13++;
            i14 = i16;
        }
        double[][] dArr2 = new double[size][this.f6282m.length];
        double[] dArr3 = new double[size];
        for (int i17 = 0; i17 < size; i17++) {
            g5VarArr[i17].e(dArr2[i17], this.f6282m);
            dArr3[i17] = g5VarArr[i17].c;
        }
        int i18 = 0;
        while (true) {
            int[] iArr3 = this.f6282m;
            if (i18 >= iArr3.length) {
                break;
            }
            if (iArr3[i18] < g5.q.length) {
                String str8 = g5.q[this.f6282m[i18]] + " [";
                for (int i19 = 0; i19 < size; i19++) {
                    str8 = str8 + dArr2[i19][i18];
                }
            }
            i18++;
        }
        this.f6277h = new k4[this.f6285p.length + 1];
        int i20 = 0;
        while (true) {
            String[] strArr3 = this.f6285p;
            if (i20 >= strArr3.length) {
                break;
            }
            String str9 = strArr3[i20];
            int i21 = 0;
            double[] dArr4 = null;
            int i22 = 0;
            double[][] dArr5 = null;
            while (true) {
                dArr = dArr5;
                if (i21 < size) {
                    double[] dArr6 = dArr4;
                    int i23 = i22;
                    double[][] dArr7 = dArr;
                    if (g5VarArr[i21].j(str9)) {
                        dArr7 = dArr;
                        if (dArr == null) {
                            dArr4 = new double[size];
                            dArr7 = new double[size][g5VarArr[i21].h(str9)];
                        }
                        dArr4[i22] = g5VarArr[i21].c;
                        g5VarArr[i21].g(str9, dArr7[i22], 0);
                        i23 = i22 + 1;
                        dArr6 = dArr4;
                    }
                    i21++;
                    dArr4 = dArr6;
                    i22 = i23;
                    dArr5 = dArr7;
                }
            }
            i20++;
            this.f6277h[i20] = k4.a(this.f6272c, Arrays.copyOf(dArr4, i22), (double[][]) Arrays.copyOf(dArr, i22));
        }
        this.f6277h[0] = k4.a(this.f6272c, dArr3, dArr2);
        if (g5VarArr[0].l != t4.e) {
            int[] iArr4 = new int[size];
            double[] dArr8 = new double[size];
            double[][] dArr9 = new double[size][2];
            for (int i24 = 0; i24 < size; i24++) {
                iArr4[i24] = g5VarArr[i24].l;
                dArr8[i24] = g5VarArr[i24].c;
                dArr9[i24][0] = g5VarArr[i24].f;
                dArr9[i24][1] = g5VarArr[i24].g;
            }
            this.f6278i = k4.b(iArr4, dArr8, dArr9);
        }
        float f2 = Float.NaN;
        this.f6294y = new HashMap<>();
        if (this.f6291v != null) {
            Iterator it9 = hashSet3.iterator();
            while (it9.hasNext()) {
                String str10 = (String) it9.next();
                x4 c = x4.c(str10);
                if (c != null) {
                    float f3 = f2;
                    if (c.i()) {
                        f3 = f2;
                        if (Float.isNaN(f2)) {
                            f3 = m2229m();
                        }
                    }
                    c.g(str10);
                    this.f6294y.put(str10, c);
                    f2 = f3;
                }
            }
            Iterator<t4> it10 = this.f6291v.iterator();
            while (it10.hasNext()) {
                w4 w4Var = (t4) it10.next();
                if (w4Var instanceof w4) {
                    w4Var.O(this.f6294y);
                }
            }
            for (x4 x4Var : this.f6294y.values()) {
                x4Var.h(f2);
            }
        }
    }
}
