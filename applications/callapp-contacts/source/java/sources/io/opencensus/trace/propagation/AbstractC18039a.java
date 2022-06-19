package io.opencensus.trace.propagation;

import io.opencensus.p507b.C17993b;
import io.opencensus.trace.C18043q;
/* renamed from: io.opencensus.trace.propagation.a */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/propagation/a.class */
public abstract class AbstractC18039a {

    /* renamed from: a */
    private static final C18041a f62942a = new C18041a();

    /* renamed from: io.opencensus.trace.propagation.a$a */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/propagation/a$a.class */
    static final class C18041a extends AbstractC18039a {
        private C18041a() {
        }

        @Override // io.opencensus.trace.propagation.AbstractC18039a
        /* renamed from: a */
        public final <C> void mo4516a(C18043q c18043q, C c, AbstractC18042b<C> abstractC18042b) {
            C17993b.m4562a(c18043q, "spanContext");
            C17993b.m4562a(c, "carrier");
            C17993b.m4562a(abstractC18042b, "setter");
        }
    }

    /* renamed from: io.opencensus.trace.propagation.a$b */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/propagation/a$b.class */
    public static abstract class AbstractC18042b<C> {
        /* renamed from: a */
        public abstract void mo4515a(C c, String str, String str2);
    }

    /* renamed from: a */
    public abstract <C> void mo4516a(C18043q c18043q, C c, AbstractC18042b<C> abstractC18042b);
}
