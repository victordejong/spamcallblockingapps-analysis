package p258v;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.ads.AdRequest;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import p104g6.C2906b;
import p124i4.C3102d;
import p237t.C4344d;
import p269w.AbstractC4711p;
import p269w.C4694b;
import p269w.C4697c;
import p269w.C4699e;
/* renamed from: v.e */
/* loaded from: classes-dex2jar.jar:v/e.class */
public class C4567e extends C4572j {

    /* renamed from: u0 */
    public int f14132u0;

    /* renamed from: y0 */
    public int f14136y0;

    /* renamed from: z0 */
    public int f14137z0;

    /* renamed from: s0 */
    public C4694b f14130s0 = new C4694b(this);

    /* renamed from: t0 */
    public C4699e f14131t0 = new C4699e(this);

    /* renamed from: v0 */
    public C4694b.AbstractC4696b f14133v0 = null;

    /* renamed from: w0 */
    public boolean f14134w0 = false;

    /* renamed from: x0 */
    public C4344d f14135x0 = new C4344d();

    /* renamed from: A0 */
    public int f14117A0 = 0;

    /* renamed from: B0 */
    public int f14118B0 = 0;

    /* renamed from: C0 */
    public C4563b[] f14119C0 = new C4563b[4];

    /* renamed from: D0 */
    public C4563b[] f14120D0 = new C4563b[4];

    /* renamed from: E0 */
    public int f14121E0 = 257;

    /* renamed from: F0 */
    public boolean f14122F0 = false;

    /* renamed from: G0 */
    public boolean f14123G0 = false;

    /* renamed from: H0 */
    public WeakReference<C4564c> f14124H0 = null;

    /* renamed from: I0 */
    public WeakReference<C4564c> f14125I0 = null;

    /* renamed from: J0 */
    public WeakReference<C4564c> f14126J0 = null;

    /* renamed from: K0 */
    public WeakReference<C4564c> f14127K0 = null;

    /* renamed from: L0 */
    public HashSet<C4566d> f14128L0 = new HashSet<>();

    /* renamed from: M0 */
    public C4694b.C4695a f14129M0 = new C4694b.C4695a();

    /* renamed from: e0 */
    public static boolean m780e0(C4566d c4566d, C4694b.AbstractC4696b abstractC4696b, C4694b.C4695a c4695a, int i) {
        int i2;
        int i3;
        if (abstractC4696b == null) {
            return false;
        }
        if (c4566d.f14091i0 == 8 || (c4566d instanceof C4568f) || (c4566d instanceof C4562a)) {
            c4695a.f14510e = 0;
            c4695a.f14511f = 0;
            return false;
        }
        c4695a.f14506a = c4566d.m802m();
        c4695a.f14507b = c4566d.m796t();
        c4695a.f14508c = c4566d.m795u();
        c4695a.f14509d = c4566d.m803l();
        c4695a.f14514i = false;
        c4695a.f14515j = i;
        boolean z = c4695a.f14506a == 3;
        boolean z2 = c4695a.f14507b == 3;
        boolean z3 = z && c4566d.f14072Y > 0.0f;
        boolean z4 = z2 && c4566d.f14072Y > 0.0f;
        boolean z5 = z;
        if (z) {
            z5 = z;
            if (c4566d.m792x(0)) {
                z5 = z;
                if (c4566d.f14108r == 0) {
                    z5 = z;
                    if (!z3) {
                        c4695a.f14506a = 2;
                        if (z2 && c4566d.f14109s == 0) {
                            c4695a.f14506a = 1;
                        }
                        z5 = false;
                    }
                }
            }
        }
        boolean z6 = z2;
        if (z2) {
            z6 = z2;
            if (c4566d.m792x(1)) {
                z6 = z2;
                if (c4566d.f14109s == 0) {
                    z6 = z2;
                    if (!z4) {
                        c4695a.f14507b = 2;
                        if (z5 && c4566d.f14108r == 0) {
                            c4695a.f14507b = 1;
                        }
                        z6 = false;
                    }
                }
            }
        }
        if (c4566d.mo776D()) {
            c4695a.f14506a = 1;
            z5 = false;
        }
        if (c4566d.mo775E()) {
            c4695a.f14507b = 1;
            z6 = false;
        }
        if (z3) {
            if (c4566d.f14110t[0] == 4) {
                c4695a.f14506a = 1;
            } else if (!z6) {
                if (c4695a.f14507b == 1) {
                    i3 = c4695a.f14509d;
                } else {
                    c4695a.f14506a = 2;
                    ((ConstraintLayout.C0307b) abstractC4696b).m8367b(c4566d, c4695a);
                    i3 = c4695a.f14511f;
                }
                c4695a.f14506a = 1;
                c4695a.f14508c = (int) (c4566d.f14072Y * i3);
            }
        }
        if (z4) {
            if (c4566d.f14110t[1] == 4) {
                c4695a.f14507b = 1;
            } else if (!z5) {
                if (c4695a.f14506a == 1) {
                    i2 = c4695a.f14508c;
                } else {
                    c4695a.f14507b = 2;
                    ((ConstraintLayout.C0307b) abstractC4696b).m8367b(c4566d, c4695a);
                    i2 = c4695a.f14510e;
                }
                c4695a.f14507b = 1;
                if (c4566d.f14073Z == -1) {
                    c4695a.f14509d = (int) (i2 / c4566d.f14072Y);
                } else {
                    c4695a.f14509d = (int) (c4566d.f14072Y * i2);
                }
            }
        }
        ((ConstraintLayout.C0307b) abstractC4696b).m8367b(c4566d, c4695a);
        c4566d.m811S(c4695a.f14510e);
        c4566d.m816N(c4695a.f14511f);
        c4566d.f14052E = c4695a.f14513h;
        c4566d.m819K(c4695a.f14512g);
        c4695a.f14515j = 0;
        return c4695a.f14514i;
    }

