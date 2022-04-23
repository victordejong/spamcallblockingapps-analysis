package p012b.p076s.p078b.p079a.p086s0.p093x;

import android.util.SparseArray;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
import p012b.p076s.p078b.p079a.p107x0.p108c.C1648a;
/* renamed from: b.s.b.a.s0.x.j */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/j.class */
public final class C1469j implements AbstractC1462h0.AbstractC1465c {

    /* renamed from: a */
    public final int f5938a;

    /* renamed from: b */
    public final List<Format> f5939b;

    public C1469j(int i) {
        this(i, Collections.singletonList(Format.m38187a(null, "application/cea-608", 0, null)));
    }

    public C1469j(int i, List<Format> list) {
        this.f5938a = i;
        this.f5939b = list;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0.AbstractC1465c
    /* renamed from: a */
    public SparseArray<AbstractC1462h0> mo33222a() {
        return new SparseArray<>();
    }

    /* renamed from: a */
    public final C1447b0 m33219a(AbstractC1462h0.C1464b bVar) {
        return new C1447b0(m33217c(bVar));
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0.AbstractC1465c
    /* renamed from: a */
    public AbstractC1462h0 mo33220a(int i, AbstractC1462h0.C1464b bVar) {
        if (i == 2) {
            return new C1486u(new C1474n(m33218b(bVar)));
        }
        if (i == 3 || i == 4) {
            return new C1486u(new C1484s(bVar.f5908b));
        }
        C1486u uVar = null;
        C1486u uVar2 = null;
        C1486u uVar3 = null;
        C1445a0 a0Var = null;
        if (i == 15) {
            if (!m33221a(2)) {
                uVar3 = new C1486u(new C1467i(false, bVar.f5908b));
            }
            return uVar3;
        } else if (i == 17) {
            if (!m33221a(2)) {
                uVar2 = new C1486u(new C1483r(bVar.f5908b));
            }
            return uVar2;
        } else if (i == 21) {
            return new C1486u(new C1482q());
        } else {
            if (i == 27) {
                if (!m33221a(4)) {
                    uVar = new C1486u(new C1476o(m33219a(bVar), m33221a(1), m33221a(8)));
                }
                return uVar;
            } else if (i == 36) {
                return new C1486u(new C1480p(m33219a(bVar)));
            } else {
                if (i == 89) {
                    return new C1486u(new C1472l(bVar.f5909c));
                }
                if (i != 138) {
                    if (i == 172) {
                        return new C1486u(new C1455f(bVar.f5908b));
                    }
                    if (i != 129) {
                        if (i != 130) {
                            if (i == 134) {
                                if (!m33221a(16)) {
                                    a0Var = new C1445a0(new C1449c0());
                                }
                                return a0Var;
                            } else if (i != 135) {
                                return null;
                            }
                        } else if (!m33221a(64)) {
                            return null;
                        }
                    }
                    return new C1486u(new C1448c(bVar.f5908b));
                }
                return new C1486u(new C1471k(bVar.f5908b));
            }
        }
    }

    /* renamed from: a */
    public final boolean m33221a(int i) {
        return (i & this.f5938a) != 0;
    }

    /* renamed from: b */
    public final C1470j0 m33218b(AbstractC1462h0.C1464b bVar) {
        return new C1470j0(m33217c(bVar));
    }

    /* renamed from: c */
    public final List<Format> m33217c(AbstractC1462h0.C1464b bVar) {
        int i;
        String str;
        List<byte[]> list;
        if (m33221a(32)) {
            return this.f5939b;
        }
        C1184p pVar = new C1184p(bVar.f5910d);
        List<Format> list2 = this.f5939b;
        while (pVar.m34372a() > 0) {
            int r = pVar.m34344r();
            int r2 = pVar.m34344r();
            int c = pVar.m34363c();
            if (r == 134) {
                ArrayList arrayList = new ArrayList();
                int r3 = pVar.m34344r();
                int i2 = 0;
                while (true) {
                    list2 = arrayList;
                    if (i2 < (r3 & 31)) {
                        String b = pVar.m34364b(3);
                        int r4 = pVar.m34344r();
                        boolean z = true;
                        boolean z2 = (r4 & 128) != 0;
                        if (z2) {
                            i = r4 & 63;
                            str = "application/cea-708";
                        } else {
                            str = "application/cea-608";
                            i = 1;
                        }
                        byte r5 = (byte) pVar.m34344r();
                        pVar.m34356f(1);
                        if (z2) {
                            if ((r5 & 64) == 0) {
                                z = false;
                            }
                            list = C1648a.m32490a(z);
                        } else {
                            list = null;
                        }
                        arrayList.add(Format.m38179a((String) null, str, (String) null, -1, 0, b, i, (DrmInitData) null, Long.MAX_VALUE, list));
                        i2++;
                    }
                }
            }
            pVar.m34358e(c + r2);
        }
        return list2;
    }
}
