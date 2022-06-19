package com.google.api.client.http;

import com.google.api.client.util.C8731w;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.UUID;
/* renamed from: com.google.api.client.http.b0 */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/b0.class */
public class C8617b0 extends AbstractC8614a {

    /* renamed from: c */
    private ArrayList<C8618a> f38303c;

    /* renamed from: com.google.api.client.http.b0$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/http/b0$a.class */
    public static final class C8618a {

        /* renamed from: a */
        AbstractC8646j f38304a;

        /* renamed from: b */
        C8650n f38305b;

        /* renamed from: c */
        AbstractC8647k f38306c;

        public C8618a() {
            this(null);
        }

        public C8618a(AbstractC8646j abstractC8646j) {
            this(null, abstractC8646j);
        }

        public C8618a(C8650n c8650n, AbstractC8646j abstractC8646j) {
            m3222b(c8650n);
            m3223a(abstractC8646j);
        }

        /* renamed from: a */
        public C8618a m3223a(AbstractC8646j abstractC8646j) {
            this.f38304a = abstractC8646j;
            return this;
        }

        /* renamed from: b */
        public C8618a m3222b(C8650n c8650n) {
            this.f38305b = c8650n;
            return this;
        }
    }

    public C8617b0() {
        this("__END_OF_PART__" + UUID.randomUUID().toString() + "__");
    }

    public C8617b0(String str) {
        super(new C8654p("multipart/related").m3113m("boundary", str));
        this.f38303c = new ArrayList<>();
    }

    @Override // com.google.api.client.http.AbstractC8614a, com.google.api.client.http.AbstractC8646j
    /* renamed from: b */
    public boolean mo3048b() {
        Iterator<C8618a> it = this.f38303c.iterator();
        while (it.hasNext()) {
            if (!it.next().f38304a.mo3048b()) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public C8617b0 m3226g(C8618a c8618a) {
        this.f38303c.add(C8731w.m2836d(c8618a));
        return this;
    }

    /* renamed from: h */
    public final String m3225h() {
        return m3229f().m3120f("boundary");
    }

    /* renamed from: i */
    public C8617b0 m3224i(Collection<? extends AbstractC8646j> collection) {
        this.f38303c = new ArrayList<>(collection.size());
        for (AbstractC8646j abstractC8646j : collection) {
            m3226g(new C8618a(abstractC8646j));
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v55, types: [com.google.api.client.http.l] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    @Override // com.google.api.client.util.AbstractC8735z
    public void writeTo(OutputStream outputStream) {
        AbstractC8646j abstractC8646j;
        char c;
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, m3230e());
        String m3225h = m3225h();
        Iterator<C8618a> it = this.f38303c.iterator();
        while (it.hasNext()) {
            C8618a next = it.next();
            C8650n m3132t = new C8650n().m3132t(null);
            C8650n c8650n = next.f38305b;
            if (c8650n != null) {
                m3132t.m3146c(c8650n);
            }
            m3132t.m3129x(null).m3150I(null).m3157B(null).m3128y(null).set("Content-Transfer-Encoding", null);
            AbstractC8646j abstractC8646j2 = next.f38304a;
            if (abstractC8646j2 != null) {
                m3132t.set("Content-Transfer-Encoding", Arrays.asList("binary"));
                m3132t.m3157B(abstractC8646j2.mo3161a());
                AbstractC8647k abstractC8647k = next.f38306c;
                if (abstractC8647k == null) {
                    c = abstractC8646j2.getLength();
                } else {
                    m3132t.m3129x(abstractC8647k.getName());
                    ?? c8648l = new C8648l(abstractC8646j2, abstractC8647k);
                    c = AbstractC8614a.m3231d(abstractC8646j2);
                    abstractC8646j2 = c8648l;
                }
                abstractC8646j = abstractC8646j2;
                if (c != -1) {
                    m3132t.m3128y(Long.valueOf(c));
                    abstractC8646j = abstractC8646j2;
                }
            } else {
                abstractC8646j = null;
            }
            outputStreamWriter.write("--");
            outputStreamWriter.write(m3225h);
            outputStreamWriter.write("\r\n");
            C8650n.m3134r(m3132t, null, null, outputStreamWriter);
            if (abstractC8646j != null) {
                outputStreamWriter.write("\r\n");
                outputStreamWriter.flush();
                abstractC8646j.writeTo(outputStream);
            }
            outputStreamWriter.write("\r\n");
        }
        outputStreamWriter.write("--");
        outputStreamWriter.write(m3225h);
        outputStreamWriter.write("--");
        outputStreamWriter.write("\r\n");
        outputStreamWriter.flush();
    }
}
