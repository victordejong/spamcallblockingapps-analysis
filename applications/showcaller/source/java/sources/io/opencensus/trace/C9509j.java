package io.opencensus.trace;

import io.opencensus.common.AbstractC9489a;
import io.opencensus.trace.p337w.C9545a;
import p321d.p322a.C9458b;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: io.opencensus.trace.j */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/j.class */
public final class C9509j {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: io.opencensus.trace.j$b */
    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/j$b.class */
    public static final class C9511b implements AbstractC9489a {

        /* renamed from: d */
        private final C9458b f40447d;

        /* renamed from: e */
        private final Span f40448e;

        /* renamed from: f */
        private final boolean f40449f;

        private C9511b(Span span, boolean z) {
            this.f40448e = span;
            this.f40449f = z;
            this.f40447d = C9545a.m380b(C9458b.m542p(), span).mo538a();
        }

        @Override // io.opencensus.common.AbstractC9489a, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            C9458b.m542p().mo535q(this.f40447d);
            if (this.f40449f) {
                this.f40448e.m473f();
            }
        }
    }

    /* renamed from: a */
    public static Span m434a() {
        return C9545a.m381a(C9458b.m542p());
    }

    /* renamed from: b */
    public static AbstractC9489a m433b(Span span, boolean z) {
        return new C9511b(span, z);
    }
}
