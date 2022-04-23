package p599h;

import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.Protocol;
import okhttp3.TlsVersion;
import okio.ByteString;
import p599h.C10091a0;
import p599h.C10234r;
import p599h.C10250y;
import p599h.p600d0.C10109c;
import p599h.p600d0.p601e.AbstractC10115b;
import p599h.p600d0.p601e.AbstractC10126f;
import p599h.p600d0.p601e.C10116c;
import p599h.p600d0.p601e.C10118d;
import p599h.p600d0.p603g.C10141e;
import p599h.p600d0.p603g.C10142f;
import p599h.p600d0.p603g.C10147k;
import p599h.p600d0.p606j.AbstractC10192a;
import p599h.p600d0.p607k.C10203f;
import p610i.AbstractC10263d;
import p610i.AbstractC10264e;
import p610i.AbstractC10265f;
import p610i.AbstractC10266g;
import p610i.AbstractC10280p;
import p610i.AbstractC10281q;
import p610i.C10260c;
import p610i.C10270k;
/* renamed from: h.c */
/* loaded from: classes2-dex2jar.jar:h/c.class */
public final class C10097c implements Closeable, Flushable {

    /* renamed from: a */
    public final AbstractC10126f f37253a;

    /* renamed from: b */
    public final C10118d f37254b;

    /* renamed from: c */
    public int f37255c;

    /* renamed from: d */
    public int f37256d;

    /* renamed from: e */
    public int f37257e;

    /* renamed from: f */
    public int f37258f;

    /* renamed from: g */
    public int f37259g;

    /* renamed from: h.c$a */
    /* loaded from: classes2-dex2jar.jar:h/c$a.class */
    public class C10098a implements AbstractC10126f {
        public C10098a() {
        }

        @Override // p599h.p600d0.p601e.AbstractC10126f
        /* renamed from: a */
        public AbstractC10115b mo1388a(C10091a0 a0Var) throws IOException {
            return C10097c.this.m1503a(a0Var);
        }

        @Override // p599h.p600d0.p601e.AbstractC10126f
        /* renamed from: a */
        public void mo1389a() {
            C10097c.this.m1504a();
        }

        @Override // p599h.p600d0.p601e.AbstractC10126f
        /* renamed from: a */
        public void mo1387a(C10091a0 a0Var, C10091a0 a0Var2) {
            C10097c.this.m1502a(a0Var, a0Var2);
        }

        @Override // p599h.p600d0.p601e.AbstractC10126f
        /* renamed from: a */
        public void mo1386a(C10116c cVar) {
            C10097c.this.m1501a(cVar);
        }

        @Override // p599h.p600d0.p601e.AbstractC10126f
        /* renamed from: a */
        public void mo1385a(C10250y yVar) throws IOException {
            C10097c.this.m1496b(yVar);
        }

        @Override // p599h.p600d0.p601e.AbstractC10126f
        /* renamed from: b */
        public C10091a0 mo1384b(C10250y yVar) throws IOException {
            return C10097c.this.m1498a(yVar);
        }
    }

    /* renamed from: h.c$b */
    /* loaded from: classes2-dex2jar.jar:h/c$b.class */
    public final class C10099b implements AbstractC10115b {

        /* renamed from: a */
        public final C10118d.C10121c f37261a;

        /* renamed from: b */
        public AbstractC10280p f37262b;

        /* renamed from: c */
        public AbstractC10280p f37263c;

        /* renamed from: d */
        public boolean f37264d;

        /* renamed from: h.c$b$a */
        /* loaded from: classes2-dex2jar.jar:h/c$b$a.class */
        public class C10100a extends AbstractC10265f {

            /* renamed from: b */
            public final /* synthetic */ C10097c f37266b;

            /* renamed from: c */
            public final /* synthetic */ C10118d.C10121c f37267c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10100a(AbstractC10280p pVar, C10097c cVar, C10118d.C10121c cVar2) {
                super(pVar);
                this.f37266b = cVar;
                this.f37267c = cVar2;
            }

