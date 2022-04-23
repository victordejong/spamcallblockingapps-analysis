package p530d.p531a.p538y0;

import java.util.concurrent.TimeUnit;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9225e;
import p530d.p531a.C9222d;
import p530d.p531a.p538y0.AbstractC9620b;
/* renamed from: d.a.y0.b */
/* loaded from: classes2-dex2jar.jar:d/a/y0/b.class */
public abstract class AbstractC9620b<S extends AbstractC9620b<S>> {

    /* renamed from: a */
    public final AbstractC9225e f36696a;

    /* renamed from: b */
    public final C9222d f36697b;

    /* renamed from: d.a.y0.b$a */
    /* loaded from: classes2-dex2jar.jar:d/a/y0/b$a.class */
    public interface AbstractC9621a<T extends AbstractC9620b<T>> {
        /* renamed from: a */
        T mo2166a(AbstractC9225e eVar, C9222d dVar);
    }

    public AbstractC9620b(AbstractC9225e eVar, C9222d dVar) {
        C4933n.m24794a(eVar, "channel");
        this.f36696a = eVar;
        C4933n.m24794a(dVar, "callOptions");
        this.f36697b = dVar;
    }

    /* renamed from: a */
    public final C9222d m2170a() {
        return this.f36697b;
    }

    /* renamed from: a */
    public final S m2169a(long j, TimeUnit timeUnit) {
        return mo2168a(this.f36696a, this.f36697b.m3138a(j, timeUnit));
    }

    /* renamed from: a */
    public abstract S mo2168a(AbstractC9225e eVar, C9222d dVar);

    /* renamed from: b */
    public final AbstractC9225e m2167b() {
        return this.f36696a;
    }
}
