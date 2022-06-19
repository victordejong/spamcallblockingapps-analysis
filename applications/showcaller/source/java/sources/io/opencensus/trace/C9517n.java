package io.opencensus.trace;
/* renamed from: io.opencensus.trace.n */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/n.class */
public final class C9517n implements Comparable<C9517n> {

    /* renamed from: d */
    public static final C9517n f40457d = new C9517n(0);

    /* renamed from: e */
    private final long f40458e;

    private C9517n(long j) {
        this.f40458e = j;
    }

    /* renamed from: a */
    public int compareTo(C9517n c9517n) {
        long j = this.f40458e;
        long j2 = c9517n.f40458e;
        return j < j2 ? -1 : j == j2 ? 0 : 1;
    }

    /* renamed from: d */
    public void m420d(char[] cArr, int i) {
        C9507h.m442d(this.f40458e, cArr, i);
    }

    /* renamed from: e */
    public byte[] m419e() {
        byte[] bArr = new byte[8];
        C9507h.m441e(this.f40458e, bArr, 0);
        return bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9517n)) {
            return false;
        }
        if (this.f40458e != ((C9517n) obj).f40458e) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public String m418f() {
        char[] cArr = new char[16];
        m420d(cArr, 0);
        return new String(cArr);
    }

    public int hashCode() {
        long j = this.f40458e;
        return (int) (j ^ (j >>> 32));
    }

    public String toString() {
        return "SpanId{spanId=" + m418f() + "}";
    }
}
