package p010g.p011g.p012d.p014k;

import g.g.a.f.a.a;
import g.g.a.f.a.c;
import g.g.a.f.b.d;
import g.g.d.i;
import kotlin.w.c.k;
import p010g.p011g.p012d.AbstractC0223h;
import p010g.p011g.p012d.C0222f;
import p010g.p011g.p012d.p015m.p016a.C0228b;
/* renamed from: g.g.d.k.a */
/* loaded from: classes2-dex2jar.jar:g/g/d/k/a.class */
public final class C0226a {

    /* renamed from: a */
    private final AbstractC0227g f461a;

    public C0226a(AbstractC0227g gVar) {
        k.g(gVar, "tracingProvider");
        this.f461a = gVar;
    }

    /* renamed from: a */
    public final String m651a() {
        return this.f461a.m643d();
    }

    /* renamed from: b */
    public final a m650b() {
        return this.f461a.m645b();
    }

    /* renamed from: c */
    public final AbstractC0223h m649c(String str, d dVar, a aVar, g.g.d.m.a.a aVar2, c cVar, C0228b bVar, C0222f fVar) {
        k.g(str, "serviceName");
        k.g(aVar, "headersInfo");
        k.g(aVar2, "randomIdGenerator");
        k.g(cVar, "tracingEnableState");
        k.g(bVar, "tracerProvider");
        k.g(fVar, "spanFactory");
        return i.g.m652a(str, aVar, dVar, aVar2, cVar, bVar, fVar);
    }

    /* renamed from: d */
    public final String m648d() {
        return this.f461a.m646a();
    }

    /* renamed from: e */
    public final c m647e() {
        return this.f461a.m644c();
    }
}
