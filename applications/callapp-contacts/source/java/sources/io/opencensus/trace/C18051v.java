package io.opencensus.trace;

import java.util.Arrays;
/* renamed from: io.opencensus.trace.v */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/v.class */
public final class C18051v {

    /* renamed from: a */
    public static final C18051v f62976a = m4504a((byte) 0);

    /* renamed from: b */
    private final byte f62977b;

    /* renamed from: io.opencensus.trace.v$a */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/v$a.class */
    public static final class C18053a {

        /* renamed from: a */
        private byte f62978a;

        private C18053a(byte b) {
            this.f62978a = b;
        }

        /* renamed from: a */
        public final C18053a m4501a() {
            this.f62978a = (byte) (this.f62978a | 1);
            return this;
        }

        /* renamed from: b */
        public final C18051v m4500b() {
            return C18051v.m4504a(this.f62978a);
        }
    }

    private C18051v(byte b) {
        this.f62977b = b;
    }

    /* renamed from: a */
    public static C18053a m4505a() {
        return new C18053a((byte) 0);
    }

    /* renamed from: a */
    public static C18051v m4504a(byte b) {
        return new C18051v(b);
    }

    /* renamed from: b */
    public final boolean m4503b() {
        return m4502c();
    }

    /* renamed from: c */
    public final boolean m4502c() {
        return (this.f62977b & 1) != 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof C18051v) && this.f62977b == ((C18051v) obj).f62977b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new byte[]{this.f62977b});
    }

    public final String toString() {
        return "TraceOptions{sampled=" + m4502c() + "}";
    }
}
