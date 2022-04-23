package io.opencensus.trace;

import io.opencensus.b.b;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/p.class */
public abstract class p {

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/p$a.class */
    static final class a extends p {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a(String str) {
            b.a(str, "name");
        }

        @Override // io.opencensus.trace.p
        public final p a() {
            return this;
        }

        @Override // io.opencensus.trace.p
        public final o b() {
            return j.f36314a;
        }
    }

    public abstract p a();

    public abstract o b();
}
