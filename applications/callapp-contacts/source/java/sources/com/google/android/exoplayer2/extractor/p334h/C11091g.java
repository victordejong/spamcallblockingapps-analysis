package com.google.android.exoplayer2.extractor.p334h;

import android.util.SparseArray;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11604d;
import com.google.android.exoplayer2.util.C11628u;
import com.google.common.collect.AbstractC15549v;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.extractor.h.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/g.class */
public final class C11091g implements AbstractC11079ad.AbstractC11082c {

    /* renamed from: a */
    private final int f36190a;

    /* renamed from: b */
    private final List<Format> f36191b;

    public C11091g() {
        this(0);
    }

    public C11091g(int i) {
        this(i, AbstractC15549v.m8720g());
    }

    public C11091g(int i, List<Format> list) {
        this.f36190a = i;
        this.f36191b = list;
    }

    /* renamed from: a */
    private C11120z m21490a(AbstractC11079ad.C11081b c11081b) {
        return new C11120z(m21488c(c11081b));
    }

    /* renamed from: a */
    private boolean m21492a(int i) {
        return (i & this.f36190a) != 0;
    }

    /* renamed from: b */
    private C11085af m21489b(AbstractC11079ad.C11081b c11081b) {
        return new C11085af(m21488c(c11081b));
    }

    /* renamed from: c */
    private List<Format> m21488c(AbstractC11079ad.C11081b c11081b) {
        int i;
        String str;
        if (m21492a(32)) {
            return this.f36191b;
        }
        C11628u c11628u = new C11628u(c11081b.f36118d);
        ArrayList arrayList = this.f36191b;
        while (c11628u.m19812a() > 0) {
            int m19804c = c11628u.m19804c();
            int m19804c2 = c11628u.m19804c();
            int i2 = c11628u.f38734b;
            if (m19804c == 134) {
                ArrayList arrayList2 = new ArrayList();
                int m19804c3 = c11628u.m19804c();
                int i3 = 0;
                while (true) {
                    arrayList = arrayList2;
                    if (i3 < (m19804c3 & 31)) {
                        String m19797f = c11628u.m19797f(3);
                        int m19804c4 = c11628u.m19804c();
                        boolean z = true;
                        boolean z2 = (m19804c4 & 128) != 0;
                        if (z2) {
                            i = m19804c4 & 63;
                            str = "application/cea-708";
                        } else {
                            str = "application/cea-608";
                            i = 1;
                        }
                        byte m19804c5 = (byte) c11628u.m19804c();
                        c11628u.m19799e(1);
                        List<byte[]> list = null;
                        if (z2) {
                            if ((m19804c5 & 64) == 0) {
                                z = false;
                            }
                            list = C11604d.m19904a(z);
                        }
                        Format.C10828a c10828a = new Format.C10828a();
                        c10828a.f34792k = str;
                        c10828a.f34784c = m19797f;
                        c10828a.f34780C = i;
                        c10828a.f34794m = list;
                        arrayList2.add(c10828a.m22321a());
                        i3++;
                    }
                }
            }
            c11628u.m19801d(i2 + m19804c2);
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad.AbstractC11082c
    /* renamed from: a */
    public final SparseArray<AbstractC11079ad> mo21493a() {
        return new SparseArray<>();
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad.AbstractC11082c
    /* renamed from: a */
    public final AbstractC11079ad mo21491a(int i, AbstractC11079ad.C11081b c11081b) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new C11111t(new C11108q(c11081b.f36116b));
            }
            if (i == 21) {
                return new C11111t(new C11106o());
            }
            if (i == 27) {
                if (!m21492a(4)) {
                    return new C11111t(new C11100m(m21490a(c11081b), m21492a(1), m21492a(8)));
                }
                return null;
            } else if (i == 36) {
                return new C11111t(new C11104n(m21490a(c11081b)));
            } else {
                if (i == 89) {
                    return new C11111t(new C11093i(c11081b.f36117c));
                }
                if (i != 138) {
                    if (i == 172) {
                        return new C11111t(new C11088d(c11081b.f36116b));
                    }
                    if (i == 257) {
                        return new C11119y(new C11110s("application/vnd.dvb.ait"));
                    }
                    if (i != 129) {
                        if (i != 130) {
                            if (i == 134) {
                                if (!m21492a(16)) {
                                    return new C11119y(new C11110s("application/x-scte35"));
                                }
                                return null;
                            } else if (i != 135) {
                                switch (i) {
                                    case 15:
                                        if (!m21492a(2)) {
                                            return new C11111t(new C11090f(false, c11081b.f36116b));
                                        }
                                        return null;
                                    case 16:
                                        return new C11111t(new C11097l(m21489b(c11081b)));
                                    case 17:
                                        if (!m21492a(2)) {
                                            return new C11111t(new C11107p(c11081b.f36116b));
                                        }
                                        return null;
                                    default:
                                        return null;
                                }
                            }
                        } else if (!m21492a(64)) {
                            return null;
                        }
                    }
                    return new C11111t(new C11086b(c11081b.f36116b));
                }
                return new C11111t(new C11092h(c11081b.f36116b));
            }
        }
        return new C11111t(new C11095k(m21489b(c11081b)));
    }
}
