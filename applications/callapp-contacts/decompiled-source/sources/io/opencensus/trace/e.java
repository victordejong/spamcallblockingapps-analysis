package io.opencensus.trace;

import io.opencensus.trace.m;
import java.util.Objects;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/e.class */
final class e extends m {

    /* renamed from: a  reason: collision with root package name */
    private final m.b f36295a;

    /* renamed from: b  reason: collision with root package name */
    private final long f36296b;

    /* renamed from: c  reason: collision with root package name */
    private final long f36297c;

    /* renamed from: d  reason: collision with root package name */
    private final long f36298d;

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/e$a.class */
    static final class a extends m.a {

        /* renamed from: a  reason: collision with root package name */
        private m.b f36299a;

        /* renamed from: b  reason: collision with root package name */
        private Long f36300b;

        /* renamed from: c  reason: collision with root package name */
        private Long f36301c;

        /* renamed from: d  reason: collision with root package name */
        private Long f36302d;

        @Override // io.opencensus.trace.m.a
        final m.a a(long j) {
            this.f36300b = Long.valueOf(j);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.opencensus.trace.m.a
        public final m.a a(m.b bVar) {
            Objects.requireNonNull(bVar, "Null type");
            this.f36299a = bVar;
            return this;
        }

        @Override // io.opencensus.trace.m.a
        public final m a() {
            String str = "";
            if (this.f36299a == null) {
                str = " type";
            }
            String str2 = str;
            if (this.f36300b == null) {
                str2 = str + " messageId";
            }
            String str3 = str2;
            if (this.f36301c == null) {
                str3 = str2 + " uncompressedMessageSize";
            }
            String str4 = str3;
            if (this.f36302d == null) {
                str4 = str3 + " compressedMessageSize";
            }
            if (str4.isEmpty()) {
                return new e(this.f36299a, this.f36300b.longValue(), this.f36301c.longValue(), this.f36302d.longValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str4)));
        }

        @Override // io.opencensus.trace.m.a
        public final m.a b(long j) {
            this.f36301c = Long.valueOf(j);
            return this;
        }

        @Override // io.opencensus.trace.m.a
        public final m.a c(long j) {
            this.f36302d = Long.valueOf(j);
            return this;
        }
    }

    private e(m.b bVar, long j, long j2, long j3) {
        this.f36295a = bVar;
        this.f36296b = j;
        this.f36297c = j2;
        this.f36298d = j3;
    }

    @Override // io.opencensus.trace.m
    public final m.b a() {
        return this.f36295a;
    }

    @Override // io.opencensus.trace.m
    public final long b() {
        return this.f36296b;
    }

    @Override // io.opencensus.trace.m
    public final long c() {
        return this.f36297c;
    }

    @Override // io.opencensus.trace.m
    public final long d() {
        return this.f36298d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f36295a.equals(mVar.a()) && this.f36296b == mVar.b() && this.f36297c == mVar.c() && this.f36298d == mVar.d();
    }

    public final int hashCode() {
        long hashCode = (this.f36295a.hashCode() ^ 1000003) * 1000003;
        long j = this.f36296b;
        long j2 = ((int) (hashCode ^ (j ^ (j >>> 32)))) * 1000003;
        long j3 = this.f36297c;
        long j4 = ((int) (j2 ^ (j3 ^ (j3 >>> 32)))) * 1000003;
        long j5 = this.f36298d;
        return (int) (j4 ^ (j5 ^ (j5 >>> 32)));
    }

    public final String toString() {
        return "MessageEvent{type=" + this.f36295a + ", messageId=" + this.f36296b + ", uncompressedMessageSize=" + this.f36297c + ", compressedMessageSize=" + this.f36298d + "}";
    }
}
