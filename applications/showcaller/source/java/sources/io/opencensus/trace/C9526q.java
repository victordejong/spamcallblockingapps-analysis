package io.opencensus.trace;

import java.util.Arrays;
/* renamed from: io.opencensus.trace.q */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/q.class */
public final class C9526q {

    /* renamed from: a */
    public static final C9526q f40464a = m408b((byte) 0);

    /* renamed from: b */
    private final byte f40465b;

    /* renamed from: io.opencensus.trace.q$b */
    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/q$b.class */
    public static final class C9528b {

        /* renamed from: a */
        private byte f40466a;

        private C9528b(byte b) {
            this.f40466a = b;
        }

        /* renamed from: a */
        public C9526q m405a() {
            return C9526q.m408b(this.f40466a);
        }

        /* renamed from: b */
        public C9528b m404b(boolean z) {
            if (z) {
                this.f40466a = (byte) (this.f40466a | 1);
            } else {
                this.f40466a = (byte) (this.f40466a & (-2));
            }
            return this;
        }
    }

    private C9526q(byte b) {
        this.f40465b = b;
    }

    /* renamed from: a */
    public static C9528b m409a() {
        return new C9528b((byte) 0);
    }

    /* renamed from: b */
    public static C9526q m408b(byte b) {
        return new C9526q(b);
    }

    /* renamed from: c */
    private boolean m407c(int i) {
        return (i & this.f40465b) != 0;
    }

    /* renamed from: d */
    public boolean m406d() {
        return m407c(1);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9526q)) {
            return false;
        }
        if (this.f40465b != ((C9526q) obj).f40465b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new byte[]{this.f40465b});
    }

    public String toString() {
        return "TraceOptions{sampled=" + m406d() + "}";
    }
}
