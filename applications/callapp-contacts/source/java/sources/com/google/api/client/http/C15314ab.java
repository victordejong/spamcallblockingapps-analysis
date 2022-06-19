package com.google.api.client.http;

import com.google.common.base.C15391m;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.UUID;
/* renamed from: com.google.api.client.http.ab */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/ab.class */
public final class C15314ab extends AbstractC15303a {

    /* renamed from: a */
    private ArrayList<C15315a> f55309a;

    /* renamed from: com.google.api.client.http.ab$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/ab$a.class */
    public static final class C15315a {

        /* renamed from: a */
        AbstractC15331j f55310a;

        /* renamed from: b */
        C15335n f55311b;

        /* renamed from: c */
        AbstractC15332k f55312c;

        public C15315a() {
            this(null);
        }

        public C15315a(AbstractC15331j abstractC15331j) {
            this(null, abstractC15331j);
        }

        public C15315a(C15335n c15335n, AbstractC15331j abstractC15331j) {
            this.f55311b = c15335n;
            this.f55310a = abstractC15331j;
        }
    }

    public C15314ab() {
        this("__END_OF_PART__" + UUID.randomUUID().toString() + "__");
    }

    public C15314ab(String str) {
        super(new C15339p("multipart/related").m9066a("boundary", str));
        this.f55309a = new ArrayList<>();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final C15314ab m9138a(C15315a c15315a) {
        this.f55309a.add(C15391m.m8946a(c15315a));
        return this;
    }

    /* renamed from: a */
    public final C15314ab m9137a(Collection<? extends AbstractC15331j> collection) {
        this.f55309a = new ArrayList<>(collection.size());
        for (AbstractC15331j abstractC15331j : collection) {
            m9138a(new C15315a(abstractC15331j));
        }
        return this;
    }

    @Override // com.google.api.client.http.AbstractC15303a, com.google.api.client.http.AbstractC15331j
    public final boolean retrySupported() {
        Iterator<C15315a> it2 = this.f55309a.iterator();
        while (it2.hasNext()) {
            if (!it2.next().f55310a.retrySupported()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.api.client.http.AbstractC15303a
    public final /* bridge */ /* synthetic */ AbstractC15303a setMediaType(C15339p c15339p) {
        super.setMediaType(c15339p);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v55, types: [com.google.api.client.http.l] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    @Override // com.google.api.client.http.AbstractC15331j, com.google.api.client.p379a.AbstractC15211ad
    public final void writeTo(OutputStream outputStream) throws IOException {
        char c;
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, getCharset());
        String m9064b = getMediaType().m9064b("boundary");
        Iterator<C15315a> it2 = this.f55309a.iterator();
        while (it2.hasNext()) {
            C15315a next = it2.next();
            C15335n m9100a = new C15335n().m9100a();
            if (next.f55311b != null) {
                m9100a.m9098a(next.f55311b);
            }
            AbstractC15331j abstractC15331j = null;
            m9100a.m9085b(null).m9077f(null).m9081d(null).m9094a((Long) null).set("Content-Transfer-Encoding", (Object) null);
            AbstractC15331j abstractC15331j2 = next.f55310a;
            if (abstractC15331j2 != null) {
                m9100a.set("Content-Transfer-Encoding", Arrays.asList("binary"));
                m9100a.m9081d(abstractC15331j2.getType());
                AbstractC15332k abstractC15332k = next.f55312c;
                if (abstractC15332k == null) {
                    c = abstractC15331j2.getLength();
                } else {
                    m9100a.m9085b(abstractC15332k.mo9102a());
                    ?? c15333l = new C15333l(abstractC15331j2, abstractC15332k);
                    c = AbstractC15303a.computeLength(abstractC15331j2);
                    abstractC15331j2 = c15333l;
                }
                abstractC15331j = abstractC15331j2;
                if (c != -1) {
                    m9100a.m9094a(Long.valueOf(c));
                    abstractC15331j = abstractC15331j2;
                }
            }
            outputStreamWriter.write("--");
            outputStreamWriter.write(m9064b);
            outputStreamWriter.write("\r\n");
            C15335n.m9097a(m9100a, outputStreamWriter);
            if (abstractC15331j != null) {
                outputStreamWriter.write("\r\n");
                outputStreamWriter.flush();
                abstractC15331j.writeTo(outputStream);
            }
            outputStreamWriter.write("\r\n");
        }
        outputStreamWriter.write("--");
        outputStreamWriter.write(m9064b);
        outputStreamWriter.write("--");
        outputStreamWriter.write("\r\n");
        outputStreamWriter.flush();
    }
}
