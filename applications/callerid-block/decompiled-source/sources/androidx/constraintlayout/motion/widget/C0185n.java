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

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0185n(View view) {
        m14220u(view);
    }

    /* renamed from: f */
    private float m14235f(float f, float[] fArr) {
        float f2;
        float f3 = 0.0f;
        float f4 = 1.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
            f2 = f;
        } else {
            float f5 = this.f899l;
            f2 = f;
            if (f5 != 1.0d) {
                float f6 = this.f898k;
                float f7 = f;
                if (f < f6) {
                    f7 = 0.0f;
                }
                f2 = f7;
                if (f7 > f6) {
                    f2 = f7;
                    if (f7 < 1.0d) {
                        f2 = (f7 - f6) * f5;
                    }
                }
            }
        }
        c cVar = this.f891d.f915b;
        f4 = Float.NaN;
        Iterator<C0187p> it = this.f907t.iterator();
        while (it.hasNext()) {
            C0187p next = it.next();
            c cVar2 = next.f915b;
            if (cVar2 != null) {
                float f8 = next.f917d;
                if (f8 < f2) {
                    cVar = cVar2;
                    f3 = f8;
                } else if (Float.isNaN(f4)) {
                    f4 = next.f917d;
                }
            }
        }
        float f9 = f2;
        if (cVar != null) {
            if (Float.isNaN(f4)) {
            }
            float f10 = f4 - f3;
            double d = (f2 - f3) / f10;
            float a = (((float) cVar.a(d)) * f10) + f3;
            f9 = a;
            if (fArr != null) {
                fArr[0] = (float) cVar.b(d);
                f9 = a;
            }
        }
        return f9;
    }

    /* renamed from: m */
    private float m14228m() {
        float f;
        float[] fArr = new float[2];
        float f2 = 1.0f / 99;
        double d = 0.0d;
        double d2 = 0.0d;
        float f3 = 0.0f;
        for (int i = 0; i < 100; i++) {
            float f4 = i * f2;
            double d3 = f4;
            c cVar = this.f891d.f915b;
            float f5 = Float.NaN;
            Iterator<C0187p> it = this.f907t.iterator();
            float f6 = 0.0f;
            while (it.hasNext()) {
                C0187p next = it.next();
                c cVar2 = next.f915b;
                cVar = cVar;
                f5 = f5;
                f6 = f6;
                if (cVar2 != null) {
                    f6 = next.f917d;
                    if (f6 < f4) {
                        cVar = cVar2;
                        f5 = f5;
                    } else {
                        cVar = cVar;
                        f5 = f5;
                        f6 = f6;
                        if (Float.isNaN(f5)) {
                            f5 = next.f917d;
                            f6 = f6;
                            cVar = cVar;
                        }
                    }
                }
            }
            if (cVar != null) {
                float f7 = f5;
                if (Float.isNaN(f5)) {
                    f7 = 1.0f;
                }
                d3 = (((float) cVar.a((f4 - f6) / f)) * (f7 - f6)) + f6;
            }
            this.f895h[0].d(d3, this.f901n);
            this.f891d.m14212l(this.f900m, this.f901n, fArr, 0);
            f3 = f3;
            if (i > 0) {
                double d4 = f3;
                double d5 = fArr[1];
                Double.isNaN(d5);
                double d6 = fArr[0];
                Double.isNaN(d6);
                double hypot = Math.hypot(d2 - d5, d - d6);
                Double.isNaN(d4);
                f3 = (float) (d4 + hypot);
            }
            d = fArr[0];
            d2 = fArr[1];
        }
        return f3;
    }

    /* renamed from: n */
    private void m14227n(C0187p pVar) {
        int binarySearch = Collections.binarySearch(this.f907t, pVar);
        if (binarySearch == 0) {
            Log.e("MotionController", " KeyPath positon \"" + pVar.f918e + "\" outside of range");
        }
        this.f907t.add((-binarySearch) - 1, pVar);
    }

    /* renamed from: p */
    private void m14225p(C0187p pVar) {
        pVar.m14204t((int) this.f888a.getX(), (int) this.f888a.getY(), this.f888a.getWidth(), this.f888a.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m14240a(AbstractC0177c cVar) {
        this.f909v.add(cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m14239b(ArrayList<AbstractC0177c> arrayList) {
        this.f909v.addAll(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public int m14238c(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m14237d(float[] fArr, int i) {
        float f;
        float f2 = 1.0f / (i - 1);
        HashMap<String, AbstractC0192r> hashMap = this.f911x;
        AbstractC0179g gVar = null;
        AbstractC0192r rVar = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, AbstractC0192r> hashMap2 = this.f911x;
        AbstractC0192r rVar2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, AbstractC0179g> hashMap3 = this.f912y;
        AbstractC0179g gVar2 = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, AbstractC0179g> hashMap4 = this.f912y;
        if (hashMap4 != null) {
            gVar = hashMap4.get("translationY");
        }
        for (int i2 = 0; i2 < i; i2++) {
            float f3 = i2 * f2;
            float f4 = this.f899l;
            float f5 = f3;
            if (f4 != 1.0f) {
                float f6 = this.f898k;
                float f7 = f3;
                if (f3 < f6) {
                    f7 = 0.0f;
                }
                f5 = f7;
                if (f7 > f6) {
                    f5 = f7;
                    if (f7 < 1.0d) {
                        f5 = (f7 - f6) * f4;
                    }
                }
            }
            double d = f5;
            c cVar = this.f891d.f915b;
            float f8 = Float.NaN;
            Iterator<C0187p> it = this.f907t.iterator();
            float f9 = 0.0f;
            while (it.hasNext()) {
                C0187p next = it.next();
                c cVar2 = next.f915b;
                cVar = cVar;
                f8 = f8;
                f9 = f9;
                if (cVar2 != null) {
                    f9 = next.f917d;
                    if (f9 < f5) {
                        cVar = cVar2;
                        f8 = f8;
                    } else {
                        cVar = cVar;
                        f8 = f8;
                        f9 = f9;
                        if (Float.isNaN(f8)) {
                            f8 = next.f917d;
                            f9 = f9;
                            cVar = cVar;
                        }
                    }
                }
            }
            if (cVar != null) {
                float f10 = f8;
                if (Float.isNaN(f8)) {
                    f10 = 1.0f;
                }
                d = (((float) cVar.a((f5 - f9) / f)) * (f10 - f9)) + f9;
            }
            this.f895h[0].d(d, this.f901n);
            b bVar = this.f896i;
            if (bVar != null) {
                double[] dArr = this.f901n;
                if (dArr.length > 0) {
                    bVar.d(d, dArr);
                }
            }
            int i3 = i2 * 2;
            this.f891d.m14212l(this.f900m, this.f901n, fArr, i3);
            if (gVar2 != null) {
                fArr[i3] = fArr[i3] + gVar2.m14269a(f5);
            } else if (rVar != null) {
                fArr[i3] = fArr[i3] + rVar.m14124a(f5);
            }
            if (gVar != null) {
                int i4 = i3 + 1;
                fArr[i4] = fArr[i4] + gVar.m14269a(f5);
            } else if (rVar2 != null) {
                int i5 = i3 + 1;
                fArr[i5] = fArr[i5] + rVar2.m14124a(f5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m14236e(float f, float[] fArr, int i) {
        this.f895h[0].d(m14235f(f, null), this.f901n);
        this.f891d.m14209o(this.f900m, this.f901n, fArr, i);
    }

    /* renamed from: g */
    void m14234g(float f, float f2, float f3, float[] fArr) {
        double[] dArr;
        float f4 = m14235f(f, this.f908u);
        b[] bVarArr = this.f895h;
        int i = 0;
        if (bVarArr != null) {
            b bVar = bVarArr[0];
            double d = f4;
            bVar.g(d, this.f902o);
            this.f895h[0].d(d, this.f901n);
            float f5 = this.f908u[0];
            while (true) {
                dArr = this.f902o;
                if (i >= dArr.length) {
                    break;
                }
                double d2 = dArr[i];
                double d3 = f5;
                Double.isNaN(d3);
                dArr[i] = d2 * d3;
                i++;
            }
            b bVar2 = this.f896i;
            if (bVar2 != null) {
                double[] dArr2 = this.f901n;
                if (dArr2.length > 0) {
                    bVar2.d(d, dArr2);
                    this.f896i.g(d, this.f902o);
                    this.f891d.m14203u(f2, f3, fArr, this.f900m, this.f902o, this.f901n);
                    return;
                }
                return;
            }
            this.f891d.m14203u(f2, f3, fArr, this.f900m, dArr, this.f901n);
            return;
        }
        C0187p pVar = this.f892e;
        float f6 = pVar.f919f;
        C0187p pVar2 = this.f891d;
        float f7 = f6 - pVar2.f919f;
        float f8 = pVar.f920g - pVar2.f920g;
        float f9 = pVar.f921h;
        float f10 = pVar2.f921h;
        float f11 = pVar.f922i;
        float f12 = pVar2.f922i;
        fArr[0] = (f7 * (1.0f - f2)) + (((f9 - f10) + f7) * f2);
        fArr[1] = (f8 * (1.0f - f3)) + (((f11 - f12) + f8) * f3);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public C0187p m14230k(int i) {
        return this.f907t.get(i);
    }

    /* renamed from: l */
    void m14229l(float f, int i, int i2, float f2, float f3, float[] fArr) {
        float f4 = m14235f(f, this.f908u);
        HashMap<String, AbstractC0192r> hashMap = this.f911x;
        AbstractC0179g gVar = null;
        AbstractC0192r rVar = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, AbstractC0192r> hashMap2 = this.f911x;
        AbstractC0192r rVar2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, AbstractC0192r> hashMap3 = this.f911x;
        AbstractC0192r rVar3 = hashMap3 == null ? null : hashMap3.get("rotation");
        HashMap<String, AbstractC0192r> hashMap4 = this.f911x;
        AbstractC0192r rVar4 = hashMap4 == null ? null : hashMap4.get("scaleX");
        HashMap<String, AbstractC0192r> hashMap5 = this.f911x;
        AbstractC0192r rVar5 = hashMap5 == null ? null : hashMap5.get("scaleY");
        HashMap<String, AbstractC0179g> hashMap6 = this.f912y;
        AbstractC0179g gVar2 = hashMap6 == null ? null : hashMap6.get("translationX");
        HashMap<String, AbstractC0179g> hashMap7 = this.f912y;
        AbstractC0179g gVar3 = hashMap7 == null ? null : hashMap7.get("translationY");
        HashMap<String, AbstractC0179g> hashMap8 = this.f912y;
        AbstractC0179g gVar4 = hashMap8 == null ? null : hashMap8.get("rotation");
        HashMap<String, AbstractC0179g> hashMap9 = this.f912y;
        AbstractC0179g gVar5 = hashMap9 == null ? null : hashMap9.get("scaleX");
        HashMap<String, AbstractC0179g> hashMap10 = this.f912y;
        if (hashMap10 != null) {
            gVar = hashMap10.get("scaleY");
        }
        h hVar = new h();
        hVar.b();
        hVar.d(rVar3, f4);
        hVar.h(rVar, rVar2, f4);
        hVar.f(rVar4, rVar5, f4);
        hVar.c(gVar4, f4);
        hVar.g(gVar2, gVar3, f4);
        hVar.e(gVar5, gVar, f4);
        b bVar = this.f896i;
        if (bVar != null) {
            double[] dArr = this.f901n;
            if (dArr.length > 0) {
                double d = f4;
                bVar.d(d, dArr);
                this.f896i.g(d, this.f902o);
                this.f891d.m14203u(f2, f3, fArr, this.f900m, this.f902o, this.f901n);
            }
            hVar.a(f2, f3, i, i2, fArr);
            return;
        }
        int i3 = 0;
        if (this.f895h != null) {
            double f5 = m14235f(f4, this.f908u);
            this.f895h[0].g(f5, this.f902o);
            this.f895h[0].d(f5, this.f901n);
            float f6 = this.f908u[0];
            while (true) {
                double[] dArr2 = this.f902o;
                if (i3 < dArr2.length) {
                    double d2 = dArr2[i3];
                    double d3 = f6;
                    Double.isNaN(d3);
                    dArr2[i3] = d2 * d3;
                    i3++;
                } else {
                    this.f891d.m14203u(f2, f3, fArr, this.f900m, dArr2, this.f901n);
                    hVar.a(f2, f3, i, i2, fArr);
                    return;
                }
            }
        } else {
            C0187p pVar = this.f892e;
            float f7 = pVar.f919f;
            C0187p pVar2 = this.f891d;
            float f8 = f7 - pVar2.f919f;
            float f9 = pVar.f920g - pVar2.f920g;
            float f10 = pVar.f921h;
            float f11 = pVar2.f921h;
            float f12 = pVar.f922i;
            float f13 = pVar2.f922i;
            fArr[0] = (f8 * (1.0f - f2)) + (((f10 - f11) + f8) * f2);
            fArr[1] = (f9 * (1.0f - f3)) + (((f12 - f13) + f9) * f3);
            hVar.b();
            hVar.d(rVar3, f4);
            hVar.h(rVar, rVar2, f4);
            hVar.f(rVar4, rVar5, f4);
            hVar.c(gVar4, f4);
            hVar.g(gVar2, gVar3, f4);
            hVar.e(gVar5, gVar, f4);
            hVar.a(f2, f3, i, i2, fArr);
        }
    }

    /* renamed from: o */
    boolean m14226o(View view, float f, long j, C0178e eVar) {
        boolean z;
        AbstractC0194s.d dVar;
        boolean z2;
        float f2 = m14235f(f, null);
        HashMap<String, AbstractC0192r> hashMap = this.f911x;
        if (hashMap != null) {
            for (AbstractC0192r rVar : hashMap.values()) {
                rVar.m14119f(view, f2);
            }
        }
        HashMap<String, AbstractC0194s> hashMap2 = this.f910w;
        if (hashMap2 != null) {
            dVar = null;
            z = false;
            for (AbstractC0194s sVar : hashMap2.values()) {
                if (sVar instanceof AbstractC0194s.d) {
                    dVar = (AbstractC0194s.d) sVar;
                } else {
                    z |= sVar.m14108f(view, f2, j, eVar);
                }
            }
        } else {
            dVar = null;
            z = false;
        }
        b[] bVarArr = this.f895h;
        if (bVarArr != null) {
            b bVar = bVarArr[0];
            double d = f2;
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
                        dVar3.i(view, f2, dArr2[0], dArr2[1]);
                    }
                }
            }
            if (dVar != null) {
                double[] dArr3 = this.f902o;
                z = dVar.j(view, eVar, f2, j, dArr3[0], dArr3[1]) | z;
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
            C0184m mVar = this.f893f;
            if (mVar.f870c == 0) {
                if (f2 > 0.0f) {
                    if (f2 >= 1.0f) {
                        mVar = this.f894g;
                    } else if (this.f894g.f871d != mVar.f871d) {
                        view.setVisibility(0);
                    }
                }
                view.setVisibility(mVar.f871d);
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
                    lVarArr[i2].r(f2, view);
                    i2++;
                }
            }
        } else {
            C0187p pVar = this.f891d;
            float f3 = pVar.f919f;
            C0187p pVar2 = this.f892e;
            float f4 = pVar2.f919f;
            float f5 = pVar.f920g;
            float f6 = pVar2.f920g;
            float f7 = pVar.f921h;
            float f8 = pVar2.f921h;
            float f9 = pVar.f922i;
            float f10 = pVar2.f922i;
            float f11 = f3 + ((f4 - f3) * f2) + 0.5f;
            int i3 = (int) f11;
            float f12 = f5 + ((f6 - f5) * f2) + 0.5f;
            int i4 = (int) f12;
            int i5 = (int) (f11 + ((f8 - f7) * f2) + f7);
            int i6 = (int) (f12 + ((f10 - f9) * f2) + f9);
            if (!(f8 == f7 && f10 == f9)) {
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
                    fVar2.j(view, f2, dArr4[0], dArr4[1]);
                } else {
                    fVar.m14264f(view, f2);
                }
            }
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m14224q(ConstraintWidget constraintWidget, C0221b bVar) {
        C0187p pVar = this.f892e;
        pVar.f917d = 1.0f;
        pVar.f918e = 1.0f;
        m14225p(pVar);
        this.f892e.m14204t(constraintWidget.m13981R(), constraintWidget.m13980S(), constraintWidget.m13982Q(), constraintWidget.m13931w());
        this.f892e.m14217a(bVar.m13790s(this.f889b));
        this.f894g.m14241o(constraintWidget, bVar, this.f889b);
    }

    /* renamed from: r */
    public void m14223r(int i) {
        this.f887A = i;
    }

    /* renamed from: s */
    void m14222s(View view) {
        C0187p pVar = this.f891d;
        pVar.f917d = 0.0f;
        pVar.f918e = 0.0f;
        pVar.m14204t(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f893f.m14242n(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public void m14221t(ConstraintWidget constraintWidget, C0221b bVar) {
        C0187p pVar = this.f891d;
        pVar.f917d = 0.0f;
        pVar.f918e = 0.0f;
        m14225p(pVar);
        this.f891d.m14204t(constraintWidget.m13981R(), constraintWidget.m13980S(), constraintWidget.m13982Q(), constraintWidget.m13931w());
        C0221b.C0222a s = bVar.m13790s(this.f889b);
        this.f891d.m14217a(s);
        this.f897j = s.f1428c.f1501f;
        this.f893f.m14241o(constraintWidget, bVar, this.f889b);
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
        AbstractC0194s sVar;
        ConstraintAttribute constraintAttribute;
        AbstractC0192r rVar;
        ConstraintAttribute constraintAttribute2;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        int i3 = this.f887A;
        if (i3 != AbstractC0177c.f838e) {
            this.f891d.f924k = i3;
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
                    int i4 = ((j) iVar).f;
                    if (i4 != AbstractC0177c.f838e) {
                        this.f890c = i4;
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
                        if (!(hashMap2 == null || (constraintAttribute2 = hashMap2.get(str)) == null)) {
                            sparseArray.append(next2.f839a, constraintAttribute2);
                        }
                    }
                    rVar = AbstractC0192r.m14122c(next, sparseArray);
                } else {
                    rVar = AbstractC0192r.m14121d(next);
                }
                if (rVar != null) {
                    rVar.m14118g(next);
                    this.f911x.put(next, rVar);
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
                            if (!(hashMap3 == null || (constraintAttribute = hashMap3.get(str3)) == null)) {
                                sparseArray2.append(next5.f839a, constraintAttribute);
                            }
                        }
                        sVar = AbstractC0194s.m14111c(next4, sparseArray2);
                    } else {
                        sVar = AbstractC0194s.m14110d(next4, j);
                    }
                    if (sVar != null) {
                        sVar.m14106h(next4);
                        this.f910w.put(next4, sVar);
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
        C0187p[] pVarArr = new C0187p[size];
        pVarArr[0] = this.f891d;
        pVarArr[size - 1] = this.f892e;
        if (this.f907t.size() > 0 && this.f890c == -1) {
            this.f890c = 0;
        }
        Iterator<C0187p> it8 = this.f907t.iterator();
        int i5 = 1;
        while (it8.hasNext()) {
            pVarArr[i5] = it8.next();
            i5++;
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
        int i6 = 0;
        while (true) {
            strArr = this.f903p;
            if (i6 >= strArr.length) {
                break;
            }
            String str6 = strArr[i6];
            this.f904q[i6] = 0;
            int i7 = 0;
            while (true) {
                if (i7 >= size) {
                    break;
                } else if (pVarArr[i7].f925l.containsKey(str6)) {
                    int[] iArr = this.f904q;
                    iArr[i6] = iArr[i6] + pVarArr[i7].f925l.get(str6).m13867f();
                    break;
                } else {
                    i7++;
                }
            }
            i6++;
        }
        boolean z = pVarArr[0].f924k != AbstractC0177c.f838e;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i8 = 1; i8 < size; i8++) {
            pVarArr[i8].m14214j(pVarArr[i8 - 1], zArr, this.f903p, z);
        }
        int i9 = 0;
        for (int i10 = 1; i10 < length; i10++) {
            i9 = i9;
            if (zArr[i10]) {
                i9++;
            }
        }
        int[] iArr2 = new int[i9];
        this.f900m = iArr2;
        this.f901n = new double[iArr2.length];
        this.f902o = new double[iArr2.length];
        int i11 = 0;
        for (int i12 = 1; i12 < length; i12++) {
            i11 = i11;
            if (zArr[i12]) {
                this.f900m[i11] = i12;
                i11++;
            }
        }
        double[][] dArr = new double[size][this.f900m.length];
        double[] dArr2 = new double[size];
        for (int i13 = 0; i13 < size; i13++) {
            pVarArr[i13].m14213k(dArr[i13], this.f900m);
            dArr2[i13] = pVarArr[i13].f917d;
        }
        int i14 = 0;
        while (true) {
            int[] iArr3 = this.f900m;
            if (i14 >= iArr3.length) {
                break;
            }
            if (iArr3[i14] < C0187p.f914p.length) {
                String str7 = C0187p.f914p[this.f900m[i14]] + " [";
                for (int i15 = 0; i15 < size; i15++) {
                    str7 = str7 + dArr[i15][i14];
                }
            }
            i14++;
        }
        this.f895h = new b[this.f903p.length + 1];
        int i16 = 0;
        while (true) {
            String[] strArr3 = this.f903p;
            if (i16 >= strArr3.length) {
                break;
            }
            String str8 = strArr3[i16];
            double[] dArr3 = null;
            int i17 = 0;
            double[][] dArr4 = null;
            for (int i18 = 0; i18 < size; i18++) {
                dArr3 = dArr3;
                i17 = i17;
                dArr4 = dArr4;
                if (pVarArr[i18].m14208p(str8)) {
                    dArr4 = dArr4;
                    if (dArr4 == null) {
                        dArr3 = new double[size];
                        dArr4 = new double[size][pVarArr[i18].m14210n(str8)];
                    }
                    dArr3[i17] = pVarArr[i18].f917d;
                    pVarArr[i18].m14211m(str8, dArr4[i17], 0);
                    i17++;
                    dArr3 = dArr3;
                }
            }
            i16++;
            this.f895h[i16] = b.a(this.f890c, Arrays.copyOf(dArr3, i17), (double[][]) Arrays.copyOf(dArr4, i17));
        }
        this.f895h[0] = b.a(this.f890c, dArr2, dArr);
        if (pVarArr[0].f924k != AbstractC0177c.f838e) {
            int[] iArr4 = new int[size];
            double[] dArr5 = new double[size];
            double[][] dArr6 = new double[size][2];
            for (int i19 = 0; i19 < size; i19++) {
                iArr4[i19] = pVarArr[i19].f924k;
                dArr5[i19] = pVarArr[i19].f917d;
                dArr6[i19][0] = pVarArr[i19].f919f;
                dArr6[i19][1] = pVarArr[i19].f920g;
            }
            this.f896i = b.b(iArr4, dArr5, dArr6);
        }
        float f2 = Float.NaN;
        this.f912y = new HashMap<>();
        if (this.f909v != null) {
            Iterator<String> it9 = hashSet3.iterator();
            while (it9.hasNext()) {
                String next6 = it9.next();
                AbstractC0179g c = AbstractC0179g.m14267c(next6);
                if (c != null) {
                    f2 = f2;
                    if (c.m14261i()) {
                        f2 = f2;
                        if (Float.isNaN(f2)) {
                            f2 = m14228m();
                        }
                    }
                    c.m14263g(next6);
                    this.f912y.put(next6, c);
                }
            }
            Iterator<AbstractC0177c> it10 = this.f909v.iterator();
            while (it10.hasNext()) {
                f fVar = (AbstractC0177c) it10.next();
                if (fVar instanceof f) {
                    fVar.O(this.f912y);
                }
            }
            for (AbstractC0179g gVar : this.f912y.values()) {
                gVar.m14262h(f2);
            }
        }
    }
}
