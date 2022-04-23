package p131c.p161d.p170b.p188c.p204h1.p205r;

import java.util.ArrayList;
import java.util.zip.Inflater;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2903u;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p204h1.p205r.C2934c;
/* renamed from: c.d.b.c.h1.r.d */
/* loaded from: classes-dex2jar.jar:c/d/b/c/h1/r/d.class */
public final class C2937d {
    /* renamed from: a */
    public static int m28445a(int i) {
        return (-(i & 1)) ^ (i >> 1);
    }

    /* renamed from: a */
    public static C2934c m28443a(byte[] bArr, int i) {
        ArrayList<C2934c.C2935a> arrayList;
        C2904v vVar = new C2904v(bArr);
        try {
            arrayList = m28444a(vVar) ? m28440d(vVar) : m28441c(vVar);
        } catch (ArrayIndexOutOfBoundsException e) {
            arrayList = null;
        }
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        if (size == 1) {
            return new C2934c(arrayList.get(0), i);
        }
        if (size != 2) {
            return null;
        }
        return new C2934c(arrayList.get(0), arrayList.get(1), i);
    }

    /* renamed from: a */
    public static boolean m28444a(C2904v vVar) {
        vVar.m28536f(4);
        int g = vVar.m28535g();
        boolean z = false;
        vVar.m28538e(0);
        if (g == 1886547818) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public static C2934c.C2935a m28442b(C2904v vVar) {
        int g = vVar.m28535g();
        if (g > 10000) {
            return null;
        }
        float[] fArr = new float[g];
        for (int i = 0; i < g; i++) {
            fArr[i] = vVar.m28537f();
        }
        int g2 = vVar.m28535g();
        if (g2 > 32000) {
            return null;
        }
        double log = Math.log(2.0d);
        double d = g;
        Double.isNaN(d);
        int ceil = (int) Math.ceil(Math.log(d * 2.0d) / log);
        C2903u uVar = new C2903u(vVar.f10530a);
        uVar.m28558b(vVar.m28543c() * 8);
        float[] fArr2 = new float[g2 * 5];
        int[] iArr = new int[5];
        int i2 = 0;
        for (int i3 = 0; i3 < g2; i3++) {
            int i4 = 0;
            while (i4 < 5) {
                int a = iArr[i4] + m28445a(uVar.m28565a(ceil));
                if (a >= g || a < 0) {
                    return null;
                }
                fArr2[i2] = fArr[a];
                iArr[i4] = a;
                i4++;
                i2++;
            }
        }
        uVar.m28558b((uVar.m28555d() + 7) & (-8));
        int a2 = uVar.m28565a(32);
        C2934c.C2936b[] bVarArr = new C2934c.C2936b[a2];
        for (int i5 = 0; i5 < a2; i5++) {
            int a3 = uVar.m28565a(8);
            int a4 = uVar.m28565a(8);
            int a5 = uVar.m28565a(32);
            if (a5 > 128000) {
                return null;
            }
            double d2 = g2;
            Double.isNaN(d2);
            int ceil2 = (int) Math.ceil(Math.log(d2 * 2.0d) / log);
            float[] fArr3 = new float[a5 * 3];
            float[] fArr4 = new float[a5 * 2];
            int i6 = 0;
            for (int i7 = 0; i7 < a5; i7++) {
                i6 += m28445a(uVar.m28565a(ceil2));
                if (i6 < 0 || i6 >= g2) {
                    return null;
                }
                int i8 = i7 * 3;
                int i9 = i6 * 5;
                fArr3[i8] = fArr2[i9];
                fArr3[i8 + 1] = fArr2[i9 + 1];
                fArr3[i8 + 2] = fArr2[i9 + 2];
                int i10 = i7 * 2;
                fArr4[i10] = fArr2[i9 + 3];
                fArr4[i10 + 1] = fArr2[i9 + 4];
            }
            bVarArr[i5] = new C2934c.C2936b(a3, fArr3, fArr4, a4);
        }
        return new C2934c.C2935a(bVarArr);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    public static ArrayList<C2934c.C2935a> m28441c(C2904v vVar) {
        if (vVar.m28524r() != 0) {
            return null;
        }
        vVar.m28536f(7);
        int g = vVar.m28535g();
        if (g == 1684433976) {
            C2904v vVar2 = new C2904v();
            Inflater inflater = new Inflater(true);
            try {
                if (!C2885h0.m28672a(vVar, vVar2, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                vVar = vVar2;
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        } else if (g != 1918990112) {
            return null;
        }
        return m28439e(vVar);
    }

    /* renamed from: d */
    public static ArrayList<C2934c.C2935a> m28440d(C2904v vVar) {
        int g;
        vVar.m28536f(8);
        int c = vVar.m28543c();
        int d = vVar.m28541d();
        while (c < d && (g = vVar.m28535g() + c) > c && g <= d) {
            int g2 = vVar.m28535g();
            if (g2 == 2037673328 || g2 == 1836279920) {
                vVar.m28540d(g);
                return m28441c(vVar);
            }
            vVar.m28538e(g);
            c = g;
        }
        return null;
    }

    /* renamed from: e */
    public static ArrayList<C2934c.C2935a> m28439e(C2904v vVar) {
        ArrayList<C2934c.C2935a> arrayList = new ArrayList<>();
        int c = vVar.m28543c();
        int d = vVar.m28541d();
        while (c < d) {
            int g = vVar.m28535g() + c;
            if (g <= c || g > d) {
                return null;
            }
            if (vVar.m28535g() == 1835365224) {
                C2934c.C2935a b = m28442b(vVar);
                if (b == null) {
                    return null;
                }
                arrayList.add(b);
            }
            vVar.m28538e(g);
            c = g;
        }
        return arrayList;
    }
}
