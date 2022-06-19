package androidx.constraintlayout.motion.widget;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.AbstractC0386g;
import androidx.constraintlayout.motion.widget.AbstractC0419r;
import androidx.constraintlayout.motion.widget.AbstractC0436s;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.C0515b;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import p020b.p037f.p038a.p039a.AbstractC1506b;
import p020b.p037f.p038a.p039a.C1508c;
import p020b.p037f.p038a.p039a.C1514h;
/* renamed from: androidx.constraintlayout.motion.widget.n */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/n.class */
public class C0412n {

    /* renamed from: A */
    private C0409l[] f1830A;

    /* renamed from: a */
    View f1832a;

    /* renamed from: b */
    int f1833b;

    /* renamed from: c */
    String f1834c;

    /* renamed from: i */
    private AbstractC1506b[] f1840i;

    /* renamed from: j */
    private AbstractC1506b f1841j;

    /* renamed from: n */
    private int[] f1845n;

    /* renamed from: o */
    private double[] f1846o;

    /* renamed from: p */
    private double[] f1847p;

    /* renamed from: q */
    private String[] f1848q;

    /* renamed from: r */
    private int[] f1849r;

    /* renamed from: x */
    private HashMap<String, AbstractC0436s> f1855x;

    /* renamed from: y */
    private HashMap<String, AbstractC0419r> f1856y;

    /* renamed from: z */
    private HashMap<String, AbstractC0386g> f1857z;

    /* renamed from: d */
    private int f1835d = -1;

    /* renamed from: e */
    private C0414p f1836e = new C0414p();

    /* renamed from: f */
    private C0414p f1837f = new C0414p();

    /* renamed from: g */
    private C0411m f1838g = new C0411m();

    /* renamed from: h */
    private C0411m f1839h = new C0411m();

    /* renamed from: k */
    float f1842k = Float.NaN;

    /* renamed from: l */
    float f1843l = 0.0f;

    /* renamed from: m */
    float f1844m = 1.0f;

    /* renamed from: s */
    private int f1850s = 4;

    /* renamed from: t */
    private float[] f1851t = new float[4];

    /* renamed from: u */
    private ArrayList<C0414p> f1852u = new ArrayList<>();

    /* renamed from: v */
    private float[] f1853v = new float[1];

    /* renamed from: w */
    private ArrayList<AbstractC0380c> f1854w = new ArrayList<>();

    /* renamed from: B */
    private int f1831B = AbstractC0380c.f1675a;

    public C0412n(View view) {
        m34312u(view);
    }

