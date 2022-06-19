package io.opencensus.trace;

import io.opencensus.trace.MessageEvent;
import java.util.Objects;
/* renamed from: io.opencensus.trace.d */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/d.class */
final class C9499d extends MessageEvent {

    /* renamed from: a */
    private final MessageEvent.Type f40425a;

    /* renamed from: b */
    private final long f40426b;

    /* renamed from: c */
    private final long f40427c;

    /* renamed from: d */
    private final long f40428d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.opencensus.trace.d$b */
    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/d$b.class */
    public static final class C9501b extends MessageEvent.AbstractC9491a {

        /* renamed from: a */
        private MessageEvent.Type f40429a;

        /* renamed from: b */
        private Long f40430b;

        /* renamed from: c */
        private Long f40431c;

        /* renamed from: d */
        private Long f40432d;

        @Override // io.opencensus.trace.MessageEvent.AbstractC9491a
        /* renamed from: a */
        public MessageEvent mo460a() {
            String str = "";
            if (this.f40429a == null) {
                str = " type";
            }
            String str2 = str;
            if (this.f40430b == null) {
                str2 = str + " messageId";
            }
            String str3 = str2;
            if (this.f40431c == null) {
                str3 = str2 + " uncompressedMessageSize";
            }
            String str4 = str3;
            if (this.f40432d == null) {
                str4 = str3 + " compressedMessageSize";
            }
            if (str4.isEmpty()) {
                return new C9499d(this.f40429a, this.f40430b.longValue(), this.f40431c.longValue(), this.f40432d.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }

        @Override // io.opencensus.trace.MessageEvent.AbstractC9491a
        /* renamed from: b */
        public MessageEvent.AbstractC9491a mo459b(long j) {
            this.f40432d = Long.valueOf(j);
            return this;
        }

        @Override // io.opencensus.trace.MessageEvent.AbstractC9491a
        /* renamed from: c */
        MessageEvent.AbstractC9491a mo458c(long j) {
            this.f40430b = Long.valueOf(j);
            return this;
        }

        @Override // io.opencensus.trace.MessageEvent.AbstractC9491a
        /* renamed from: d */
        public MessageEvent.AbstractC9491a mo457d(long j) {
            this.f40431c = Long.valueOf(j);
            return this;
        }

        /* renamed from: e */
        public MessageEvent.AbstractC9491a m456e(MessageEvent.Type type) {
            Objects.requireNonNull(type, "Null type");
            this.f40429a = type;
            return this;
        }
    }

    private C9499d(MessageEvent.Type type, long j, long j2, long j3) {
        this.f40425a = type;
        this.f40426b = j;
        this.f40427c = j2;
        this.f40428d = j3;
    }

    @Override // io.opencensus.trace.MessageEvent
    /* renamed from: b */
    public long mo464b() {
        return this.f40428d;
    }

    @Override // io.opencensus.trace.MessageEvent
    /* renamed from: c */
    public long mo463c() {
        return this.f40426b;
    }

    @Override // io.opencensus.trace.MessageEvent
    /* renamed from: d */
    public MessageEvent.Type mo462d() {
        return this.f40425a;
    }

    @Override // io.opencensus.trace.MessageEvent
    /* renamed from: e */
    public long mo461e() {
        return this.f40427c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MessageEvent)) {
            return false;
        }
        MessageEvent messageEvent = (MessageEvent) obj;
        if (!this.f40425a.equals(messageEvent.mo462d()) || this.f40426b != messageEvent.mo463c() || this.f40427c != messageEvent.mo461e() || this.f40428d != messageEvent.mo464b()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long hashCode = (this.f40425a.hashCode() ^ 1000003) * 1000003;
        long j = this.f40426b;
        long j2 = ((int) (hashCode ^ (j ^ (j >>> 32)))) * 1000003;
        long j3 = this.f40427c;
        long j4 = ((int) (j2 ^ (j3 ^ (j3 >>> 32)))) * 1000003;
        long j5 = this.f40428d;
        return (int) (j4 ^ (j5 ^ (j5 >>> 32)));
    }

    public String toString() {
        return "MessageEvent{type=" + this.f40425a + ", messageId=" + this.f40426b + ", uncompressedMessageSize=" + this.f40427c + ", compressedMessageSize=" + this.f40428d + "}";
    }
}
