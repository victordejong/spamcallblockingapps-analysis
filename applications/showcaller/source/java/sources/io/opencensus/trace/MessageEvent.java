package io.opencensus.trace;

import io.opencensus.trace.C9499d;
import p321d.p323b.p327b.C9475b;
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/MessageEvent.class */
public abstract class MessageEvent extends AbstractC9506g {

    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/MessageEvent$Type.class */
    public enum Type {
        SENT,
        RECEIVED
    }

    /* renamed from: io.opencensus.trace.MessageEvent$a */
    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/MessageEvent$a.class */
    public static abstract class AbstractC9491a {
        /* renamed from: a */
        public abstract MessageEvent mo460a();

        /* renamed from: b */
        public abstract AbstractC9491a mo459b(long j);

        /* renamed from: c */
        abstract AbstractC9491a mo458c(long j);

        /* renamed from: d */
        public abstract AbstractC9491a mo457d(long j);
    }

    /* renamed from: a */
    public static AbstractC9491a m477a(Type type, long j) {
        return new C9499d.C9501b().m456e((Type) C9475b.m512b(type, "type")).mo458c(j).mo457d(0L).mo459b(0L);
    }

    /* renamed from: b */
    public abstract long mo464b();

    /* renamed from: c */
    public abstract long mo463c();

    /* renamed from: d */
    public abstract Type mo462d();

    /* renamed from: e */
    public abstract long mo461e();
}
