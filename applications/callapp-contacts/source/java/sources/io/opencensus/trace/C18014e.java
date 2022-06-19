package io.opencensus.trace;

import io.opencensus.trace.AbstractC18029m;
import java.util.Objects;
/* renamed from: io.opencensus.trace.e */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/e.class */
final class C18014e extends AbstractC18029m {

    /* renamed from: a */
    private final AbstractC18029m.EnumC18031b f62912a;

    /* renamed from: b */
    private final long f62913b;

    /* renamed from: c */
    private final long f62914c;

    /* renamed from: d */
    private final long f62915d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.opencensus.trace.e$a */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/e$a.class */
    public static final class C18016a extends AbstractC18029m.AbstractC18030a {

        /* renamed from: a */
        private AbstractC18029m.EnumC18031b f62916a;

        /* renamed from: b */
        private Long f62917b;

        /* renamed from: c */
        private Long f62918c;

        /* renamed from: d */
        private Long f62919d;

        @Override // io.opencensus.trace.AbstractC18029m.AbstractC18030a
        /* renamed from: a */
        final AbstractC18029m.AbstractC18030a mo4537a(long j) {
            this.f62917b = Long.valueOf(j);
            return this;
        }

        @Override // io.opencensus.trace.AbstractC18029m.AbstractC18030a
        /* renamed from: a */
        public final AbstractC18029m.AbstractC18030a mo4536a(AbstractC18029m.EnumC18031b enumC18031b) {
            Objects.requireNonNull(enumC18031b, "Null type");
            this.f62916a = enumC18031b;
            return this;
        }

        @Override // io.opencensus.trace.AbstractC18029m.AbstractC18030a
        /* renamed from: a */
        public final AbstractC18029m mo4538a() {
            String str = "";
            if (this.f62916a == null) {
                str = " type";
            }
            String str2 = str;
            if (this.f62917b == null) {
                str2 = str + " messageId";
            }
            String str3 = str2;
            if (this.f62918c == null) {
                str3 = str2 + " uncompressedMessageSize";
            }
            String str4 = str3;
            if (this.f62919d == null) {
                str4 = str3 + " compressedMessageSize";
            }
            if (str4.isEmpty()) {
                return new C18014e(this.f62916a, this.f62917b.longValue(), this.f62918c.longValue(), this.f62919d.longValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str4)));
        }

        @Override // io.opencensus.trace.AbstractC18029m.AbstractC18030a
        /* renamed from: b */
        public final AbstractC18029m.AbstractC18030a mo4535b(long j) {
            this.f62918c = Long.valueOf(j);
            return this;
        }

        @Override // io.opencensus.trace.AbstractC18029m.AbstractC18030a
        /* renamed from: c */
        public final AbstractC18029m.AbstractC18030a mo4534c(long j) {
            this.f62919d = Long.valueOf(j);
            return this;
        }
    }

    private C18014e(AbstractC18029m.EnumC18031b enumC18031b, long j, long j2, long j3) {
        this.f62912a = enumC18031b;
        this.f62913b = j;
        this.f62914c = j2;
        this.f62915d = j3;
    }

    @Override // io.opencensus.trace.AbstractC18029m
    /* renamed from: a */
    public final AbstractC18029m.EnumC18031b mo4543a() {
        return this.f62912a;
    }

    @Override // io.opencensus.trace.AbstractC18029m
    /* renamed from: b */
    public final long mo4541b() {
        return this.f62913b;
    }

    @Override // io.opencensus.trace.AbstractC18029m
    /* renamed from: c */
    public final long mo4540c() {
        return this.f62914c;
    }

    @Override // io.opencensus.trace.AbstractC18029m
    /* renamed from: d */
    public final long mo4539d() {
        return this.f62915d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC18029m)) {
            return false;
        }
        AbstractC18029m abstractC18029m = (AbstractC18029m) obj;
        return this.f62912a.equals(abstractC18029m.mo4543a()) && this.f62913b == abstractC18029m.mo4541b() && this.f62914c == abstractC18029m.mo4540c() && this.f62915d == abstractC18029m.mo4539d();
    }

    public final int hashCode() {
        long hashCode = (this.f62912a.hashCode() ^ 1000003) * 1000003;
        long j = this.f62913b;
        long j2 = ((int) (hashCode ^ (j ^ (j >>> 32)))) * 1000003;
        long j3 = this.f62914c;
        long j4 = ((int) (j2 ^ (j3 ^ (j3 >>> 32)))) * 1000003;
        long j5 = this.f62915d;
        return (int) (j4 ^ (j5 ^ (j5 >>> 32)));
    }

    public final String toString() {
        return "MessageEvent{type=" + this.f62912a + ", messageId=" + this.f62913b + ", uncompressedMessageSize=" + this.f62914c + ", compressedMessageSize=" + this.f62915d + "}";
    }
}
