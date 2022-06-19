package io.opencensus.trace;

import io.opencensus.common.AbstractC17996c;
import io.opencensus.trace.AbstractC18032n;
@Deprecated
/* renamed from: io.opencensus.trace.f */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/f.class */
final class C18017f extends AbstractC18032n {

    /* renamed from: a */
    private final AbstractC17996c f62920a;

    /* renamed from: b */
    private final AbstractC18032n.EnumC18034b f62921b;

    /* renamed from: c */
    private final long f62922c;

    /* renamed from: d */
    private final long f62923d;

    /* renamed from: e */
    private final long f62924e;

    /* renamed from: io.opencensus.trace.f$a */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/f$a.class */
    static final class C18019a extends AbstractC18032n.AbstractC18033a {

        /* renamed from: a */
        AbstractC18032n.EnumC18034b f62925a;

        /* renamed from: b */
        private AbstractC17996c f62926b;

        /* renamed from: c */
        private Long f62927c;

        /* renamed from: d */
        private Long f62928d;

        /* renamed from: e */
        private Long f62929e;

        @Override // io.opencensus.trace.AbstractC18032n.AbstractC18033a
        /* renamed from: a */
        public final AbstractC18032n.AbstractC18033a mo4527a(long j) {
            this.f62927c = Long.valueOf(j);
            return this;
        }

        @Override // io.opencensus.trace.AbstractC18032n.AbstractC18033a
        /* renamed from: a */
        public final AbstractC18032n mo4528a() {
            String str = "";
            if (this.f62925a == null) {
                str = " type";
            }
            String str2 = str;
            if (this.f62927c == null) {
                str2 = str + " messageId";
            }
            String str3 = str2;
            if (this.f62928d == null) {
                str3 = str2 + " uncompressedMessageSize";
            }
            String str4 = str3;
            if (this.f62929e == null) {
                str4 = str3 + " compressedMessageSize";
            }
            if (str4.isEmpty()) {
                return new C18017f(this.f62926b, this.f62925a, this.f62927c.longValue(), this.f62928d.longValue(), this.f62929e.longValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str4)));
        }

        @Override // io.opencensus.trace.AbstractC18032n.AbstractC18033a
        /* renamed from: b */
        public final AbstractC18032n.AbstractC18033a mo4526b(long j) {
            this.f62928d = Long.valueOf(j);
            return this;
        }

        @Override // io.opencensus.trace.AbstractC18032n.AbstractC18033a
        /* renamed from: c */
        public final AbstractC18032n.AbstractC18033a mo4525c(long j) {
            this.f62929e = Long.valueOf(j);
            return this;
        }
    }

    private C18017f(AbstractC17996c abstractC17996c, AbstractC18032n.EnumC18034b enumC18034b, long j, long j2, long j3) {
        this.f62920a = abstractC17996c;
        this.f62921b = enumC18034b;
        this.f62922c = j;
        this.f62923d = j2;
        this.f62924e = j3;
    }

    @Override // io.opencensus.trace.AbstractC18032n
    /* renamed from: a */
    public final AbstractC17996c mo4533a() {
        return this.f62920a;
    }

    @Override // io.opencensus.trace.AbstractC18032n
    /* renamed from: b */
    public final AbstractC18032n.EnumC18034b mo4532b() {
        return this.f62921b;
    }

    @Override // io.opencensus.trace.AbstractC18032n
    /* renamed from: c */
    public final long mo4531c() {
        return this.f62922c;
    }

    @Override // io.opencensus.trace.AbstractC18032n
    /* renamed from: d */
    public final long mo4530d() {
        return this.f62923d;
    }

    @Override // io.opencensus.trace.AbstractC18032n
    /* renamed from: e */
    public final long mo4529e() {
        return this.f62924e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC18032n)) {
            return false;
        }
        AbstractC18032n abstractC18032n = (AbstractC18032n) obj;
        AbstractC17996c abstractC17996c = this.f62920a;
        if (abstractC17996c == null) {
            if (abstractC18032n.mo4533a() != null) {
                return false;
            }
        } else if (!abstractC17996c.equals(abstractC18032n.mo4533a())) {
            return false;
        }
        return this.f62921b.equals(abstractC18032n.mo4532b()) && this.f62922c == abstractC18032n.mo4531c() && this.f62923d == abstractC18032n.mo4530d() && this.f62924e == abstractC18032n.mo4529e();
    }

    public final int hashCode() {
        AbstractC17996c abstractC17996c = this.f62920a;
        long hashCode = ((((abstractC17996c == null ? 0 : abstractC17996c.hashCode()) ^ 1000003) * 1000003) ^ this.f62921b.hashCode()) * 1000003;
        long j = this.f62922c;
        long j2 = ((int) (hashCode ^ (j ^ (j >>> 32)))) * 1000003;
        long j3 = this.f62923d;
        long j4 = ((int) (j2 ^ (j3 ^ (j3 >>> 32)))) * 1000003;
        long j5 = this.f62924e;
        return (int) (j4 ^ (j5 ^ (j5 >>> 32)));
    }

    public final String toString() {
        return "NetworkEvent{kernelTimestamp=" + this.f62920a + ", type=" + this.f62921b + ", messageId=" + this.f62922c + ", uncompressedMessageSize=" + this.f62923d + ", compressedMessageSize=" + this.f62924e + "}";
    }
}
