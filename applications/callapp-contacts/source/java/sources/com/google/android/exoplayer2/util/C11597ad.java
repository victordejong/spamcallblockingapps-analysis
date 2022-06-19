package com.google.android.exoplayer2.util;
/* renamed from: com.google.android.exoplayer2.util.ad */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/ad.class */
public final class C11597ad {

    /* renamed from: a */
    private boolean f38644a;

    /* renamed from: b */
    private long f38645b;

    /* renamed from: c */
    private long f38646c;

    /* renamed from: d */
    private long f38647d = -9223372036854775807L;

    public C11597ad(long j) {
        this.f38645b = j;
    }

    /* renamed from: a */
    public final long m20009a() {
        long j;
        synchronized (this) {
            j = this.f38645b;
        }
        return j;
    }

    /* renamed from: a */
    public final void m20008a(long j) {
        synchronized (this) {
            this.f38645b = j;
            this.f38647d = -9223372036854775807L;
            this.f38644a = false;
        }
    }

    /* renamed from: b */
    public final long m20007b() {
        synchronized (this) {
            long j = this.f38647d;
            if (j != -9223372036854775807L) {
                return j + this.f38646c;
            }
            long j2 = this.f38645b;
            if (j2 == Long.MAX_VALUE) {
                return -9223372036854775807L;
            }
            return j2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: b */
    public final long m20006b(long j) {
        synchronized (this) {
            if (j == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            long j2 = this.f38647d;
            char c = j;
            if (j2 != -9223372036854775807L) {
                long j3 = (j2 * 90000) / 1000000;
                long j4 = (4294967296L + j3) / 8589934592L;
                ?? r0 = ((j4 - 1) * 8589934592L) + j;
                ?? r02 = j + (j4 * 8589934592L);
                c = r02;
                if (Math.abs(r0 - j3) < Math.abs(r02 - j3)) {
                    c = r0;
                }
            }
            return m20004c((c * 16960) / 90000);
        }
    }

    /* renamed from: c */
    public final long m20005c() {
        synchronized (this) {
            if (this.f38645b == Long.MAX_VALUE) {
                return 0L;
            }
            if (this.f38647d == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.f38646c;
        }
    }

    /* renamed from: c */
    public final long m20004c(long j) {
        synchronized (this) {
            if (j == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            if (this.f38647d != -9223372036854775807L) {
                this.f38647d = j;
            } else {
                long j2 = this.f38645b;
                if (j2 != Long.MAX_VALUE) {
                    this.f38646c = j2 - j;
                }
                this.f38647d = j;
                notifyAll();
            }
            return j + this.f38646c;
        }
    }
}
