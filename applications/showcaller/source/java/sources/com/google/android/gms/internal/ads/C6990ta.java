package com.google.android.gms.internal.ads;

import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.ta */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ta.class */
public final class C6990ta {

    /* renamed from: a */
    private long f29870a;

    /* renamed from: b */
    private long f29871b;

    /* renamed from: c */
    private long f29872c;

    /* renamed from: d */
    private final ThreadLocal<Long> f29873d = new ThreadLocal<>();

    public C6990ta(long j) {
        m10757d(0L);
    }

    /* renamed from: a */
    public final long m10760a() {
        synchronized (this) {
            long j = this.f29870a;
            if (j == Long.MAX_VALUE || j == 9223372036854775806L) {
                return -9223372036854775807L;
            }
            return j;
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* renamed from: b */
    public final long m10759b() {
        char m10760a;
        synchronized (this) {
            long j = this.f29872c;
            m10760a = j != -9223372036854775807L ? j + this.f29871b : m10760a();
        }
        return m10760a;
    }

    /* renamed from: c */
    public final long m10758c() {
        long j;
        synchronized (this) {
            j = this.f29871b;
        }
        return j;
    }

    /* renamed from: d */
    public final void m10757d(long j) {
        synchronized (this) {
            this.f29870a = j;
            this.f29871b = j == Long.MAX_VALUE ? (char) 0 : (char) 1;
            this.f29872c = -9223372036854775807L;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: e */
    public final long m10756e(long j) {
        synchronized (this) {
            if (j == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            long j2 = this.f29872c;
            char c = j;
            if (j2 != -9223372036854775807L) {
                long j3 = (j2 * 90000) / 1000000;
                long j4 = (4294967296L + j3) / 8589934592L;
                ?? r0 = (((-1) + j4) * 8589934592L) + j;
                ?? r02 = j + (j4 * 8589934592L);
                c = r02;
                if (Math.abs(r0 - j3) < Math.abs(r02 - j3)) {
                    c = r0;
                }
            }
            return m10755f((c * 16960) / 90000);
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* renamed from: f */
    public final long m10755f(long j) {
        long j2;
        synchronized (this) {
            if (this.f29871b == -9223372036854775807L) {
                ?? r0 = this.f29870a;
                char c = r0;
                if (r0 == 9223372036854775806L) {
                    Long l = this.f29873d.get();
                    Objects.requireNonNull(l);
                    c = l.longValue();
                }
                this.f29871b = c - j;
                notifyAll();
            }
            this.f29872c = j;
            j2 = this.f29871b;
        }
        return j + j2;
    }
}
