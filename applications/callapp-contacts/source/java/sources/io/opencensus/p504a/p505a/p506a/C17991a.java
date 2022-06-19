package io.opencensus.p504a.p505a.p506a;

import com.google.common.base.C15391m;
import com.google.common.p386b.C15364d;
import io.opencensus.trace.AbstractC18057x;
import io.opencensus.trace.C18043q;
import io.opencensus.trace.C18044r;
import io.opencensus.trace.C18051v;
import io.opencensus.trace.propagation.AbstractC18039a;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
/* renamed from: io.opencensus.a.a.a.a */
/* loaded from: classes5-dex2jar.jar:io/opencensus/a/a/a/a.class */
public final class C17991a extends AbstractC18039a {

    /* renamed from: a */
    static final List<String> f62895a = Collections.singletonList("X-Cloud-Trace-Context");

    /* renamed from: b */
    static final C18051v f62896b = C18051v.m4505a().m4501a().m4500b();

    /* renamed from: c */
    static final C18051v f62897c = C18051v.f62976a;

    /* renamed from: d */
    static final int f62898d = 3;

    /* renamed from: e */
    private static final AbstractC18057x f62899e = AbstractC18057x.m4494b().m4493a();

    @Override // io.opencensus.trace.propagation.AbstractC18039a
    /* renamed from: a */
    public final <C> void mo4516a(C18043q c18043q, C c, AbstractC18039a.AbstractC18042b<C> abstractC18042b) {
        C15391m.m8945a(c18043q, "spanContext");
        C15391m.m8945a(abstractC18042b, "setter");
        C15391m.m8945a(c, "carrier");
        StringBuilder sb = new StringBuilder();
        sb.append(c18043q.m4514a().m4506a());
        sb.append('/');
        C18044r m4513b = c18043q.m4513b();
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.put(m4513b.m4511a());
        sb.append(C15364d.m8976a(allocate.getLong(0)));
        sb.append(";o=");
        sb.append(c18043q.m4512c().m4503b() ? "1" : "0");
        abstractC18042b.mo4515a(c, "X-Cloud-Trace-Context", sb.toString());
    }
}
