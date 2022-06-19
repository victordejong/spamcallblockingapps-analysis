package io.opencensus.trace;
/* renamed from: io.opencensus.trace.r */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/r.class */
public final class C18044r implements Comparable<C18044r> {

    /* renamed from: a */
    public static final C18044r f62949a = new C18044r(0);

    /* renamed from: b */
    private final long f62950b;

    private C18044r(long j) {
        this.f62950b = j;
    }

    /* renamed from: a */
    public final byte[] m4511a() {
        byte[] bArr = new byte[8];
        C18022i.m4550a(this.f62950b, bArr);
        return bArr;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(C18044r c18044r) {
        long j = this.f62950b;
        long j2 = c18044r.f62950b;
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof C18044r) && this.f62950b == ((C18044r) obj).f62950b;
    }

    public final int hashCode() {
        long j = this.f62950b;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SpanId{spanId=");
        char[] cArr = new char[16];
        C18022i.m4549a(this.f62950b, cArr, 0);
        sb.append(new String(cArr));
        sb.append("}");
        return sb.toString();
    }
}
