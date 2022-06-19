package com.google.android.exoplayer2.p243c1.p247d0;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4982l;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5535u;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.c1.d0.g0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/g0.class */
public final class C4929g0 implements AbstractC4978h {

    /* renamed from: a */
    public static final AbstractC4982l f15141a = C4923e.f15113a;

    /* renamed from: b */
    private final int f15142b;

    /* renamed from: c */
    private final List<C5509e0> f15143c;

    /* renamed from: d */
    private final C5536v f15144d;

    /* renamed from: e */
    private final SparseIntArray f15145e;

    /* renamed from: f */
    private final AbstractC4933h0.AbstractC4936c f15146f;

    /* renamed from: g */
    private final SparseArray<AbstractC4933h0> f15147g;

    /* renamed from: h */
    private final SparseBooleanArray f15148h;

    /* renamed from: i */
    private final SparseBooleanArray f15149i;

    /* renamed from: j */
    private final C4927f0 f15150j;

    /* renamed from: k */
    private C4924e0 f15151k;

    /* renamed from: l */
    private AbstractC4980j f15152l;

    /* renamed from: m */
    private int f15153m;

    /* renamed from: n */
    private boolean f15154n;

    /* renamed from: o */
    private boolean f15155o;

    /* renamed from: p */
    private boolean f15156p;

    /* renamed from: q */
    private AbstractC4933h0 f15157q;

    /* renamed from: r */
    private int f15158r;

    /* renamed from: s */
    private int f15159s;

    /* renamed from: com.google.android.exoplayer2.c1.d0.g0$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/g0$a.class */
    public class C4930a implements AbstractC4916a0 {

        /* renamed from: a */
        private final C5535u f15160a = new C5535u(new byte[4]);

        public C4930a() {
            C4929g0.this = r6;
        }

        @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4916a0
        /* renamed from: a */
        public void mo21163a(C5509e0 c5509e0, AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        }

        @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4916a0
        /* renamed from: b */
        public void mo21162b(C5536v c5536v) {
            if (c5536v.m18653z() != 0) {
                return;
            }
            c5536v.m18679N(7);
            int m18678a = c5536v.m18678a() / 4;
            for (int i = 0; i < m18678a; i++) {
                c5536v.m18672g(this.f15160a, 4);
                int m18703h = this.f15160a.m18703h(16);
                this.f15160a.m18694q(3);
                if (m18703h == 0) {
                    this.f15160a.m18694q(13);
                } else {
                    int m18703h2 = this.f15160a.m18703h(13);
                    C4929g0.this.f15147g.put(m18703h2, new C4918b0(new C4931b(m18703h2)));
                    C4929g0.m21179k(C4929g0.this);
                }
            }
            if (C4929g0.this.f15142b == 2) {
                return;
            }
            C4929g0.this.f15147g.remove(0);
        }
    }

    /* renamed from: com.google.android.exoplayer2.c1.d0.g0$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/g0$b.class */
    private class C4931b implements AbstractC4916a0 {

        /* renamed from: a */
        private final C5535u f15162a = new C5535u(new byte[5]);

        /* renamed from: b */
        private final SparseArray<AbstractC4933h0> f15163b = new SparseArray<>();

        /* renamed from: c */
        private final SparseIntArray f15164c = new SparseIntArray();

        /* renamed from: d */
        private final int f15165d;

        public C4931b(int i) {
            C4929g0.this = r6;
            this.f15165d = i;
        }

