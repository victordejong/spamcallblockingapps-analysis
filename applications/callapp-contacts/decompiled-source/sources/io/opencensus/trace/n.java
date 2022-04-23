package io.opencensus.trace;

import io.opencensus.common.c;
@Deprecated
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/n.class */
public abstract class n extends h {

    @Deprecated
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/n$a.class */
    public static abstract class a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a a(long j);

        public abstract n a();

        public abstract a b(long j);

        public abstract a c(long j);
    }

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/n$b.class */
    public enum b {
        SENT,
        RECV
    }

    public abstract c a();

    public abstract b b();

    public abstract long c();

    public abstract long d();

    public abstract long e();
}
