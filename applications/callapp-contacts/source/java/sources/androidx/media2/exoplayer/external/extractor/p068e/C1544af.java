package androidx.media2.exoplayer.external.extractor.p068e;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1602j;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.C1636n;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2017o;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2030z;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.af */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/af.class */
public final class C1544af implements AbstractC1599g {

    /* renamed from: a */
    public static final AbstractC1602j f5957a = C1547ag.f5983a;

    /* renamed from: b */
    private final int f5958b;

    /* renamed from: c */
    private final List<C2030z> f5959c;

    /* renamed from: d */
    private final C2018p f5960d;

    /* renamed from: e */
    private final SparseIntArray f5961e;

    /* renamed from: f */
    private final AbstractC1548ah.AbstractC1551c f5962f;

    /* renamed from: g */
    private final SparseArray<AbstractC1548ah> f5963g;

    /* renamed from: h */
    private final SparseBooleanArray f5964h;

    /* renamed from: i */
    private final SparseBooleanArray f5965i;

    /* renamed from: j */
    private final C1543ae f5966j;

    /* renamed from: k */
    private C1541ad f5967k;

    /* renamed from: l */
    private AbstractC1601i f5968l;

    /* renamed from: m */
    private int f5969m;

    /* renamed from: n */
    private boolean f5970n;

    /* renamed from: o */
    private boolean f5971o;

    /* renamed from: p */
    private boolean f5972p;

    /* renamed from: q */
    private AbstractC1548ah f5973q;

    /* renamed from: r */
    private int f5974r;

    /* renamed from: s */
    private int f5975s;

    /* renamed from: androidx.media2.exoplayer.external.extractor.e.af$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/af$a.class */
    public final class C1545a implements AbstractC1587z {

        /* renamed from: b */
        private final C2017o f5977b = new C2017o(new byte[4]);

        public C1545a() {
            C1544af.this = r6;
        }

        @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1587z
        /* renamed from: a */
        public final void mo42632a(C2018p c2018p) {
            if (c2018p.m41534c() != 0) {
                return;
            }
            c2018p.m41531d(7);
            int m41536b = c2018p.m41536b() / 4;
            for (int i = 0; i < m41536b; i++) {
                c2018p.m41539a(this.f5977b, 4);
                int m41548c = this.f5977b.m41548c(16);
                this.f5977b.m41551b(3);
                if (m41548c == 0) {
                    this.f5977b.m41551b(13);
                } else {
                    int m41548c2 = this.f5977b.m41548c(13);
                    C1544af.this.f5963g.put(m41548c2, new C1538aa(new C1546b(m41548c2)));
                    C1544af.m42720b(C1544af.this);
                }
            }
            if (C1544af.this.f5958b == 2) {
                return;
            }
            C1544af.this.f5963g.remove(0);
        }

