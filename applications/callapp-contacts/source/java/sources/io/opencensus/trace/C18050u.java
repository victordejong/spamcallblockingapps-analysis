package io.opencensus.trace;
/* renamed from: io.opencensus.trace.u */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/u.class */
public final class C18050u implements Comparable<C18050u> {

    /* renamed from: a */
    public static final C18050u f62973a = new C18050u(0, 0);

    /* renamed from: b */
    private final long f62974b;

    /* renamed from: c */
    private final long f62975c;

    private C18050u(long j, long j2) {
        this.f62974b = j;
        this.f62975c = j2;
    }

    /* renamed from: a */
    public final String m4506a() {
        char[] cArr = new char[32];
        C18022i.m4549a(this.f62974b, cArr, 0);
        C18022i.m4549a(this.f62975c, cArr, 16);
        return new String(cArr);
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(C18050u c18050u) {
        C18050u c18050u2 = c18050u;
        long j = this.f62974b;
        long j2 = c18050u2.f62974b;
        if (j != j2) {
            return j < j2 ? -1 : 1;
        }
        long j3 = this.f62975c;
        long j4 = c18050u2.f62975c;
        if (j3 == j4) {
            return 0;
        }
        return j3 < j4 ? -1 : 1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C18050u)) {
            return false;
        }
        C18050u c18050u = (C18050u) obj;
        return this.f62974b == c18050u.f62974b && this.f62975c == c18050u.f62975c;
    }

    public final int hashCode() {
        long j = this.f62974b;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f62975c;
        return ((i + 31) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        return "TraceId{traceId=" + m4506a() + "}";
    }
}
