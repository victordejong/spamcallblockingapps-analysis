package androidx.media2.exoplayer.external.extractor.p068e;

import android.util.SparseArray;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.j */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/j.class */
public final class C1563j implements AbstractC1548ah.AbstractC1551c {

    /* renamed from: a */
    private final int f6065a;

    /* renamed from: b */
    private final List<Format> f6066b;

    public C1563j() {
        this(0);
    }

    public C1563j(int i) {
        this(i, Collections.singletonList(Format.createTextSampleFormat(null, "application/cea-608", 0, null)));
    }

    public C1563j(int i, List<Format> list) {
        this.f6065a = i;
        this.f6066b = list;
    }

    /* renamed from: a */
    private C1539ab m42673a(AbstractC1548ah.C1550b c1550b) {
        return new C1539ab(m42672b(c1550b));
    }

    /* renamed from: a */
    private boolean m42675a(int i) {
        return (i & this.f6065a) != 0;
    }

    /* renamed from: b */
    private List<Format> m42672b(AbstractC1548ah.C1550b c1550b) {
        int i;
        String str;
        List list;
        if (m42675a(32)) {
            return this.f6066b;
        }
        C2018p c2018p = new C2018p(c1550b.f5990d);
        ArrayList arrayList = this.f6066b;
        while (c2018p.m41536b() > 0) {
            int m41534c = c2018p.m41534c();
            int m41534c2 = c2018p.m41534c();
            int i2 = c2018p.f8132b;
            if (m41534c == 134) {
                ArrayList arrayList2 = new ArrayList();
                int m41534c3 = c2018p.m41534c();
                int i3 = 0;
                while (true) {
                    arrayList = arrayList2;
                    if (i3 < (m41534c3 & 31)) {
                        String m41529e = c2018p.m41529e(3);
                        int m41534c4 = c2018p.m41534c();
                        boolean z = (m41534c4 & 128) != 0;
                        if (z) {
                            i = m41534c4 & 63;
                            str = "application/cea-708";
                        } else {
                            str = "application/cea-608";
                            i = 1;
                        }
                        byte m41534c5 = (byte) c2018p.m41534c();
                        c2018p.m41531d(1);
                        if (z) {
                            list = Collections.singletonList(new byte[]{(byte) ((m41534c5 & 64) != 0 ? 1 : 0)});
                        } else {
                            list = null;
                        }
                        arrayList2.add(Format.createTextSampleFormat(null, str, null, -1, 0, m41529e, i, null, Long.MAX_VALUE, list));
                        i3++;
                    }
                }
            }
            c2018p.m41533c(i2 + m41534c2);
        }
        return arrayList;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah.AbstractC1551c
    /* renamed from: a */
    public final SparseArray<AbstractC1548ah> mo42676a() {
        return new SparseArray<>();
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah.AbstractC1551c
    /* renamed from: a */
    public final AbstractC1548ah mo42674a(int i, AbstractC1548ah.C1550b c1550b) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new C1579u(new C1577s(c1550b.f5988b));
            }
            if (i == 15) {
                if (!m42675a(2)) {
                    return new C1579u(new C1562i(false, c1550b.f5988b));
                }
                return null;
            } else if (i == 17) {
                if (!m42675a(2)) {
                    return new C1579u(new C1576r(c1550b.f5988b));
                }
                return null;
            } else if (i == 21) {
                return new C1579u(new C1575q());
            } else {
                if (i == 27) {
                    if (!m42675a(4)) {
                        return new C1579u(new C1569o(m42673a(c1550b), m42675a(1), m42675a(8)));
                    }
                    return null;
                } else if (i == 36) {
                    return new C1579u(new C1573p(m42673a(c1550b)));
                } else {
                    if (i == 89) {
                        return new C1579u(new C1565l(c1550b.f5989c));
                    }
                    if (i != 138) {
                        if (i == 172) {
                            return new C1579u(new C1559f(c1550b.f5988b));
                        }
                        if (i != 129) {
                            if (i != 130) {
                                if (i == 134) {
                                    if (!m42675a(16)) {
                                        return new C1538aa(new C1540ac());
                                    }
                                    return null;
                                } else if (i != 135) {
                                    return null;
                                }
                            } else if (!m42675a(64)) {
                                return null;
                            }
                        }
                        return new C1579u(new C1556c(c1550b.f5988b));
                    }
                    return new C1579u(new C1564k(c1550b.f5988b));
                }
            }
        }
        return new C1579u(new C1567n(new C1554aj(m42672b(c1550b))));
    }
}
