package io.opencensus.trace;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/u.class */
public final class u implements Comparable<u> {

    /* renamed from: a  reason: collision with root package name */
    public static final u f36335a = new u(0, 0);

    /* renamed from: b  reason: collision with root package name */
    private final long f36336b;

    /* renamed from: c  reason: collision with root package name */
    private final long f36337c;

    private u(long j, long j2) {
        this.f36336b = j;
        this.f36337c = j2;
    }

    public final String a() {
        char[] cArr = new char[32];
        i.a(this.f36336b, cArr, 0);
        i.a(this.f36337c, cArr, 16);
        return new String(cArr);
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(u uVar) {
        u uVar2 = uVar;
        long j = this.f36336b;
        long j2 = uVar2.f36336b;
        if (j != j2) {
            return j < j2 ? -1 : 1;
        }
        long j3 = this.f36337c;
        long j4 = uVar2.f36337c;
        if (j3 == j4) {
            return 0;
        }
        return j3 < j4 ? -1 : 1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f36336b == uVar.f36336b && this.f36337c == uVar.f36337c;
    }

    public final int hashCode() {
        long j = this.f36336b;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f36337c;
        return ((i + 31) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        return "TraceId{traceId=" + a() + "}";
    }
}