        /* renamed from: c */
        private AbstractC4933h0.C4935b m21161c(C5536v c5536v, int i) {
            ArrayList arrayList;
            String str;
            int m18676c = c5536v.m18676c();
            int i2 = i + m18676c;
            String str2 = null;
            ArrayList arrayList2 = null;
            int i3 = -1;
            while (c5536v.m18676c() < i2) {
                int m18653z = c5536v.m18653z();
                int m18676c2 = c5536v.m18676c() + c5536v.m18653z();
                if (m18653z == 5) {
                    long m18691B = c5536v.m18691B();
                    if (m18691B != 1094921523) {
                        if (m18691B != 1161904947) {
                            if (m18691B != 1094921524) {
                                str = str2;
                                arrayList = arrayList2;
                                if (m18691B == 1212503619) {
                                    i3 = 36;
                                    str = str2;
                                    arrayList = arrayList2;
                                }
                                c5536v.m18679N(m18676c2 - c5536v.m18676c());
                                str2 = str;
                                arrayList2 = arrayList;
                            }
                            i3 = 172;
                            str = str2;
                            arrayList = arrayList2;
                            c5536v.m18679N(m18676c2 - c5536v.m18676c());
                            str2 = str;
                            arrayList2 = arrayList;
                        }
                        i3 = 135;
                        str = str2;
                        arrayList = arrayList2;
                        c5536v.m18679N(m18676c2 - c5536v.m18676c());
                        str2 = str;
                        arrayList2 = arrayList;
                    }
                    i3 = 129;
                    str = str2;
                    arrayList = arrayList2;
                    c5536v.m18679N(m18676c2 - c5536v.m18676c());
                    str2 = str;
                    arrayList2 = arrayList;
                } else {
                    if (m18653z != 106) {
                        if (m18653z != 122) {
                            if (m18653z == 127) {
                                str = str2;
                                arrayList = arrayList2;
                                if (c5536v.m18653z() != 21) {
                                }
                                i3 = 172;
                                str = str2;
                                arrayList = arrayList2;
                            } else if (m18653z == 123) {
                                i3 = 138;
                                str = str2;
                                arrayList = arrayList2;
                            } else if (m18653z == 10) {
                                str = c5536v.m18656w(3).trim();
                                arrayList = arrayList2;
                            } else {
                                str = str2;
                                arrayList = arrayList2;
                                if (m18653z == 89) {
                                    arrayList = new ArrayList();
                                    while (c5536v.m18676c() < m18676c2) {
                                        String trim = c5536v.m18656w(3).trim();
                                        int m18653z2 = c5536v.m18653z();
                                        byte[] bArr = new byte[4];
                                        c5536v.m18671h(bArr, 0, 4);
                                        arrayList.add(new AbstractC4933h0.C4934a(trim, m18653z2, bArr));
                                    }
                                    i3 = 89;
                                    str = str2;
                                }
                            }
                            c5536v.m18679N(m18676c2 - c5536v.m18676c());
                            str2 = str;
                            arrayList2 = arrayList;
                        }
                        i3 = 135;
                        str = str2;
                        arrayList = arrayList2;
                        c5536v.m18679N(m18676c2 - c5536v.m18676c());
                        str2 = str;
                        arrayList2 = arrayList;
                    }
                    i3 = 129;
                    str = str2;
                    arrayList = arrayList2;
                    c5536v.m18679N(m18676c2 - c5536v.m18676c());
                    str2 = str;
                    arrayList2 = arrayList;
                }
            }
            c5536v.m18680M(i2);
            return new AbstractC4933h0.C4935b(i3, str2, arrayList2, Arrays.copyOfRange(c5536v.f17941a, m18676c, i2));
        }

        @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4916a0
        /* renamed from: a */
        public void mo21163a(C5509e0 c5509e0, AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        }

