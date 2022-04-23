package p599h.p600d0.p605i;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.Protocol;
import okhttp3.internal.http2.ErrorCode;
import okio.ByteString;
import p599h.AbstractC10095b0;
import p599h.AbstractC10238t;
import p599h.C10091a0;
import p599h.C10234r;
import p599h.C10244w;
import p599h.C10250y;
import p599h.p600d0.AbstractC10107a;
import p599h.p600d0.C10109c;
import p599h.p600d0.p602f.C10133f;
import p599h.p600d0.p603g.AbstractC10138c;
import p599h.p600d0.p603g.C10141e;
import p599h.p600d0.p603g.C10144h;
import p599h.p600d0.p603g.C10145i;
import p599h.p600d0.p603g.C10147k;
import p610i.AbstractC10266g;
import p610i.AbstractC10280p;
import p610i.AbstractC10281q;
import p610i.C10260c;
import p610i.C10270k;
/* renamed from: h.d0.i.d */
/* loaded from: classes2-dex2jar.jar:h/d0/i/d.class */
public final class C10162d implements AbstractC10138c {

    /* renamed from: f */
    public static final List<String> f37521f = C10109c.m1444a("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");

    /* renamed from: g */
    public static final List<String> f37522g = C10109c.m1444a("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* renamed from: a */
    public final AbstractC10238t.AbstractC10239a f37523a;

    /* renamed from: b */
    public final C10133f f37524b;

    /* renamed from: c */
    public final C10164e f37525c;

    /* renamed from: d */
    public C10182g f37526d;

    /* renamed from: e */
    public final Protocol f37527e;

    /* renamed from: h.d0.i.d$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/d$a.class */
    public class C10163a extends AbstractC10266g {

        /* renamed from: b */
        public boolean f37528b = false;

        /* renamed from: c */
        public long f37529c = 0;

        public C10163a(AbstractC10281q qVar) {
            super(qVar);
        }

        /* renamed from: a */
        public final void m1235a(IOException iOException) {
            if (!this.f37528b) {
                this.f37528b = true;
                C10162d dVar = C10162d.this;
                dVar.f37524b.m1342a(false, dVar, this.f37529c, iOException);
            }
        }

        @Override // p610i.AbstractC10266g, p610i.AbstractC10281q
        /* renamed from: b */
        public long mo704b(C10260c cVar, long j) throws IOException {
            try {
                long b = m764a().mo704b(cVar, j);
                if (b > 0) {
                    this.f37529c += b;
                }
                return b;
            } catch (IOException e) {
                m1235a(e);
                throw e;
            }
        }

        @Override // p610i.AbstractC10266g, p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            m1235a(null);
        }
    }

    public C10162d(C10244w wVar, AbstractC10238t.AbstractC10239a aVar, C10133f fVar, C10164e eVar) {
        this.f37523a = aVar;
        this.f37524b = fVar;
        this.f37525c = eVar;
        this.f37527e = wVar.m880C().contains(Protocol.H2_PRIOR_KNOWLEDGE) ? Protocol.H2_PRIOR_KNOWLEDGE : Protocol.HTTP_2;
    }

    /* renamed from: a */
    public static C10091a0.C10092a m1241a(C10234r rVar, Protocol protocol) throws IOException {
        C10234r.C10235a aVar = new C10234r.C10235a();
        int b = rVar.m967b();
        C10147k kVar = null;
        for (int i = 0; i < b; i++) {
            String a = rVar.m972a(i);
            String b2 = rVar.m966b(i);
            if (a.equals(":status")) {
                kVar = C10147k.m1287a("HTTP/1.1 " + b2);
            } else {
                kVar = kVar;
                if (!f37522g.contains(a)) {
                    AbstractC10107a.f37312a.mo842a(aVar, a, b2);
                    kVar = kVar;
                }
            }
        }
        if (kVar != null) {
            C10091a0.C10092a aVar2 = new C10091a0.C10092a();
            aVar2.m1515a(protocol);
            aVar2.m1525a(kVar.f37464b);
            aVar2.m1518a(kVar.f37465c);
            aVar2.m1520a(aVar.m963a());
            return aVar2;
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    /* renamed from: b */
    public static List<C10156a> m1236b(C10250y yVar) {
        C10234r c = yVar.m817c();
        ArrayList arrayList = new ArrayList(c.m967b() + 4);
        arrayList.add(new C10156a(C10156a.f37491f, yVar.m815e()));
        arrayList.add(new C10156a(C10156a.f37492g, C10145i.m1299a(yVar.m813g())));
        String a = yVar.m820a("Host");
        if (a != null) {
            arrayList.add(new C10156a(C10156a.f37494i, a));
        }
        arrayList.add(new C10156a(C10156a.f37493h, yVar.m813g().m928m()));
        int b = c.m967b();
        for (int i = 0; i < b; i++) {
            ByteString encodeUtf8 = ByteString.encodeUtf8(c.m972a(i).toLowerCase(Locale.US));
            if (!f37521f.contains(encodeUtf8.utf8())) {
                arrayList.add(new C10156a(encodeUtf8, c.m966b(i)));
            }
        }
        return arrayList;
    }

    @Override // p599h.p600d0.p603g.AbstractC10138c
    /* renamed from: a */
    public C10091a0.C10092a mo1238a(boolean z) throws IOException {
        C10091a0.C10092a a = m1241a(this.f37526d.m1156j(), this.f37527e);
        if (!z || AbstractC10107a.f37312a.mo851a(a) != 100) {
            return a;
        }
        return null;
    }

    @Override // p599h.p600d0.p603g.AbstractC10138c
    /* renamed from: a */
    public AbstractC10095b0 mo1242a(C10091a0 a0Var) throws IOException {
        C10133f fVar = this.f37524b;
        fVar.f37428f.m983e(fVar.f37427e);
        return new C10144h(a0Var.m1542a("Content-Type"), C10141e.m1328a(a0Var), C10270k.m753a(new C10163a(this.f37526d.m1161e())));
    }

    @Override // p599h.p600d0.p603g.AbstractC10138c
    /* renamed from: a */
    public AbstractC10280p mo1239a(C10250y yVar, long j) {
        return this.f37526d.m1163d();
    }

    @Override // p599h.p600d0.p603g.AbstractC10138c
    /* renamed from: a */
    public void mo1243a() throws IOException {
        this.f37526d.m1163d().close();
    }

    @Override // p599h.p600d0.p603g.AbstractC10138c
    /* renamed from: a */
    public void mo1240a(C10250y yVar) throws IOException {
        if (this.f37526d == null) {
            C10182g a = this.f37525c.m1224a(m1236b(yVar), yVar.m821a() != null);
            this.f37526d = a;
            a.m1158h().mo696a(this.f37523a.mo901a(), TimeUnit.MILLISECONDS);
            this.f37526d.m1154l().mo696a(this.f37523a.mo899b(), TimeUnit.MILLISECONDS);
        }
    }

    @Override // p599h.p600d0.p603g.AbstractC10138c
    /* renamed from: b */
    public void mo1237b() throws IOException {
        this.f37525c.flush();
    }

    @Override // p599h.p600d0.p603g.AbstractC10138c
    public void cancel() {
        C10182g gVar = this.f37526d;
        if (gVar != null) {
            gVar.m1164c(ErrorCode.CANCEL);
        }
    }
}
