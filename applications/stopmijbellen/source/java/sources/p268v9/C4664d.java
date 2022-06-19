package p268v9;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.logging.Logger;
import okhttp3.internal.http2.StreamResetException;
import p011aa.AbstractC0058k;
import p011aa.AbstractC0073x;
import p011aa.AbstractC0074y;
import p011aa.C0053f;
import p011aa.C0062o;
import p011aa.C0069t;
import p204p9.AbstractC4096d0;
import p204p9.AbstractC4125t;
import p204p9.C4084b0;
import p204p9.C4121r;
import p204p9.C4128v;
import p204p9.C4135y;
import p204p9.EnumC4131w;
import p214q9.AbstractC4169a;
import p214q9.C4171c;
import p236s9.C4338e;
import p246t9.AbstractC4433c;
import p246t9.C4436e;
import p246t9.C4438g;
import p246t9.C4441j;
import p268v9.C4684o;
/* renamed from: v9.d */
/* loaded from: classes2-dex2jar.jar:v9/d.class */
public final class C4664d implements AbstractC4433c {

    /* renamed from: f */
    public static final List<String> f14388f = C4171c.m1321o("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");

    /* renamed from: g */
    public static final List<String> f14389g = C4171c.m1321o("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* renamed from: a */
    public final AbstractC4125t.AbstractC4126a f14390a;

    /* renamed from: b */
    public final C4338e f14391b;

    /* renamed from: c */
    public final C4667f f14392c;

    /* renamed from: d */
    public C4684o f14393d;

    /* renamed from: e */
    public final EnumC4131w f14394e;

    /* renamed from: v9.d$a */
    /* loaded from: classes2-dex2jar.jar:v9/d$a.class */
    public class C4665a extends AbstractC0058k {

        /* renamed from: b */
        public boolean f14395b = false;

        /* renamed from: c */
        public long f14396c = 0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4665a(AbstractC0074y abstractC0074y) {
            super(abstractC0074y);
            C4664d.this = r5;
        }

        @Override // p011aa.AbstractC0058k, p011aa.AbstractC0074y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            m650d(null);
        }

        /* renamed from: d */
        public final void m650d(IOException iOException) {
            if (this.f14395b) {
                return;
            }
            this.f14395b = true;
            C4664d c4664d = C4664d.this;
            c4664d.f14391b.m1072i(false, c4664d, this.f14396c, iOException);
        }

        @Override // p011aa.AbstractC0058k, p011aa.AbstractC0074y
        /* renamed from: f */
        public long mo609f(C0053f c0053f, long j) throws IOException {
            try {
                long mo609f = this.f127a.mo609f(c0053f, j);
                if (mo609f > 0) {
                    this.f14396c += mo609f;
                }
                return mo609f;
            } catch (IOException e) {
                m650d(e);
                throw e;
            }
        }
    }

    public C4664d(C4128v c4128v, AbstractC4125t.AbstractC4126a abstractC4126a, C4338e c4338e, C4667f c4667f) {
        this.f14390a = abstractC4126a;
        this.f14391b = c4338e;
        this.f14392c = c4667f;
        List<EnumC4131w> list = c4128v.f12978b;
        EnumC4131w enumC4131w = EnumC4131w.H2_PRIOR_KNOWLEDGE;
        this.f14394e = !list.contains(enumC4131w) ? EnumC4131w.HTTP_2 : enumC4131w;
    }

    @Override // p246t9.AbstractC4433c
    /* renamed from: a */
    public AbstractC4096d0 mo656a(C4084b0 c4084b0) throws IOException {
        Objects.requireNonNull(this.f14391b.f13513f);
        String m1401c = c4084b0.f12802f.m1401c("Content-Type");
        if (m1401c == null) {
            m1401c = null;
        }
        long m933a = C4436e.m933a(c4084b0);
        C4665a c4665a = new C4665a(this.f14393d.f14472g);
        Logger logger = C0062o.f138a;
        return new C4438g(m1401c, m933a, new C0069t(c4665a));
    }

    @Override // p246t9.AbstractC4433c
    /* renamed from: b */
    public void mo655b() throws IOException {
        ((C4684o.C4685a) this.f14393d.m618f()).close();
    }

    @Override // p246t9.AbstractC4433c
    /* renamed from: c */
    public void mo654c() throws IOException {
        this.f14392c.f14419r.flush();
    }

    @Override // p246t9.AbstractC4433c
    public void cancel() {
        C4684o c4684o = this.f14393d;
        if (c4684o != null) {
            c4684o.m619e(6);
        }
    }

    @Override // p246t9.AbstractC4433c
    /* renamed from: d */
    public AbstractC0073x mo653d(C4135y c4135y, long j) {
        return this.f14393d.m618f();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0146, code lost:
        if (r0.f14467b == 0) goto L38;
     */
    @Override // p246t9.AbstractC4433c
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo652e(p204p9.C4135y r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p268v9.C4664d.mo652e(p9.y):void");
    }

    @Override // p246t9.AbstractC4433c
    /* renamed from: f */
    public C4084b0.C4085a mo651f(boolean z) throws IOException {
        C4121r removeFirst;
        C4441j c4441j;
        C4441j c4441j2;
        C4684o c4684o = this.f14393d;
        synchronized (c4684o) {
            c4684o.f14474i.m8866i();
            while (c4684o.f14470e.isEmpty() && c4684o.f14476k == 0) {
                c4684o.m614j();
            }
            c4684o.f14474i.m606n();
            if (c4684o.f14470e.isEmpty()) {
                throw new StreamResetException(c4684o.f14476k);
            }
            removeFirst = c4684o.f14470e.removeFirst();
        }
        EnumC4131w enumC4131w = this.f14394e;
        ArrayList arrayList = new ArrayList(20);
        int i = 0;
        int m1398f = removeFirst.m1398f();
        C4441j c4441j3 = null;
        while (true) {
            c4441j = c4441j3;
            if (i >= m1398f) {
                break;
            }
            String m1400d = removeFirst.m1400d(i);
            String m1397g = removeFirst.m1397g(i);
            if (m1400d.equals(":status")) {
                c4441j2 = C4441j.m915a("HTTP/1.1 " + m1397g);
            } else {
                c4441j2 = c4441j;
                if (!f14389g.contains(m1400d)) {
                    Objects.requireNonNull((C4128v.C4129a) AbstractC4169a.f13142a);
                    arrayList.add(m1400d);
                    arrayList.add(m1397g.trim());
                    c4441j2 = c4441j;
                }
            }
            i++;
            c4441j3 = c4441j2;
        }
        if (c4441j != null) {
            C4084b0.C4085a c4085a = new C4084b0.C4085a();
            c4085a.f12811b = enumC4131w;
            c4085a.f12812c = c4441j.f13808b;
            c4085a.f12813d = c4441j.f13809c;
            String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
            C4121r.C4122a c4122a = new C4121r.C4122a();
            Collections.addAll(c4122a.f12953a, strArr);
            c4085a.f12815f = c4122a;
            if (z) {
                Objects.requireNonNull((C4128v.C4129a) AbstractC4169a.f13142a);
                if (c4085a.f12812c == 100) {
                    return null;
                }
            }
            return c4085a;
        }
        throw new ProtocolException("Expected ':status' header not present");
    }
}
