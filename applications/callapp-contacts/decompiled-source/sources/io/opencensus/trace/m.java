package io.opencensus.trace;

import io.opencensus.trace.e;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/m.class */
public abstract class m extends h {

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/m$a.class */
    public static abstract class a {
        abstract a a(long j);

        abstract a a(b bVar);

        public abstract m a();

        public abstract a b(long j);

        public abstract a c(long j);
    }

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/m$b.class */
    public enum b {
        SENT,
        RECEIVED
    }

    public static a a(b bVar, long j) {
        return new e.a().a((b) io.opencensus.b.b.a(bVar, "type")).a(j).b(0L).c(0L);
    }

    public abstract b a();

    public abstract long b();

    public abstract long c();

    public abstract long d();
}