    /* renamed from: f */
    private float m34327f(float f, float[] fArr) {
        float f2;
        if (fArr != null) {
            fArr[0] = 1.0f;
            f2 = f;
        } else {
            float f3 = this.f1844m;
            f2 = f;
            if (f3 != 1.0d) {
                float f4 = this.f1843l;
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
        C1508c c1508c = this.f1836e.f1859e;
        float f6 = Float.NaN;
        Iterator<C0414p> it = this.f1852u.iterator();
        float f7 = 0.0f;
        while (it.hasNext()) {
            C0414p next = it.next();
            C1508c c1508c2 = next.f1859e;
            if (c1508c2 != null) {
                float f8 = next.f1861g;
                if (f8 < f2) {
                    c1508c = c1508c2;
                    f7 = f8;
                } else if (Float.isNaN(f6)) {
                    f6 = next.f1861g;
                }
            }
        }
        float f9 = f2;
        if (c1508c != null) {
            if (Float.isNaN(f6)) {
                f6 = 1.0f;
            }
            float f10 = f6 - f7;
            double d = (f2 - f7) / f10;
            float mo29883a = (((float) c1508c.mo29883a(d)) * f10) + f7;
            f9 = mo29883a;
            if (fArr != null) {
                fArr[0] = (float) c1508c.mo29882b(d);
                f9 = mo29883a;
            }
        }
        return f9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r0v29, types: [b.f.a.a.b[]] */
    /* JADX WARN: Type inference failed for: r0v30, types: [b.f.a.a.b] */
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
    private float m34320m() {
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
                C1508c c1508c = this.f1836e.f1859e;
                float f7 = Float.NaN;
                Iterator<C0414p> it = this.f1852u.iterator();
                float f8 = 0.0f;
                while (true) {
                    f = f8;
                    if (!it.hasNext()) {
                        break;
                    }
                    C0414p next = it.next();
                    C1508c c1508c2 = next.f1859e;
                    C1508c c1508c3 = c1508c;
                    float f9 = f7;
                    float f10 = f;
                    if (c1508c2 != null) {
                        f10 = next.f1861g;
                        if (f10 < f6) {
                            c1508c3 = c1508c2;
                            f9 = f7;
                        } else {
                            c1508c3 = c1508c;
                            f9 = f7;
                            f10 = f;
                            if (Float.isNaN(f7)) {
                                f9 = next.f1861g;
                                f10 = f;
                                c1508c3 = c1508c;
                            }
                        }
                    }
                    c1508c = c1508c3;
                    f7 = f9;
                    f8 = f10;
                }
                if (c1508c != null) {
                    float f11 = f7;
                    if (Float.isNaN(f7)) {
                        f11 = 1.0f;
                    }
                    r19 = (((float) c1508c.mo29883a((f6 - f) / f2)) * (f11 - f)) + f;
                }
                this.f1840i[0].mo29878d(r19, this.f1846o);
                this.f1836e.m34305h(this.f1845n, this.f1846o, fArr, 0);
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
    private void m34319n(C0414p c0414p) {
        int binarySearch = Collections.binarySearch(this.f1852u, c0414p);
        if (binarySearch == 0) {
            Log.e("MotionController", " KeyPath positon \"" + c0414p.f1862h + "\" outside of range");
        }
        this.f1852u.add((-binarySearch) - 1, c0414p);
    }

    /* renamed from: p */
    private void m34317p(C0414p c0414p) {
        c0414p.m34297p((int) this.f1832a.getX(), (int) this.f1832a.getY(), this.f1832a.getWidth(), this.f1832a.getHeight());
    }

    /* renamed from: a */
    public void m34332a(AbstractC0380c abstractC0380c) {
        this.f1854w.add(abstractC0380c);
    }

    /* renamed from: b */
    public void m34331b(ArrayList<AbstractC0380c> arrayList) {
        this.f1854w.addAll(arrayList);
    }

    /* renamed from: c */
    public int m34330c(float[] fArr, int[] iArr) {
        if (fArr != null) {
            double[] mo29874h = this.f1840i[0].mo29874h();
            if (iArr != null) {
                Iterator<C0414p> it = this.f1852u.iterator();
                int i = 0;
                while (it.hasNext()) {
                    iArr[i] = it.next().f1871q;
                    i++;
                }
            }
            int i2 = 0;
            for (double d : mo29874h) {
                this.f1840i[0].mo29878d(d, this.f1846o);
                this.f1836e.m34305h(this.f1845n, this.f1846o, fArr, i2);
                i2 += 2;
            }
            return i2 / 2;
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [double] */
    /* JADX WARN: Type inference failed for: r0v77, types: [double] */
    /* renamed from: d */
    public void m34329d(float[] fArr, int i) {
        float f;
        float f2;
        float f3 = 1.0f / (i - 1);
        HashMap<String, AbstractC0419r> hashMap = this.f1856y;
        AbstractC0386g abstractC0386g = null;
        AbstractC0419r abstractC0419r = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, AbstractC0419r> hashMap2 = this.f1856y;
        AbstractC0419r abstractC0419r2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, AbstractC0386g> hashMap3 = this.f1857z;
        AbstractC0386g abstractC0386g2 = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, AbstractC0386g> hashMap4 = this.f1857z;
        if (hashMap4 != null) {
            abstractC0386g = hashMap4.get("translationY");
        }
        for (int i2 = 0; i2 < i; i2++) {
            float f4 = i2 * f3;
            float f5 = this.f1844m;
            float f6 = f4;
            if (f5 != 1.0f) {
                float f7 = this.f1843l;
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
            C1508c c1508c = this.f1836e.f1859e;
            float f9 = Float.NaN;
            Iterator<C0414p> it = this.f1852u.iterator();
            float f10 = 0.0f;
            while (true) {
                f = f10;
                if (!it.hasNext()) {
                    break;
                }
                C0414p next = it.next();
                C1508c c1508c2 = next.f1859e;
                C1508c c1508c3 = c1508c;
                float f11 = f9;
                float f12 = f;
                if (c1508c2 != null) {
                    f12 = next.f1861g;
                    if (f12 < f6) {
                        c1508c3 = c1508c2;
                        f11 = f9;
                    } else {
                        c1508c3 = c1508c;
                        f11 = f9;
                        f12 = f;
                        if (Float.isNaN(f9)) {
                            f11 = next.f1861g;
                            f12 = f;
                            c1508c3 = c1508c;
                        }
                    }
                }
                c1508c = c1508c3;
                f9 = f11;
                f10 = f12;
            }
            if (c1508c != null) {
                float f13 = f9;
                if (Float.isNaN(f9)) {
                    f13 = 1.0f;
                }
                c = (((float) c1508c.mo29883a((f6 - f) / f2)) * (f13 - f)) + f;
            }
            this.f1840i[0].mo29878d(c, this.f1846o);
            AbstractC1506b abstractC1506b = this.f1841j;
            if (abstractC1506b != null) {
                double[] dArr = this.f1846o;
                if (dArr.length > 0) {
                    abstractC1506b.mo29878d(c, dArr);
                }
            }
            int i3 = i2 * 2;
            this.f1836e.m34305h(this.f1845n, this.f1846o, fArr, i3);
            if (abstractC0386g2 != null) {
                fArr[i3] = fArr[i3] + abstractC0386g2.m34414a(f6);
            } else if (abstractC0419r != null) {
                fArr[i3] = fArr[i3] + abstractC0419r.m34216a(f6);
            }
            if (abstractC0386g != null) {
                int i4 = i3 + 1;
                fArr[i4] = fArr[i4] + abstractC0386g.m34414a(f6);
            } else if (abstractC0419r2 != null) {
                int i5 = i3 + 1;
                fArr[i5] = fArr[i5] + abstractC0419r2.m34216a(f6);
            }
        }
    }

    /* renamed from: e */
    public void m34328e(float f, float[] fArr, int i) {
        this.f1840i[0].mo29878d(m34327f(f, null), this.f1846o);
        this.f1836e.m34302k(this.f1845n, this.f1846o, fArr, i);
    }

    /* renamed from: g */
    public void m34326g(float f, float f2, float f3, float[] fArr) {
        double[] dArr;
        float m34327f = m34327f(f, this.f1853v);
        AbstractC1506b[] abstractC1506bArr = this.f1840i;
        int i = 0;
        if (abstractC1506bArr == null) {
            C0414p c0414p = this.f1837f;
            float f4 = c0414p.f1863i;
            C0414p c0414p2 = this.f1836e;
            float f5 = f4 - c0414p2.f1863i;
            float f6 = c0414p.f1864j - c0414p2.f1864j;
            float f7 = c0414p.f1865k;
            float f8 = c0414p2.f1865k;
            float f9 = c0414p.f1866l;
            float f10 = c0414p2.f1866l;
            fArr[0] = (f5 * (1.0f - f2)) + (((f7 - f8) + f5) * f2);
            fArr[1] = (f6 * (1.0f - f3)) + (((f9 - f10) + f6) * f3);
            return;
        }
        AbstractC1506b abstractC1506b = abstractC1506bArr[0];
        double d = m34327f;
        abstractC1506b.mo29875g(d, this.f1847p);
        this.f1840i[0].mo29878d(d, this.f1846o);
        float f11 = this.f1853v[0];
        while (true) {
            dArr = this.f1847p;
            if (i >= dArr.length) {
                break;
            }
            dArr[i] = dArr[i] * f11;
            i++;
        }
        AbstractC1506b abstractC1506b2 = this.f1841j;
        if (abstractC1506b2 == null) {
            this.f1836e.m34296q(f2, f3, fArr, this.f1845n, dArr, this.f1846o);
            return;
        }
        double[] dArr2 = this.f1846o;
        if (dArr2.length <= 0) {
            return;
        }
        abstractC1506b2.mo29878d(d, dArr2);
        this.f1841j.mo29875g(d, this.f1847p);
        this.f1836e.m34296q(f2, f3, fArr, this.f1845n, this.f1847p, this.f1846o);
    }

    /* renamed from: h */
    public int m34325h() {
        int i = this.f1836e.f1860f;
        Iterator<C0414p> it = this.f1852u.iterator();
        while (it.hasNext()) {
            i = Math.max(i, it.next().f1860f);
        }
        return Math.max(i, this.f1837f.f1860f);
    }

    /* renamed from: i */
    public float m34324i() {
        return this.f1837f.f1863i;
    }

    /* renamed from: j */
    public float m34323j() {
        return this.f1837f.f1864j;
    }

    /* renamed from: k */
    public C0414p m34322k(int i) {
        return this.f1852u.get(i);
    }

    /* renamed from: l */
    public void m34321l(float f, int i, int i2, float f2, float f3, float[] fArr) {
        float m34327f = m34327f(f, this.f1853v);
        HashMap<String, AbstractC0419r> hashMap = this.f1856y;
        AbstractC0386g abstractC0386g = null;
        AbstractC0419r abstractC0419r = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, AbstractC0419r> hashMap2 = this.f1856y;
        AbstractC0419r abstractC0419r2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, AbstractC0419r> hashMap3 = this.f1856y;
        AbstractC0419r abstractC0419r3 = hashMap3 == null ? null : hashMap3.get("rotation");
        HashMap<String, AbstractC0419r> hashMap4 = this.f1856y;
        AbstractC0419r abstractC0419r4 = hashMap4 == null ? null : hashMap4.get("scaleX");
        HashMap<String, AbstractC0419r> hashMap5 = this.f1856y;
        AbstractC0419r abstractC0419r5 = hashMap5 == null ? null : hashMap5.get("scaleY");
        HashMap<String, AbstractC0386g> hashMap6 = this.f1857z;
        AbstractC0386g abstractC0386g2 = hashMap6 == null ? null : hashMap6.get("translationX");
        HashMap<String, AbstractC0386g> hashMap7 = this.f1857z;
        AbstractC0386g abstractC0386g3 = hashMap7 == null ? null : hashMap7.get("translationY");
        HashMap<String, AbstractC0386g> hashMap8 = this.f1857z;
        AbstractC0386g abstractC0386g4 = hashMap8 == null ? null : hashMap8.get("rotation");
        HashMap<String, AbstractC0386g> hashMap9 = this.f1857z;
        AbstractC0386g abstractC0386g5 = hashMap9 == null ? null : hashMap9.get("scaleX");
        HashMap<String, AbstractC0386g> hashMap10 = this.f1857z;
        if (hashMap10 != null) {
            abstractC0386g = hashMap10.get("scaleY");
        }
        C1514h c1514h = new C1514h();
        c1514h.m29858b();
        c1514h.m29856d(abstractC0419r3, m34327f);
        c1514h.m29852h(abstractC0419r, abstractC0419r2, m34327f);
        c1514h.m29854f(abstractC0419r4, abstractC0419r5, m34327f);
        c1514h.m29857c(abstractC0386g4, m34327f);
        c1514h.m29853g(abstractC0386g2, abstractC0386g3, m34327f);
        c1514h.m29855e(abstractC0386g5, abstractC0386g, m34327f);
        AbstractC1506b abstractC1506b = this.f1841j;
        if (abstractC1506b != null) {
            double[] dArr = this.f1846o;
            if (dArr.length > 0) {
                double d = m34327f;
                abstractC1506b.mo29878d(d, dArr);
                this.f1841j.mo29875g(d, this.f1847p);
                this.f1836e.m34296q(f2, f3, fArr, this.f1845n, this.f1847p, this.f1846o);
            }
            c1514h.m29859a(f2, f3, i, i2, fArr);
            return;
        }
        int i3 = 0;
        if (this.f1840i == null) {
            C0414p c0414p = this.f1837f;
            float f4 = c0414p.f1863i;
            C0414p c0414p2 = this.f1836e;
            float f5 = f4 - c0414p2.f1863i;
            float f6 = c0414p.f1864j - c0414p2.f1864j;
            float f7 = c0414p.f1865k;
            float f8 = c0414p2.f1865k;
            float f9 = c0414p.f1866l;
            float f10 = c0414p2.f1866l;
            fArr[0] = (f5 * (1.0f - f2)) + (((f7 - f8) + f5) * f2);
            fArr[1] = (f6 * (1.0f - f3)) + (((f9 - f10) + f6) * f3);
            c1514h.m29858b();
            c1514h.m29856d(abstractC0419r3, m34327f);
            c1514h.m29852h(abstractC0419r, abstractC0419r2, m34327f);
            c1514h.m29854f(abstractC0419r4, abstractC0419r5, m34327f);
            c1514h.m29857c(abstractC0386g4, m34327f);
            c1514h.m29853g(abstractC0386g2, abstractC0386g3, m34327f);
            c1514h.m29855e(abstractC0386g5, abstractC0386g, m34327f);
            c1514h.m29859a(f2, f3, i, i2, fArr);
            return;
        }
        double m34327f2 = m34327f(m34327f, this.f1853v);
        this.f1840i[0].mo29875g(m34327f2, this.f1847p);
        this.f1840i[0].mo29878d(m34327f2, this.f1846o);
        float f11 = this.f1853v[0];
        while (true) {
            double[] dArr2 = this.f1847p;
            if (i3 >= dArr2.length) {
                this.f1836e.m34296q(f2, f3, fArr, this.f1845n, dArr2, this.f1846o);
                c1514h.m29859a(f2, f3, i, i2, fArr);
                return;
            }
            dArr2[i3] = dArr2[i3] * f11;
            i3++;
        }
    }

    /* renamed from: o */
    public boolean m34318o(View view, float f, long j, C0383e c0383e) {
        boolean z;
        AbstractC0436s.C0440d c0440d;
        boolean z2;
        float m34327f = m34327f(f, null);
        HashMap<String, AbstractC0419r> hashMap = this.f1856y;
        if (hashMap != null) {
            for (AbstractC0419r abstractC0419r : hashMap.values()) {
                abstractC0419r.mo34204f(view, m34327f);
            }
        }
        HashMap<String, AbstractC0436s> hashMap2 = this.f1855x;
        if (hashMap2 != null) {
            c0440d = null;
            z = false;
            for (AbstractC0436s abstractC0436s : hashMap2.values()) {
                if (abstractC0436s instanceof AbstractC0436s.C0440d) {
                    c0440d = (AbstractC0436s.C0440d) abstractC0436s;
                } else {
                    z |= abstractC0436s.mo34190f(view, m34327f, j, c0383e);
                }
            }
        } else {
            c0440d = null;
            z = false;
        }
        AbstractC1506b[] abstractC1506bArr = this.f1840i;
        if (abstractC1506bArr != null) {
            AbstractC1506b abstractC1506b = abstractC1506bArr[0];
            double d = m34327f;
            abstractC1506b.mo29878d(d, this.f1846o);
            this.f1840i[0].mo29875g(d, this.f1847p);
            AbstractC1506b abstractC1506b2 = this.f1841j;
            if (abstractC1506b2 != null) {
                double[] dArr = this.f1846o;
                if (dArr.length > 0) {
                    abstractC1506b2.mo29878d(d, dArr);
                    this.f1841j.mo29875g(d, this.f1847p);
                }
            }
            this.f1836e.m34295r(view, this.f1845n, this.f1846o, this.f1847p, null);
            HashMap<String, AbstractC0419r> hashMap3 = this.f1856y;
            if (hashMap3 != null) {
                for (AbstractC0419r abstractC0419r2 : hashMap3.values()) {
                    if (abstractC0419r2 instanceof AbstractC0419r.C0423d) {
                        AbstractC0419r.C0423d c0423d = (AbstractC0419r.C0423d) abstractC0419r2;
                        double[] dArr2 = this.f1847p;
                        c0423d.m34208i(view, m34327f, dArr2[0], dArr2[1]);
                    }
                }
            }
            if (c0440d != null) {
                double[] dArr3 = this.f1847p;
                z = c0440d.m34194j(view, c0383e, m34327f, j, dArr3[0], dArr3[1]) | z;
            }
            int i = 1;
            while (true) {
                AbstractC1506b[] abstractC1506bArr2 = this.f1840i;
                if (i >= abstractC1506bArr2.length) {
                    break;
                }
                abstractC1506bArr2[i].mo29877e(d, this.f1851t);
                this.f1836e.f1870p.get(this.f1848q[i - 1]).m33710i(view, this.f1851t);
                i++;
            }
            C0411m c0411m = this.f1838g;
            if (c0411m.f1809f == 0) {
                if (m34327f <= 0.0f) {
                    view.setVisibility(c0411m.f1810g);
                } else if (m34327f >= 1.0f) {
                    view.setVisibility(this.f1839h.f1810g);
                } else if (this.f1839h.f1810g != c0411m.f1810g) {
                    view.setVisibility(0);
                }
            }
            z2 = z;
            if (this.f1830A != null) {
                int i2 = 0;
                while (true) {
                    C0409l[] c0409lArr = this.f1830A;
                    z2 = z;
                    if (i2 >= c0409lArr.length) {
                        break;
                    }
                    c0409lArr[i2].m34344r(m34327f, view);
                    i2++;
                }
            }
        } else {
            C0414p c0414p = this.f1836e;
            float f2 = c0414p.f1863i;
            C0414p c0414p2 = this.f1837f;
            float f3 = c0414p2.f1863i;
            float f4 = c0414p.f1864j;
            float f5 = c0414p2.f1864j;
            float f6 = c0414p.f1865k;
            float f7 = c0414p2.f1865k;
            float f8 = c0414p.f1866l;
            float f9 = c0414p2.f1866l;
            float f10 = f2 + ((f3 - f2) * m34327f) + 0.5f;
            int i3 = (int) f10;
            float f11 = f4 + ((f5 - f4) * m34327f) + 0.5f;
            int i4 = (int) f11;
            int i5 = (int) (f10 + ((f7 - f6) * m34327f) + f6);
            int i6 = (int) (f11 + ((f9 - f8) * m34327f) + f8);
            if (f7 != f6 || f9 != f8) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i5 - i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i6 - i4, 1073741824));
            }
            view.layout(i3, i4, i5, i6);
            z2 = z;
        }
        HashMap<String, AbstractC0386g> hashMap4 = this.f1857z;
        if (hashMap4 != null) {
            for (AbstractC0386g abstractC0386g : hashMap4.values()) {
                if (abstractC0386g instanceof AbstractC0386g.C0392f) {
                    AbstractC0386g.C0392f c0392f = (AbstractC0386g.C0392f) abstractC0386g;
                    double[] dArr4 = this.f1847p;
                    c0392f.m34401j(view, m34327f, dArr4[0], dArr4[1]);
                } else {
                    abstractC0386g.mo34400f(view, m34327f);
                }
            }
        }
        return z2;
    }

    /* renamed from: q */
    public void m34316q(ConstraintWidget constraintWidget, C0515b c0515b) {
        C0414p c0414p = this.f1837f;
        c0414p.f1861g = 1.0f;
        c0414p.f1862h = 1.0f;
        m34317p(c0414p);
        this.f1837f.m34297p(constraintWidget.m34011V(), constraintWidget.m34009W(), constraintWidget.m34013U(), constraintWidget.m33962y());
        this.f1837f.m34310a(c0515b.m33629s(this.f1833b));
        this.f1839h.m34333k(constraintWidget, c0515b, this.f1833b);
    }

    /* renamed from: r */
    public void m34315r(int i) {
        this.f1831B = i;
    }

    /* renamed from: s */
    public void m34314s(View view) {
        C0414p c0414p = this.f1836e;
        c0414p.f1861g = 0.0f;
        c0414p.f1862h = 0.0f;
        c0414p.m34297p(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f1838g.m34334j(view);
    }

    /* renamed from: t */
    public void m34313t(ConstraintWidget constraintWidget, C0515b c0515b) {
        C0414p c0414p = this.f1836e;
        c0414p.f1861g = 0.0f;
        c0414p.f1862h = 0.0f;
        m34317p(c0414p);
        this.f1836e.m34297p(constraintWidget.m34011V(), constraintWidget.m34009W(), constraintWidget.m34013U(), constraintWidget.m33962y());
        C0515b.C0516a m33629s = c0515b.m33629s(this.f1833b);
        this.f1836e.m34310a(m33629s);
        this.f1842k = m33629s.f2623c.f2696g;
        this.f1838g.m34333k(constraintWidget, c0515b, this.f1833b);
    }

    public String toString() {
        return " start: x: " + this.f1836e.f1863i + " y: " + this.f1836e.f1864j + " end: x: " + this.f1837f.f1863i + " y: " + this.f1837f.f1864j;
    }

    /* renamed from: u */
    public void m34312u(View view) {
        this.f1832a = view;
        this.f1833b = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.f1834c = ((ConstraintLayout.LayoutParams) layoutParams).m33674a();
        }
    }

    /* renamed from: v */
    public void m34311v(int i, int i2, float f, long j) {
        ArrayList arrayList;
        String[] strArr;
        int i3;
        double[][] dArr;
        AbstractC0436s abstractC0436s;
        ConstraintAttribute constraintAttribute;
        AbstractC0419r abstractC0419r;
        ConstraintAttribute constraintAttribute2;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        int i4 = this.f1831B;
        if (i4 != AbstractC0380c.f1675a) {
            this.f1836e.f1869o = i4;
        }
        this.f1838g.m34336h(this.f1839h, hashSet2);
        ArrayList<AbstractC0380c> arrayList2 = this.f1854w;
        if (arrayList2 != null) {
            Iterator<AbstractC0380c> it = arrayList2.iterator();
            ArrayList arrayList3 = null;
            while (true) {
                arrayList = arrayList3;
                if (!it.hasNext()) {
                    break;
                }
                AbstractC0380c next = it.next();
                if (next instanceof C0404i) {
                    C0404i c0404i = (C0404i) next;
                    m34319n(new C0414p(i, i2, c0404i, this.f1836e, this.f1837f));
                    int i5 = c0404i.f1761g;
                    if (i5 != AbstractC0380c.f1675a) {
                        this.f1835d = i5;
                    }
                } else if (next instanceof C0384f) {
                    next.mo34358b(hashSet3);
                } else if (next instanceof C0407k) {
                    next.mo34358b(hashSet);
                } else if (next instanceof C0409l) {
                    ArrayList arrayList4 = arrayList3;
                    if (arrayList3 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add((C0409l) next);
                    arrayList3 = arrayList4;
                } else {
                    next.mo34382e(hashMap);
                    next.mo34358b(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.f1830A = (C0409l[]) arrayList.toArray(new C0409l[0]);
        }
        if (!hashSet2.isEmpty()) {
            this.f1856y = new HashMap<>();
            Iterator<String> it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                String next2 = it2.next();
                if (next2.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str = next2.split(",")[1];
                    Iterator<AbstractC0380c> it3 = this.f1854w.iterator();
                    while (it3.hasNext()) {
                        AbstractC0380c next3 = it3.next();
                        HashMap<String, ConstraintAttribute> hashMap2 = next3.f1680f;
                        if (hashMap2 != null && (constraintAttribute2 = hashMap2.get(str)) != null) {
                            sparseArray.append(next3.f1676b, constraintAttribute2);
                        }
                    }
                    abstractC0419r = AbstractC0419r.m34214c(next2, sparseArray);
                } else {
                    abstractC0419r = AbstractC0419r.m34213d(next2);
                }
                if (abstractC0419r != null) {
                    abstractC0419r.m34212g(next2);
                    this.f1856y.put(next2, abstractC0419r);
                }
            }
            ArrayList<AbstractC0380c> arrayList5 = this.f1854w;
            if (arrayList5 != null) {
                Iterator<AbstractC0380c> it4 = arrayList5.iterator();
                while (it4.hasNext()) {
                    AbstractC0380c next4 = it4.next();
                    if (next4 instanceof C0381d) {
                        next4.mo34359a(this.f1856y);
                    }
                }
            }
            this.f1838g.m34341a(this.f1856y, 0);
            this.f1839h.m34341a(this.f1856y, 100);
            for (String str2 : this.f1856y.keySet()) {
                this.f1856y.get(str2).mo34210h(hashMap.containsKey(str2) ? hashMap.get(str2).intValue() : 0);
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.f1855x == null) {
                this.f1855x = new HashMap<>();
            }
            Iterator<String> it5 = hashSet.iterator();
            while (it5.hasNext()) {
                String next5 = it5.next();
                if (!this.f1855x.containsKey(next5)) {
                    if (next5.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str3 = next5.split(",")[1];
                        Iterator<AbstractC0380c> it6 = this.f1854w.iterator();
                        while (it6.hasNext()) {
                            AbstractC0380c next6 = it6.next();
                            HashMap<String, ConstraintAttribute> hashMap3 = next6.f1680f;
                            if (hashMap3 != null && (constraintAttribute = hashMap3.get(str3)) != null) {
                                sparseArray2.append(next6.f1676b, constraintAttribute);
                            }
                        }
                        abstractC0436s = AbstractC0436s.m34201c(next5, sparseArray2);
                    } else {
                        abstractC0436s = AbstractC0436s.m34200d(next5, j);
                    }
                    if (abstractC0436s != null) {
                        abstractC0436s.m34198h(next5);
                        this.f1855x.put(next5, abstractC0436s);
                    }
                }
            }
            ArrayList<AbstractC0380c> arrayList6 = this.f1854w;
            if (arrayList6 != null) {
                Iterator<AbstractC0380c> it7 = arrayList6.iterator();
                while (it7.hasNext()) {
                    AbstractC0380c next7 = it7.next();
                    if (next7 instanceof C0407k) {
                        ((C0407k) next7).m34383M(this.f1855x);
                    }
                }
            }
            for (String str4 : this.f1855x.keySet()) {
                this.f1855x.get(str4).mo34196i(hashMap.containsKey(str4) ? hashMap.get(str4).intValue() : 0);
            }
        }
        int size = this.f1852u.size() + 2;
        C0414p[] c0414pArr = new C0414p[size];
        c0414pArr[0] = this.f1836e;
        c0414pArr[size - 1] = this.f1837f;
        if (this.f1852u.size() > 0 && this.f1835d == -1) {
            this.f1835d = 0;
        }
        Iterator<C0414p> it8 = this.f1852u.iterator();
        int i6 = 1;
        while (it8.hasNext()) {
            c0414pArr[i6] = it8.next();
            i6++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.f1837f.f1870p.keySet()) {
            if (this.f1836e.f1870p.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.f1848q = strArr2;
        this.f1849r = new int[strArr2.length];
        int i7 = 0;
        while (true) {
            strArr = this.f1848q;
            if (i7 >= strArr.length) {
                break;
            }
            String str6 = strArr[i7];
            this.f1849r[i7] = 0;
            int i8 = 0;
            while (true) {
                if (i8 >= size) {
                    break;
                } else if (c0414pArr[i8].f1870p.containsKey(str6)) {
                    int[] iArr = this.f1849r;
                    iArr[i7] = iArr[i7] + c0414pArr[i8].f1870p.get(str6).m33713f();
                    break;
                } else {
                    i8++;
                }
            }
            i7++;
        }
        boolean z = c0414pArr[0].f1869o != AbstractC0380c.f1675a;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i9 = 1; i9 < size; i9++) {
            c0414pArr[i9].m34307f(c0414pArr[i9 - 1], zArr, this.f1848q, z);
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
        this.f1845n = iArr2;
        this.f1846o = new double[iArr2.length];
        this.f1847p = new double[iArr2.length];
        int i13 = 1;
        int i14 = 0;
        while (true) {
            int i15 = i14;
            if (i13 >= length) {
                break;
            }
            int i16 = i15;
            if (zArr[i13]) {
                this.f1845n[i15] = i13;
                i16 = i15 + 1;
            }
            i13++;
            i14 = i16;
        }
        double[][] dArr2 = new double[size][this.f1845n.length];
        double[] dArr3 = new double[size];
        for (int i17 = 0; i17 < size; i17++) {
            c0414pArr[i17].m34306g(dArr2[i17], this.f1845n);
            dArr3[i17] = c0414pArr[i17].f1861g;
        }
        int i18 = 0;
        while (true) {
            int[] iArr3 = this.f1845n;
            if (i18 >= iArr3.length) {
                break;
            }
            if (iArr3[i18] < C0414p.f1858d.length) {
                String str7 = C0414p.f1858d[this.f1845n[i18]] + " [";
                for (int i19 = 0; i19 < size; i19++) {
                    str7 = str7 + dArr2[i19][i18];
                }
            }
            i18++;
        }
        this.f1840i = new AbstractC1506b[this.f1848q.length + 1];
        int i20 = 0;
        while (true) {
            String[] strArr3 = this.f1848q;
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
                    if (c0414pArr[i21].m34301l(str8)) {
                        dArr7 = dArr;
                        if (dArr == null) {
                            dArr4 = new double[size];
                            dArr7 = new double[size][c0414pArr[i21].m34303j(str8)];
                        }
                        dArr4[i22] = c0414pArr[i21].f1861g;
                        c0414pArr[i21].m34304i(str8, dArr7[i22], 0);
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
            this.f1840i[i20] = AbstractC1506b.m29886a(this.f1835d, Arrays.copyOf(dArr4, i22), (double[][]) Arrays.copyOf(dArr, i22));
        }
        this.f1840i[0] = AbstractC1506b.m29886a(this.f1835d, dArr3, dArr2);
        if (c0414pArr[0].f1869o != AbstractC0380c.f1675a) {
            int[] iArr4 = new int[size];
            double[] dArr8 = new double[size];
            double[][] dArr9 = new double[size][2];
            for (int i24 = 0; i24 < size; i24++) {
                iArr4[i24] = c0414pArr[i24].f1869o;
                dArr8[i24] = c0414pArr[i24].f1861g;
                dArr9[i24][0] = c0414pArr[i24].f1863i;
                dArr9[i24][1] = c0414pArr[i24].f1864j;
            }
            this.f1841j = AbstractC1506b.m29885b(iArr4, dArr8, dArr9);
        }
        float f2 = Float.NaN;
        this.f1857z = new HashMap<>();
        if (this.f1854w != null) {
            Iterator<String> it9 = hashSet3.iterator();
            while (it9.hasNext()) {
                String next8 = it9.next();
                AbstractC0386g m34412c = AbstractC0386g.m34412c(next8);
                if (m34412c != null) {
                    float f3 = f2;
                    if (m34412c.m34407i()) {
                        f3 = f2;
                        if (Float.isNaN(f2)) {
                            f3 = m34320m();
                        }
                    }
                    m34412c.m34409g(next8);
                    this.f1857z.put(next8, m34412c);
                    f2 = f3;
                }
            }
            Iterator<AbstractC0380c> it10 = this.f1854w.iterator();
            while (it10.hasNext()) {
                AbstractC0380c next9 = it10.next();
                if (next9 instanceof C0384f) {
                    ((C0384f) next9).m34439O(this.f1857z);
                }
            }
            for (AbstractC0386g abstractC0386g : this.f1857z.values()) {
                abstractC0386g.m34408h(f2);
            }
        }
    }
}
