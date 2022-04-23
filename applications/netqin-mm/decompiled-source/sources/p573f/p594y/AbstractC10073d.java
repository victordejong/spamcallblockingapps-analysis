package p573f.p594y;

import p573f.p587u.C10015b;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.y.d */
/* loaded from: classes2-dex2jar.jar:f/y/d.class */
public abstract class AbstractC10073d {

    /* renamed from: b */
    public static final C10075b f37198b = new C10075b(null);

    /* renamed from: a */
    public static final AbstractC10073d f37197a = C10015b.f37171a.m1671a();

    /* renamed from: f.y.d$a */
    /* loaded from: classes2-dex2jar.jar:f/y/d$a.class */
    public static final class C10074a extends AbstractC10073d {

        /* renamed from: c */
        public static final C10074a f37199c = new C10074a();

        @Override // p573f.p594y.AbstractC10073d
        /* renamed from: a */
        public int mo1591a(int i) {
            return AbstractC10073d.f37198b.mo1591a(i);
        }
    }

    /* renamed from: f.y.d$b */
    /* loaded from: classes2-dex2jar.jar:f/y/d$b.class */
    public static final class C10075b extends AbstractC10073d {
        public C10075b() {
        }

        public /* synthetic */ C10075b(C10057o oVar) {
            this();
        }

        @Override // p573f.p594y.AbstractC10073d
        /* renamed from: a */
        public int mo1591a(int i) {
            return AbstractC10073d.f37197a.mo1591a(i);
        }

        @Override // p573f.p594y.AbstractC10073d
        /* renamed from: a */
        public int mo1590a(int i, int i2) {
            return AbstractC10073d.f37197a.mo1590a(i, i2);
        }

        @Override // p573f.p594y.AbstractC10073d
        /* renamed from: a */
        public boolean mo1592a() {
            return AbstractC10073d.f37197a.mo1592a();
        }

        @Override // p573f.p594y.AbstractC10073d
        /* renamed from: a */
        public byte[] mo1589a(byte[] bArr) {
            C10059q.m1637b(bArr, "array");
            return AbstractC10073d.f37197a.mo1589a(bArr);
        }

        @Override // p573f.p594y.AbstractC10073d
        /* renamed from: a */
        public byte[] mo1588a(byte[] bArr, int i, int i2) {
            C10059q.m1637b(bArr, "array");
            return AbstractC10073d.f37197a.mo1588a(bArr, i, i2);
        }

        @Override // p573f.p594y.AbstractC10073d
        /* renamed from: b */
        public double mo1587b() {
            return AbstractC10073d.f37197a.mo1587b();
        }

        @Override // p573f.p594y.AbstractC10073d
        /* renamed from: b */
        public int mo1586b(int i) {
            return AbstractC10073d.f37197a.mo1586b(i);
        }

        @Override // p573f.p594y.AbstractC10073d
        /* renamed from: c */
        public float mo1585c() {
            return AbstractC10073d.f37197a.mo1585c();
        }

        @Override // p573f.p594y.AbstractC10073d
        /* renamed from: d */
        public int mo1584d() {
            return AbstractC10073d.f37197a.mo1584d();
        }

        @Override // p573f.p594y.AbstractC10073d
        /* renamed from: e */
        public long mo1583e() {
            return AbstractC10073d.f37197a.mo1583e();
        }
    }

    static {
        C10074a aVar = C10074a.f37199c;
    }

    /* renamed from: a */
    public abstract int mo1591a(int i);

    /* renamed from: a */
    public int mo1590a(int i, int i2) {
        int i3;
        int d;
        C10076e.m1581a(i, i2);
        int i4 = i2 - i;
        if (i4 > 0 || i4 == Integer.MIN_VALUE) {
            if (((-i4) & i4) == i4) {
                i3 = mo1591a(C10076e.m1582a(i4));
            } else {
                do {
                    d = mo1584d() >>> 1;
                    i3 = d % i4;
                } while ((d - i3) + (i4 - 1) < 0);
            }
            return i + i3;
        }
        while (true) {
            int d2 = mo1584d();
            if (i <= d2 && i2 > d2) {
                return d2;
            }
        }
    }

    /* renamed from: a */
    public boolean mo1592a() {
        boolean z = true;
        if (mo1591a(1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public byte[] mo1589a(byte[] bArr) {
        C10059q.m1637b(bArr, "array");
        return mo1588a(bArr, 0, bArr.length);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0102  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] mo1588a(byte[] r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p573f.p594y.AbstractC10073d.mo1588a(byte[], int, int):byte[]");
    }

    /* renamed from: b */
    public double mo1587b() {
        return C10072c.m1594a(mo1591a(26), mo1591a(27));
    }

    /* renamed from: b */
    public int mo1586b(int i) {
        return mo1590a(0, i);
    }

    /* renamed from: c */
    public float mo1585c() {
        return mo1591a(24) / 16777216;
    }

    /* renamed from: d */
    public int mo1584d() {
        return mo1591a(32);
    }

    /* renamed from: e */
    public long mo1583e() {
        return (mo1584d() << 32) + mo1584d();
    }
}
