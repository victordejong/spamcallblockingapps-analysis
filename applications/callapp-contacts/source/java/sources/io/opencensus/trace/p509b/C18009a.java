package io.opencensus.trace.p509b;

import io.opencensus.p507b.C17993b;
import io.opencensus.trace.AbstractC18035o;
import io.opencensus.trace.C18023j;
import io.p500a.C17731a;
import io.p500a.C17744c;
/* renamed from: io.opencensus.trace.b.a */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/b/a.class */
public final class C18009a {

    /* renamed from: a */
    private static final C17731a.C17736d<AbstractC18035o> f62906a = C17731a.m4767a("opencensus-trace-span-key");

    private C18009a() {
    }

    /* renamed from: a */
    public static C17731a m4553a(C17731a c17731a, AbstractC18035o abstractC18035o) {
        C17731a c17731a2 = (C17731a) C17993b.m4562a(c17731a, "context");
        C17731a.C17736d<AbstractC18035o> c17736d = f62906a;
        C17744c<C17731a.C17736d<?>, Object> c17744c = c17731a2.f62591d;
        return new C17731a(c17731a2, c17744c.f62616a == null ? new C17744c(new C17744c.C17747c(c17736d, abstractC18035o)) : new C17744c(c17744c.f62616a.mo4749a(c17736d, abstractC18035o, c17736d.hashCode(), 0)));
    }

    /* renamed from: a */
    public static AbstractC18035o m4554a(C17731a c17731a) {
        C17731a.C17736d<AbstractC18035o> c17736d = f62906a;
        C17744c<C17731a.C17736d<?>, Object> c17744c = ((C17731a) C17993b.m4562a(c17731a, "context")).f62591d;
        AbstractC18035o mo4750a = c17744c.f62616a == null ? null : c17744c.f62616a.mo4750a(c17736d, c17736d.hashCode(), 0);
        AbstractC18035o abstractC18035o = mo4750a;
        if (mo4750a == null) {
            abstractC18035o = c17736d.f62605a;
        }
        AbstractC18035o abstractC18035o2 = abstractC18035o;
        C18023j c18023j = abstractC18035o2;
        if (abstractC18035o2 == null) {
            c18023j = C18023j.f62933a;
        }
        return c18023j;
    }
}
