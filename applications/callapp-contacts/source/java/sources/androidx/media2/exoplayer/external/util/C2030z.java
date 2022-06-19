package androidx.media2.exoplayer.external.util;
/* renamed from: androidx.media2.exoplayer.external.util.z */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/z.class */
public final class C2030z {

    /* renamed from: a */
    public long f8162a;

    /* renamed from: b */
    public long f8163b;

    /* renamed from: c */
    public volatile long f8164c = -9223372036854775807L;

    public C2030z(long j) {
        m41480a(j);
    }

    /* renamed from: d */
    public static long m41476d(long j) {
        return (j * 1000000) / 90000;
    }

    /* renamed from: e */
    public static long m41475e(long j) {
        return (j * 90000) / 1000000;
    }

    /* renamed from: a */
    public final long m41481a() {
        if (this.f8162a == Long.MAX_VALUE) {
            return 0L;
        }
        if (this.f8164c != -9223372036854775807L) {
            return this.f8163b;
        }
        return -9223372036854775807L;
    }

    /* renamed from: a */
    public final void m41480a(long j) {
        synchronized (this) {
            C1993a.m41686b(this.f8164c == -9223372036854775807L);
            this.f8162a = j;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* renamed from: b */
    public final long m41478b(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        char c = j;
        if (this.f8164c != -9223372036854775807L) {
            long m41475e = m41475e(this.f8164c);
            long j2 = (4294967296L + m41475e) / 8589934592L;
            ?? r0 = ((j2 - 1) * 8589934592L) + j;
            ?? r02 = j + (j2 * 8589934592L);
            c = r02;
            if (Math.abs(r0 - m41475e) < Math.abs(r02 - m41475e)) {
                c = r0;
            }
        }
        return m41477c(m41476d(c));
    }

    /* renamed from: b */
    public final void m41479b() throws InterruptedException {
        synchronized (this) {
            while (this.f8164c == -9223372036854775807L) {
                wait();
            }
        }
    }

    /* renamed from: c */
    public final long m41477c(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f8164c != -9223372036854775807L) {
            this.f8164c = j;
        } else {
            long j2 = this.f8162a;
            if (j2 != Long.MAX_VALUE) {
                this.f8163b = j2 - j;
            }
            synchronized (this) {
                this.f8164c = j;
                notifyAll();
            }
        }
        return j + this.f8163b;
    }
}
