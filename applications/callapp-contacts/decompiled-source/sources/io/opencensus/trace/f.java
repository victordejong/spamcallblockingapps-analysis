package io.opencensus.trace;

import io.opencensus.common.c;
import io.opencensus.trace.n;
@Deprecated
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/f.class */
final class f extends n {

    /* renamed from: a  reason: collision with root package name */
    private final c f36303a;

    /* renamed from: b  reason: collision with root package name */
    private final n.b f36304b;

    /* renamed from: c  reason: collision with root package name */
    private final long f36305c;

    /* renamed from: d  reason: collision with root package name */
    private final long f36306d;
    private final long e;

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/f$a.class */
    static final class a extends n.a {

        /* renamed from: a  reason: collision with root package name */
        n.b f36307a;

        /* renamed from: b  reason: collision with root package name */
        private c f36308b;

        /* renamed from: c  reason: collision with root package name */
        private Long f36309c;

        /* renamed from: d  reason: collision with root package name */
        private Long f36310d;
        private Long e;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.opencensus.trace.n.a
        public final n.a a(long j) {
            this.f36309c = Long.valueOf(j);
            return this;
        }

        @Override // io.opencensus.trace.n.a
        public final n a() {
            String str = "";
            if (this.f36307a == null) {
                str = " type";
            }
            String str2 = str;
            if (this.f36309c == null) {
                str2 = str + " messageId";
            }
            String str3 = str2;
            if (this.f36310d == null) {
                str3 = str2 + " uncompressedMessageSize";
            }
            String str4 = str3;
            if (this.e == null) {
                str4 = str3 + " compressedMessageSize";
            }
            if (str4.isEmpty()) {
                return new f(this.f36308b, this.f36307a, this.f36309c.longValue(), this.f36310d.longValue(), this.e.longValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str4)));
        }

        @Override // io.opencensus.trace.n.a
        public final n.a b(long j) {
            this.f36310d = Long.valueOf(j);
            return this;
        }

        @Override // io.opencensus.trace.n.a
        public final n.a c(long j) {
            this.e = Long.valueOf(j);
            return this;
        }
    }

    private f(c cVar, n.b bVar, long j, long j2, long j3) {
        this.f36303a = cVar;
        this.f36304b = bVar;
        this.f36305c = j;
        this.f36306d = j2;
        this.e = j3;
    }

    @Override // io.opencensus.trace.n
    public final c a() {
        return this.f36303a;
    }

    @Override // io.opencensus.trace.n
    public final n.b b() {
        return this.f36304b;
    }

    @Override // io.opencensus.trace.n
    public final long c() {
        return this.f36305c;
    }

    @Override // io.opencensus.trace.n
    public final long d() {
        return this.f36306d;
    }

    @Override // io.opencensus.trace.n
    public final long e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        c cVar = this.f36303a;
        if (cVar == null) {
            if (nVar.a() != null) {
                return false;
            }
        } else if (!cVar.equals(nVar.a())) {
            return false;
        }
        return this.f36304b.equals(nVar.b()) && this.f36305c == nVar.c() && this.f36306d == nVar.d() && this.e == nVar.e();
    }

    public final int hashCode() {
        c cVar = this.f36303a;
        long hashCode = ((((cVar == null ? 0 : cVar.hashCode()) ^ 1000003) * 1000003) ^ this.f36304b.hashCode()) * 1000003;
        long j = this.f36305c;
        long j2 = ((int) (hashCode ^ (j ^ (j >>> 32)))) * 1000003;
        long j3 = this.f36306d;
        long j4 = ((int) (j2 ^ (j3 ^ (j3 >>> 32)))) * 1000003;
        long j5 = this.e;
        return (int) (j4 ^ (j5 ^ (j5 >>> 32)));
    }

    public final String toString() {
        return "NetworkEvent{kernelTimestamp=" + this.f36303a + ", type=" + this.f36304b + ", messageId=" + this.f36305c + ", uncompressedMessageSize=" + this.f36306d + ", compressedMessageSize=" + this.e + "}";
    }
}
