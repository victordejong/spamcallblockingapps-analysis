package p459j.p460a.p474c0.p499h.p500x0;

import androidx.media2.exoplayer.external.C0463C;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: j.a.c0.h.x0.f */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/x0/f.class */
public class C12231f {

    /* renamed from: r */
    public static final Charset f27542r = Charset.forName(C0463C.ASCII_NAME);

    /* renamed from: s */
    public static final short f27543s = C12227c.m6663i(C12227c.f27416F);

    /* renamed from: t */
    public static final short f27544t = C12227c.m6663i(C12227c.f27418G);

    /* renamed from: u */
    public static final short f27545u = C12227c.m6663i(C12227c.f27501p0);

    /* renamed from: v */
    public static final short f27546v = C12227c.m6663i(C12227c.f27420H);

    /* renamed from: w */
    public static final short f27547w = C12227c.m6663i(C12227c.f27422I);

    /* renamed from: x */
    public static final short f27548x = C12227c.m6663i(C12227c.f27488l);

    /* renamed from: y */
    public static final short f27549y = C12227c.m6663i(C12227c.f27500p);

    /* renamed from: a */
    public final C12225a f27550a;

    /* renamed from: b */
    public final int f27551b;

    /* renamed from: e */
    public int f27554e;

    /* renamed from: f */
    public C12236h f27555f;

    /* renamed from: g */
    public C12234c f27556g;

    /* renamed from: h */
    public C12236h f27557h;

    /* renamed from: i */
    public C12236h f27558i;

    /* renamed from: j */
    public boolean f27559j;

    /* renamed from: k */
    public boolean f27560k;

    /* renamed from: l */
    public int f27561l;

    /* renamed from: m */
    public byte[] f27562m;

    /* renamed from: n */
    public int f27563n;

    /* renamed from: o */
    public int f27564o;

    /* renamed from: p */
    public final C12227c f27565p;

    /* renamed from: c */
    public int f27552c = 0;

    /* renamed from: d */
    public int f27553d = 0;

    /* renamed from: q */
    public final TreeMap<Integer, Object> f27566q = new TreeMap<>();

    /* renamed from: j.a.c0.h.x0.f$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/x0/f$a.class */
    public static class C12232a {

        /* renamed from: a */
        public C12236h f27567a;

        /* renamed from: b */
        public boolean f27568b;

        public C12232a(C12236h hVar, boolean z) {
            this.f27567a = hVar;
            this.f27568b = z;
        }
    }

    /* renamed from: j.a.c0.h.x0.f$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/x0/f$b.class */
    public static class C12233b {

        /* renamed from: a */
        public int f27569a;

        /* renamed from: b */
        public boolean f27570b;

        public C12233b(int i, boolean z) {
            this.f27569a = i;
            this.f27570b = z;
        }
    }

    /* renamed from: j.a.c0.h.x0.f$c */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/x0/f$c.class */
    public static class C12234c {

        /* renamed from: a */
        public int f27571a;

        /* renamed from: b */
        public int f27572b;

        public C12234c(int i) {
            this.f27571a = 0;
            this.f27572b = i;
        }

        public C12234c(int i, int i2) {
            this.f27572b = i;
            this.f27571a = i2;
        }
    }

    public C12231f(InputStream inputStream, int i, C12227c cVar) throws IOException, C12229d {
        this.f27560k = false;
        if (inputStream != null) {
            this.f27565p = cVar;
            this.f27560k = m6643a(inputStream);
            this.f27550a = new C12225a(inputStream);
            this.f27551b = i;
            if (this.f27560k) {
                m6627j();
                long c = this.f27550a.m6708c();
                if (c <= 2147483647L) {
                    int i2 = (int) c;
                    this.f27563n = i2;
                    this.f27554e = 0;
                    if (m6649a(0) || m6629h()) {
                        m6647a(0, c);
                        if (c != 8) {
                            this.f27562m = new byte[i2 - 8];
                            m6641a(this.f27562m);
                            return;
                        }
                        return;
                    }
                    return;
                }
                throw new C12229d("Invalid offset " + c);
            }
            return;
        }
        throw new IOException("Null argument inputStream to ExifParser");
    }