    @Override // p258v.C4572j, p258v.C4566d
    /* renamed from: F */
    public void mo766F() {
        this.f14135x0.m1031u();
        this.f14136y0 = 0;
        this.f14137z0 = 0;
        super.mo766F();
    }

    @Override // p258v.C4566d
    /* renamed from: T */
    public void mo789T(boolean z, boolean z2) {
        super.mo789T(z, z2);
        int size = this.f14146r0.size();
        for (int i = 0; i < size; i++) {
            this.f14146r0.get(i).mo789T(z, z2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:372:0x0bf3, code lost:
        if (r10 != null) goto L374;
     */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0b77  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0be0  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x0d42  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x0d78  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0f3b  */
    /* JADX WARN: Removed duplicated region for block: B:478:0x0fae  */
    /* JADX WARN: Removed duplicated region for block: B:485:0x0feb  */
    /* JADX WARN: Removed duplicated region for block: B:505:0x10d2  */
    /* JADX WARN: Removed duplicated region for block: B:506:0x10e6  */
    /* JADX WARN: Removed duplicated region for block: B:509:0x1100  */
    /* JADX WARN: Removed duplicated region for block: B:512:0x1118  */
    /* JADX WARN: Removed duplicated region for block: B:528:0x11a4  */
    /* JADX WARN: Removed duplicated region for block: B:532:0x11b7  */
    /* JADX WARN: Removed duplicated region for block: B:632:0x11a7 A[SYNTHETIC] */
    @Override // p258v.C4572j
    /* renamed from: V */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo764V() {
        /*
            Method dump skipped, instructions count: 4565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p258v.C4567e.mo764V():void");
    }

    /* renamed from: W */
    public void m788W(C4566d c4566d, int i) {
        if (i == 0) {
            int i2 = this.f14117A0;
            C4563b[] c4563bArr = this.f14120D0;
            if (i2 + 1 >= c4563bArr.length) {
                this.f14120D0 = (C4563b[]) Arrays.copyOf(c4563bArr, c4563bArr.length * 2);
            }
            C4563b[] c4563bArr2 = this.f14120D0;
            int i3 = this.f14117A0;
            c4563bArr2[i3] = new C4563b(c4566d, 0, this.f14134w0);
            this.f14117A0 = i3 + 1;
        } else if (i != 1) {
        } else {
            int i4 = this.f14118B0;
            C4563b[] c4563bArr3 = this.f14119C0;
            if (i4 + 1 >= c4563bArr3.length) {
                this.f14119C0 = (C4563b[]) Arrays.copyOf(c4563bArr3, c4563bArr3.length * 2);
            }
            C4563b[] c4563bArr4 = this.f14119C0;
            int i5 = this.f14118B0;
            c4563bArr4[i5] = new C4563b(c4566d, 1, this.f14134w0);
            this.f14118B0 = i5 + 1;
        }
    }

    /* renamed from: X */
    public boolean m787X(C4344d c4344d) {
        boolean z;
        boolean m779f0 = m779f0(64);
        mo771d(c4344d, m779f0);
        int size = this.f14146r0.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            C4566d c4566d = this.f14146r0.get(i);
            boolean[] zArr = c4566d.f14067T;
            zArr[0] = false;
            zArr[1] = false;
            if (c4566d instanceof C4562a) {
                z2 = true;
            }
        }
        if (z2) {
            for (int i2 = 0; i2 < size; i2++) {
                C4566d c4566d2 = this.f14146r0.get(i2);
                if (c4566d2 instanceof C4562a) {
                    C4562a c4562a = (C4562a) c4566d2;
                    for (int i3 = 0; i3 < c4562a.f14145s0; i3++) {
                        C4566d c4566d3 = c4562a.f14144r0[i3];
                        if (c4562a.f14007u0 || c4566d3.mo770e()) {
                            int i4 = c4562a.f14006t0;
                            if (i4 == 0 || i4 == 1) {
                                c4566d3.f14067T[0] = true;
                            } else if (i4 == 2 || i4 == 3) {
                                c4566d3.f14067T[1] = true;
                            }
                        }
                    }
                }
            }
        }
        this.f14128L0.clear();
        for (int i5 = 0; i5 < size; i5++) {
            C4566d c4566d4 = this.f14146r0.get(i5);
            if (c4566d4.m809c()) {
                if (c4566d4 instanceof C4571i) {
                    this.f14128L0.add(c4566d4);
                } else {
                    c4566d4.mo771d(c4344d, m779f0);
                }
            }
        }
        while (this.f14128L0.size() > 0) {
            int size2 = this.f14128L0.size();
            Iterator<C4566d> it2 = this.f14128L0.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                C4571i c4571i = (C4571i) it2.next();
                HashSet<C4566d> hashSet = this.f14128L0;
                int i6 = 0;
                while (true) {
                    if (i6 >= c4571i.f14145s0) {
                        z = false;
                        break;
                    } else if (hashSet.contains(c4571i.f14144r0[i6])) {
                        z = true;
                        break;
                    } else {
                        i6++;
                    }
                }
                if (z) {
                    c4571i.mo771d(c4344d, m779f0);
                    this.f14128L0.remove(c4571i);
                    break;
                }
            }
            if (size2 == this.f14128L0.size()) {
                Iterator<C4566d> it3 = this.f14128L0.iterator();
                while (it3.hasNext()) {
                    it3.next().mo771d(c4344d, m779f0);
                }
                this.f14128L0.clear();
            }
        }
        if (C4344d.f13542p) {
            HashSet<C4566d> hashSet2 = new HashSet<>();
            for (int i7 = 0; i7 < size; i7++) {
                C4566d c4566d5 = this.f14146r0.get(i7);
                if (!c4566d5.m809c()) {
                    hashSet2.add(c4566d5);
                }
            }
            m810b(this, c4344d, hashSet2, m802m() == 2 ? 0 : 1, false);
            Iterator<C4566d> it4 = hashSet2.iterator();
            while (it4.hasNext()) {
                C4566d next = it4.next();
                C2906b.m2863c(this, c4344d, next);
                next.mo771d(c4344d, m779f0);
            }
        } else {
            for (int i8 = 0; i8 < size; i8++) {
                C4566d c4566d6 = this.f14146r0.get(i8);
                if (c4566d6 instanceof C4567e) {
                    int[] iArr = c4566d6.f14068U;
                    int i9 = iArr[0];
                    int i10 = iArr[1];
                    if (i9 == 2) {
                        iArr[0] = 1;
                    }
                    if (i10 == 2) {
                        iArr[1] = 1;
                    }
                    c4566d6.mo771d(c4344d, m779f0);
                    if (i9 == 2) {
                        c4566d6.m815O(i9);
                    }
                    if (i10 == 2) {
                        c4566d6.m812R(i10);
                    }
                } else {
                    C2906b.m2863c(this, c4344d, c4566d6);
                    if (!c4566d6.m809c()) {
                        c4566d6.mo771d(c4344d, m779f0);
                    }
                }
            }
        }
        if (this.f14117A0 > 0) {
            C3102d.m2636c(this, c4344d, null, 0);
        }
        if (this.f14118B0 > 0) {
            C3102d.m2636c(this, c4344d, null, 1);
            return true;
        }
        return true;
    }

    /* renamed from: Y */
    public void m786Y(C4564c c4564c) {
        WeakReference<C4564c> weakReference = this.f14127K0;
        if (weakReference == null || weakReference.get() == null || c4564c.m833c() > this.f14127K0.get().m833c()) {
            this.f14127K0 = new WeakReference<>(c4564c);
        }
    }

    /* renamed from: Z */
    public void m785Z(C4564c c4564c) {
        WeakReference<C4564c> weakReference = this.f14125I0;
        if (weakReference == null || weakReference.get() == null || c4564c.m833c() > this.f14125I0.get().m833c()) {
            this.f14125I0 = new WeakReference<>(c4564c);
        }
    }

    /* renamed from: a0 */
    public void m784a0(C4564c c4564c) {
        WeakReference<C4564c> weakReference = this.f14126J0;
        if (weakReference == null || weakReference.get() == null || c4564c.m833c() > this.f14126J0.get().m833c()) {
            this.f14126J0 = new WeakReference<>(c4564c);
        }
    }

    /* renamed from: b0 */
    public void m783b0(C4564c c4564c) {
        WeakReference<C4564c> weakReference = this.f14124H0;
        if (weakReference == null || weakReference.get() == null || c4564c.m833c() > this.f14124H0.get().m833c()) {
            this.f14124H0 = new WeakReference<>(c4564c);
        }
    }

    /* renamed from: c0 */
    public boolean m782c0(boolean z, int i) {
        boolean z2;
        boolean z3;
        boolean z4;
        C4699e c4699e = this.f14131t0;
        boolean z5 = z & true;
        int m804k = c4699e.f14518a.m804k(0);
        int m804k2 = c4699e.f14518a.m804k(1);
        int m794v = c4699e.f14518a.m794v();
        int m793w = c4699e.f14518a.m793w();
        if (z5 && (m804k == 2 || m804k2 == 2)) {
            Iterator<AbstractC4711p> it2 = c4699e.f14522e.iterator();
            while (true) {
                z4 = z5;
                if (!it2.hasNext()) {
                    break;
                }
                AbstractC4711p next = it2.next();
                if (next.f14559f == i && !next.mo551k()) {
                    z4 = false;
                    break;
                }
            }
            if (i == 0) {
                if (z4 && m804k == 2) {
                    C4567e c4567e = c4699e.f14518a;
                    c4567e.f14068U[0] = 1;
                    c4567e.m811S(c4699e.m588d(c4567e, 0));
                    C4567e c4567e2 = c4699e.f14518a;
                    c4567e2.f14080d.f14558e.mo583c(c4567e2.m795u());
                }
            } else if (z4 && m804k2 == 2) {
                C4567e c4567e3 = c4699e.f14518a;
                c4567e3.f14068U[1] = 1;
                c4567e3.m816N(c4699e.m588d(c4567e3, 1));
                C4567e c4567e4 = c4699e.f14518a;
                c4567e4.f14082e.f14558e.mo583c(c4567e4.m803l());
            }
        }
        if (i == 0) {
            C4567e c4567e5 = c4699e.f14518a;
            int[] iArr = c4567e5.f14068U;
            if (iArr[0] == 1 || iArr[0] == 4) {
                int m795u = c4567e5.m795u() + m794v;
                c4699e.f14518a.f14080d.f14562i.mo583c(m795u);
                c4699e.f14518a.f14080d.f14558e.mo583c(m795u - m794v);
                z2 = true;
            }
            z2 = false;
        } else {
            C4567e c4567e6 = c4699e.f14518a;
            int[] iArr2 = c4567e6.f14068U;
            if (iArr2[1] == 1 || iArr2[1] == 4) {
                int m803l = c4567e6.m803l() + m793w;
                c4699e.f14518a.f14082e.f14562i.mo583c(m803l);
                c4699e.f14518a.f14082e.f14558e.mo583c(m803l - m793w);
                z2 = true;
            }
            z2 = false;
        }
        c4699e.m585g();
        Iterator<AbstractC4711p> it3 = c4699e.f14522e.iterator();
        while (it3.hasNext()) {
            AbstractC4711p next2 = it3.next();
            if (next2.f14559f == i && (next2.f14555b != c4699e.f14518a || next2.f14560g)) {
                next2.mo557e();
            }
        }
        Iterator<AbstractC4711p> it4 = c4699e.f14522e.iterator();
        while (true) {
            z3 = true;
            if (!it4.hasNext()) {
                break;
            }
            AbstractC4711p next3 = it4.next();
            if (next3.f14559f == i && (z2 || next3.f14555b != c4699e.f14518a)) {
                if (!next3.f14561h.f14535j || !next3.f14562i.f14535j || (!(next3 instanceof C4697c) && !next3.f14558e.f14535j)) {
                    break;
                }
            }
        }
        c4699e.f14518a.m815O(m804k);
        c4699e.f14518a.m812R(m804k2);
        return z3;
    }

    /* renamed from: d0 */
    public void m781d0() {
        this.f14131t0.f14519b = true;
    }

    /* renamed from: f0 */
    public boolean m779f0(int i) {
        return (this.f14121E0 & i) == i;
    }

    /* renamed from: g0 */
    public void m778g0(int i) {
        this.f14121E0 = i;
        C4344d.f13542p = m779f0(AdRequest.MAX_CONTENT_URL_LENGTH);
    }

    @Override // p258v.C4566d
    /* renamed from: q */
    public void mo777q(StringBuilder sb) {
        sb.append(this.f14092j + ":{\n");
        sb.append("  actualWidth:" + this.f14070W);
        sb.append("\n");
        sb.append("  actualHeight:" + this.f14071X);
        sb.append("\n");
        Iterator<C4566d> it2 = this.f14146r0.iterator();
        while (it2.hasNext()) {
            it2.next().mo777q(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }
}
