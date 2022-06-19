package androidx.constraintlayout.motion.widget;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.AbstractC0179g;
import androidx.constraintlayout.motion.widget.AbstractC0192r;
import androidx.constraintlayout.motion.widget.AbstractC0194s;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.C0221b;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import d.f.a.a.b;
import d.f.a.a.c;
import d.f.a.a.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: androidx.constraintlayout.motion.widget.n */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/n.class */
public class C0185n {

    /* renamed from: a */
    View f888a;

    /* renamed from: b */
    int f889b;

    /* renamed from: h */
    private b[] f895h;

    /* renamed from: i */
    private b f896i;

    /* renamed from: m */
    private int[] f900m;

    /* renamed from: n */
    private double[] f901n;

    /* renamed from: o */
    private double[] f902o;

    /* renamed from: p */
    private String[] f903p;

    /* renamed from: q */
    private int[] f904q;

    /* renamed from: w */
    private HashMap<String, AbstractC0194s> f910w;

    /* renamed from: x */
    private HashMap<String, AbstractC0192r> f911x;

    /* renamed from: y */
    private HashMap<String, AbstractC0179g> f912y;

    /* renamed from: z */
    private l[] f913z;

    /* renamed from: c */
    private int f890c = -1;

    /* renamed from: d */
    private C0187p f891d = new C0187p();

    /* renamed from: e */
    private C0187p f892e = new C0187p();

    /* renamed from: f */
    private C0184m f893f = new C0184m();

    /* renamed from: g */
    private C0184m f894g = new C0184m();

    /* renamed from: j */
    float f897j = Float.NaN;

    /* renamed from: k */
    float f898k = 0.0f;

    /* renamed from: l */
    float f899l = 1.0f;

    /* renamed from: r */
    private int f905r = 4;

    /* renamed from: s */
    private float[] f906s = new float[4];

    /* renamed from: t */
    private ArrayList<C0187p> f907t = new ArrayList<>();

    /* renamed from: u */
    private float[] f908u = new float[1];

    /* renamed from: v */
    private ArrayList<AbstractC0177c> f909v = new ArrayList<>();

    /* renamed from: A */
    private int f887A = AbstractC0177c.f838e;

    public C0185n(View view) {
        m14220u(view);
    }