    /* renamed from: a */
    public static C12231f m6642a(InputStream inputStream, C12227c cVar) throws IOException, C12229d {
        return new C12231f(inputStream, 63, cVar);
    }

    /* renamed from: a */
    public int m6641a(byte[] bArr) throws IOException {
        return this.f27550a.read(bArr);
    }

    /* renamed from: a */
    public String m6646a(int i, Charset charset) throws IOException {
        return i > 0 ? this.f27550a.m6713a(i, charset) : "";
    }

    /* renamed from: a */
    public ByteOrder m6650a() {
        return this.f27550a.m6714a();
    }

    /* renamed from: a */
    public final void m6647a(int i, long j) {
        this.f27566q.put(Integer.valueOf((int) j), new C12233b(i, m6649a(i)));
    }

    /* renamed from: a */
    public final void m6645a(long j) {
        this.f27566q.put(Integer.valueOf((int) j), new C12234c(3));
    }

    /* renamed from: a */
    public final void m6644a(C12236h hVar) {
        if (hVar.m6608b() != 0) {
            short h = hVar.m6587h();
            int e = hVar.m6593e();
            if (h != f27543s || !m6648a(e, C12227c.f27416F)) {
                if (h != f27544t || !m6648a(e, C12227c.f27418G)) {
                    if (h != f27545u || !m6648a(e, C12227c.f27501p0)) {
                        if (h != f27546v || !m6648a(e, C12227c.f27420H)) {
                            if (h != f27547w || !m6648a(e, C12227c.f27422I)) {
                                if (h != f27548x || !m6648a(e, C12227c.f27488l)) {
                                    if (h == f27549y && m6648a(e, C12227c.f27500p) && m6630g() && hVar.m6582l()) {
                                        this.f27557h = hVar;
                                    }
                                } else if (m6630g()) {
                                    if (hVar.m6582l()) {
                                        for (int i = 0; i < hVar.m6608b(); i++) {
                                            if (hVar.m6595d() == 3) {
                                                m6638b(i, hVar.m6594d(i));
                                            } else {
                                                m6638b(i, hVar.m6594d(i));
                                            }
                                        }
                                        return;
                                    }
                                    this.f27566q.put(Integer.valueOf(hVar.m6591f()), new C12232a(hVar, false));
                                }
                            } else if (m6630g()) {
                                this.f27558i = hVar;
                            }
                        } else if (m6630g()) {
                            m6645a(hVar.m6594d(0));
                        }
                    } else if (m6649a(3)) {
                        m6647a(3, hVar.m6594d(0));
                    }
                } else if (m6649a(4)) {
                    m6647a(4, hVar.m6594d(0));
                }
            } else if (m6649a(2) || m6649a(3)) {
                m6647a(2, hVar.m6594d(0));
            }
        }
    }

    /* renamed from: a */
    public final boolean m6649a(int i) {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        if (i == 0) {
            if ((this.f27551b & 1) != 0) {
                z4 = true;
            }
            return z4;
        } else if (i == 1) {
            if ((this.f27551b & 2) != 0) {
                z3 = true;
            }
            return z3;
        } else if (i == 2) {
            if ((this.f27551b & 4) != 0) {
                z2 = true;
            }
            return z2;
        } else if (i == 3) {
            if ((this.f27551b & 16) != 0) {
                z = true;
            }
            return z;
        } else if (i != 4) {
            return false;
        } else {
            if ((this.f27551b & 8) != 0) {
                z5 = true;
            }
            return z5;
        }
    }

    /* renamed from: a */
    public final boolean m6648a(int i, int i2) {
        int i3 = this.f27565p.m6676b().get(i2);
        if (i3 == 0) {
            return false;
        }
        return C12227c.m6668d(i3, i);
    }