            @Override // p610i.AbstractC10265f, p610i.AbstractC10280p, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                synchronized (C10097c.this) {
                    if (!C10099b.this.f37264d) {
                        C10099b.this.f37264d = true;
                        C10097c.this.f37255c++;
                        super.close();
                        this.f37267c.m1398b();
                    }
                }
            }
        }

        public C10099b(C10118d.C10121c cVar) {
            this.f37261a = cVar;
            AbstractC10280p a = cVar.m1399a(1);
            this.f37262b = a;
            this.f37263c = new C10100a(a, C10097c.this, cVar);
        }

        @Override // p599h.p600d0.p601e.AbstractC10115b
        /* renamed from: a */
        public AbstractC10280p mo1426a() {
            return this.f37263c;
        }

        @Override // p599h.p600d0.p601e.AbstractC10115b
        public void abort() {
            synchronized (C10097c.this) {
                if (!this.f37264d) {
                    this.f37264d = true;
                    C10097c.this.f37256d++;
                    C10109c.m1463a(this.f37262b);
                    try {
                        this.f37261a.m1400a();
                    } catch (IOException e) {
                    }
                }
            }
        }
    }

    /* renamed from: h.c$c */
    /* loaded from: classes2-dex2jar.jar:h/c$c.class */
    public static class C10101c extends AbstractC10095b0 {

        /* renamed from: a */
        public final C10118d.C10124e f37269a;

        /* renamed from: b */
        public final AbstractC10264e f37270b;

        /* renamed from: c */
        public final String f37271c;

        /* renamed from: d */
        public final String f37272d;

        /* renamed from: h.c$c$a */
        /* loaded from: classes2-dex2jar.jar:h/c$c$a.class */
        public class C10102a extends AbstractC10266g {

            /* renamed from: b */
            public final /* synthetic */ C10118d.C10124e f37273b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10102a(AbstractC10281q qVar, C10118d.C10124e eVar) {
                super(qVar);
                this.f37273b = eVar;
            }

            @Override // p610i.AbstractC10266g, p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.f37273b.close();
                super.close();
            }
        }

        public C10101c(C10118d.C10124e eVar, String str, String str2) {
            this.f37269a = eVar;
            this.f37271c = str;
            this.f37272d = str2;
            this.f37270b = C10270k.m753a(new C10102a(eVar.m1391a(1), eVar));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v0 */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2, types: [long] */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p599h.AbstractC10095b0
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long mo1302b() {
            /*
                r3 = this;
                r0 = -1
                r4 = r0
                r0 = r4
                r6 = r0
                r0 = r3
                java.lang.String r0 = r0.f37272d     // Catch: NumberFormatException -> 0x0017
                if (r0 == 0) goto L_0x0015
                r0 = r3
                java.lang.String r0 = r0.f37272d     // Catch: NumberFormatException -> 0x0017
                long r0 = java.lang.Long.parseLong(r0)     // Catch: NumberFormatException -> 0x0017
                r6 = r0
            L_0x0015:
                r0 = r6
                return r0
            L_0x0017:
                r8 = move-exception
                r0 = r4
                r6 = r0
                goto L_0x0015
            */
            throw new UnsupportedOperationException("Method not decompiled: p599h.C10097c.C10101c.mo1302b():long");
        }

        @Override // p599h.AbstractC10095b0
        /* renamed from: c */
        public C10240u mo1301c() {
            String str = this.f37271c;
            return str != null ? C10240u.m892b(str) : null;
        }

        @Override // p599h.AbstractC10095b0
        /* renamed from: d */
        public AbstractC10264e mo1300d() {
            return this.f37270b;
        }
    }

    /* renamed from: h.c$d */
    /* loaded from: classes2-dex2jar.jar:h/c$d.class */
    public static final class C10103d {

        /* renamed from: k */
        public static final String f37275k = C10203f.m1071d().m1087a() + "-Sent-Millis";

        /* renamed from: l */
        public static final String f37276l = C10203f.m1071d().m1087a() + "-Received-Millis";

        /* renamed from: a */
        public final String f37277a;

        /* renamed from: b */
        public final C10234r f37278b;

        /* renamed from: c */
        public final String f37279c;

        /* renamed from: d */
        public final Protocol f37280d;

        /* renamed from: e */
        public final int f37281e;

        /* renamed from: f */
        public final String f37282f;

        /* renamed from: g */
        public final C10234r f37283g;

        /* renamed from: h */
        public final C10233q f37284h;

        /* renamed from: i */
        public final long f37285i;

        /* renamed from: j */
        public final long f37286j;

        public C10103d(C10091a0 a0Var) {
            this.f37277a = a0Var.m1528n().m813g().toString();
            this.f37278b = C10141e.m1314e(a0Var);
            this.f37279c = a0Var.m1528n().m815e();
            this.f37280d = a0Var.m1530l();
            this.f37281e = a0Var.m1538d();
            this.f37282f = a0Var.m1534h();
            this.f37283g = a0Var.m1536f();
            this.f37284h = a0Var.m1537e();
            this.f37285i = a0Var.m1527p();
            this.f37286j = a0Var.m1529m();
        }

        public C10103d(AbstractC10281q qVar) throws IOException {
            try {
                AbstractC10264e a = C10270k.m753a(qVar);
                this.f37277a = a.mo732I1();
                this.f37279c = a.mo732I1();
                C10234r.C10235a aVar = new C10234r.C10235a();
                int a2 = C10097c.m1497a(a);
                for (int i = 0; i < a2; i++) {
                    aVar.m962a(a.mo732I1());
                }
                this.f37278b = aVar.m963a();
                C10147k a3 = C10147k.m1287a(a.mo732I1());
                this.f37280d = a3.f37463a;
                this.f37281e = a3.f37464b;
                this.f37282f = a3.f37465c;
                C10234r.C10235a aVar2 = new C10234r.C10235a();
                int a4 = C10097c.m1497a(a);
                for (int i2 = 0; i2 < a4; i2++) {
                    aVar2.m962a(a.mo732I1());
                }
                String b = aVar2.m960b(f37275k);
                String b2 = aVar2.m960b(f37276l);
                aVar2.m958c(f37275k);
                aVar2.m958c(f37276l);
                long j = 0;
                this.f37285i = b != null ? Long.parseLong(b) : 0L;
                this.f37286j = b2 != null ? Long.parseLong(b2) : j;
                this.f37283g = aVar2.m963a();
                if (m1495a()) {
                    String I1 = a.mo732I1();
                    if (I1.length() <= 0) {
                        this.f37284h = C10233q.m977a(!a.mo730M0() ? TlsVersion.forJavaName(a.mo732I1()) : TlsVersion.SSL_3_0, C10216h.m1048a(a.mo732I1()), m1490a(a), m1490a(a));
                    } else {
                        throw new IOException("expected \"\" but was \"" + I1 + "\"");
                    }
                } else {
                    this.f37284h = null;
                }
                qVar.close();
            } catch (Throwable th) {
                qVar.close();
                throw th;
            }
        }

        /* renamed from: a */
        public C10091a0 m1493a(C10118d.C10124e eVar) {
            String a = this.f37283g.m971a("Content-Type");
            String a2 = this.f37283g.m971a("Content-Length");
            C10250y.C10251a aVar = new C10250y.C10251a();
            aVar.m805b(this.f37277a);
            aVar.m807a(this.f37279c, (AbstractC10252z) null);
            aVar.m810a(this.f37278b);
            C10250y a3 = aVar.m812a();
            C10091a0.C10092a aVar2 = new C10091a0.C10092a();
            aVar2.m1519a(a3);
            aVar2.m1515a(this.f37280d);
            aVar2.m1525a(this.f37281e);
            aVar2.m1518a(this.f37282f);
            aVar2.m1520a(this.f37283g);
            aVar2.m1522a(new C10101c(eVar, a, a2));
            aVar2.m1521a(this.f37284h);
            aVar2.m1514b(this.f37285i);
            aVar2.m1524a(this.f37286j);
            return aVar2.m1526a();
        }

        /* renamed from: a */
        public final List<Certificate> m1490a(AbstractC10264e eVar) throws IOException {
            int a = C10097c.m1497a(eVar);
            if (a == -1) {
                return Collections.emptyList();
            }
            try {
                CertificateFactory instance = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(a);
                for (int i = 0; i < a; i++) {
                    String I1 = eVar.mo732I1();
                    C10260c cVar = new C10260c();
                    cVar.mo738a(ByteString.decodeBase64(I1));
                    arrayList.add(instance.generateCertificate(cVar.mo717e2()));
                }
                return arrayList;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        /* renamed from: a */
        public void m1494a(C10118d.C10121c cVar) throws IOException {
            AbstractC10263d a = C10270k.m754a(cVar.m1399a(0));
            a.mo734k(this.f37277a).writeByte(10);
            a.mo734k(this.f37279c).writeByte(10);
            a.mo735h(this.f37278b.m967b()).writeByte(10);
            int b = this.f37278b.m967b();
            for (int i = 0; i < b; i++) {
                a.mo734k(this.f37278b.m972a(i)).mo734k(": ").mo734k(this.f37278b.m966b(i)).writeByte(10);
            }
            a.mo734k(new C10147k(this.f37280d, this.f37281e, this.f37282f).toString()).writeByte(10);
            a.mo735h(this.f37283g.m967b() + 2).writeByte(10);
            int b2 = this.f37283g.m967b();
            for (int i2 = 0; i2 < b2; i2++) {
                a.mo734k(this.f37283g.m972a(i2)).mo734k(": ").mo734k(this.f37283g.m966b(i2)).writeByte(10);
            }
            a.mo734k(f37275k).mo734k(": ").mo735h(this.f37285i).writeByte(10);
            a.mo734k(f37276l).mo734k(": ").mo735h(this.f37286j).writeByte(10);
            if (m1495a()) {
                a.writeByte(10);
                a.mo734k(this.f37284h.m979a().m1049a()).writeByte(10);
                m1491a(a, this.f37284h.m975c());
                m1491a(a, this.f37284h.m976b());
                a.mo734k(this.f37284h.m974d().javaName()).writeByte(10);
            }
            a.close();
        }

        /* renamed from: a */
        public final void m1491a(AbstractC10263d dVar, List<Certificate> list) throws IOException {
            try {
                dVar.mo735h(list.size()).writeByte(10);
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    dVar.mo734k(ByteString.m3of(list.get(i).getEncoded()).base64()).writeByte(10);
                }
            } catch (CertificateEncodingException e) {
                throw new IOException(e.getMessage());
            }
        }

        /* renamed from: a */
        public final boolean m1495a() {
            return this.f37277a.startsWith("https://");
        }

        /* renamed from: a */
        public boolean m1492a(C10250y yVar, C10091a0 a0Var) {
            return this.f37277a.equals(yVar.m813g().toString()) && this.f37279c.equals(yVar.m815e()) && C10141e.m1327a(a0Var, this.f37278b, yVar);
        }
    }

    public C10097c(File file, long j) {
        this(file, j, AbstractC10192a.f37644a);
    }

    public C10097c(File file, long j, AbstractC10192a aVar) {
        this.f37253a = new C10098a();
        this.f37254b = C10118d.m1415a(aVar, file, 201105, 2, j);
    }

    /* renamed from: a */
    public static int m1497a(AbstractC10264e eVar) throws IOException {
        try {
            long c1 = eVar.mo720c1();
            String I1 = eVar.mo732I1();
            if (c1 >= 0 && c1 <= 2147483647L && I1.isEmpty()) {
                return (int) c1;
            }
            throw new IOException("expected an int but was \"" + c1 + I1 + "\"");
        } catch (NumberFormatException e) {
            throw new IOException(e.getMessage());
        }
    }

    /* renamed from: a */
    public static String m1499a(C10236s sVar) {
        return ByteString.encodeUtf8(sVar.toString()).md5().hex();
    }

    /* renamed from: a */
    public C10091a0 m1498a(C10250y yVar) {
        try {
            C10118d.C10124e b = this.f37254b.m1411b(m1499a(yVar.m813g()));
            if (b == null) {
                return null;
            }
            try {
                C10103d dVar = new C10103d(b.m1391a(0));
                C10091a0 a = dVar.m1493a(b);
                if (dVar.m1492a(yVar, a)) {
                    return a;
                }
                C10109c.m1463a(a.m1543a());
                return null;
            } catch (IOException e) {
                C10109c.m1463a(b);
                return null;
            }
        } catch (IOException e2) {
            return null;
        }
    }

    /* renamed from: a */
    public AbstractC10115b m1503a(C10091a0 a0Var) {
        C10118d.C10121c cVar;
        String e = a0Var.m1528n().m815e();
        if (C10142f.m1313a(a0Var.m1528n().m815e())) {
            try {
                m1496b(a0Var.m1528n());
                return null;
            } catch (IOException e2) {
                return null;
            }
        } else if (!e.equals("GET") || C10141e.m1317c(a0Var)) {
            return null;
        } else {
            C10103d dVar = new C10103d(a0Var);
            try {
                cVar = this.f37254b.m1414a(m1499a(a0Var.m1528n().m813g()));
                if (cVar == null) {
                    return null;
                }
                try {
                    dVar.m1494a(cVar);
                    return new C10099b(cVar);
                } catch (IOException e3) {
                    m1500a(cVar);
                    return null;
                }
            } catch (IOException e4) {
                cVar = null;
            }
        }
    }

    /* renamed from: a */
    public void m1504a() {
        synchronized (this) {
            this.f37258f++;
        }
    }

    /* renamed from: a */
    public void m1502a(C10091a0 a0Var, C10091a0 a0Var2) {
        C10118d.C10121c cVar;
        C10103d dVar = new C10103d(a0Var2);
        try {
            cVar = ((C10101c) a0Var.m1543a()).f37269a.m1392a();
            if (cVar != null) {
                try {
                    dVar.m1494a(cVar);
                    cVar.m1398b();
                } catch (IOException e) {
                    m1500a(cVar);
                }
            }
        } catch (IOException e2) {
            cVar = null;
        }
    }

    /* renamed from: a */
    public void m1501a(C10116c cVar) {
        synchronized (this) {
            this.f37259g++;
            if (cVar.f37338a != null) {
                this.f37257e++;
            } else if (cVar.f37339b != null) {
                this.f37258f++;
            }
        }
    }

    /* renamed from: a */
    public final void m1500a(C10118d.C10121c cVar) {
        if (cVar != null) {
            try {
                cVar.m1400a();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: b */
    public void m1496b(C10250y yVar) throws IOException {
        this.f37254b.m1407d(m1499a(yVar.m813g()));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f37254b.close();
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.f37254b.flush();
    }
}
