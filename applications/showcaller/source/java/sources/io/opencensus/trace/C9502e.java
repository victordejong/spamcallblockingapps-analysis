package io.opencensus.trace;

import io.opencensus.common.AbstractC9490b;
import io.opencensus.trace.NetworkEvent;
import java.util.Objects;
@Deprecated
/* renamed from: io.opencensus.trace.e */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/e.class */
final class C9502e extends NetworkEvent {

    /* renamed from: a */
    private final AbstractC9490b f40433a;

    /* renamed from: b */
    private final NetworkEvent.Type f40434b;

    /* renamed from: c */
    private final long f40435c;

    /* renamed from: d */
    private final long f40436d;

    /* renamed from: e */
    private final long f40437e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.opencensus.trace.e$b */
    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/e$b.class */
    public static final class C9504b extends NetworkEvent.AbstractC9492a {

        /* renamed from: a */
        private AbstractC9490b f40438a;

        /* renamed from: b */
        private NetworkEvent.Type f40439b;

        /* renamed from: c */
        private Long f40440c;

        /* renamed from: d */
        private Long f40441d;

        /* renamed from: e */
        private Long f40442e;

        @Override // io.opencensus.trace.NetworkEvent.AbstractC9492a
        /* renamed from: a */
        public NetworkEvent mo450a() {
            String str = "";
            if (this.f40439b == null) {
                str = " type";
            }
            String str2 = str;
            if (this.f40440c == null) {
                str2 = str + " messageId";
            }
            String str3 = str2;
            if (this.f40441d == null) {
                str3 = str2 + " uncompressedMessageSize";
            }
            String str4 = str3;
            if (this.f40442e == null) {
                str4 = str3 + " compressedMessageSize";
            }
            if (str4.isEmpty()) {
                return new C9502e(this.f40438a, this.f40439b, this.f40440c.longValue(), this.f40441d.longValue(), this.f40442e.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }

        @Override // io.opencensus.trace.NetworkEvent.AbstractC9492a
        /* renamed from: b */
        public NetworkEvent.AbstractC9492a mo449b(long j) {
            this.f40442e = Long.valueOf(j);
            return this;
        }

        @Override // io.opencensus.trace.NetworkEvent.AbstractC9492a
        /* renamed from: c */
        NetworkEvent.AbstractC9492a mo448c(long j) {
            this.f40440c = Long.valueOf(j);
            return this;
        }

        @Override // io.opencensus.trace.NetworkEvent.AbstractC9492a
        /* renamed from: d */
        public NetworkEvent.AbstractC9492a mo447d(long j) {
            this.f40441d = Long.valueOf(j);
            return this;
        }

        /* renamed from: e */
        public NetworkEvent.AbstractC9492a m446e(NetworkEvent.Type type) {
            Objects.requireNonNull(type, "Null type");
            this.f40439b = type;
            return this;
        }
    }

    private C9502e(AbstractC9490b abstractC9490b, NetworkEvent.Type type, long j, long j2, long j3) {
        this.f40434b = type;
        this.f40435c = j;
        this.f40436d = j2;
        this.f40437e = j3;
    }

    @Override // io.opencensus.trace.NetworkEvent
    /* renamed from: b */
    public long mo455b() {
        return this.f40437e;
    }

    @Override // io.opencensus.trace.NetworkEvent
    /* renamed from: c */
    public AbstractC9490b mo454c() {
        return this.f40433a;
    }

    @Override // io.opencensus.trace.NetworkEvent
    /* renamed from: d */
    public long mo453d() {
        return this.f40435c;
    }

    @Override // io.opencensus.trace.NetworkEvent
    /* renamed from: e */
    public NetworkEvent.Type mo452e() {
        return this.f40434b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NetworkEvent)) {
            return false;
        }
        NetworkEvent networkEvent = (NetworkEvent) obj;
        if (this.f40433a != null) {
            networkEvent.mo454c();
            throw null;
        }
        if (networkEvent.mo454c() != null || !this.f40434b.equals(networkEvent.mo452e()) || this.f40435c != networkEvent.mo453d() || this.f40436d != networkEvent.mo451f() || this.f40437e != networkEvent.mo455b()) {
            z = false;
        }
        return z;
    }

    @Override // io.opencensus.trace.NetworkEvent
    /* renamed from: f */
    public long mo451f() {
        return this.f40436d;
    }

    public int hashCode() {
        if (this.f40433a == null) {
            long hashCode = (((1000003 ^ 0) * 1000003) ^ this.f40434b.hashCode()) * 1000003;
            long j = this.f40435c;
            long j2 = ((int) (hashCode ^ (j ^ (j >>> 32)))) * 1000003;
            long j3 = this.f40436d;
            long j4 = ((int) (j2 ^ (j3 ^ (j3 >>> 32)))) * 1000003;
            long j5 = this.f40437e;
            return (int) (j4 ^ (j5 ^ (j5 >>> 32)));
        }
        throw null;
    }

    public String toString() {
        return "NetworkEvent{kernelTimestamp=" + this.f40433a + ", type=" + this.f40434b + ", messageId=" + this.f40435c + ", uncompressedMessageSize=" + this.f40436d + ", compressedMessageSize=" + this.f40437e + "}";
    }
}