    /* renamed from: a */
    public final boolean m6643a(InputStream inputStream) throws IOException, C12229d {
        C12225a aVar = new C12225a(inputStream);
        if (aVar.readShort() == -40) {
            for (short readShort = aVar.readShort(); readShort != -39 && !C12238j.m6572a(readShort); readShort = aVar.readShort()) {
                int d = aVar.m6707d();
                int i = d;
                if (readShort == -31) {
                    i = d;
                    if (d >= 8) {
                        int readInt = aVar.readInt();
                        short readShort2 = aVar.readShort();
                        int i2 = d - 6;
                        i = i2;
                        if (readInt == 1165519206) {
                            i = i2;
                            if (readShort2 == 0) {
                                this.f27564o = aVar.m6709b();
                                this.f27561l = i2;
                                return true;
                            }
                        }
                    }
                }
                if (i < 2) {
                    return false;
                }
                long j = i - 2;
                if (j != aVar.skip(j)) {
                    return false;
                }
            }
            return false;
        }
        throw new C12229d("Invalid JPEG format");
    }

    /* renamed from: b */
    public int m6640b() {
        C12236h hVar = this.f27558i;
        if (hVar == null) {
            return 0;
        }
        return (int) hVar.m6594d(0);
    }

    /* renamed from: b */
    public String m6639b(int i) throws IOException {
        return m6646a(i, f27542r);
    }

    /* renamed from: b */
    public final void m6638b(int i, long j) {
        this.f27566q.put(Integer.valueOf((int) j), new C12234c(4, i));
    }