        @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4916a0
        /* renamed from: b */
        public void mo21162b(C5536v c5536v) {
            C5509e0 c5509e0;
            if (c5536v.m18653z() != 2) {
                return;
            }
            if (C4929g0.this.f15142b == 1 || C4929g0.this.f15142b == 2 || C4929g0.this.f15153m == 1) {
                c5509e0 = (C5509e0) C4929g0.this.f15143c.get(0);
            } else {
                c5509e0 = new C5509e0(((C5509e0) C4929g0.this.f15143c.get(0)).m18904c());
                C4929g0.this.f15143c.add(c5509e0);
            }
            c5536v.m18679N(2);
            int m18687F = c5536v.m18687F();
            c5536v.m18679N(3);
            c5536v.m18672g(this.f15162a, 2);
            this.f15162a.m18694q(3);
            C4929g0.this.f15159s = this.f15162a.m18703h(13);
            c5536v.m18672g(this.f15162a, 2);
            this.f15162a.m18694q(4);
            c5536v.m18679N(this.f15162a.m18703h(12));
            if (C4929g0.this.f15142b == 2 && C4929g0.this.f15157q == null) {
                AbstractC4933h0.C4935b c4935b = new AbstractC4933h0.C4935b(21, null, null, C5515h0.f17881f);
                C4929g0 c4929g0 = C4929g0.this;
                c4929g0.f15157q = c4929g0.f15146f.mo21124a(21, c4935b);
                C4929g0.this.f15157q.mo21061a(c5509e0, C4929g0.this.f15152l, new AbstractC4933h0.C4937d(m18687F, 21, 8192));
            }
            this.f15163b.clear();
            this.f15164c.clear();
            int m18678a = c5536v.m18678a();
            while (true) {
                int i = m18678a;
                if (i <= 0) {
                    break;
                }
                c5536v.m18672g(this.f15162a, 5);
                int m18703h = this.f15162a.m18703h(8);
                this.f15162a.m18694q(3);
                int m18703h2 = this.f15162a.m18703h(13);
                this.f15162a.m18694q(4);
                int m18703h3 = this.f15162a.m18703h(12);
                AbstractC4933h0.C4935b m21161c = m21161c(c5536v, m18703h3);
                int i2 = m18703h;
                if (m18703h == 6) {
                    i2 = m21161c.f15174a;
                }
                int i3 = i - (m18703h3 + 5);
                int i4 = C4929g0.this.f15142b == 2 ? i2 : m18703h2;
                if (!C4929g0.this.f15148h.get(i4)) {
                    AbstractC4933h0 mo21124a = (C4929g0.this.f15142b == 2 && i2 == 21) ? C4929g0.this.f15157q : C4929g0.this.f15146f.mo21124a(i2, m21161c);
                    if (C4929g0.this.f15142b != 2 || m18703h2 < this.f15164c.get(i4, 8192)) {
                        this.f15164c.put(i4, m18703h2);
                        this.f15163b.put(i4, mo21124a);
                    }
                }
                m18678a = i3;
            }
            int size = this.f15164c.size();
            for (int i5 = 0; i5 < size; i5++) {
                int keyAt = this.f15164c.keyAt(i5);
                int valueAt = this.f15164c.valueAt(i5);
                C4929g0.this.f15148h.put(keyAt, true);
                C4929g0.this.f15149i.put(valueAt, true);
                AbstractC4933h0 valueAt2 = this.f15163b.valueAt(i5);
                if (valueAt2 != null) {
                    if (valueAt2 != C4929g0.this.f15157q) {
                        valueAt2.mo21061a(c5509e0, C4929g0.this.f15152l, new AbstractC4933h0.C4937d(m18687F, keyAt, 8192));
                    }
                    C4929g0.this.f15147g.put(valueAt, valueAt2);
                }
            }
            if (C4929g0.this.f15142b == 2) {
                if (C4929g0.this.f15154n) {
                    return;
                }
                C4929g0.this.f15152l.mo19752o();
                C4929g0.this.f15153m = 0;
                C4929g0.this.f15154n = true;
                return;
            }
            C4929g0.this.f15147g.remove(this.f15165d);
            C4929g0 c4929g02 = C4929g0.this;
            c4929g02.f15153m = c4929g02.f15142b == 1 ? 0 : C4929g0.this.f15153m - 1;
            if (C4929g0.this.f15153m != 0) {
                return;
            }
            C4929g0.this.f15152l.mo19752o();
            C4929g0.this.f15154n = true;
        }
    }

    public C4929g0() {
        this(0);
    }

    public C4929g0(int i) {
        this(1, i);
    }

    public C4929g0(int i, int i2) {
        this(i, new C5509e0(0L), new C4943l(i2));
    }

