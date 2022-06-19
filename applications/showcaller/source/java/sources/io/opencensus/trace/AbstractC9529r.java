package io.opencensus.trace;

import io.opencensus.common.AbstractC9489a;
import io.opencensus.trace.AbstractC9514l;
import p321d.p323b.p327b.C9475b;
/* renamed from: io.opencensus.trace.r */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/r.class */
public abstract class AbstractC9529r {

    /* renamed from: a */
    private static final C9531b f40467a = new C9531b();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: io.opencensus.trace.r$b */
    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/r$b.class */
    public static final class C9531b extends AbstractC9529r {
        private C9531b() {
        }

        @Override // io.opencensus.trace.AbstractC9529r
        /* renamed from: c */
        public AbstractC9514l mo400c(String str, Span span) {
            return AbstractC9514l.C9515a.m425c(str, span);
        }
    }

    protected AbstractC9529r() {
    }

    /* renamed from: a */
    public static AbstractC9529r m403a() {
        return f40467a;
    }

    /* renamed from: b */
    public final AbstractC9514l m402b(String str) {
        return mo400c(str, C9509j.m434a());
    }

    /* renamed from: c */
    public abstract AbstractC9514l mo400c(String str, Span span);

    /* renamed from: d */
    public final AbstractC9489a m401d(Span span) {
        return C9509j.m433b((Span) C9475b.m512b(span, "span"), false);
    }
}
