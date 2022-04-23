package io.opencensus.trace;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/r.class */
public final class r implements Comparable<r> {

    /* renamed from: a  reason: collision with root package name */
    public static final r f36328a = new r(0);

    /* renamed from: b  reason: collision with root package name */
    private final long f36329b;

    private r(long j) {
        this.f36329b = j;
    }

    public final byte[] a() {
        byte[] bArr = new byte[8];
        i.a(this.f36329b, bArr);
        return bArr;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(r rVar) {
        long j = this.f36329b;
        long j2 = rVar.f36329b;
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof r) && this.f36329b == ((r) obj).f36329b;
    }

    public final int hashCode() {
        long j = this.f36329b;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SpanId{spanId=");
        char[] cArr = new char[16];
        i.a(this.f36329b, cArr, 0);
        sb.append(new String(cArr));
        sb.append("}");
        return sb.toString();
    }
}
