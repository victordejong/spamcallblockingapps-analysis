package io.opencensus.trace;

import io.opencensus.common.AbstractC17995b;
import io.opencensus.trace.p509b.C18009a;
import io.p500a.C17731a;
/* renamed from: io.opencensus.trace.k */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/k.class */
final class C18024k {

    /* renamed from: io.opencensus.trace.k$a */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/k$a.class */
    public static final class C18026a implements AbstractC17995b {

        /* renamed from: a */
        private final C17731a f62934a;

        /* renamed from: b */
        private final AbstractC18035o f62935b;

        /* renamed from: c */
        private final boolean f62936c;

        /* JADX INFO: Access modifiers changed from: private */
        public C18026a(AbstractC18035o abstractC18035o, boolean z) {
            this.f62935b = abstractC18035o;
            this.f62936c = z;
            this.f62934a = C18009a.m4553a(C17731a.m4771a(), abstractC18035o).mo4762c();
        }

        @Override // io.opencensus.common.AbstractC17995b, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            C17731a.m4771a().mo4765a(this.f62934a);
            if (this.f62936c) {
                this.f62935b.mo4524a(AbstractC18027l.f62937a);
            }
        }
    }

    private C18024k() {
    }
}
