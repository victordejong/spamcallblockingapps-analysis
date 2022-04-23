package p010g.p011g.p012d;

import g.g.d.l.b;
import i.a.a.i.l;
import kotlin.w.c.k;
import p033i.p034a.p035a.p039i.AbstractC0333x;
/* renamed from: g.g.d.f */
/* loaded from: classes2-dex2jar.jar:g/g/d/f.class */
public final class C0222f {
    /* renamed from: a */
    public final AbstractC0219a m658a(AbstractC0333x xVar, String str, boolean z) {
        k.g(str, "name");
        b bVar = new b(m657b(xVar, str, z));
        bVar.d();
        return bVar;
    }

    /* renamed from: b */
    public final AbstractC0221e m657b(AbstractC0333x xVar, String str, boolean z) {
        g gVar;
        k.g(str, "name");
        if (xVar == null || !z) {
            gVar = new b();
        } else {
            l a = xVar.m373a(str).m398a();
            k.c(a, "tracer.spanBuilder(name).startSpan()");
            gVar = new g(a);
        }
        return gVar;
    }
}
