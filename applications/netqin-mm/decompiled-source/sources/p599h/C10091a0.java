package p599h;

import java.io.Closeable;
import okhttp3.Protocol;
import p599h.C10234r;
/* renamed from: h.a0 */
/* loaded from: classes2-dex2jar.jar:h/a0.class */
public final class C10091a0 implements Closeable {

    /* renamed from: a */
    public final C10250y f37224a;

    /* renamed from: b */
    public final Protocol f37225b;

    /* renamed from: c */
    public final int f37226c;

    /* renamed from: d */
    public final String f37227d;

    /* renamed from: e */
    public final C10233q f37228e;

    /* renamed from: f */
    public final C10234r f37229f;

    /* renamed from: g */
    public final AbstractC10095b0 f37230g;

    /* renamed from: h */
    public final C10091a0 f37231h;

    /* renamed from: i */
    public final C10091a0 f37232i;

    /* renamed from: j */
    public final C10091a0 f37233j;

    /* renamed from: k */
    public final long f37234k;

    /* renamed from: l */
    public final long f37235l;

    /* renamed from: m */
    public volatile C10105d f37236m;

    /* renamed from: h.a0$a */
    /* loaded from: classes2-dex2jar.jar:h/a0$a.class */
    public static class C10092a {

        /* renamed from: a */
        public C10250y f37237a;

        /* renamed from: b */
        public Protocol f37238b;

        /* renamed from: c */
        public int f37239c;

        /* renamed from: d */
        public String f37240d;

        /* renamed from: e */
        public C10233q f37241e;

        /* renamed from: f */
        public C10234r.C10235a f37242f;

        /* renamed from: g */
        public AbstractC10095b0 f37243g;

        /* renamed from: h */
        public C10091a0 f37244h;

        /* renamed from: i */
        public C10091a0 f37245i;

        /* renamed from: j */
        public C10091a0 f37246j;

        /* renamed from: k */
        public long f37247k;

        /* renamed from: l */
        public long f37248l;

        public C10092a() {
            this.f37239c = -1;
            this.f37242f = new C10234r.C10235a();
        }

        public C10092a(C10091a0 a0Var) {
            this.f37239c = -1;
            this.f37237a = a0Var.f37224a;
            this.f37238b = a0Var.f37225b;
            this.f37239c = a0Var.f37226c;
            this.f37240d = a0Var.f37227d;
            this.f37241e = a0Var.f37228e;
            this.f37242f = a0Var.f37229f.m973a();
            this.f37243g = a0Var.f37230g;
            this.f37244h = a0Var.f37231h;
            this.f37245i = a0Var.f37232i;
            this.f37246j = a0Var.f37233j;
            this.f37247k = a0Var.f37234k;
            this.f37248l = a0Var.f37235l;
        }

        /* renamed from: a */
        public C10092a m1525a(int i) {
            this.f37239c = i;
            return this;
        }

        /* renamed from: a */
        public C10092a m1524a(long j) {
            this.f37248l = j;
            return this;
        }

        /* renamed from: a */
        public C10092a m1523a(C10091a0 a0Var) {
            if (a0Var != null) {
                m1517a("cacheResponse", a0Var);
            }
            this.f37245i = a0Var;
            return this;
        }

        /* renamed from: a */
        public C10092a m1522a(AbstractC10095b0 b0Var) {
            this.f37243g = b0Var;
            return this;
        }

        /* renamed from: a */
        public C10092a m1521a(C10233q qVar) {
            this.f37241e = qVar;
            return this;
        }

        /* renamed from: a */
        public C10092a m1520a(C10234r rVar) {
            this.f37242f = rVar.m973a();
            return this;
        }

        /* renamed from: a */
        public C10092a m1519a(C10250y yVar) {
            this.f37237a = yVar;
            return this;
        }

        /* renamed from: a */
        public C10092a m1518a(String str) {
            this.f37240d = str;
            return this;
        }

        /* renamed from: a */
        public C10092a m1516a(String str, String str2) {
            this.f37242f.m961a(str, str2);
            return this;
        }

        /* renamed from: a */
        public C10092a m1515a(Protocol protocol) {
            this.f37238b = protocol;
            return this;
        }