    public C4929g0(int i, C5509e0 c5509e0, AbstractC4933h0.AbstractC4936c abstractC4936c) {
        this.f15146f = (AbstractC4933h0.AbstractC4936c) C5508e.m18911e(abstractC4936c);
        this.f15142b = i;
        if (i == 1 || i == 2) {
            this.f15143c = Collections.singletonList(c5509e0);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f15143c = arrayList;
            arrayList.add(c5509e0);
        }
        this.f15144d = new C5536v(new byte[9400], 0);
        this.f15148h = new SparseBooleanArray();
        this.f15149i = new SparseBooleanArray();
        this.f15147g = new SparseArray<>();
        this.f15145e = new SparseIntArray();
        this.f15150j = new C4927f0();
        this.f15159s = -1;
        m21165y();
    }

    /* renamed from: k */
    static /* synthetic */ int m21179k(C4929g0 c4929g0) {
        int i = c4929g0.f15153m;
        c4929g0.f15153m = i + 1;
        return i;
    }

    /* renamed from: u */
    private boolean m21169u(AbstractC4979i abstractC4979i) {
        C5536v c5536v = this.f15144d;
        byte[] bArr = c5536v.f17941a;
        if (9400 - c5536v.m18676c() < 188) {
            int m18678a = this.f15144d.m18678a();
            if (m18678a > 0) {
                System.arraycopy(bArr, this.f15144d.m18676c(), bArr, 0, m18678a);
            }
            this.f15144d.m18682K(bArr, m18678a);
        }
        while (this.f15144d.m18678a() < 188) {
            int m18675d = this.f15144d.m18675d();
            int read = abstractC4979i.read(bArr, m18675d, 9400 - m18675d);
            if (read == -1) {
                return false;
            }
            this.f15144d.m18681L(m18675d + read);
        }
        return true;
    }

    /* renamed from: v */
    private int m21168v() {
        int m18676c = this.f15144d.m18676c();
        int m18675d = this.f15144d.m18675d();
        int m21152a = C4939i0.m21152a(this.f15144d.f17941a, m18676c, m18675d);
        this.f15144d.m18680M(m21152a);
        int i = m21152a + 188;
        if (i > m18675d) {
            int i2 = this.f15158r + (m21152a - m18676c);
            this.f15158r = i2;
            if (this.f15142b == 2 && i2 > 376) {
                throw new ParserException("Cannot find sync byte. Most likely not a Transport Stream.");
            }
        } else {
            this.f15158r = 0;
        }
        return i;
    }

    /* renamed from: w */
    public static /* synthetic */ AbstractC4978h[] m21167w() {
        return new AbstractC4978h[]{new C4929g0()};
    }

    /* renamed from: x */
    private void m21166x(long j) {
        if (!this.f15155o) {
            this.f15155o = true;
            if (this.f15150j.m21195b() == -9223372036854775807L) {
                this.f15152l.mo19764c(new AbstractC4992t.C4994b(this.f15150j.m21195b()));
                return;
            }
            C4924e0 c4924e0 = new C4924e0(this.f15150j.m21194c(), this.f15150j.m21195b(), j, this.f15159s);
            this.f15151k = c4924e0;
            this.f15152l.mo19764c(c4924e0.m21370b());
        }
    }

    /* renamed from: y */
    private void m21165y() {
        this.f15148h.clear();
        this.f15147g.clear();
        SparseArray<AbstractC4933h0> mo21123b = this.f15146f.mo21123b();
        int size = mo21123b.size();
        for (int i = 0; i < size; i++) {
            this.f15147g.put(mo21123b.keyAt(i), mo21123b.valueAt(i));
        }
        this.f15147g.put(0, new C4918b0(new C4930a()));
        this.f15157q = null;
    }

