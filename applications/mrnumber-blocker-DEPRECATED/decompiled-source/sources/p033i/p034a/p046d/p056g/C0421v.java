package p033i.p034a.p046d.p056g;

import java.util.ArrayList;
import java.util.List;
import p033i.p034a.p046d.p047c.AbstractC0357c;
import p033i.p034a.p046d.p055f.AbstractC0407h;
import p033i.p034a.p046d.p056g.p057w.AbstractC0422b;
/* renamed from: i.a.d.g.v */
/* loaded from: classes2-dex2jar.jar:i/a/d/g/v.class */
final class C0421v {

    /* renamed from: b */
    private final AbstractC0357c f1000b;

    /* renamed from: c */
    private final AbstractC0414f f1001c;

    /* renamed from: d */
    private final AbstractC0407h f1002d;

    /* renamed from: e */
    private volatile AbstractC0422b f1003e;

    /* renamed from: a */
    private final Object f999a = new Object();

    /* renamed from: f */
    private volatile AbstractC0419s f1004f = h.e();

    /* renamed from: g */
    private volatile boolean f1005g = false;

    /* renamed from: h */
    private final List<AbstractC0419s> f1006h = new ArrayList();

    C0421v(AbstractC0357c cVar, AbstractC0414f fVar, AbstractC0407h hVar, AbstractC0422b bVar) {
        this.f1000b = cVar;
        this.f1001c = fVar;
        this.f1002d = hVar;
        this.f1003e = bVar;
    }

    /* renamed from: a */
    void m205a(AbstractC0419s sVar) {
        synchronized (this.f999a) {
            this.f1006h.add(sVar);
            this.f1004f = C0418r.m212a(this.f1006h);
        }
    }

    /* renamed from: b */
    AbstractC0419s m204b() {
        return this.f1004f;
    }

    /* renamed from: c */
    AbstractC0422b m203c() {
        return this.f1003e;
    }

    /* renamed from: d */
    AbstractC0357c m202d() {
        return this.f1000b;
    }

    /* renamed from: e */
    AbstractC0414f m201e() {
        return this.f1001c;
    }

    /* renamed from: f */
    AbstractC0407h m200f() {
        return this.f1002d;
    }

    /* renamed from: g */
    boolean m199g() {
        return this.f1005g;
    }
}