        /* renamed from: a */
        public C10091a0 m1526a() {
            if (this.f37237a == null) {
                throw new IllegalStateException("request == null");
            } else if (this.f37238b == null) {
                throw new IllegalStateException("protocol == null");
            } else if (this.f37239c < 0) {
                throw new IllegalStateException("code < 0: " + this.f37239c);
            } else if (this.f37240d != null) {
                return new C10091a0(this);
            } else {
                throw new IllegalStateException("message == null");
            }
        }

        /* renamed from: a */
        public final void m1517a(String str, C10091a0 a0Var) {
            if (a0Var.f37230g != null) {
                throw new IllegalArgumentException(str + ".body != null");
            } else if (a0Var.f37231h != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            } else if (a0Var.f37232i != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            } else if (a0Var.f37233j != null) {
                throw new IllegalArgumentException(str + ".priorResponse != null");
            }
        }

        /* renamed from: b */
        public C10092a m1514b(long j) {
            this.f37247k = j;
            return this;
        }

        /* renamed from: b */
        public C10092a m1512b(String str, String str2) {
            this.f37242f.m957c(str, str2);
            return this;
        }

        /* renamed from: b */
        public final void m1513b(C10091a0 a0Var) {
            if (a0Var.f37230g != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        /* renamed from: c */
        public C10092a m1511c(C10091a0 a0Var) {
            if (a0Var != null) {
                m1517a("networkResponse", a0Var);
            }
            this.f37244h = a0Var;
            return this;
        }

        /* renamed from: d */
        public C10092a m1510d(C10091a0 a0Var) {
            if (a0Var != null) {
                m1513b(a0Var);
            }
            this.f37246j = a0Var;
            return this;
        }
    }

    public C10091a0(C10092a aVar) {
        this.f37224a = aVar.f37237a;
        this.f37225b = aVar.f37238b;
        this.f37226c = aVar.f37239c;
        this.f37227d = aVar.f37240d;
        this.f37228e = aVar.f37241e;
        this.f37229f = aVar.f37242f.m963a();
        this.f37230g = aVar.f37243g;
        this.f37231h = aVar.f37244h;
        this.f37232i = aVar.f37245i;
        this.f37233j = aVar.f37246j;
        this.f37234k = aVar.f37247k;
        this.f37235l = aVar.f37248l;
    }

    /* renamed from: a */
    public AbstractC10095b0 m1543a() {
        return this.f37230g;
    }

    /* renamed from: a */
    public String m1542a(String str) {
        return m1541a(str, null);
    }

    /* renamed from: a */
    public String m1541a(String str, String str2) {
        String a = this.f37229f.m971a(str);
        if (a != null) {
            str2 = a;
        }
        return str2;
    }

    /* renamed from: b */
    public C10105d m1540b() {
        C10105d dVar = this.f37236m;
        if (dVar == null) {
            dVar = C10105d.m1484a(this.f37229f);
            this.f37236m = dVar;
        }
        return dVar;
    }

    /* renamed from: c */
    public C10091a0 m1539c() {
        return this.f37232i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        AbstractC10095b0 b0Var = this.f37230g;
        if (b0Var != null) {
            b0Var.close();
            return;
        }
        throw new IllegalStateException("response is not eligible for a body and must not be closed");
    }

    /* renamed from: d */
    public int m1538d() {
        return this.f37226c;
    }

    /* renamed from: e */
    public C10233q m1537e() {
        return this.f37228e;
    }

    /* renamed from: f */
    public C10234r m1536f() {
        return this.f37229f;
    }

    /* renamed from: g */
    public boolean m1535g() {
        int i = this.f37226c;
        return i >= 200 && i < 300;
    }

    /* renamed from: h */
    public String m1534h() {
        return this.f37227d;
    }

    /* renamed from: i */
    public C10091a0 m1533i() {
        return this.f37231h;
    }

    /* renamed from: j */
    public C10092a m1532j() {
        return new C10092a(this);
    }

    /* renamed from: k */
    public C10091a0 m1531k() {
        return this.f37233j;
    }

    /* renamed from: l */
    public Protocol m1530l() {
        return this.f37225b;
    }

    /* renamed from: m */
    public long m1529m() {
        return this.f37235l;
    }

    /* renamed from: n */
    public C10250y m1528n() {
        return this.f37224a;
    }

    /* renamed from: p */
    public long m1527p() {
        return this.f37234k;
    }

    public String toString() {
        return "Response{protocol=" + this.f37225b + ", code=" + this.f37226c + ", message=" + this.f37227d + ", url=" + this.f37224a.m813g() + '}';
    }
}
