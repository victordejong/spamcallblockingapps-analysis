package io.opencensus.trace;

import java.util.Arrays;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/v.class */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public static final v f36338a = a((byte) 0);

    /* renamed from: b  reason: collision with root package name */
    private final byte f36339b;

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/v$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private byte f36340a;

        private a(byte b2) {
            this.f36340a = b2;
        }

        public final a a() {
            this.f36340a = (byte) (this.f36340a | 1);
            return this;
        }

        public final v b() {
            return v.a(this.f36340a);
        }
    }

    private v(byte b2) {
        this.f36339b = b2;
    }

    public static a a() {
        return new a((byte) 0);
    }

    public static v a(byte b2) {
        return new v(b2);
    }

    public final boolean b() {
        return c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c() {
        return (this.f36339b & 1) != 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof v) && this.f36339b == ((v) obj).f36339b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new byte[]{this.f36339b});
    }

    public final String toString() {
        return "TraceOptions{sampled=" + c() + "}";
    }
}
