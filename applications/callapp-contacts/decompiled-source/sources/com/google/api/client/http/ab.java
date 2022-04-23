package com.google.api.client.http;

import com.google.api.client.a.ad;
import com.google.common.base.m;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.UUID;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/ab.class */
public final class ab extends com.google.api.client.http.a {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<a> f31786a;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/ab$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        j f31787a;

        /* renamed from: b  reason: collision with root package name */
        n f31788b;

        /* renamed from: c  reason: collision with root package name */
        k f31789c;

        public a() {
            this(null);
        }

        public a(j jVar) {
            this(null, jVar);
        }

        public a(n nVar, j jVar) {
            this.f31788b = nVar;
            this.f31787a = jVar;
        }
    }

    public ab() {
        this("__END_OF_PART__" + UUID.randomUUID().toString() + "__");
    }

    public ab(String str) {
        super(new p("multipart/related").a("boundary", str));
        this.f31786a = new ArrayList<>();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ab a(a aVar) {
        this.f31786a.add(m.a(aVar));
        return this;
    }

    public final ab a(Collection<? extends j> collection) {
        this.f31786a = new ArrayList<>(collection.size());
        for (j jVar : collection) {
            a(new a(jVar));
        }
        return this;
    }

    @Override // com.google.api.client.http.a, com.google.api.client.http.j
    public final boolean retrySupported() {
        Iterator<a> it2 = this.f31786a.iterator();
        while (it2.hasNext()) {
            if (!it2.next().f31787a.retrySupported()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.api.client.http.a
    public final /* bridge */ /* synthetic */ com.google.api.client.http.a setMediaType(p pVar) {
        super.setMediaType(pVar);
        return this;
    }

    @Override // com.google.api.client.http.j, com.google.api.client.a.ad
    public final void writeTo(OutputStream outputStream) throws IOException {
        long j;
        l lVar;
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, getCharset());
        String b2 = getMediaType().b("boundary");
        Iterator<a> it2 = this.f31786a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            n a2 = new n().a();
            if (next.f31788b != null) {
                a2.a(next.f31788b);
            }
            ad adVar = null;
            a2.b(null).f(null).d(null).a((Long) null).set("Content-Transfer-Encoding", (Object) null);
            j jVar = next.f31787a;
            if (jVar != null) {
                a2.set("Content-Transfer-Encoding", Arrays.asList("binary"));
                a2.d(jVar.getType());
                k kVar = next.f31789c;
                if (kVar == null) {
                    j = jVar.getLength();
                    lVar = jVar;
                } else {
                    a2.b(kVar.a());
                    l lVar2 = new l(jVar, kVar);
                    j = com.google.api.client.http.a.computeLength(jVar);
                    lVar = lVar2;
                }
                adVar = lVar;
                if (j != -1) {
                    a2.a(Long.valueOf(j));
                    adVar = lVar;
                }
            }
            outputStreamWriter.write("--");
            outputStreamWriter.write(b2);
            outputStreamWriter.write("\r\n");
            n.a(a2, outputStreamWriter);
            if (adVar != null) {
                outputStreamWriter.write("\r\n");
                outputStreamWriter.flush();
                adVar.writeTo(outputStream);
            }
            outputStreamWriter.write("\r\n");
        }
        outputStreamWriter.write("--");
        outputStreamWriter.write(b2);
        outputStreamWriter.write("--");
        outputStreamWriter.write("\r\n");
        outputStreamWriter.flush();
    }
}