    /* renamed from: z */
    private boolean m21164z(int i) {
        boolean z = false;
        if (this.f15142b == 2 || this.f15154n || !this.f15149i.get(i, false)) {
            z = true;
        }
        return z;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: b */
    public void mo19973b() {
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: c */
    public boolean mo19972c(AbstractC4979i abstractC4979i) {
        boolean z;
        byte[] bArr = this.f15144d.f17941a;
        abstractC4979i.mo21000j(bArr, 0, 940);
        for (int i = 0; i < 188; i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    z = true;
                    break;
                } else if (bArr[(i2 * 188) + i] != 71) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
            if (z) {
                abstractC4979i.mo21002h(i);
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: f */
    public int mo19970f(AbstractC4979i abstractC4979i, C4991s c4991s) {
        long length = abstractC4979i.getLength();
        if (this.f15154n) {
            if (((length == -1 || this.f15142b == 2) ? false : true) && !this.f15150j.m21193d()) {
                return this.f15150j.m21192e(abstractC4979i, c4991s, this.f15159s);
            }
            m21166x(length);
            if (this.f15156p) {
                this.f15156p = false;
                mo19968h(0L, 0L);
                if (abstractC4979i.mo20999k() != 0) {
                    c4991s.f15517a = 0L;
                    return 1;
                }
            }
            C4924e0 c4924e0 = this.f15151k;
            if (c4924e0 != null && c4924e0.m21368d()) {
                return this.f15151k.m21369c(abstractC4979i, c4991s);
            }
        }
        if (!m21169u(abstractC4979i)) {
            return -1;
        }
        int m21168v = m21168v();
        int m18675d = this.f15144d.m18675d();
        if (m21168v > m18675d) {
            return 0;
        }
        int m18668k = this.f15144d.m18668k();
        if ((8388608 & m18668k) != 0) {
            this.f15144d.m18680M(m21168v);
            return 0;
        }
        int i = ((4194304 & m18668k) != 0 ? 1 : 0) | 0;
        int i2 = (2096896 & m18668k) >> 8;
        boolean z = (m18668k & 32) != 0;
        AbstractC4933h0 abstractC4933h0 = (m18668k & 16) != 0 ? this.f15147g.get(i2) : null;
        if (abstractC4933h0 == null) {
            this.f15144d.m18680M(m21168v);
            return 0;
        }
        if (this.f15142b != 2) {
            int i3 = m18668k & 15;
            int i4 = this.f15145e.get(i2, i3 - 1);
            this.f15145e.put(i2, i3);
            if (i4 == i3) {
                this.f15144d.m18680M(m21168v);
                return 0;
            } else if (i3 != ((i4 + 1) & 15)) {
                abstractC4933h0.mo21059c();
            }
        }
        int i5 = i;
        if (z) {
            int m18653z = this.f15144d.m18653z();
            i5 = i | ((this.f15144d.m18653z() & 64) != 0 ? 2 : 0);
            this.f15144d.m18679N(m18653z - 1);
        }
        boolean z2 = this.f15154n;
        if (m21164z(i2)) {
            this.f15144d.m18681L(m21168v);
            abstractC4933h0.mo21060b(this.f15144d, i5);
            this.f15144d.m18681L(m18675d);
        }
        if (this.f15142b != 2 && !z2 && this.f15154n && length != -1) {
            this.f15156p = true;
        }
        this.f15144d.m18680M(m21168v);
        return 0;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: g */
    public void mo19969g(AbstractC4980j abstractC4980j) {
        this.f15152l = abstractC4980j;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: h */
    public void mo19968h(long j, long j2) {
        C4924e0 c4924e0;
        C5508e.m18910f(this.f15142b != 2);
        int size = this.f15143c.size();
        for (int i = 0; i < size; i++) {
            C5509e0 c5509e0 = this.f15143c.get(i);
            if ((c5509e0.m18902e() == -9223372036854775807L) || (c5509e0.m18902e() != 0 && c5509e0.m18904c() != j2)) {
                c5509e0.m18900g();
                c5509e0.m18899h(j2);
            }
        }
        if (j2 != 0 && (c4924e0 = this.f15151k) != null) {
            c4924e0.m21364h(j2);
        }
        this.f15144d.m18685H();
        this.f15145e.clear();
        for (int i2 = 0; i2 < this.f15147g.size(); i2++) {
            this.f15147g.valueAt(i2).mo21059c();
        }
        this.f15158r = 0;
    }
}
