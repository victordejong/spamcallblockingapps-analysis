package io.opencensus.trace;

import io.opencensus.common.AbstractC9490b;
import io.opencensus.trace.C9502e;
import p321d.p323b.p327b.C9475b;
@Deprecated
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/NetworkEvent.class */
public abstract class NetworkEvent extends AbstractC9506g {

    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/NetworkEvent$Type.class */
    public enum Type {
        SENT,
        RECV
    }

    @Deprecated
    /* renamed from: io.opencensus.trace.NetworkEvent$a */
    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/NetworkEvent$a.class */
    public static abstract class AbstractC9492a {
        /* renamed from: a */
        public abstract NetworkEvent mo450a();

        /* renamed from: b */
        public abstract AbstractC9492a mo449b(long j);

        /* renamed from: c */
        abstract AbstractC9492a mo448c(long j);

        /* renamed from: d */
        public abstract AbstractC9492a mo447d(long j);
    }

    /* renamed from: a */
    public static AbstractC9492a m476a(Type type, long j) {
        return new C9502e.C9504b().m446e((Type) C9475b.m512b(type, "type")).mo448c(j).mo447d(0L).mo449b(0L);
    }

    /* renamed from: b */
    public abstract long mo455b();

    /* renamed from: c */
    public abstract AbstractC9490b mo454c();

    /* renamed from: d */
    public abstract long mo453d();

    /* renamed from: e */
    public abstract Type mo452e();

    /* renamed from: f */
    public abstract long mo451f();
}
