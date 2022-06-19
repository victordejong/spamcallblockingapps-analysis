package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.AbstractC23993h;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r;
import p193e.p1577m.p1578a.p1580b.p1583j.C24163v;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24078x;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24171e;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24181m;
/* renamed from: e.m.a.b.j.c0.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/c.class */
public class C24045c implements AbstractC24047e {

    /* renamed from: f */
    public static final Logger f66671f = Logger.getLogger(C24163v.class.getName());

    /* renamed from: a */
    public final AbstractC24078x f66672a;

    /* renamed from: b */
    public final Executor f66673b;

    /* renamed from: c */
    public final AbstractC24171e f66674c;

    /* renamed from: d */
    public final AbstractC24080a0 f66675d;

    /* renamed from: e */
    public final AbstractC24127b f66676e;

    @Inject
    public C24045c(Executor executor, AbstractC24171e abstractC24171e, AbstractC24078x abstractC24078x, AbstractC24080a0 abstractC24080a0, AbstractC24127b abstractC24127b) {
        this.f66673b = executor;
        this.f66674c = abstractC24171e;
        this.f66672a = abstractC24078x;
        this.f66675d = abstractC24080a0;
        this.f66676e = abstractC24127b;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.AbstractC24047e
    /* renamed from: a */
    public void mo5593a(final AbstractC24158r abstractC24158r, final AbstractC24151n abstractC24151n, final AbstractC23993h abstractC23993h) {
        this.f66673b.execute(new Runnable() { // from class: e.m.a.b.j.c0.a
            @Override // java.lang.Runnable
            public final void run() {
                final C24045c c24045c = C24045c.this;
                final AbstractC24158r abstractC24158r2 = abstractC24158r;
                AbstractC23993h abstractC23993h2 = abstractC23993h;
                AbstractC24151n abstractC24151n2 = abstractC24151n;
                Objects.requireNonNull(c24045c);
                try {
                    AbstractC24181m abstractC24181m = c24045c.f66674c.get(abstractC24158r2.mo5526b());
                    if (abstractC24181m == null) {
                        String format = String.format("Transport backend '%s' is not registered", abstractC24158r2.mo5526b());
                        C24045c.f66671f.warning(format);
                        abstractC23993h2.mo5594a(new IllegalArgumentException(format));
                    } else {
                        final AbstractC24151n mo5504a = abstractC24181m.mo5504a(abstractC24151n2);
                        c24045c.f66676e.mo5550k(new AbstractC24127b.AbstractC24128a() { // from class: e.m.a.b.j.c0.b
                            @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b.AbstractC24128a
                            public final Object execute() {
                                C24045c c24045c2 = C24045c.this;
                                AbstractC24158r abstractC24158r3 = abstractC24158r2;
                                c24045c2.f66675d.mo5572a2(abstractC24158r3, mo5504a);
                                c24045c2.f66672a.mo5580b(abstractC24158r3, 1);
                                return null;
                            }
                        });
                        abstractC23993h2.mo5594a(null);
                    }
                } catch (Exception e) {
                    Logger logger = C24045c.f66671f;
                    StringBuilder m8728C = C22128a.m8728C("Error scheduling event ");
                    m8728C.append(e.getMessage());
                    logger.warning(m8728C.toString());
                    abstractC23993h2.mo5594a(e);
                }
            }
        });
    }
}
