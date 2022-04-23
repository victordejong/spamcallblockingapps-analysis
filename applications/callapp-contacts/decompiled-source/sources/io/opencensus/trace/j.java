package io.opencensus.trace;

import io.opencensus.b.b;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/j.class */
public final class j extends o {

    /* renamed from: a  reason: collision with root package name */
    public static final j f36314a = new j();

    private j() {
        super(q.f36324b, null);
    }

    @Override // io.opencensus.trace.o
    public final void a(l lVar) {
        b.a(lVar, "options");
    }

    @Override // io.opencensus.trace.o
    public final void a(m mVar) {
        b.a(mVar, "messageEvent");
    }

    @Override // io.opencensus.trace.o
    @Deprecated
    public final void a(n nVar) {
    }

    @Override // io.opencensus.trace.o
    public final void a(String str, a aVar) {
        b.a(str, "key");
        b.a(aVar, "value");
    }

    @Override // io.opencensus.trace.o
    public final void a(String str, Map<String, a> map) {
        b.a(str, "description");
        b.a(map, "attributes");
    }

    @Override // io.opencensus.trace.o
    public final void a(Map<String, a> map) {
        b.a(map, "attributes");
    }

    public final String toString() {
        return "BlankSpan";
    }
}
