package com.google.android.exoplayer2.util;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/ad.class */
public final class ad {

    /* renamed from: a  reason: collision with root package name */
    private boolean f22271a;

    /* renamed from: b  reason: collision with root package name */
    private long f22272b;

    /* renamed from: c  reason: collision with root package name */
    private long f22273c;

    /* renamed from: d  reason: collision with root package name */
    private long f22274d = -9223372036854775807L;

    public ad(long j) {
        this.f22272b = j;
    }

    public final long a() {
        long j;
        synchronized (this) {
            j = this.f22272b;
        }
        return j;
    }

    public final void a(long j) {
        synchronized (this) {
            this.f22272b = j;
            this.f22274d = -9223372036854775807L;
            this.f22271a = false;
        }
    }

    public final long b() {
        synchronized (this) {
            long j = this.f22274d;
            if (j != -9223372036854775807L) {
                return j + this.f22273c;
            }
            long j2 = this.f22272b;
            if (j2 != Long.MAX_VALUE) {
                return j2;
            }
            return -9223372036854775807L;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long b(long r8) {
        /*
            r7 = this;
            r0 = r7
            monitor-enter(r0)
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0010
            r0 = r7
            monitor-exit(r0)
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            return r0
        L_0x0010:
            r0 = r7
            long r0 = r0.f22274d     // Catch: all -> 0x0076
            r10 = r0
            r0 = r8
            r12 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0063
            r0 = r10
            r1 = 90000(0x15f90, double:4.4466E-319)
            long r0 = r0 * r1
            r1 = 1000000(0xf4240, double:4.940656E-318)
            long r0 = r0 / r1
            r14 = r0
            r0 = 4294967296(0x100000000, double:2.121995791E-314)
            r1 = r14
            long r0 = r0 + r1
            r1 = 8589934592(0x200000000, double:4.243991582E-314)
            long r0 = r0 / r1
            r12 = r0
            r0 = r12
            r1 = 1
            long r0 = r0 - r1
            r1 = 8589934592(0x200000000, double:4.243991582E-314)
            long r0 = r0 * r1
            r1 = r8
            long r0 = r0 + r1
            r10 = r0
            r0 = r8
            r1 = r12
            r2 = 8589934592(0x200000000, double:4.243991582E-314)
            long r1 = r1 * r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r8
            r12 = r0
            r0 = r10
            r1 = r14
            long r0 = r0 - r1
            long r0 = java.lang.Math.abs(r0)     // Catch: all -> 0x0076
            r1 = r8
            r2 = r14
            long r1 = r1 - r2
            long r1 = java.lang.Math.abs(r1)     // Catch: all -> 0x0076
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0063
            r0 = r10
            r12 = r0
        L_0x0063:
            r0 = r7
            r1 = r12
            r2 = 1000000(0xf4240, double:4.940656E-318)
            long r1 = r1 * r2
            r2 = 90000(0x15f90, double:4.4466E-319)
            long r1 = r1 / r2
            long r0 = r0.c(r1)     // Catch: all -> 0x0076
            r8 = r0
            r0 = r7
            monitor-exit(r0)
            r0 = r8
            return r0
        L_0x0076:
            r16 = move-exception
            r0 = r7
            monitor-exit(r0)
            r0 = r16
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.ad.b(long):long");
    }

    public final long c() {
        synchronized (this) {
            if (this.f22272b == Long.MAX_VALUE) {
                return 0L;
            }
            if (this.f22274d == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.f22273c;
        }
    }

    public final long c(long j) {
        synchronized (this) {
            if (j == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            if (this.f22274d != -9223372036854775807L) {
                this.f22274d = j;
            } else {
                long j2 = this.f22272b;
                if (j2 != Long.MAX_VALUE) {
                    this.f22273c = j2 - j;
                }
                this.f22274d = j;
                notifyAll();
            }
            return j + this.f22273c;
        }
    }
}
