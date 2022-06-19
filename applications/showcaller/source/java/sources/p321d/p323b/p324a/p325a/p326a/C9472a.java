package p321d.p323b.p324a.p325a.p326a;

import com.google.common.base.C8756j;
import io.opencensus.trace.AbstractC9532s;
import io.opencensus.trace.C9516m;
import io.opencensus.trace.C9517n;
import io.opencensus.trace.C9526q;
import io.opencensus.trace.propagation.AbstractC9522a;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import p078c.p084c.p119c.p121b.C1977d;
/* renamed from: d.b.a.a.a.a */
/* loaded from: classes2-dex2jar.jar:d/b/a/a/a/a.class */
final class C9472a extends AbstractC9522a {

    /* renamed from: b */
    static final List<String> f40344b = Collections.singletonList("X-Cloud-Trace-Context");

    /* renamed from: c */
    static final C9526q f40345c = C9526q.m409a().m404b(true).m405a();

    /* renamed from: d */
    static final C9526q f40346d = C9526q.f40464a;

    /* renamed from: e */
    static final int f40347e = 3;

    /* renamed from: f */
    private static final AbstractC9532s f40348f = AbstractC9532s.m398b().m394b();

    /* renamed from: b */
    private static long m516b(C9517n c9517n) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.put(c9517n.m419e());
        return allocate.getLong(0);
    }

    @Override // io.opencensus.trace.propagation.AbstractC9522a
    /* renamed from: a */
    public <C> void mo411a(C9516m c9516m, C c, AbstractC9522a.AbstractC9525c<C> abstractC9525c) {
        C8756j.m2788m(c9516m, "spanContext");
        C8756j.m2788m(abstractC9525c, "setter");
        C8756j.m2788m(c, "carrier");
        StringBuilder sb = new StringBuilder();
        sb.append(c9516m.m423b().m412e());
        sb.append('/');
        sb.append(C1977d.m28415d(m516b(c9516m.m424a())));
        sb.append(";o=");
        sb.append(c9516m.m422c().m406d() ? "1" : "0");
        abstractC9525c.mo410a(c, "X-Cloud-Trace-Context", sb.toString());
    }
}
