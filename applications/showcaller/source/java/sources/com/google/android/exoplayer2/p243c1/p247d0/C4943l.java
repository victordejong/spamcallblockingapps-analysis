package com.google.android.exoplayer2.p243c1.p247d0;

import android.util.SparseArray;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.text.p252l.C5335d;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.c1.d0.l */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/l.class */
public final class C4943l implements AbstractC4933h0.AbstractC4936c {

    /* renamed from: a */
    private final int f15233a;

    /* renamed from: b */
    private final List<Format> f15234b;

    public C4943l(int i) {
        this(i, Collections.singletonList(Format.m21733x(null, "application/cea-608", 0, null)));
    }

    public C4943l(int i, List<Format> list) {
        this.f15233a = i;
        this.f15234b = list;
    }

    /* renamed from: c */
    private C4920c0 m21122c(AbstractC4933h0.C4935b c4935b) {
        return new C4920c0(m21120e(c4935b));
    }

    /* renamed from: d */
    private C4941j0 m21121d(AbstractC4933h0.C4935b c4935b) {
        return new C4941j0(m21120e(c4935b));
    }

    /* renamed from: e */
    private List<Format> m21120e(AbstractC4933h0.C4935b c4935b) {
        int i;
        String str;
        List<byte[]> list;
        if (m21119f(32)) {
            return this.f15234b;
        }
        C5536v c5536v = new C5536v(c4935b.f15177d);
        ArrayList arrayList = this.f15234b;
        while (c5536v.m18678a() > 0) {
            int m18653z = c5536v.m18653z();
            int m18653z2 = c5536v.m18653z();
            int m18676c = c5536v.m18676c();
            if (m18653z == 134) {
                ArrayList arrayList2 = new ArrayList();
                int m18653z3 = c5536v.m18653z();
                int i2 = 0;
                while (true) {
                    arrayList = arrayList2;
                    if (i2 < (m18653z3 & 31)) {
                        String m18656w = c5536v.m18656w(3);
                        int m18653z4 = c5536v.m18653z();
                        boolean z = true;
                        boolean z2 = (m18653z4 & 128) != 0;
                        if (z2) {
                            i = m18653z4 & 63;
                            str = "application/cea-708";
                        } else {
                            str = "application/cea-608";
                            i = 1;
                        }
                        byte m18653z5 = (byte) c5536v.m18653z();
                        c5536v.m18679N(1);
                        if (z2) {
                            if ((m18653z5 & 64) == 0) {
                                z = false;
                            }
                            list = C5335d.m19591a(z);
                        } else {
                            list = null;
                        }
                        arrayList2.add(Format.m21761A(null, str, null, -1, 0, m18656w, i, null, Long.MAX_VALUE, list));
                        i2++;
                    }
                }
            }
            c5536v.m18680M(m18676c + m18653z2);
        }
        return arrayList;
    }

    /* renamed from: f */
    private boolean m21119f(int i) {
        return (i & this.f15233a) != 0;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0.AbstractC4936c
    /* renamed from: a */
    public AbstractC4933h0 mo21124a(int i, AbstractC4933h0.C4935b c4935b) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new C4959w(new C4957u(c4935b.f15175b));
            }
            if (i == 15) {
                return m21119f(2) ? null : new C4959w(new C4942k(false, c4935b.f15175b));
            } else if (i == 17) {
                return m21119f(2) ? null : new C4959w(new C4956t(c4935b.f15175b));
            } else if (i == 21) {
                return new C4959w(new C4955s());
            } else {
                if (i == 27) {
                    return m21119f(4) ? null : new C4959w(new C4949q(m21122c(c4935b), m21119f(1), m21119f(8)));
                } else if (i == 36) {
                    return new C4959w(new C4953r(m21122c(c4935b)));
                } else {
                    if (i == 89) {
                        return new C4959w(new C4945n(c4935b.f15176c));
                    }
                    if (i != 138) {
                        if (i == 172) {
                            return new C4959w(new C4938i(c4935b.f15175b));
                        }
                        if (i != 129) {
                            if (i != 130) {
                                if (i == 134) {
                                    return m21119f(16) ? null : new C4918b0(new C4922d0());
                                } else if (i != 135) {
                                    return null;
                                }
                            } else if (!m21119f(64)) {
                                return null;
                            }
                        }
                        return new C4959w(new C4928g(c4935b.f15175b));
                    }
                    return new C4959w(new C4944m(c4935b.f15175b));
                }
            }
        }
        return new C4959w(new C4947p(m21121d(c4935b)));
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0.AbstractC4936c
    /* renamed from: b */
    public SparseArray<AbstractC4933h0> mo21123b() {
        return new SparseArray<>();
    }
}
