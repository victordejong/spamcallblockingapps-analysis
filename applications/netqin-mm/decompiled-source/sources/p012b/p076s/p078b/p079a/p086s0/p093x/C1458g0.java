package p012b.p076s.p078b.p079a.p086s0.p093x;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.media2.exoplayer.external.ParserException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1183o;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1337a;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.g0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/g0.class */
public final class C1458g0 implements AbstractC1350g {

    /* renamed from: a */
    public final int f5867a;

    /* renamed from: b */
    public final List<C1196z> f5868b;

    /* renamed from: c */
    public final C1184p f5869c;

    /* renamed from: d */
    public final SparseIntArray f5870d;

    /* renamed from: e */
    public final AbstractC1462h0.AbstractC1465c f5871e;

    /* renamed from: f */
    public final SparseArray<AbstractC1462h0> f5872f;

    /* renamed from: g */
    public final SparseBooleanArray f5873g;

    /* renamed from: h */
    public final SparseBooleanArray f5874h;

    /* renamed from: i */
    public final C1454e0 f5875i;

    /* renamed from: j */
    public C1451d0 f5876j;

    /* renamed from: k */
    public AbstractC1352i f5877k;

    /* renamed from: l */
    public int f5878l;

    /* renamed from: m */
    public boolean f5879m;

    /* renamed from: n */
    public boolean f5880n;

    /* renamed from: o */
    public boolean f5881o;

    /* renamed from: p */
    public AbstractC1462h0 f5882p;

    /* renamed from: q */
    public int f5883q;

    /* renamed from: r */
    public int f5884r;

    /* renamed from: b.s.b.a.s0.x.g0$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/g0$a.class */
    public class C1459a implements AbstractC1494z {

        /* renamed from: a */
        public final C1183o f5885a = new C1183o(new byte[4]);

