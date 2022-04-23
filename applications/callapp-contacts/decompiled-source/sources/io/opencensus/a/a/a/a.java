package io.opencensus.a.a.a;

import com.google.common.b.d;
import com.google.common.base.m;
import io.opencensus.trace.propagation.a;
import io.opencensus.trace.q;
import io.opencensus.trace.r;
import io.opencensus.trace.v;
import io.opencensus.trace.x;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:io/opencensus/a/a/a/a.class */
public final class a extends io.opencensus.trace.propagation.a {

    /* renamed from: a  reason: collision with root package name */
    static final List<String> f36279a = Collections.singletonList("X-Cloud-Trace-Context");

    /* renamed from: b  reason: collision with root package name */
    static final v f36280b = v.a().a().b();

    /* renamed from: c  reason: collision with root package name */
    static final v f36281c = v.f36338a;

    /* renamed from: d  reason: collision with root package name */
    static final int f36282d = 3;
    private static final x e = x.b().a();

    @Override // io.opencensus.trace.propagation.a
    public final <C> void a(q qVar, C c2, a.b<C> bVar) {
        m.a(qVar, "spanContext");
        m.a(bVar, "setter");
        m.a(c2, "carrier");
        StringBuilder sb = new StringBuilder();
        sb.append(qVar.a().a());
        sb.append('/');
        r b2 = qVar.b();
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.put(b2.a());
        sb.append(d.a(allocate.getLong(0)));
        sb.append(";o=");
        sb.append(qVar.c().b() ? "1" : "0");
        bVar.a(c2, "X-Cloud-Trace-Context", sb.toString());
    }
}
