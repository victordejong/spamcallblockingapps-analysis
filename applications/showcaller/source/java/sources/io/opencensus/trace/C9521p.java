package io.opencensus.trace;
/* renamed from: io.opencensus.trace.p */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/p.class */
public final class C9521p implements Comparable<C9521p> {

    /* renamed from: d */
    public static final C9521p f40460d = new C9521p(0, 0);

    /* renamed from: e */
    private final long f40461e;

    /* renamed from: f */
    private final long f40462f;

    private C9521p(long j, long j2) {
        this.f40461e = j;
        this.f40462f = j2;
    }

    /* renamed from: a */
    public int compareTo(C9521p c9521p) {
        long j = this.f40461e;
        long j2 = c9521p.f40461e;
        int i = -1;
        if (j != j2) {
            if (j >= j2) {
                i = 1;
            }
            return i;
        }
        long j3 = this.f40462f;
        long j4 = c9521p.f40462f;
        if (j3 == j4) {
            return 0;
        }
        if (j3 >= j4) {
            i = 1;
        }
        return i;
    }

    /* renamed from: d */
    public void m413d(char[] cArr, int i) {
        C9507h.m442d(this.f40461e, cArr, i);
        C9507h.m442d(this.f40462f, cArr, i + 16);
    }

    /* renamed from: e */
    public String m412e() {
        char[] cArr = new char[32];
        m413d(cArr, 0);
        return new String(cArr);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9521p)) {
            return false;
        }
        C9521p c9521p = (C9521p) obj;
        if (this.f40461e != c9521p.f40461e || this.f40462f != c9521p.f40462f) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f40461e;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f40462f;
        return ((i + 31) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "TraceId{traceId=" + m412e() + "}";
    }
}
