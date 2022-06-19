package io.opencensus.trace;

import io.opencensus.trace.AbstractC9512k;
/* renamed from: io.opencensus.trace.c */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/c.class */
final class C9496c extends AbstractC9512k {

    /* renamed from: b */
    private final boolean f40421b;

    /* renamed from: c */
    private final Status f40422c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.opencensus.trace.c$b */
    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/c$b.class */
    public static final class C9498b extends AbstractC9512k.AbstractC9513a {

        /* renamed from: a */
        private Boolean f40423a;

        /* renamed from: b */
        private Status f40424b;

        @Override // io.opencensus.trace.AbstractC9512k.AbstractC9513a
        /* renamed from: a */
        public AbstractC9512k mo429a() {
            String str = "";
            if (this.f40423a == null) {
                str = " sampleToLocalSpanStore";
            }
            if (str.isEmpty()) {
                return new C9496c(this.f40423a.booleanValue(), this.f40424b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // io.opencensus.trace.AbstractC9512k.AbstractC9513a
        /* renamed from: b */
        public AbstractC9512k.AbstractC9513a mo428b(Status status) {
            this.f40424b = status;
            return this;
        }

        /* renamed from: c */
        public AbstractC9512k.AbstractC9513a m465c(boolean z) {
            this.f40423a = Boolean.valueOf(z);
            return this;
        }
    }

    private C9496c(boolean z, Status status) {
        this.f40421b = z;
        this.f40422c = status;
    }

    @Override // io.opencensus.trace.AbstractC9512k
    /* renamed from: b */
    public boolean mo431b() {
        return this.f40421b;
    }

    @Override // io.opencensus.trace.AbstractC9512k
    /* renamed from: c */
    public Status mo430c() {
        return this.f40422c;
    }

    public boolean equals(Object obj) {
        Status status;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9512k)) {
            return false;
        }
        AbstractC9512k abstractC9512k = (AbstractC9512k) obj;
        if (this.f40421b != abstractC9512k.mo431b() || ((status = this.f40422c) != null ? !status.equals(abstractC9512k.mo430c()) : abstractC9512k.mo430c() != null)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f40421b ? 1231 : 1237;
        Status status = this.f40422c;
        return ((i ^ 1000003) * 1000003) ^ (status == null ? 0 : status.hashCode());
    }

    public String toString() {
        return "EndSpanOptions{sampleToLocalSpanStore=" + this.f40421b + ", status=" + this.f40422c + "}";
    }
}
