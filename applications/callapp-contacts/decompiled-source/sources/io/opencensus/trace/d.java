package io.opencensus.trace;

import io.opencensus.trace.l;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/d.class */
final class d extends l {

    /* renamed from: b  reason: collision with root package name */
    private final boolean f36291b;

    /* renamed from: c  reason: collision with root package name */
    private final s f36292c;

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/d$a.class */
    static final class a extends l.a {

        /* renamed from: a  reason: collision with root package name */
        Boolean f36293a;

        /* renamed from: b  reason: collision with root package name */
        private s f36294b;

        @Override // io.opencensus.trace.l.a
        public final l.a a(s sVar) {
            this.f36294b = sVar;
            return this;
        }

        @Override // io.opencensus.trace.l.a
        public final l a() {
            String str = "";
            if (this.f36293a == null) {
                str = " sampleToLocalSpanStore";
            }
            if (str.isEmpty()) {
                return new d(this.f36293a.booleanValue(), this.f36294b);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str)));
        }
    }

    private d(boolean z, s sVar) {
        this.f36291b = z;
        this.f36292c = sVar;
    }

    @Override // io.opencensus.trace.l
    public final boolean a() {
        return this.f36291b;
    }

    @Override // io.opencensus.trace.l
    public final s b() {
        return this.f36292c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f36291b != lVar.a()) {
            return false;
        }
        s sVar = this.f36292c;
        return sVar == null ? lVar.b() == null : sVar.equals(lVar.b());
    }

    public final int hashCode() {
        int i = this.f36291b ? 1231 : 1237;
        s sVar = this.f36292c;
        return ((i ^ 1000003) * 1000003) ^ (sVar == null ? 0 : sVar.hashCode());
    }

    public final String toString() {
        return "EndSpanOptions{sampleToLocalSpanStore=" + this.f36291b + ", status=" + this.f36292c + "}";
    }
}
