package p193e.p1577m.p1578a.p1580b.p1583j;

import android.content.Context;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;
import p193e.p1577m.p1578a.p1580b.AbstractC23992g;
import p193e.p1577m.p1578a.p1580b.C23987b;
import p193e.p1577m.p1578a.p1580b.p1581i.C23996c;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r;
import p193e.p1577m.p1578a.p1580b.p1583j.C24144j;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.AbstractC24047e;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.C24074t;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.C24076v;
import p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b;
import p193e.p1577m.p1578a.p1580b.p1583j.p1591e0.AbstractC24130a;
@Singleton
/* renamed from: e.m.a.b.j.v */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/v.class */
public class C24163v implements AbstractC24162u {

    /* renamed from: e */
    public static volatile AbstractC24164w f66893e;

    /* renamed from: a */
    public final AbstractC24130a f66894a;

    /* renamed from: b */
    public final AbstractC24130a f66895b;

    /* renamed from: c */
    public final AbstractC24047e f66896c;

    /* renamed from: d */
    public final C24074t f66897d;

    @Inject
    public C24163v(AbstractC24130a abstractC24130a, AbstractC24130a abstractC24130a2, AbstractC24047e abstractC24047e, C24074t c24074t, final C24076v c24076v) {
        this.f66894a = abstractC24130a;
        this.f66895b = abstractC24130a2;
        this.f66896c = abstractC24047e;
        this.f66897d = c24074t;
        c24076v.f66750a.execute(new Runnable() { // from class: e.m.a.b.j.c0.h.n
            @Override // java.lang.Runnable
            public final void run() {
                final C24076v c24076v2 = C24076v.this;
                c24076v2.f66753d.mo5550k(new AbstractC24127b.AbstractC24128a() { // from class: e.m.a.b.j.c0.h.m
                    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b.AbstractC24128a
                    public final Object execute() {
                        C24076v c24076v3 = C24076v.this;
                        for (AbstractC24158r abstractC24158r : c24076v3.f66751b.mo5573Y0()) {
                            c24076v3.f66752c.mo5580b(abstractC24158r, 1);
                        }
                        return null;
                    }
                });
            }
        });
    }

    /* renamed from: a */
    public static C24163v m5518a() {
        AbstractC24164w abstractC24164w = f66893e;
        if (abstractC24164w != null) {
            return (C24163v) ((C24147k) abstractC24164w).f66878m.get();
        }
        throw new IllegalStateException("Not initialized!");
    }

    /* renamed from: b */
    public static Set<C23987b> m5517b(AbstractC24149l abstractC24149l) {
        return abstractC24149l instanceof AbstractC24149l ? Collections.unmodifiableSet(abstractC24149l.mo5546a()) : Collections.singleton(new C23987b("proto"));
    }

    /* renamed from: c */
    public static void m5516c(Context context) {
        if (f66893e == null) {
            synchronized (C24163v.class) {
                try {
                    if (f66893e == null) {
                        Objects.requireNonNull(context);
                        f66893e = new C24147k(context, null);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: d */
    public AbstractC23992g m5515d(AbstractC24149l abstractC24149l) {
        Set<C23987b> m5517b = m5517b(abstractC24149l);
        AbstractC24158r.AbstractC24159a m5527a = AbstractC24158r.m5527a();
        Objects.requireNonNull(abstractC24149l);
        m5527a.mo5522b("cct");
        C24144j.C24146b c24146b = (C24144j.C24146b) m5527a;
        c24146b.f66864b = ((C23996c) abstractC24149l).m5629c();
        return new C24160s(m5517b, c24146b.mo5523a(), this);
    }
}
