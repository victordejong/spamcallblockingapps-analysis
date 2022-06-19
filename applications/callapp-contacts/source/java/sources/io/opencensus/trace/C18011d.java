package io.opencensus.trace;

import io.opencensus.trace.AbstractC18027l;
/* renamed from: io.opencensus.trace.d */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/d.class */
final class C18011d extends AbstractC18027l {

    /* renamed from: b */
    private final boolean f62908b;

    /* renamed from: c */
    private final C18045s f62909c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.opencensus.trace.d$a */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/d$a.class */
    public static final class C18013a extends AbstractC18027l.AbstractC18028a {

        /* renamed from: a */
        Boolean f62910a;

        /* renamed from: b */
        private C18045s f62911b;

        @Override // io.opencensus.trace.AbstractC18027l.AbstractC18028a
        /* renamed from: a */
        public final AbstractC18027l.AbstractC18028a mo4544a(C18045s c18045s) {
            this.f62911b = c18045s;
            return this;
        }

        @Override // io.opencensus.trace.AbstractC18027l.AbstractC18028a
        /* renamed from: a */
        public final AbstractC18027l mo4545a() {
            String str = "";
            if (this.f62910a == null) {
                str = " sampleToLocalSpanStore";
            }
            if (str.isEmpty()) {
                return new C18011d(this.f62910a.booleanValue(), this.f62911b);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str)));
        }
    }

    private C18011d(boolean z, C18045s c18045s) {
        this.f62908b = z;
        this.f62909c = c18045s;
    }

    @Override // io.opencensus.trace.AbstractC18027l
    /* renamed from: a */
    public final boolean mo4548a() {
        return this.f62908b;
    }

    @Override // io.opencensus.trace.AbstractC18027l
    /* renamed from: b */
    public final C18045s mo4547b() {
        return this.f62909c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC18027l)) {
            return false;
        }
        AbstractC18027l abstractC18027l = (AbstractC18027l) obj;
        if (this.f62908b != abstractC18027l.mo4548a()) {
            return false;
        }
        C18045s c18045s = this.f62909c;
        return c18045s == null ? abstractC18027l.mo4547b() == null : c18045s.equals(abstractC18027l.mo4547b());
    }

    public final int hashCode() {
        int i = this.f62908b ? 1231 : 1237;
        C18045s c18045s = this.f62909c;
        return ((i ^ 1000003) * 1000003) ^ (c18045s == null ? 0 : c18045s.hashCode());
    }

    public final String toString() {
        return "EndSpanOptions{sampleToLocalSpanStore=" + this.f62908b + ", status=" + this.f62909c + "}";
    }
}
