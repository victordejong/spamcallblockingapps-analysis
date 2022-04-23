package io.opencensus.trace;

import io.opencensus.b.b;
import io.opencensus.trace.f;
import io.opencensus.trace.m;
import io.opencensus.trace.n;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/o.class */
public abstract class o {

    /* renamed from: b  reason: collision with root package name */
    public static final Map<String, io.opencensus.trace.a> f36319b = Collections.emptyMap();

    /* renamed from: d  reason: collision with root package name */
    private static final Set<a> f36320d = Collections.unmodifiableSet(EnumSet.noneOf(a.class));

    /* renamed from: a  reason: collision with root package name */
    private final Set<a> f36321a;

    /* renamed from: c  reason: collision with root package name */
    public final q f36322c;

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/o$a.class */
    public enum a {
        RECORD_EVENTS
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public o(q qVar, EnumSet<a> enumSet) {
        this.f36322c = (q) b.a(qVar, "context");
        Set<a> unmodifiableSet = enumSet == null ? f36320d : Collections.unmodifiableSet(EnumSet.copyOf((EnumSet) enumSet));
        this.f36321a = unmodifiableSet;
        b.a(!qVar.f36326a.c() || unmodifiableSet.contains(a.RECORD_EVENTS), "Span is sampled, but does not have RECORD_EVENTS set.");
    }

    public abstract void a(l lVar);

    public void a(m mVar) {
        b.a(mVar, "messageEvent");
        b.a(mVar, "event");
        m mVar2 = mVar;
        n.b bVar = mVar2.a() == m.b.RECEIVED ? n.b.RECV : n.b.SENT;
        long b2 = mVar2.b();
        f.a aVar = new f.a();
        n.b bVar2 = (n.b) b.a(bVar, "type");
        Objects.requireNonNull(bVar2, "Null type");
        aVar.f36307a = bVar2;
        a(aVar.a(b2).b(0L).c(0L).b(mVar2.c()).c(mVar2.d()).a());
    }

    @Deprecated
    public void a(n nVar) {
        b.a(nVar, "event");
        n nVar2 = nVar;
        a(m.a(nVar2.b() == n.b.RECV ? m.b.RECEIVED : m.b.SENT, nVar2.c()).b(nVar2.d()).c(nVar2.e()).a());
    }

    public void a(String str, io.opencensus.trace.a aVar) {
        b.a(str, "key");
        b.a(aVar, "value");
        a(Collections.singletonMap(str, aVar));
    }

    public abstract void a(String str, Map<String, io.opencensus.trace.a> map);

    public void a(Map<String, io.opencensus.trace.a> map) {
        b.a(map, "attributes");
        a(map);
    }
}
