package com.google.android.exoplayer2.util;
/* renamed from: com.google.android.exoplayer2.util.e0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/e0.class */
public final class C5509e0 {

    /* renamed from: a */
    private long f17865a;

    /* renamed from: b */
    private long f17866b;

    /* renamed from: c */
    private volatile long f17867c = -9223372036854775807L;

    public C5509e0(long j) {
        m18899h(j);
    }

    /* renamed from: f */
    public static long m18901f(long j) {
        return (j * 1000000) / 90000;
    }

    /* renamed from: i */
    public static long m18898i(long j) {
        return (j * 90000) / 1000000;
    }

    /* renamed from: a */
    public long m18906a(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f17867c != -9223372036854775807L) {
            this.f17867c = j;
        } else {
            long j2 = this.f17865a;
            if (j2 != Long.MAX_VALUE) {
                this.f17866b = j2 - j;
            }
            synchronized (this) {
                this.f17867c = j;
                notifyAll();
            }
        }
        return j + this.f17866b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* renamed from: b */
    public long m18905b(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        char c = j;
        if (this.f17867c != -9223372036854775807L) {
            long m18898i = m18898i(this.f17867c);
            long j2 = (4294967296L + m18898i) / 8589934592L;
            ?? r0 = ((j2 - 1) * 8589934592L) + j;
            ?? r02 = j + (j2 * 8589934592L);
            c = r02;
            if (Math.abs(r0 - m18898i) < Math.abs(r02 - m18898i)) {
                c = r0;
            }
        }
        return m18906a(m18901f(c));
    }

    /* renamed from: c */
    public long m18904c() {
        return this.f17865a;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: d */
    public long m18903d() {
        char c = 1;
        if (this.f17867c != -9223372036854775807L) {
            c = this.f17866b + this.f17867c;
        } else {
            ?? r0 = this.f17865a;
            if (r0 != Long.MAX_VALUE) {
                c = r0;
            }
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: e */
    public long m18902e() {
        char c = 1;
        if (this.f17865a == Long.MAX_VALUE) {
            c = 0;
        } else if (this.f17867c != -9223372036854775807L) {
            c = this.f17866b;
        }
        return c;
    }

    /* renamed from: g */
    public void m18900g() {
        this.f17867c = -9223372036854775807L;
    }

    /* renamed from: h */
    public void m18899h(long j) {
        synchronized (this) {
            C5508e.m18910f(this.f17867c == -9223372036854775807L);
            this.f17865a = j;
        }
    }

    /* renamed from: j */
    public void m18897j() {
        synchronized (this) {
            while (this.f17867c == -9223372036854775807L) {
                wait();
            }
        }
    }
}
