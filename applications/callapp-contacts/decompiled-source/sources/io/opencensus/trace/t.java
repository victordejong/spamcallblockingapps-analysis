package io.opencensus.trace;

import io.opencensus.trace.a.b;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/t.class */
public abstract class t {

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/t$a.class */
    static final class a extends t {

        /* renamed from: a  reason: collision with root package name */
        private final b f36334a;

        private a() {
            this.f36334a = new b.a();
        }

        @Override // io.opencensus.trace.t
        public final w a() {
            return w.a();
        }

        @Override // io.opencensus.trace.t
        public final b b() {
            return this.f36334a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t c() {
        return new a();
    }

    public abstract w a();

    public abstract b b();
}
