package io.opencensus.trace;

import io.opencensus.trace.p335u.AbstractC9537b;
/* renamed from: io.opencensus.trace.o */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/o.class */
public abstract class AbstractC9518o {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: io.opencensus.trace.o$b */
    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/o$b.class */
    public static final class C9520b extends AbstractC9518o {

        /* renamed from: a */
        private final AbstractC9537b f40459a;

        private C9520b() {
            this.f40459a = AbstractC9537b.m390b();
        }

        @Override // io.opencensus.trace.AbstractC9518o
        /* renamed from: a */
        public AbstractC9537b mo416a() {
            return this.f40459a;
        }

        @Override // io.opencensus.trace.AbstractC9518o
        /* renamed from: b */
        public AbstractC9529r mo415b() {
            return AbstractC9529r.m403a();
        }
    }

    /* renamed from: c */
    public static AbstractC9518o m417c() {
        return new C9520b();
    }

    /* renamed from: a */
    public abstract AbstractC9537b mo416a();

    /* renamed from: b */
    public abstract AbstractC9529r mo415b();
}
