package io.opencensus.trace.propagation;

import io.opencensus.trace.C9516m;
import p321d.p323b.p327b.C9475b;
/* renamed from: io.opencensus.trace.propagation.a */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/propagation/a.class */
public abstract class AbstractC9522a {

    /* renamed from: a */
    private static final C9524b f40463a = new C9524b();

    /* renamed from: io.opencensus.trace.propagation.a$b */
    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/propagation/a$b.class */
    private static final class C9524b extends AbstractC9522a {
        private C9524b() {
        }

        @Override // io.opencensus.trace.propagation.AbstractC9522a
        /* renamed from: a */
        public <C> void mo411a(C9516m c9516m, C c, AbstractC9525c<C> abstractC9525c) {
            C9475b.m512b(c9516m, "spanContext");
            C9475b.m512b(c, "carrier");
            C9475b.m512b(abstractC9525c, "setter");
        }
    }

    /* renamed from: io.opencensus.trace.propagation.a$c */
    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/propagation/a$c.class */
    public static abstract class AbstractC9525c<C> {
        /* renamed from: a */
        public abstract void mo410a(C c, String str, String str2);
    }

    /* renamed from: a */
    public abstract <C> void mo411a(C9516m c9516m, C c, AbstractC9525c<C> abstractC9525c);
}