        public C1459a() {
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1494z
        /* renamed from: a */
        public void mo33125a(C1184p pVar) {
            if (pVar.m34344r() == 0) {
                pVar.m34356f(7);
                int a = pVar.m34372a() / 4;
                for (int i = 0; i < a; i++) {
                    pVar.m34369a(this.f5885a, 4);
                    int a2 = this.f5885a.m34385a(16);
                    this.f5885a.m34376c(3);
                    if (a2 == 0) {
                        this.f5885a.m34376c(13);
                    } else {
                        int a3 = this.f5885a.m34385a(13);
                        C1458g0.this.f5872f.put(a3, new C1445a0(new C1460b(a3)));
                        C1458g0.m33261d(C1458g0.this);
                    }
                }
                if (C1458g0.this.f5867a != 2) {
                    C1458g0.this.f5872f.remove(0);
                }
            }
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1494z
        /* renamed from: a */
        public void mo33124a(C1196z zVar, AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        }
    }

    /* renamed from: b.s.b.a.s0.x.g0$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/g0$b.class */
    public class C1460b implements AbstractC1494z {

        /* renamed from: a */
        public final C1183o f5887a = new C1183o(new byte[5]);

        /* renamed from: b */
        public final SparseArray<AbstractC1462h0> f5888b = new SparseArray<>();

        /* renamed from: c */
        public final SparseIntArray f5889c = new SparseIntArray();

        /* renamed from: d */
        public final int f5890d;

        public C1460b(int i) {
            this.f5890d = i;
        }

        /* renamed from: a */
        public final AbstractC1462h0.C1464b m33253a(C1184p pVar, int i) {
            int c = pVar.m34363c();
            int i2 = i + c;
            String str = null;
            ArrayList arrayList = null;
            int i3 = -1;
            while (pVar.m34363c() < i2) {
                int r = pVar.m34344r();
                int c2 = pVar.m34363c() + pVar.m34344r();
                if (r == 5) {
                    long t = pVar.m34342t();
                    if (t != 1094921523) {
                        if (t != 1161904947) {
                            if (t != 1094921524) {
                                str = str;
                                arrayList = arrayList;
                                if (t == 1212503619) {
                                    i3 = 36;
                                    str = str;
                                    arrayList = arrayList;
                                }
                                pVar.m34356f(c2 - pVar.m34363c());
                            }
                            i3 = 172;
                            str = str;
                            arrayList = arrayList;
                            pVar.m34356f(c2 - pVar.m34363c());
                        }
                        i3 = 135;
                        str = str;
                        arrayList = arrayList;
                        pVar.m34356f(c2 - pVar.m34363c());
                    }
                    i3 = 129;
                    str = str;
                    arrayList = arrayList;
                    pVar.m34356f(c2 - pVar.m34363c());
                } else {
                    if (r != 106) {
                        if (r != 122) {
                            if (r == 127) {
                                str = str;
                                arrayList = arrayList;
                                if (pVar.m34344r() != 21) {
                                }
                                i3 = 172;
                                str = str;
                                arrayList = arrayList;
                            } else if (r == 123) {
                                i3 = 138;
                                str = str;
                                arrayList = arrayList;
                            } else if (r == 10) {
                                str = pVar.m34364b(3).trim();
                                arrayList = arrayList;
                            } else {
                                str = str;
                                arrayList = arrayList;
                                if (r == 89) {
                                    arrayList = new ArrayList();
                                    while (pVar.m34363c() < c2) {
                                        String trim = pVar.m34364b(3).trim();
                                        int r2 = pVar.m34344r();
                                        byte[] bArr = new byte[4];
                                        pVar.m34366a(bArr, 0, 4);
                                        arrayList.add(new AbstractC1462h0.C1463a(trim, r2, bArr));
                                    }
                                    i3 = 89;
                                    str = str;
                                }
                            }
                            pVar.m34356f(c2 - pVar.m34363c());
                        }
                        i3 = 135;
                        str = str;
                        arrayList = arrayList;
                        pVar.m34356f(c2 - pVar.m34363c());
                    }
                    i3 = 129;
                    str = str;
                    arrayList = arrayList;
                    pVar.m34356f(c2 - pVar.m34363c());
                }
            }
            pVar.m34358e(i2);
            return new AbstractC1462h0.C1464b(i3, str, arrayList, Arrays.copyOfRange(pVar.f4738a, c, i2));
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1494z
        /* renamed from: a */
        public void mo33125a(C1184p pVar) {
            C1196z zVar;
            if (pVar.m34344r() == 2) {
                int i = 0;
                if (C1458g0.this.f5867a == 1 || C1458g0.this.f5867a == 2 || C1458g0.this.f5878l == 1) {
                    zVar = (C1196z) C1458g0.this.f5868b.get(0);
                } else {
                    zVar = new C1196z(((C1196z) C1458g0.this.f5868b.get(0)).m34295a());
                    C1458g0.this.f5868b.add(zVar);
                }
                pVar.m34356f(2);
                int x = pVar.m34338x();
                pVar.m34356f(3);
                pVar.m34369a(this.f5887a, 2);
                this.f5887a.m34376c(3);
                C1458g0.this.f5884r = this.f5887a.m34385a(13);
                pVar.m34369a(this.f5887a, 2);
                this.f5887a.m34376c(4);
                pVar.m34356f(this.f5887a.m34385a(12));
                if (C1458g0.this.f5867a == 2 && C1458g0.this.f5882p == null) {
                    AbstractC1462h0.C1464b bVar = new AbstractC1462h0.C1464b(21, null, null, C1167d0.f4693f);
                    C1458g0 g0Var = C1458g0.this;
                    g0Var.f5882p = g0Var.f5871e.mo33220a(21, bVar);
                    C1458g0.this.f5882p.mo33153a(zVar, C1458g0.this.f5877k, new AbstractC1462h0.C1466d(x, 21, 8192));
                }
                this.f5888b.clear();
                this.f5889c.clear();
                int a = pVar.m34372a();
                while (a > 0) {
                    pVar.m34369a(this.f5887a, 5);
                    int a2 = this.f5887a.m34385a(8);
                    this.f5887a.m34376c(3);
                    int a3 = this.f5887a.m34385a(13);
                    this.f5887a.m34376c(4);
                    int a4 = this.f5887a.m34385a(12);
                    AbstractC1462h0.C1464b a5 = m33253a(pVar, a4);
                    int i2 = a2;
                    if (a2 == 6) {
                        i2 = a5.f5907a;
                    }
                    a -= a4 + 5;
                    int i3 = C1458g0.this.f5867a == 2 ? i2 : a3;
                    if (!C1458g0.this.f5873g.get(i3)) {
                        AbstractC1462h0 a6 = (C1458g0.this.f5867a == 2 && i2 == 21) ? C1458g0.this.f5882p : C1458g0.this.f5871e.mo33220a(i2, a5);
                        if (C1458g0.this.f5867a != 2 || a3 < this.f5889c.get(i3, 8192)) {
                            this.f5889c.put(i3, a3);
                            this.f5888b.put(i3, a6);
                        }
                    }
                }
                int size = this.f5889c.size();
                for (int i4 = 0; i4 < size; i4++) {
                    int keyAt = this.f5889c.keyAt(i4);
                    int valueAt = this.f5889c.valueAt(i4);
                    C1458g0.this.f5873g.put(keyAt, true);
                    C1458g0.this.f5874h.put(valueAt, true);
                    AbstractC1462h0 valueAt2 = this.f5888b.valueAt(i4);
                    if (valueAt2 != null) {
                        if (valueAt2 != C1458g0.this.f5882p) {
                            valueAt2.mo33153a(zVar, C1458g0.this.f5877k, new AbstractC1462h0.C1466d(x, keyAt, 8192));
                        }
                        C1458g0.this.f5872f.put(valueAt, valueAt2);
                    }
                }
                if (C1458g0.this.f5867a != 2) {
                    C1458g0.this.f5872f.remove(this.f5890d);
                    C1458g0 g0Var2 = C1458g0.this;
                    if (g0Var2.f5867a != 1) {
                        i = C1458g0.this.f5878l - 1;
                    }
                    g0Var2.f5878l = i;
                    if (C1458g0.this.f5878l == 0) {
                        C1458g0.this.f5877k.mo32639e();
                        C1458g0.this.f5879m = true;
                    }
                } else if (!C1458g0.this.f5879m) {
                    C1458g0.this.f5877k.mo32639e();
                    C1458g0.this.f5878l = 0;
                    C1458g0.this.f5879m = true;
                }
            }
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1494z
        /* renamed from: a */
        public void mo33124a(C1196z zVar, AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        }
    }

    static {
        AbstractC1353j jVar = C1456f0.f5865a;
    }

    public C1458g0() {
        this(0);
    }

    public C1458g0(int i) {
        this(1, i);
    }

    public C1458g0(int i, int i2) {
        this(i, new C1196z(0L), new C1469j(i2));
    }

    public C1458g0(int i, C1196z zVar, AbstractC1462h0.AbstractC1465c cVar) {
        C1160a.m34522a(cVar);
        this.f5871e = cVar;
        this.f5867a = i;
        if (i == 1 || i == 2) {
            this.f5868b = Collections.singletonList(zVar);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f5868b = arrayList;
            arrayList.add(zVar);
        }
        this.f5869c = new C1184p(new byte[9400], 0);
        this.f5873g = new SparseBooleanArray();
        this.f5874h = new SparseBooleanArray();
        this.f5872f = new SparseArray<>();
        this.f5870d = new SparseIntArray();
        this.f5875i = new C1454e0();
        this.f5884r = -1;
        m33264c();
    }

    /* renamed from: d */
    public static /* synthetic */ int m33261d(C1458g0 g0Var) {
        int i = g0Var.f5878l;
        g0Var.f5878l = i + 1;
        return i;
    }

    /* renamed from: d */
    public static final /* synthetic */ AbstractC1350g[] m33262d() {
        return new AbstractC1350g[]{new C1458g0()};
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public int mo32615a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        long a = hVar.mo33622a();
        AbstractC1462h0 h0Var = null;
        if (this.f5879m) {
            if (((a == -1 || this.f5867a == 2) ? false : true) && !this.f5875i.m33279c()) {
                return this.f5875i.m33283a(hVar, nVar, this.f5884r);
            }
            m33273a(a);
            if (this.f5881o) {
                this.f5881o = false;
                mo32617a(0L, 0L);
                if (hVar.getPosition() != 0) {
                    nVar.f5355a = 0L;
                    return 1;
                }
            }
            C1451d0 d0Var = this.f5876j;
            if (d0Var != null && d0Var.m33666b()) {
                return this.f5876j.m33668a(hVar, nVar, (AbstractC1337a.C1340c) null);
            }
        }
        if (!m33267b(hVar)) {
            return -1;
        }
        int b = m33268b();
        int d = this.f5869c.m34361d();
        if (b > d) {
            return 0;
        }
        int f = this.f5869c.m34357f();
        if ((8388608 & f) != 0) {
            this.f5869c.m34358e(b);
            return 0;
        }
        int i = ((4194304 & f) != 0 ? 1 : 0) | 0;
        int i2 = (2096896 & f) >> 8;
        boolean z = (f & 32) != 0;
        if ((f & 16) != 0) {
            h0Var = this.f5872f.get(i2);
        }
        if (h0Var == null) {
            this.f5869c.m34358e(b);
            return 0;
        }
        if (this.f5867a != 2) {
            int i3 = f & 15;
            int i4 = this.f5870d.get(i2, i3 - 1);
            this.f5870d.put(i2, i3);
            if (i4 == i3) {
                this.f5869c.m34358e(b);
                return 0;
            } else if (i3 != ((i4 + 1) & 15)) {
                h0Var.mo33157a();
            }
        }
        int i5 = i;
        if (z) {
            int r = this.f5869c.m34344r();
            i5 = i | ((this.f5869c.m34344r() & 64) != 0 ? 2 : 0);
            this.f5869c.m34356f(r - 1);
        }
        boolean z2 = this.f5879m;
        if (m33274a(i2)) {
            this.f5869c.m34360d(b);
            h0Var.mo33155a(this.f5869c, i5);
            this.f5869c.m34360d(d);
        }
        if (this.f5867a != 2 && !z2 && this.f5879m && a != -1) {
            this.f5881o = true;
        }
        this.f5869c.m34358e(b);
        return 0;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32619a() {
    }

    /* renamed from: a */
    public final void m33273a(long j) {
        if (!this.f5880n) {
            this.f5880n = true;
            if (this.f5875i.m33286a() != -9223372036854775807L) {
                C1451d0 d0Var = new C1451d0(this.f5875i.m33282b(), this.f5875i.m33286a(), j, this.f5884r);
                this.f5876j = d0Var;
                this.f5877k.mo32656a(d0Var.m33672a());
                return;
            }
            this.f5877k.mo32656a(new AbstractC1358o.C1360b(this.f5875i.m33286a()));
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32617a(long j, long j2) {
        C1451d0 d0Var;
        C1160a.m34518b(this.f5867a != 2);
        int size = this.f5868b.size();
        for (int i = 0; i < size; i++) {
            C1196z zVar = this.f5868b.get(i);
            if ((zVar.m34291c() == -9223372036854775807L) || !(zVar.m34291c() == 0 || zVar.m34295a() == j2)) {
                zVar.m34289d();
                zVar.m34290c(j2);
            }
        }
        if (!(j2 == 0 || (d0Var = this.f5876j) == null)) {
            d0Var.m33665b(j2);
        }
        this.f5869c.m34336z();
        this.f5870d.clear();
        for (int i2 = 0; i2 < this.f5872f.size(); i2++) {
            this.f5872f.valueAt(i2).mo33157a();
        }
        this.f5883q = 0;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32614a(AbstractC1352i iVar) {
        this.f5877k = iVar;
    }

    /* renamed from: a */
    public final boolean m33274a(int i) {
        boolean z = false;
        if (this.f5867a == 2 || this.f5879m || !this.f5874h.get(i, false)) {
            z = true;
        }
        return z;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public boolean mo32616a(AbstractC1351h hVar) throws IOException, InterruptedException {
        boolean z;
        byte[] bArr = this.f5869c.f4738a;
        hVar.mo33619a(bArr, 0, 940);
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
                hVar.mo33613c(i);
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final int m33268b() throws ParserException {
        int c = this.f5869c.m34363c();
        int d = this.f5869c.m34361d();
        int a = C1468i0.m33223a(this.f5869c.f4738a, c, d);
        this.f5869c.m34358e(a);
        int i = a + 188;
        if (i > d) {
            int i2 = this.f5883q + (a - c);
            this.f5883q = i2;
            if (this.f5867a == 2 && i2 > 376) {
                throw new ParserException("Cannot find sync byte. Most likely not a Transport Stream.");
            }
        } else {
            this.f5883q = 0;
        }
        return i;
    }

    /* renamed from: b */
    public final boolean m33267b(AbstractC1351h hVar) throws IOException, InterruptedException {
        C1184p pVar = this.f5869c;
        byte[] bArr = pVar.f4738a;
        if (9400 - pVar.m34363c() < 188) {
            int a = this.f5869c.m34372a();
            if (a > 0) {
                System.arraycopy(bArr, this.f5869c.m34363c(), bArr, 0, a);
            }
            this.f5869c.m34367a(bArr, a);
        }
        while (this.f5869c.m34372a() < 188) {
            int d = this.f5869c.m34361d();
            int read = hVar.read(bArr, d, 9400 - d);
            if (read == -1) {
                return false;
            }
            this.f5869c.m34360d(d + read);
        }
        return true;
    }

    /* renamed from: c */
    public final void m33264c() {
        this.f5873g.clear();
        this.f5872f.clear();
        SparseArray<AbstractC1462h0> a = this.f5871e.mo33222a();
        int size = a.size();
        for (int i = 0; i < size; i++) {
            this.f5872f.put(a.keyAt(i), a.valueAt(i));
        }
        this.f5872f.put(0, new C1445a0(new C1459a()));
        this.f5882p = null;
    }
}