        @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1587z
        /* renamed from: a */
        public final void mo42631a(C2030z c2030z, AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.e.af$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/af$b.class */
    final class C1546b implements AbstractC1587z {

        /* renamed from: b */
        private final C2017o f5979b = new C2017o(new byte[5]);

        /* renamed from: c */
        private final SparseArray<AbstractC1548ah> f5980c = new SparseArray<>();

        /* renamed from: d */
        private final SparseIntArray f5981d = new SparseIntArray();

        /* renamed from: e */
        private final int f5982e;

        public C1546b(int i) {
            C1544af.this = r6;
            this.f5982e = i;
        }

        @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1587z
        /* renamed from: a */
        public final void mo42632a(C2018p c2018p) {
            C2030z c2030z;
            String str;
            if (c2018p.m41534c() != 2) {
                return;
            }
            if (C1544af.this.f5958b == 1 || C1544af.this.f5958b == 2 || C1544af.this.f5969m == 1) {
                c2030z = (C2030z) C1544af.this.f5959c.get(0);
            } else {
                c2030z = new C2030z(((C2030z) C1544af.this.f5959c.get(0)).f8162a);
                C1544af.this.f5959c.add(c2030z);
            }
            c2018p.m41531d(2);
            int m41532d = c2018p.m41532d();
            c2018p.m41531d(3);
            c2018p.m41539a(this.f5979b, 2);
            this.f5979b.m41551b(3);
            C1544af.this.f5975s = this.f5979b.m41548c(13);
            c2018p.m41539a(this.f5979b, 2);
            this.f5979b.m41551b(4);
            c2018p.m41531d(this.f5979b.m41548c(12));
            if (C1544af.this.f5958b == 2 && C1544af.this.f5973q == null) {
                AbstractC1548ah.C1550b c1550b = new AbstractC1548ah.C1550b(21, null, null, C1996ac.f8067f);
                C1544af c1544af = C1544af.this;
                c1544af.f5973q = c1544af.f5962f.mo42674a(21, c1550b);
                C1544af.this.f5973q.mo42642a(c2030z, C1544af.this.f5968l, new AbstractC1548ah.C1552d(m41532d, 21, PropertyFlags.UNSIGNED));
            }
            this.f5980c.clear();
            this.f5981d.clear();
            int m41536b = c2018p.m41536b();
            while (true) {
                int i = m41536b;
                if (i <= 0) {
                    break;
                }
                c2018p.m41539a(this.f5979b, 5);
                int m41548c = this.f5979b.m41548c(8);
                this.f5979b.m41551b(3);
                int m41548c2 = this.f5979b.m41548c(13);
                this.f5979b.m41551b(4);
                int m41548c3 = this.f5979b.m41548c(12);
                int i2 = c2018p.f8132b;
                int i3 = i2 + m41548c3;
                int i4 = -1;
                String str2 = null;
                ArrayList arrayList = null;
                while (c2018p.f8132b < i3) {
                    int m41534c = c2018p.m41534c();
                    int m41534c2 = c2018p.f8132b + c2018p.m41534c();
                    if (m41534c == 5) {
                        long m41526g = c2018p.m41526g();
                        if (m41526g != 1094921523) {
                            if (m41526g != 1161904947) {
                                if (m41526g == 1094921524) {
                                    i4 = 172;
                                    c2018p.m41531d(m41534c2 - c2018p.f8132b);
                                } else {
                                    str = str2;
                                    if (m41526g == 1212503619) {
                                        i4 = 36;
                                        str = str2;
                                    }
                                    str2 = str;
                                    c2018p.m41531d(m41534c2 - c2018p.f8132b);
                                }
                            }
                            i4 = 135;
                            c2018p.m41531d(m41534c2 - c2018p.f8132b);
                        }
                        i4 = 129;
                        c2018p.m41531d(m41534c2 - c2018p.f8132b);
                    } else {
                        if (m41534c != 106) {
                            if (m41534c != 122) {
                                if (m41534c == 127) {
                                    str = str2;
                                    if (c2018p.m41534c() == 21) {
                                        i4 = 172;
                                        str = str2;
                                    }
                                } else if (m41534c == 123) {
                                    i4 = 138;
                                    str = str2;
                                } else if (m41534c == 10) {
                                    str = c2018p.m41529e(3).trim();
                                } else {
                                    str = str2;
                                    if (m41534c == 89) {
                                        arrayList = new ArrayList();
                                        while (c2018p.f8132b < m41534c2) {
                                            String trim = c2018p.m41529e(3).trim();
                                            int m41534c3 = c2018p.m41534c();
                                            byte[] bArr = new byte[4];
                                            c2018p.m41537a(bArr, 0, 4);
                                            arrayList.add(new AbstractC1548ah.C1549a(trim, m41534c3, bArr));
                                        }
                                        i4 = 89;
                                        c2018p.m41531d(m41534c2 - c2018p.f8132b);
                                    }
                                }
                                str2 = str;
                                c2018p.m41531d(m41534c2 - c2018p.f8132b);
                            }
                            i4 = 135;
                            c2018p.m41531d(m41534c2 - c2018p.f8132b);
                        }
                        i4 = 129;
                        c2018p.m41531d(m41534c2 - c2018p.f8132b);
                    }
                }
                c2018p.m41533c(i3);
                AbstractC1548ah.C1550b c1550b2 = new AbstractC1548ah.C1550b(i4, str2, arrayList, Arrays.copyOfRange(c2018p.f8131a, i2, i3));
                int i5 = m41548c;
                if (m41548c == 6) {
                    i5 = c1550b2.f5987a;
                }
                int i6 = i - (m41548c3 + 5);
                int i7 = C1544af.this.f5958b == 2 ? i5 : m41548c2;
                if (!C1544af.this.f5964h.get(i7)) {
                    AbstractC1548ah mo42674a = (C1544af.this.f5958b == 2 && i5 == 21) ? C1544af.this.f5973q : C1544af.this.f5962f.mo42674a(i5, c1550b2);
                    if (C1544af.this.f5958b != 2 || m41548c2 < this.f5981d.get(i7, PropertyFlags.UNSIGNED)) {
                        this.f5981d.put(i7, m41548c2);
                        this.f5980c.put(i7, mo42674a);
                    }
                }
                m41536b = i6;
            }
            C2030z c2030z2 = c2030z;
            int size = this.f5981d.size();
            for (int i8 = 0; i8 < size; i8++) {
                int keyAt = this.f5981d.keyAt(i8);
                int valueAt = this.f5981d.valueAt(i8);
                C1544af.this.f5964h.put(keyAt, true);
                C1544af.this.f5965i.put(valueAt, true);
                AbstractC1548ah valueAt2 = this.f5980c.valueAt(i8);
                if (valueAt2 != null) {
                    if (valueAt2 != C1544af.this.f5973q) {
                        valueAt2.mo42642a(c2030z2, C1544af.this.f5968l, new AbstractC1548ah.C1552d(m41532d, keyAt, PropertyFlags.UNSIGNED));
                    }
                    C1544af.this.f5963g.put(valueAt, valueAt2);
                }
            }
            if (C1544af.this.f5958b == 2) {
                if (C1544af.this.f5970n) {
                    return;
                }
                C1544af.this.f5968l.mo42215a();
                C1544af.this.f5969m = 0;
                C1544af.this.f5970n = true;
                return;
            }
            C1544af.this.f5963g.remove(this.f5982e);
            C1544af c1544af2 = C1544af.this;
            c1544af2.f5969m = c1544af2.f5958b == 1 ? 0 : C1544af.this.f5969m - 1;
            if (C1544af.this.f5969m != 0) {
                return;
            }
            C1544af.this.f5968l.mo42215a();
            C1544af.this.f5970n = true;
        }

        @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1587z
        /* renamed from: a */
        public final void mo42631a(C2030z c2030z, AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        }
    }

    public C1544af() {
        this(0);
    }

    public C1544af(int i) {
        this(1, i);
    }

    public C1544af(int i, int i2) {
        this(i, new C2030z(0L), new C1563j(i2));
    }

    public C1544af(int i, C2030z c2030z, AbstractC1548ah.AbstractC1551c abstractC1551c) {
        this.f5962f = (AbstractC1548ah.AbstractC1551c) C1993a.m41690a(abstractC1551c);
        this.f5958b = i;
        if (i == 1 || i == 2) {
            this.f5959c = Collections.singletonList(c2030z);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f5959c = arrayList;
            arrayList.add(c2030z);
        }
        this.f5960d = new C2018p(new byte[9400], 0);
        this.f5964h = new SparseBooleanArray();
        this.f5965i = new SparseBooleanArray();
        this.f5963g = new SparseArray<>();
        this.f5961e = new SparseIntArray();
        this.f5966j = new C1543ae();
        this.f5975s = -1;
        m42721b();
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC1599g[] m42725a() {
        return new AbstractC1599g[]{new C1544af()};
    }

    /* renamed from: b */
    static /* synthetic */ int m42720b(C1544af c1544af) {
        int i = c1544af.f5969m;
        c1544af.f5969m = i + 1;
        return i;
    }

    /* renamed from: b */
    private void m42721b() {
        this.f5964h.clear();
        this.f5963g.clear();
        SparseArray<AbstractC1548ah> mo42676a = this.f5962f.mo42676a();
        int size = mo42676a.size();
        for (int i = 0; i < size; i++) {
            this.f5963g.put(mo42676a.keyAt(i), mo42676a.valueAt(i));
        }
        this.f5963g.put(0, new C1538aa(new C1545a()));
        this.f5973q = null;
    }

    /* JADX WARN: Type inference failed for: r0v237, types: [long] */
    /* JADX WARN: Type inference failed for: r0v274, types: [long] */
    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final int mo42187a(AbstractC1600h abstractC1600h, C1636n c1636n) throws IOException, InterruptedException {
        boolean z;
        char c;
        char c2;
        long mo42600d = abstractC1600h.mo42600d();
        if (this.f5970n) {
            if (((mo42600d == -1 || this.f5958b == 2) ? false : true) && !this.f5966j.f5951c) {
                C1543ae c1543ae = this.f5966j;
                int i = this.f5975s;
                if (i <= 0) {
                    return c1543ae.m42726a(abstractC1600h);
                }
                if (!c1543ae.f5953e) {
                    long mo42600d2 = abstractC1600h.mo42600d();
                    int min = (int) Math.min(112800L, mo42600d2);
                    long j = mo42600d2 - min;
                    if (abstractC1600h.mo42603c() != j) {
                        c1636n.f6500a = j;
                        return 1;
                    }
                    c1543ae.f5950b.m41541a(min);
                    abstractC1600h.mo42612a();
                    abstractC1600h.mo42601c(c1543ae.f5950b.f8131a, 0, min);
                    C2018p c2018p = c1543ae.f5950b;
                    int i2 = c2018p.f8132b;
                    int i3 = c2018p.f8133c - 1;
                    while (true) {
                        c2 = 1;
                        if (i3 < i2) {
                            break;
                        }
                        if (c2018p.f8131a[i3] == 71) {
                            c2 = C1553ai.m42704a(c2018p, i3, i);
                            if (c2 != -9223372036854775807L) {
                                break;
                            }
                        }
                        i3--;
                    }
                    c1543ae.f5955g = c2;
                    c1543ae.f5953e = true;
                    return 0;
                } else if (c1543ae.f5955g == -9223372036854775807L) {
                    return c1543ae.m42726a(abstractC1600h);
                } else {
                    if (c1543ae.f5952d) {
                        if (c1543ae.f5954f == -9223372036854775807L) {
                            return c1543ae.m42726a(abstractC1600h);
                        }
                        c1543ae.f5956h = c1543ae.f5949a.m41478b(c1543ae.f5955g) - c1543ae.f5949a.m41478b(c1543ae.f5954f);
                        return c1543ae.m42726a(abstractC1600h);
                    }
                    int min2 = (int) Math.min(112800L, abstractC1600h.mo42600d());
                    if (abstractC1600h.mo42603c() != 0) {
                        c1636n.f6500a = 0L;
                        return 1;
                    }
                    c1543ae.f5950b.m41541a(min2);
                    abstractC1600h.mo42612a();
                    abstractC1600h.mo42601c(c1543ae.f5950b.f8131a, 0, min2);
                    C2018p c2018p2 = c1543ae.f5950b;
                    int i4 = c2018p2.f8132b;
                    int i5 = c2018p2.f8133c;
                    while (true) {
                        c = 1;
                        if (i4 >= i5) {
                            break;
                        }
                        if (c2018p2.f8131a[i4] == 71) {
                            c = C1553ai.m42704a(c2018p2, i4, i);
                            if (c != -9223372036854775807L) {
                                break;
                            }
                        }
                        i4++;
                    }
                    c1543ae.f5954f = c;
                    c1543ae.f5952d = true;
                    return 0;
                }
            }
            if (!this.f5971o) {
                this.f5971o = true;
                if (this.f5966j.f5956h != -9223372036854775807L) {
                    C1541ad c1541ad = new C1541ad(this.f5966j.f5949a, this.f5966j.f5956h, mo42600d, this.f5975s);
                    this.f5967k = c1541ad;
                    this.f5968l.mo42209a(c1541ad.m42842a());
                } else {
                    this.f5968l.mo42209a(new AbstractC1637o.C1639b(this.f5966j.f5956h));
                }
            }
            if (this.f5972p) {
                this.f5972p = false;
                mo42189a(0L, 0L);
                if (abstractC1600h.mo42603c() != 0) {
                    c1636n.f6500a = 0L;
                    return 1;
                }
            }
            C1541ad c1541ad2 = this.f5967k;
            if (c1541ad2 != null && c1541ad2.m42837b()) {
                return this.f5967k.m42838a(abstractC1600h, c1636n);
            }
        }
        byte[] bArr = this.f5960d.f8131a;
        if (9400 - this.f5960d.f8132b < 188) {
            int m41536b = this.f5960d.m41536b();
            if (m41536b > 0) {
                System.arraycopy(bArr, this.f5960d.f8132b, bArr, 0, m41536b);
            }
            this.f5960d.m41538a(bArr, m41536b);
        }
        while (true) {
            if (this.f5960d.m41536b() >= 188) {
                z = true;
                break;
            }
            int i6 = this.f5960d.f8133c;
            int mo42609a = abstractC1600h.mo42609a(bArr, i6, 9400 - i6);
            if (mo42609a == -1) {
                z = false;
                break;
            }
            this.f5960d.m41535b(i6 + mo42609a);
        }
        if (!z) {
            return -1;
        }
        int i7 = this.f5960d.f8132b;
        int i8 = this.f5960d.f8133c;
        int m42702a = C1553ai.m42702a(this.f5960d.f8131a, i7, i8);
        this.f5960d.m41533c(m42702a);
        int i9 = m42702a + 188;
        if (i9 > i8) {
            int i10 = this.f5974r + (m42702a - i7);
            this.f5974r = i10;
            if (this.f5958b == 2 && i10 > 376) {
                throw new ParserException("Cannot find sync byte. Most likely not a Transport Stream.");
            }
        } else {
            this.f5974r = 0;
        }
        int i11 = this.f5960d.f8133c;
        if (i9 > i11) {
            return 0;
        }
        int m41524i = this.f5960d.m41524i();
        if ((8388608 & m41524i) != 0) {
            this.f5960d.m41533c(i9);
            return 0;
        }
        int i12 = ((4194304 & m41524i) != 0 ? 1 : 0) | 0;
        int i13 = (2096896 & m41524i) >> 8;
        boolean z2 = (m41524i & 32) != 0;
        AbstractC1548ah abstractC1548ah = (m41524i & 16) != 0 ? this.f5963g.get(i13) : null;
        if (abstractC1548ah == null) {
            this.f5960d.m41533c(i9);
            return 0;
        }
        if (this.f5958b != 2) {
            int i14 = m41524i & 15;
            int i15 = this.f5961e.get(i13, i14 - 1);
            this.f5961e.put(i13, i14);
            if (i15 == i14) {
                this.f5960d.m41533c(i9);
                return 0;
            } else if (i14 != ((i15 + 1) & 15)) {
                abstractC1548ah.mo42646a();
            }
        }
        int i16 = i12;
        if (z2) {
            int m41534c = this.f5960d.m41534c();
            i16 = i12 | ((this.f5960d.m41534c() & 64) != 0 ? 2 : 0);
            this.f5960d.m41531d(m41534c - 1);
        }
        boolean z3 = this.f5970n;
        if (this.f5958b == 2 || z3 || !this.f5965i.get(i13, false)) {
            this.f5960d.m41535b(i9);
            abstractC1548ah.mo42644a(this.f5960d, i16);
            this.f5960d.m41535b(i11);
        }
        if (this.f5958b != 2 && !z3 && this.f5970n && mo42600d != -1) {
            this.f5972p = true;
        }
        this.f5960d.m41533c(i9);
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42189a(long j, long j2) {
        C1541ad c1541ad;
        C1993a.m41686b(this.f5958b != 2);
        int size = this.f5959c.size();
        for (int i = 0; i < size; i++) {
            C2030z c2030z = this.f5959c.get(i);
            if ((c2030z.m41481a() == -9223372036854775807L) || (c2030z.m41481a() != 0 && c2030z.f8162a != j2)) {
                c2030z.f8164c = -9223372036854775807L;
                c2030z.m41480a(j2);
            }
        }
        if (j2 != 0 && (c1541ad = this.f5967k) != null) {
            c1541ad.m42841a(j2);
        }
        this.f5960d.m41542a();
        this.f5961e.clear();
        for (int i2 = 0; i2 < this.f5963g.size(); i2++) {
            this.f5963g.valueAt(i2).mo42646a();
        }
        this.f5974r = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42186a(AbstractC1601i abstractC1601i) {
        this.f5968l = abstractC1601i;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final boolean mo42188a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        boolean z;
        byte[] bArr = this.f5960d.f8131a;
        abstractC1600h.mo42601c(bArr, 0, 940);
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
                abstractC1600h.mo42606b(i);
                return true;
            }
        }
        return false;
    }
}
