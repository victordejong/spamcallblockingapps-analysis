package androidx.media2.exoplayer.external.util;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/z.class */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    public long f4191a;

    /* renamed from: b  reason: collision with root package name */
    public long f4192b;

    /* renamed from: c  reason: collision with root package name */
    public volatile long f4193c = -9223372036854775807L;

    public z(long j) {
        a(j);
    }

    public static long d(long j) {
        return (j * 1000000) / 90000;
    }

    public static long e(long j) {
        return (j * 90000) / 1000000;
    }

    public final long a() {
        if (this.f4191a == Long.MAX_VALUE) {
            return 0L;
        }
        if (this.f4193c == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return this.f4192b;
    }

    public final void a(long j) {
        synchronized (this) {
            a.b(this.f4193c == -9223372036854775807L);
            this.f4191a = j;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long b(long r8) {
        /*
            r7 = this;
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000c
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            return r0
        L_0x000c:
            r0 = r8
            r10 = r0
            r0 = r7
            long r0 = r0.f4193c
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0058
            r0 = r7
            long r0 = r0.f4193c
            long r0 = e(r0)
            r12 = r0
            r0 = 4294967296(0x100000000, double:2.121995791E-314)
            r1 = r12
            long r0 = r0 + r1
            r1 = 8589934592(0x200000000, double:4.243991582E-314)
            long r0 = r0 / r1
            r10 = r0
            r0 = r10
            r1 = 1
            long r0 = r0 - r1
            r1 = 8589934592(0x200000000, double:4.243991582E-314)
            long r0 = r0 * r1
            r1 = r8
            long r0 = r0 + r1
            r14 = r0
            r0 = r8
            r1 = r10
            r2 = 8589934592(0x200000000, double:4.243991582E-314)
            long r1 = r1 * r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r8
            r10 = r0
            r0 = r14
            r1 = r12
            long r0 = r0 - r1
            long r0 = java.lang.Math.abs(r0)
            r1 = r8
            r2 = r12
            long r1 = r1 - r2
            long r1 = java.lang.Math.abs(r1)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0058
            r0 = r14
            r10 = r0
        L_0x0058:
            r0 = r7
            r1 = r10
            long r1 = d(r1)
            long r0 = r0.c(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.z.b(long):long");
    }

    public final void b() throws InterruptedException {
        synchronized (this) {
            while (this.f4193c == -9223372036854775807L) {
                wait();
            }
        }
    }

    public final long c(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f4193c != -9223372036854775807L) {
            this.f4193c = j;
        } else {
            long j2 = this.f4191a;
            if (j2 != Long.MAX_VALUE) {
                this.f4192b = j2 - j;
            }
            synchronized (this) {
                this.f4193c = j;
                notifyAll();
            }
        }
        return j + this.f4192b;
    }
}
