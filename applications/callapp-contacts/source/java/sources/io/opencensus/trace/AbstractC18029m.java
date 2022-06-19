package io.opencensus.trace;

import io.opencensus.p507b.C17993b;
import io.opencensus.trace.C18014e;
/* renamed from: io.opencensus.trace.m */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/m.class */
public abstract class AbstractC18029m extends AbstractC18021h {

    /* renamed from: io.opencensus.trace.m$a */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/m$a.class */
    public static abstract class AbstractC18030a {
        /* renamed from: a */
        abstract AbstractC18030a mo4537a(long j);

        /* renamed from: a */
        abstract AbstractC18030a mo4536a(EnumC18031b enumC18031b);

        /* renamed from: a */
        public abstract AbstractC18029m mo4538a();

        /* renamed from: b */
        public abstract AbstractC18030a mo4535b(long j);

        /* renamed from: c */
        public abstract AbstractC18030a mo4534c(long j);
    }

    /* renamed from: io.opencensus.trace.m$b */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/m$b.class */
    public enum EnumC18031b {
        SENT,
        RECEIVED
    }

    /* renamed from: a */
    public static AbstractC18030a m4542a(EnumC18031b enumC18031b, long j) {
        return new C18014e.C18016a().mo4536a((EnumC18031b) C17993b.m4562a(enumC18031b, "type")).mo4537a(j).mo4535b(0L).mo4534c(0L);
    }

    /* renamed from: a */
    public abstract EnumC18031b mo4543a();

    /* renamed from: b */
    public abstract long mo4541b();

    /* renamed from: c */
    public abstract long mo4540c();

    /* renamed from: d */
    public abstract long mo4539d();
}
