package io.opencensus.trace;

import io.opencensus.common.b;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/k.class */
final class k {

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/k$a.class */
    static final class a implements b {

        /* renamed from: a  reason: collision with root package name */
        private final io.a.a f36315a;

        /* renamed from: b  reason: collision with root package name */
        private final o f36316b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f36317c;

        private a(o oVar, boolean z) {
            this.f36316b = oVar;
            this.f36317c = z;
            this.f36315a = io.opencensus.trace.b.a.a(io.a.a.a(), oVar).c();
        }

        @Override // io.opencensus.common.b, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            io.a.a.a().a(this.f36315a);
            if (this.f36317c) {
                this.f36316b.a(l.f36318a);
            }
        }
    }

    private k() {
    }
}
