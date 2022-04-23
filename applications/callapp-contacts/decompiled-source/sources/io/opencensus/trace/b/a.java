package io.opencensus.trace.b;

import io.a.a;
import io.a.c;
import io.opencensus.b.b;
import io.opencensus.trace.j;
import io.opencensus.trace.o;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/b/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final a.d<o> f36289a = io.a.a.a("opencensus-trace-span-key");

    private a() {
    }

    public static io.a.a a(io.a.a aVar, o oVar) {
        io.a.a aVar2 = (io.a.a) b.a(aVar, "context");
        a.d<o> dVar = f36289a;
        c<a.d<?>, Object> cVar = aVar2.f36151d;
        return new io.a.a(aVar2, cVar.f36165a == null ? new c(new c.C0586c(dVar, oVar)) : new c(cVar.f36165a.a(dVar, oVar, dVar.hashCode(), 0)));
    }

    public static o a(io.a.a aVar) {
        a.d<o> dVar = f36289a;
        c<a.d<?>, Object> cVar = ((io.a.a) b.a(aVar, "context")).f36151d;
        o a2 = cVar.f36165a == null ? null : cVar.f36165a.a(dVar, dVar.hashCode(), 0);
        o oVar = a2;
        if (a2 == null) {
            oVar = dVar.f36157a;
        }
        o oVar2 = oVar;
        o oVar3 = oVar2;
        if (oVar2 == null) {
            oVar3 = j.f36314a;
        }
        return oVar3;
    }
}
