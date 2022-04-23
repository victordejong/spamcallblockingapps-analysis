package io.opencensus.trace.propagation;

import io.opencensus.trace.q;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/propagation/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final C0594a f36323a = new C0594a();

    /* renamed from: io.opencensus.trace.propagation.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/propagation/a$a.class */
    static final class C0594a extends a {
        private C0594a() {
        }

        @Override // io.opencensus.trace.propagation.a
        public final <C> void a(q qVar, C c2, b<C> bVar) {
            io.opencensus.b.b.a(qVar, "spanContext");
            io.opencensus.b.b.a(c2, "carrier");
            io.opencensus.b.b.a(bVar, "setter");
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/propagation/a$b.class */
    public static abstract class b<C> {
        public abstract void a(C c2, String str, String str2);
    }

    public abstract <C> void a(q qVar, C c2, b<C> bVar);
}