    /* renamed from: f */
    private float m14235f(float f, float[] fArr) {
        float f2;
        if (fArr != null) {
            fArr[0] = 1.0f;
            f2 = f;
        } else {
            float f3 = this.f899l;
            f2 = f;
            if (f3 != 1.0d) {
                float f4 = this.f898k;
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
        c cVar = this.f891d.f915b;
        float f6 = Float.NaN;
        Iterator<C0187p> it = this.f907t.iterator();
        float f7 = 0.0f;
        while (it.hasNext()) {
            C0187p next = it.next();
            c cVar2 = next.f915b;
            if (cVar2 != null) {
                float f8 = next.f917d;
                if (f8 < f2) {
                    cVar = cVar2;
                    f7 = f8;
                } else if (Float.isNaN(f6)) {
                    f6 = next.f917d;
                }
            }
        }
        float f9 = f2;
        if (cVar != null) {
            if (Float.isNaN(f6)) {
                f6 = 1.0f;
            }
            float f10 = f6 - f7;
            double d = (f2 - f7) / f10;
            float a = (((float) cVar.a(d)) * f10) + f7;
            f9 = a;
            if (fArr != null) {
                fArr[0] = (float) cVar.b(d);
                f9 = a;
            }
        }
        return f9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* JADX WARN: Type inference failed for: r0v40, types: [double] */
    /* JADX WARN: Type inference failed for: r0v54 */
    /* JADX WARN: Type inference failed for: r0v72, types: [double] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v5, types: [double] */
    /* renamed from: m */
    private float m14228m() {
        float f;
        float f2;
        float[] fArr = new float[2];
        float f3 = 1.0f / 99;
        ?? r10 = false;
        ?? r12 = false;
        int i = 0;
        float f4 = 0.0f;
        while (true) {
            float f5 = f4;
            if (i < 100) {
                float f6 = i * f3;
                ?? r17 = f6;
                c cVar = this.f891d.f915b;
                float f7 = Float.NaN;
                Iterator<C0187p> it = this.f907t.iterator();
                float f8 = 0.0f;
                while (true) {
                    f = f8;
                    if (!it.hasNext()) {
                        break;
                    }
                    C0187p next = it.next();
                    c cVar2 = next.f915b;
                    c cVar3 = cVar;
                    float f9 = f7;
                    float f10 = f;
                    if (cVar2 != null) {
                        f10 = next.f917d;
                        if (f10 < f6) {
                            cVar3 = cVar2;
                            f9 = f7;
                        } else {
                            cVar3 = cVar;
                            f9 = f7;
                            f10 = f;
                            if (Float.isNaN(f7)) {
                                f9 = next.f917d;
                                f10 = f;
                                cVar3 = cVar;
                            }
                        }
                    }
                    cVar = cVar3;
                    f7 = f9;
                    f8 = f10;
                }
                if (cVar != null) {
                    float f11 = f7;
                    if (Float.isNaN(f7)) {
                        f11 = 1.0f;
                    }
                    r17 = (((float) cVar.a((f6 - f) / f2)) * (f11 - f)) + f;
                }
                this.f895h[0].d((double) r17, this.f901n);
                this.f891d.m14212l(this.f900m, this.f901n, fArr, 0);
                float f12 = f5;
                if (i > 0) {
                    double d = f5;
                    double d2 = fArr[1];
                    Double.isNaN(d2);
                    double d3 = fArr[0];
                    Double.isNaN(d3);
                    double hypot = Math.hypot((r12 == true ? 1.0d : 0.0d) - d2, (r10 == true ? 1.0d : 0.0d) - d3);
                    Double.isNaN(d);
                    f12 = (float) (d + hypot);
                }
                r10 = fArr[0];
                r12 = fArr[1];
                i++;
                f4 = f12;
            } else {
                return f5;
            }
        }
    }

    /* renamed from: n */
    private void m14227n(C0187p c0187p) {
        int binarySearch = Collections.binarySearch(this.f907t, c0187p);
        if (binarySearch == 0) {
            Log.e("MotionController", " KeyPath positon \"" + c0187p.f918e + "\" outside of range");
        }
        this.f907t.add((-binarySearch) - 1, c0187p);
    }

    /* renamed from: p */
    private void m14225p(C0187p c0187p) {
        c0187p.m14204t((int) this.f888a.getX(), (int) this.f888a.getY(), this.f888a.getWidth(), this.f888a.getHeight());
    }

    /* renamed from: a */
    public void m14240a(AbstractC0177c abstractC0177c) {
        this.f909v.add(abstractC0177c);
    }

    /* renamed from: b */
    public void m14239b(ArrayList<AbstractC0177c> arrayList) {
        this.f909v.addAll(arrayList);
    }

    /* renamed from: c */
    public int m14238c(float[] fArr, int[] iArr) {
        if (fArr != null) {
            double[] h = this.f895h[0].h();
            if (iArr != null) {
                Iterator<C0187p> it = this.f907t.iterator();
                int i = 0;
                while (it.hasNext()) {
                    iArr[i] = it.next().f926m;
                    i++;
                }
            }
            int i2 = 0;
            for (double d : h) {
                this.f895h[0].d(d, this.f901n);
                this.f891d.m14212l(this.f900m, this.f901n, fArr, i2);
                i2 += 2;
            }
            return i2 / 2;
        }
        return 0;
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [double] */
    /* JADX WARN: Type inference failed for: r0v77, types: [double] */
    /* renamed from: d */
    public void m14237d(float[] fArr, int i) {
        float f;
        float f2;
        float f3 = 1.0f / (i - 1);
        HashMap<String, AbstractC0192r> hashMap = this.f911x;
        AbstractC0179g abstractC0179g = null;
        AbstractC0192r abstractC0192r = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, AbstractC0192r> hashMap2 = this.f911x;
        AbstractC0192r abstractC0192r2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, AbstractC0179g> hashMap3 = this.f912y;
        AbstractC0179g abstractC0179g2 = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, AbstractC0179g> hashMap4 = this.f912y;
        if (hashMap4 != null) {
            abstractC0179g = hashMap4.get("translationY");
        }
        for (int i2 = 0; i2 < i; i2++) {
            float f4 = i2 * f3;
            float f5 = this.f899l;
            float f6 = f4;
            if (f5 != 1.0f) {
                float f7 = this.f898k;
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
            c cVar = this.f891d.f915b;
            float f9 = Float.NaN;
            Iterator<C0187p> it = this.f907t.iterator();
            float f10 = 0.0f;
            while (true) {
                f = f10;
                if (!it.hasNext()) {
                    break;
                }
                C0187p next = it.next();
                c cVar2 = next.f915b;
                c cVar3 = cVar;
                float f11 = f9;
                float f12 = f;
                if (cVar2 != null) {
                    f12 = next.f917d;
                    if (f12 < f6) {
                        cVar3 = cVar2;
                        f11 = f9;
                    } else {
                        cVar3 = cVar;
                        f11 = f9;
                        f12 = f;
                        if (Float.isNaN(f9)) {
                            f11 = next.f917d;
                            f12 = f;
                            cVar3 = cVar;
                        }
                    }
                }
                cVar = cVar3;
                f9 = f11;
                f10 = f12;
            }
            if (cVar != null) {
                float f13 = f9;
                if (Float.isNaN(f9)) {
                    f13 = 1.0f;
                }
                c = (((float) cVar.a((f6 - f) / f2)) * (f13 - f)) + f;
            }
            this.f895h[0].d(c, this.f901n);
            b bVar = this.f896i;
            if (bVar != null) {
                double[] dArr = this.f901n;
                if (dArr.length > 0) {
                    bVar.d(c, dArr);
                }
            }
            int i3 = i2 * 2;
            this.f891d.m14212l(this.f900m, this.f901n, fArr, i3);
            if (abstractC0179g2 != null) {
                fArr[i3] = fArr[i3] + abstractC0179g2.m14269a(f6);
            } else if (abstractC0192r != null) {
                fArr[i3] = fArr[i3] + abstractC0192r.m14124a(f6);
            }
            if (abstractC0179g != null) {
                int i4 = i3 + 1;
                fArr[i4] = fArr[i4] + abstractC0179g.m14269a(f6);
            } else if (abstractC0192r2 != null) {
                int i5 = i3 + 1;
                fArr[i5] = fArr[i5] + abstractC0192r2.m14124a(f6);
            }
        }
    }

    /* renamed from: e */
    public void m14236e(float f, float[] fArr, int i) {
        this.f895h[0].d(m14235f(f, null), this.f901n);
        this.f891d.m14209o(this.f900m, this.f901n, fArr, i);
    }

    /* renamed from: g */
    void m14234g(float f, float f2, float f3, float[] fArr) {
        double[] dArr;
        float m14235f = m14235f(f, this.f908u);
        b[] bVarArr = this.f895h;
        int i = 0;
        if (bVarArr == null) {
            C0187p c0187p = this.f892e;
            float f4 = c0187p.f919f;
            C0187p c0187p2 = this.f891d;
            float f5 = f4 - c0187p2.f919f;
            float f6 = c0187p.f920g - c0187p2.f920g;
            float f7 = c0187p.f921h;
            float f8 = c0187p2.f921h;
            float f9 = c0187p.f922i;
            float f10 = c0187p2.f922i;
            fArr[0] = (f5 * (1.0f - f2)) + (((f7 - f8) + f5) * f2);
            fArr[1] = (f6 * (1.0f - f3)) + (((f9 - f10) + f6) * f3);
            return;
        }
        b bVar = bVarArr[0];
        double d = m14235f;
        bVar.g(d, this.f902o);
        this.f895h[0].d(d, this.f901n);
        float f11 = this.f908u[0];
        while (true) {
            dArr = this.f902o;
            if (i >= dArr.length) {
                break;
            }
            double d2 = dArr[i];
            double d3 = f11;
            Double.isNaN(d3);
            dArr[i] = d2 * d3;
            i++;
        }
        b bVar2 = this.f896i;
        if (bVar2 == null) {
            this.f891d.m14203u(f2, f3, fArr, this.f900m, dArr, this.f901n);
            return;
        }
        double[] dArr2 = this.f901n;
        if (dArr2.length <= 0) {
            return;
        }
        bVar2.d(d, dArr2);
        this.f896i.g(d, this.f902o);
        this.f891d.m14203u(f2, f3, fArr, this.f900m, this.f902o, this.f901n);
    }

    /* renamed from: h */
    public int m14233h() {
        int i = this.f891d.f916c;
        Iterator<C0187p> it = this.f907t.iterator();
        while (it.hasNext()) {
            i = Math.max(i, it.next().f916c);
        }
        return Math.max(i, this.f892e.f916c);
    }

    /* renamed from: i */
    float m14232i() {
        return this.f892e.f919f;
    }

    /* renamed from: j */
    float m14231j() {
        return this.f892e.f920g;
    }

    /* renamed from: k */
    public C0187p m14230k(int i) {
        return this.f907t.get(i);
    }

    /* renamed from: l */
    void m14229l(float f, int i, int i2, float f2, float f3, float[] fArr) {
        float m14235f = m14235f(f, this.f908u);
        HashMap<String, AbstractC0192r> hashMap = this.f911x;
        AbstractC0179g abstractC0179g = null;
        AbstractC0192r abstractC0192r = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, AbstractC0192r> hashMap2 = this.f911x;
        AbstractC0192r abstractC0192r2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, AbstractC0192r> hashMap3 = this.f911x;
        AbstractC0192r abstractC0192r3 = hashMap3 == null ? null : hashMap3.get("rotation");
        HashMap<String, AbstractC0192r> hashMap4 = this.f911x;
        AbstractC0192r abstractC0192r4 = hashMap4 == null ? null : hashMap4.get("scaleX");
        HashMap<String, AbstractC0192r> hashMap5 = this.f911x;
        AbstractC0192r abstractC0192r5 = hashMap5 == null ? null : hashMap5.get("scaleY");
        HashMap<String, AbstractC0179g> hashMap6 = this.f912y;
        AbstractC0179g abstractC0179g2 = hashMap6 == null ? null : hashMap6.get("translationX");
        HashMap<String, AbstractC0179g> hashMap7 = this.f912y;
        AbstractC0179g abstractC0179g3 = hashMap7 == null ? null : hashMap7.get("translationY");
        HashMap<String, AbstractC0179g> hashMap8 = this.f912y;
        AbstractC0179g abstractC0179g4 = hashMap8 == null ? null : hashMap8.get("rotation");
        HashMap<String, AbstractC0179g> hashMap9 = this.f912y;
        AbstractC0179g abstractC0179g5 = hashMap9 == null ? null : hashMap9.get("scaleX");
        HashMap<String, AbstractC0179g> hashMap10 = this.f912y;
        if (hashMap10 != null) {
            abstractC0179g = hashMap10.get("scaleY");
        }
        h hVar = new h();
        hVar.b();
        hVar.d(abstractC0192r3, m14235f);
        hVar.h(abstractC0192r, abstractC0192r2, m14235f);
        hVar.f(abstractC0192r4, abstractC0192r5, m14235f);
        hVar.c(abstractC0179g4, m14235f);
        hVar.g(abstractC0179g2, abstractC0179g3, m14235f);
        hVar.e(abstractC0179g5, abstractC0179g, m14235f);
        b bVar = this.f896i;
        if (bVar != null) {
            double[] dArr = this.f901n;
            if (dArr.length > 0) {
                double d = m14235f;
                bVar.d(d, dArr);
                this.f896i.g(d, this.f902o);
                this.f891d.m14203u(f2, f3, fArr, this.f900m, this.f902o, this.f901n);
            }
            hVar.a(f2, f3, i, i2, fArr);
            return;
        }
        int i3 = 0;
        if (this.f895h == null) {
            C0187p c0187p = this.f892e;
            float f4 = c0187p.f919f;
            C0187p c0187p2 = this.f891d;
            float f5 = f4 - c0187p2.f919f;
            float f6 = c0187p.f920g - c0187p2.f920g;
            float f7 = c0187p.f921h;
            float f8 = c0187p2.f921h;
            float f9 = c0187p.f922i;
            float f10 = c0187p2.f922i;
            fArr[0] = (f5 * (1.0f - f2)) + (((f7 - f8) + f5) * f2);
            fArr[1] = (f6 * (1.0f - f3)) + (((f9 - f10) + f6) * f3);
            hVar.b();
            hVar.d(abstractC0192r3, m14235f);
            hVar.h(abstractC0192r, abstractC0192r2, m14235f);
            hVar.f(abstractC0192r4, abstractC0192r5, m14235f);
            hVar.c(abstractC0179g4, m14235f);
            hVar.g(abstractC0179g2, abstractC0179g3, m14235f);
            hVar.e(abstractC0179g5, abstractC0179g, m14235f);
            hVar.a(f2, f3, i, i2, fArr);
            return;
        }
        double m14235f2 = m14235f(m14235f, this.f908u);
        this.f895h[0].g(m14235f2, this.f902o);
        this.f895h[0].d(m14235f2, this.f901n);
        float f11 = this.f908u[0];
        while (true) {
            double[] dArr2 = this.f902o;
            if (i3 >= dArr2.length) {
                this.f891d.m14203u(f2, f3, fArr, this.f900m, dArr2, this.f901n);
                hVar.a(f2, f3, i, i2, fArr);
                return;
            }
            double d2 = dArr2[i3];
            double d3 = f11;
            Double.isNaN(d3);
            dArr2[i3] = d2 * d3;
            i3++;
        }
    }

    /* renamed from: o */
    boolean m14226o(View view, float f, long j, C0178e c0178e) {
        boolean z;
        AbstractC0194s.d dVar;
        boolean z2;
        float m14235f = m14235f(f, null);
        HashMap<String, AbstractC0192r> hashMap = this.f911x;
        if (hashMap != null) {
            for (AbstractC0192r abstractC0192r : hashMap.values()) {
                abstractC0192r.m14119f(view, m14235f);
            }
        }
        HashMap<String, AbstractC0194s> hashMap2 = this.f910w;
        if (hashMap2 != null) {
            dVar = null;
            z = false;
            for (AbstractC0194s abstractC0194s : hashMap2.values()) {
                if (abstractC0194s instanceof AbstractC0194s.d) {
                    dVar = (AbstractC0194s.d) abstractC0194s;
                } else {
                    z |= abstractC0194s.m14108f(view, m14235f, j, c0178e);
                }
            }
        } else {
            dVar = null;
            z = false;
        }
        b[] bVarArr = this.f895h;
        if (bVarArr != null) {
            b bVar = bVarArr[0];
            double d = m14235f;
            bVar.d(d, this.f901n);
            this.f895h[0].g(d, this.f902o);
            b bVar2 = this.f896i;
            if (bVar2 != null) {
                double[] dArr = this.f901n;
                if (dArr.length > 0) {
                    bVar2.d(d, dArr);
                    this.f896i.g(d, this.f902o);
                }
            }
            this.f891d.m14202v(view, this.f900m, this.f901n, this.f902o, null);
            HashMap<String, AbstractC0192r> hashMap3 = this.f911x;
            if (hashMap3 != null) {
                Iterator<AbstractC0192r> it = hashMap3.values().iterator();
                while (it.hasNext()) {
                    AbstractC0192r.d dVar2 = (AbstractC0192r) it.next();
                    if (dVar2 instanceof AbstractC0192r.d) {
                        AbstractC0192r.d dVar3 = dVar2;
                        double[] dArr2 = this.f902o;
                        dVar3.i(view, m14235f, dArr2[0], dArr2[1]);
                    }
                }
            }
            if (dVar != null) {
                double[] dArr3 = this.f902o;
                z = dVar.j(view, c0178e, m14235f, j, dArr3[0], dArr3[1]) | z;
            }
            int i = 1;
            while (true) {
                b[] bVarArr2 = this.f895h;
                if (i >= bVarArr2.length) {
                    break;
                }
                bVarArr2[i].e(d, this.f906s);
                this.f891d.f925l.get(this.f903p[i - 1]).m13864i(view, this.f906s);
                i++;
            }
            C0184m c0184m = this.f893f;
            if (c0184m.f870c == 0) {
                if (m14235f > 0.0f) {
                    if (m14235f >= 1.0f) {
                        c0184m = this.f894g;
                    } else if (this.f894g.f871d != c0184m.f871d) {
                        view.setVisibility(0);
                    }
                }
                view.setVisibility(c0184m.f871d);
            }
            z2 = z;
            if (this.f913z != null) {
                int i2 = 0;
                while (true) {
                    l[] lVarArr = this.f913z;
                    z2 = z;
                    if (i2 >= lVarArr.length) {
                        break;
                    }
                    lVarArr[i2].r(m14235f, view);
                    i2++;
                }
            }
        } else {
            C0187p c0187p = this.f891d;
            float f2 = c0187p.f919f;
            C0187p c0187p2 = this.f892e;
            float f3 = c0187p2.f919f;
            float f4 = c0187p.f920g;
            float f5 = c0187p2.f920g;
            float f6 = c0187p.f921h;
            float f7 = c0187p2.f921h;
            float f8 = c0187p.f922i;
            float f9 = c0187p2.f922i;
            float f10 = f2 + ((f3 - f2) * m14235f) + 0.5f;
            int i3 = (int) f10;
            float f11 = f4 + ((f5 - f4) * m14235f) + 0.5f;
            int i4 = (int) f11;
            int i5 = (int) (f10 + ((f7 - f6) * m14235f) + f6);
            int i6 = (int) (f11 + ((f9 - f8) * m14235f) + f8);
            if (f7 != f6 || f9 != f8) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i5 - i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i6 - i4, 1073741824));
            }
            view.layout(i3, i4, i5, i6);
            z2 = z;
        }
        HashMap<String, AbstractC0179g> hashMap4 = this.f912y;
        if (hashMap4 != null) {
            Iterator<AbstractC0179g> it2 = hashMap4.values().iterator();
            while (it2.hasNext()) {
                AbstractC0179g.f fVar = (AbstractC0179g) it2.next();
                if (fVar instanceof AbstractC0179g.f) {
                    AbstractC0179g.f fVar2 = fVar;
                    double[] dArr4 = this.f902o;
                    fVar2.j(view, m14235f, dArr4[0], dArr4[1]);
                } else {
                    fVar.m14264f(view, m14235f);
                }
            }
        }
        return z2;
    }

    /* renamed from: q */
    public void m14224q(ConstraintWidget constraintWidget, C0221b c0221b) {
        C0187p c0187p = this.f892e;
        c0187p.f917d = 1.0f;
        c0187p.f918e = 1.0f;
        m14225p(c0187p);
        this.f892e.m14204t(constraintWidget.m13981R(), constraintWidget.m13980S(), constraintWidget.m13982Q(), constraintWidget.m13931w());
        this.f892e.m14217a(c0221b.m13790s(this.f889b));
        this.f894g.m14241o(constraintWidget, c0221b, this.f889b);
    }

    /* renamed from: r */
    public void m14223r(int i) {
        this.f887A = i;
    }

    /* renamed from: s */
    void m14222s(View view) {
        C0187p c0187p = this.f891d;
        c0187p.f917d = 0.0f;
        c0187p.f918e = 0.0f;
        c0187p.m14204t(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f893f.m14242n(view);
    }

    /* renamed from: t */
    public void m14221t(ConstraintWidget constraintWidget, C0221b c0221b) {
        C0187p c0187p = this.f891d;
        c0187p.f917d = 0.0f;
        c0187p.f918e = 0.0f;
        m14225p(c0187p);
        this.f891d.m14204t(constraintWidget.m13981R(), constraintWidget.m13980S(), constraintWidget.m13982Q(), constraintWidget.m13931w());
        C0221b.C0222a m13790s = c0221b.m13790s(this.f889b);
        this.f891d.m14217a(m13790s);
        this.f897j = m13790s.f1428c.f1501f;
        this.f893f.m14241o(constraintWidget, c0221b, this.f889b);
    }

    public String toString() {
        return " start: x: " + this.f891d.f919f + " y: " + this.f891d.f920g + " end: x: " + this.f892e.f919f + " y: " + this.f892e.f920g;
    }

    /* renamed from: u */
    public void m14220u(View view) {
        this.f888a = view;
        this.f889b = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            ((ConstraintLayout.LayoutParams) layoutParams).m13828a();
        }
    }

    /* renamed from: v */
    public void m14219v(int i, int i2, float f, long j) {
        ArrayList arrayList;
        String[] strArr;
        int i3;
        double[][] dArr;
        AbstractC0194s abstractC0194s;
        ConstraintAttribute constraintAttribute;
        AbstractC0192r abstractC0192r;
        ConstraintAttribute constraintAttribute2;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        int i4 = this.f887A;
        if (i4 != AbstractC0177c.f838e) {
            this.f891d.f924k = i4;
        }
        this.f893f.m14244l(this.f894g, hashSet2);
        ArrayList<AbstractC0177c> arrayList2 = this.f909v;
        if (arrayList2 != null) {
            Iterator<AbstractC0177c> it = arrayList2.iterator();
            ArrayList arrayList3 = null;
            while (true) {
                arrayList = arrayList3;
                if (!it.hasNext()) {
                    break;
                }
                l lVar = (AbstractC0177c) it.next();
                if (lVar instanceof i) {
                    i iVar = (i) lVar;
                    m14227n(new C0187p(i, i2, iVar, this.f891d, this.f892e));
                    int i5 = ((j) iVar).f;
                    if (i5 != AbstractC0177c.f838e) {
                        this.f890c = i5;
                    }
                } else if (lVar instanceof f) {
                    lVar.m14278b(hashSet3);
                } else if (lVar instanceof k) {
                    lVar.m14278b(hashSet);
                } else if (lVar instanceof l) {
                    ArrayList arrayList4 = arrayList3;
                    if (arrayList3 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add(lVar);
                    arrayList3 = arrayList4;
                } else {
                    lVar.m14275e(hashMap);
                    lVar.m14278b(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.f913z = (l[]) arrayList.toArray(new l[0]);
        }
        if (!hashSet2.isEmpty()) {
            this.f911x = new HashMap<>();
            Iterator<String> it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                if (next.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str = next.split(",")[1];
                    Iterator<AbstractC0177c> it3 = this.f909v.iterator();
                    while (it3.hasNext()) {
                        AbstractC0177c next2 = it3.next();
                        HashMap<String, ConstraintAttribute> hashMap2 = next2.f842d;
                        if (hashMap2 != null && (constraintAttribute2 = hashMap2.get(str)) != null) {
                            sparseArray.append(next2.f839a, constraintAttribute2);
                        }
                    }
                    abstractC0192r = AbstractC0192r.m14122c(next, sparseArray);
                } else {
                    abstractC0192r = AbstractC0192r.m14121d(next);
                }
                if (abstractC0192r != null) {
                    abstractC0192r.m14118g(next);
                    this.f911x.put(next, abstractC0192r);
                }
            }
            ArrayList<AbstractC0177c> arrayList5 = this.f909v;
            if (arrayList5 != null) {
                Iterator<AbstractC0177c> it4 = arrayList5.iterator();
                while (it4.hasNext()) {
                    AbstractC0177c next3 = it4.next();
                    if (next3 instanceof d) {
                        next3.m14279a(this.f911x);
                    }
                }
            }
            this.f893f.m14249a(this.f911x, 0);
            this.f894g.m14249a(this.f911x, 100);
            for (String str2 : this.f911x.keySet()) {
                this.f911x.get(str2).m14117h(hashMap.containsKey(str2) ? hashMap.get(str2).intValue() : 0);
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.f910w == null) {
                this.f910w = new HashMap<>();
            }
            Iterator<String> it5 = hashSet.iterator();
            while (it5.hasNext()) {
                String next4 = it5.next();
                if (!this.f910w.containsKey(next4)) {
                    if (next4.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str3 = next4.split(",")[1];
                        Iterator<AbstractC0177c> it6 = this.f909v.iterator();
                        while (it6.hasNext()) {
                            AbstractC0177c next5 = it6.next();
                            HashMap<String, ConstraintAttribute> hashMap3 = next5.f842d;
                            if (hashMap3 != null && (constraintAttribute = hashMap3.get(str3)) != null) {
                                sparseArray2.append(next5.f839a, constraintAttribute);
                            }
                        }
                        abstractC0194s = AbstractC0194s.m14111c(next4, sparseArray2);
                    } else {
                        abstractC0194s = AbstractC0194s.m14110d(next4, j);
                    }
                    if (abstractC0194s != null) {
                        abstractC0194s.m14106h(next4);
                        this.f910w.put(next4, abstractC0194s);
                    }
                }
            }
            ArrayList<AbstractC0177c> arrayList6 = this.f909v;
            if (arrayList6 != null) {
                Iterator<AbstractC0177c> it7 = arrayList6.iterator();
                while (it7.hasNext()) {
                    k kVar = (AbstractC0177c) it7.next();
                    if (kVar instanceof k) {
                        kVar.M(this.f910w);
                    }
                }
            }
            for (String str4 : this.f910w.keySet()) {
                this.f910w.get(str4).m14105i(hashMap.containsKey(str4) ? hashMap.get(str4).intValue() : 0);
            }
        }
        int size = this.f907t.size() + 2;
        C0187p[] c0187pArr = new C0187p[size];
        c0187pArr[0] = this.f891d;
        c0187pArr[size - 1] = this.f892e;
        if (this.f907t.size() > 0 && this.f890c == -1) {
            this.f890c = 0;
        }
        Iterator<C0187p> it8 = this.f907t.iterator();
        int i6 = 1;
        while (it8.hasNext()) {
            c0187pArr[i6] = it8.next();
            i6++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.f892e.f925l.keySet()) {
            if (this.f891d.f925l.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.f903p = strArr2;
        this.f904q = new int[strArr2.length];
        int i7 = 0;
        while (true) {
            strArr = this.f903p;
            if (i7 >= strArr.length) {
                break;
            }
            String str6 = strArr[i7];
            this.f904q[i7] = 0;
            int i8 = 0;
            while (true) {
                if (i8 >= size) {
                    break;
                } else if (c0187pArr[i8].f925l.containsKey(str6)) {
                    int[] iArr = this.f904q;
                    iArr[i7] = iArr[i7] + c0187pArr[i8].f925l.get(str6).m13867f();
                    break;
                } else {
                    i8++;
                }
            }
            i7++;
        }
        boolean z = c0187pArr[0].f924k != AbstractC0177c.f838e;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i9 = 1; i9 < size; i9++) {
            c0187pArr[i9].m14214j(c0187pArr[i9 - 1], zArr, this.f903p, z);
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
        this.f900m = iArr2;
        this.f901n = new double[iArr2.length];
        this.f902o = new double[iArr2.length];
        int i13 = 1;
        int i14 = 0;
        while (true) {
            int i15 = i14;
            if (i13 >= length) {
                break;
            }
            int i16 = i15;
            if (zArr[i13]) {
                this.f900m[i15] = i13;
                i16 = i15 + 1;
            }
            i13++;
            i14 = i16;
        }
        double[][] dArr2 = new double[size][this.f900m.length];
        double[] dArr3 = new double[size];
        for (int i17 = 0; i17 < size; i17++) {
            c0187pArr[i17].m14213k(dArr2[i17], this.f900m);
            dArr3[i17] = c0187pArr[i17].f917d;
        }
        int i18 = 0;
        while (true) {
            int[] iArr3 = this.f900m;
            if (i18 >= iArr3.length) {
                break;
            }
            if (iArr3[i18] < C0187p.f914p.length) {
                String str7 = C0187p.f914p[this.f900m[i18]] + " [";
                for (int i19 = 0; i19 < size; i19++) {
                    str7 = str7 + dArr2[i19][i18];
                }
            }
            i18++;
        }
        this.f895h = new b[this.f903p.length + 1];
        int i20 = 0;
        while (true) {
            String[] strArr3 = this.f903p;
            if (i20 >= strArr3.length) {
                break;
            }
            String str8 = strArr3[i20];
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
                    if (c0187pArr[i21].m14208p(str8)) {
                        dArr7 = dArr;
                        if (dArr == null) {
                            dArr4 = new double[size];
                            dArr7 = new double[size][c0187pArr[i21].m14210n(str8)];
                        }
                        dArr4[i22] = c0187pArr[i21].f917d;
                        c0187pArr[i21].m14211m(str8, dArr7[i22], 0);
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
            this.f895h[i20] = b.a(this.f890c, Arrays.copyOf(dArr4, i22), (double[][]) Arrays.copyOf(dArr, i22));
        }
        this.f895h[0] = b.a(this.f890c, dArr3, dArr2);
        if (c0187pArr[0].f924k != AbstractC0177c.f838e) {
            int[] iArr4 = new int[size];
            double[] dArr8 = new double[size];
            double[][] dArr9 = new double[size][2];
            for (int i24 = 0; i24 < size; i24++) {
                iArr4[i24] = c0187pArr[i24].f924k;
                dArr8[i24] = c0187pArr[i24].f917d;
                dArr9[i24][0] = c0187pArr[i24].f919f;
                dArr9[i24][1] = c0187pArr[i24].f920g;
            }
            this.f896i = b.b(iArr4, dArr8, dArr9);
        }
        float f2 = Float.NaN;
        this.f912y = new HashMap<>();
        if (this.f909v != null) {
            Iterator<String> it9 = hashSet3.iterator();
            while (it9.hasNext()) {
                String next6 = it9.next();
                AbstractC0179g m14267c = AbstractC0179g.m14267c(next6);
                if (m14267c != null) {
                    float f3 = f2;
                    if (m14267c.m14261i()) {
                        f3 = f2;
                        if (Float.isNaN(f2)) {
                            f3 = m14228m();
                        }
                    }
                    m14267c.m14263g(next6);
                    this.f912y.put(next6, m14267c);
                    f2 = f3;
                }
            }
            Iterator<AbstractC0177c> it10 = this.f909v.iterator();
            while (it10.hasNext()) {
                f fVar = (AbstractC0177c) it10.next();
                if (fVar instanceof f) {
                    fVar.O(this.f912y);
                }
            }
            for (AbstractC0179g abstractC0179g : this.f912y.values()) {
                abstractC0179g.m14262h(f2);
            }
        }
    }
}