    /* renamed from: b */
    public void m6637b(C12236h hVar) throws IOException {
        short d = hVar.m6595d();
        if (d == 2 || d == 7 || d == 1) {
            int b = hVar.m6608b();
            if (this.f27566q.size() > 0 && this.f27566q.firstEntry().getKey().intValue() < this.f27550a.m6709b() + b) {
                Object value = this.f27566q.firstEntry().getValue();
                if (value instanceof C12234c) {
                    String str = "Thumbnail overlaps value for tag: \n" + hVar.toString();
                    Map.Entry<Integer, Object> pollFirstEntry = this.f27566q.pollFirstEntry();
                    String str2 = "Invalid thumbnail offset: " + pollFirstEntry.getKey();
                } else {
                    if (value instanceof C12233b) {
                        String str3 = "Ifd " + ((C12233b) value).f27569a + " overlaps value for tag: \n" + hVar.toString();
                    } else if (value instanceof C12232a) {
                        String str4 = "Tag value for tag: \n" + ((C12232a) value).f27567a.toString() + " overlaps value for tag: \n" + hVar.toString();
                    }
                    int intValue = this.f27566q.firstEntry().getKey().intValue() - this.f27550a.m6709b();
                    String str5 = "Invalid size of tag: \n" + hVar.toString() + " setting count to: " + intValue;
                    hVar.m6607b(intValue);
                }
            }
        }
        switch (hVar.m6595d()) {
            case 1:
            case 7:
                byte[] bArr = new byte[hVar.m6608b()];
                m6641a(bArr);
                hVar.m6605b(bArr);
                return;
            case 2:
                hVar.m6616a(m6639b(hVar.m6608b()));
                return;
            case 3:
                int[] iArr = new int[hVar.m6608b()];
                int length = iArr.length;
                for (int i = 0; i < length; i++) {
                    iArr[i] = m6621p();
                }
                hVar.m6597c(iArr);
                return;
            case 4:
                long[] jArr = new long[hVar.m6608b()];
                int length2 = jArr.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    jArr[i2] = m6623n();
                }
                hVar.m6602b(jArr);
                return;
            case 5:
                C12240l[] lVarArr = new C12240l[hVar.m6608b()];
                int length3 = lVarArr.length;
                for (int i3 = 0; i3 < length3; i3++) {
                    lVarArr[i3] = m6622o();
                }
                hVar.m6596c(lVarArr);
                return;
            case 6:
            case 8:
            default:
                return;
            case 9:
                int[] iArr2 = new int[hVar.m6608b()];
                int length4 = iArr2.length;
                for (int i4 = 0; i4 < length4; i4++) {
                    iArr2[i4] = m6626k();
                }
                hVar.m6597c(iArr2);
                return;
            case 10:
                C12240l[] lVarArr2 = new C12240l[hVar.m6608b()];
                int length5 = lVarArr2.length;
                for (int i5 = 0; i5 < length5; i5++) {
                    lVarArr2[i5] = m6625l();
                }
                hVar.m6596c(lVarArr2);
                return;
        }
    }

    /* renamed from: c */
    public int m6636c() {
        return this.f27554e;
    }

    /* renamed from: c */
    public final void m6635c(int i) throws IOException {
        this.f27550a.m6705h(i);
        while (!this.f27566q.isEmpty() && this.f27566q.firstKey().intValue() < i) {
            this.f27566q.pollFirstEntry();
        }
    }

    /* renamed from: c */
    public void m6634c(C12236h hVar) {
        if (hVar.m6591f() >= this.f27550a.m6709b()) {
            this.f27566q.put(Integer.valueOf(hVar.m6591f()), new C12232a(hVar, true));
        }
    }

    /* renamed from: d */
    public int m6633d() {
        return this.f27556g.f27571a;
    }

    /* renamed from: e */
    public int m6632e() {
        C12236h hVar = this.f27557h;
        if (hVar == null) {
            return 0;
        }
        return (int) hVar.m6594d(0);
    }

    /* renamed from: f */
    public C12236h m6631f() {
        return this.f27555f;
    }

    /* renamed from: g */
    public final boolean m6630g() {
        return (this.f27551b & 32) != 0;
    }

    /* renamed from: h */
    public final boolean m6629h() {
        int i = this.f27554e;
        boolean z = false;
        if (i == 0) {
            if (m6649a(2) || m6649a(4) || m6649a(3) || m6649a(1)) {
                z = true;
            }
            return z;
        } else if (i == 1) {
            return m6630g();
        } else {
            if (i != 2) {
                return false;
            }
            return m6649a(3);
        }
    }

    /* renamed from: i */
    public int m6628i() throws IOException, C12229d {
        if (!this.f27560k) {
            return 5;
        }
        int b = this.f27550a.m6709b();
        int i = this.f27552c + 2 + (this.f27553d * 12);
        if (b < i) {
            this.f27555f = m6624m();
            C12236h hVar = this.f27555f;
            if (hVar == null) {
                return m6628i();
            }
            if (!this.f27559j) {
                return 1;
            }
            m6644a(hVar);
            return 1;
        }
        if (b == i) {
            if (this.f27554e == 0) {
                long n = m6623n();
                if ((m6649a(1) || m6630g()) && n != 0) {
                    m6647a(1, n);
                }
            } else {
                int intValue = this.f27566q.size() > 0 ? this.f27566q.firstEntry().getKey().intValue() - this.f27550a.m6709b() : 4;
                if (intValue < 4) {
                    String str = "Invalid size of link to next IFD: " + intValue;
                } else {
                    long n2 = m6623n();
                    if (n2 != 0) {
                        String str2 = "Invalid link to next IFD: " + n2;
                    }
                }
            }
        }
        while (this.f27566q.size() != 0) {
            Map.Entry<Integer, Object> pollFirstEntry = this.f27566q.pollFirstEntry();
            Object value = pollFirstEntry.getValue();
            try {
                m6635c(pollFirstEntry.getKey().intValue());
                if (value instanceof C12233b) {
                    C12233b bVar = (C12233b) value;
                    this.f27554e = bVar.f27569a;
                    this.f27553d = this.f27550a.m6707d();
                    this.f27552c = pollFirstEntry.getKey().intValue();
                    if ((this.f27553d * 12) + this.f27552c + 2 > this.f27561l) {
                        String str3 = "Invalid size of IFD " + this.f27554e;
                        return 5;
                    }
                    this.f27559j = m6629h();
                    if (bVar.f27570b) {
                        return 0;
                    }
                    m6620q();
                } else if (value instanceof C12234c) {
                    this.f27556g = (C12234c) value;
                    return this.f27556g.f27572b;
                } else {
                    C12232a aVar = (C12232a) value;
                    this.f27555f = aVar.f27567a;
                    if (this.f27555f.m6595d() != 7) {
                        m6637b(this.f27555f);
                        m6644a(this.f27555f);
                    }
                    if (aVar.f27568b) {
                        return 2;
                    }
                }
            } catch (IOException e) {
                String str4 = "Failed to skip to data at: " + pollFirstEntry.getKey() + " for " + value.getClass().getName() + ", the file may be broken.";
            }
        }
        return 5;
    }

    /* renamed from: j */
    public final void m6627j() throws IOException, C12229d {
        short readShort = this.f27550a.readShort();
        if (18761 == readShort) {
            this.f27550a.m6712a(ByteOrder.LITTLE_ENDIAN);
        } else if (19789 == readShort) {
            this.f27550a.m6712a(ByteOrder.BIG_ENDIAN);
        } else {
            throw new C12229d("Invalid TIFF header");
        }
        if (this.f27550a.readShort() != 42) {
            throw new C12229d("Invalid TIFF header");
        }
    }

    /* renamed from: k */
    public int m6626k() throws IOException {
        return this.f27550a.readInt();
    }

    /* renamed from: l */
    public C12240l m6625l() throws IOException {
        return new C12240l(m6626k(), m6626k());
    }

    /* renamed from: m */
    public final C12236h m6624m() throws IOException, C12229d {
        short readShort = this.f27550a.readShort();
        short readShort2 = this.f27550a.readShort();
        long c = this.f27550a.m6708c();
        if (c > 2147483647L) {
            throw new C12229d("Number of component is larger then Integer.MAX_VALUE");
        } else if (!C12236h.m6598c(readShort2)) {
            String.format("Tag %04x: Invalid data type %d", Short.valueOf(readShort), Short.valueOf(readShort2));
            this.f27550a.skip(4L);
            return null;
        } else {
            int i = (int) c;
            C12236h hVar = new C12236h(readShort, readShort2, i, this.f27554e, i != 0);
            int c2 = hVar.m6600c();
            if (c2 > 4) {
                long c3 = this.f27550a.m6708c();
                if (c3 > 2147483647L) {
                    throw new C12229d("offset is larger then Integer.MAX_VALUE");
                } else if (c3 >= this.f27563n || readShort2 != 7) {
                    hVar.m6590f((int) c3);
                } else {
                    byte[] bArr = new byte[i];
                    System.arraycopy(this.f27562m, ((int) c3) - 8, bArr, 0, i);
                    hVar.m6605b(bArr);
                }
            } else {
                boolean k = hVar.m6583k();
                hVar.m6614a(false);
                m6637b(hVar);
                hVar.m6614a(k);
                this.f27550a.skip(4 - c2);
                hVar.m6590f(this.f27550a.m6709b() - 4);
            }
            return hVar;
        }
    }

    /* renamed from: n */
    public long m6623n() throws IOException {
        return m6626k() & 4294967295L;
    }

    /* renamed from: o */
    public C12240l m6622o() throws IOException {
        return new C12240l(m6623n(), m6623n());
    }

    /* renamed from: p */
    public int m6621p() throws IOException {
        return this.f27550a.readShort() & 65535;
    }

    /* renamed from: q */
    public void m6620q() throws IOException, C12229d {
        int i = this.f27552c + 2 + (this.f27553d * 12);
        int b = this.f27550a.m6709b();
        if (b <= i) {
            if (this.f27559j) {
                while (b < i) {
                    this.f27555f = m6624m();
                    b += 12;
                    C12236h hVar = this.f27555f;
                    if (hVar != null) {
                        m6644a(hVar);
                    }
                }
            } else {
                m6635c(i);
            }
            long n = m6623n();
            if (this.f27554e != 0) {
                return;
            }
            if ((m6649a(1) || m6630g()) && n > 0) {
                m6647a(1, n);
            }
        }
    }
}
