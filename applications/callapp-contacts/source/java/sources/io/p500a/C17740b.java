package io.p500a;

import java.util.Arrays;
import java.util.concurrent.TimeUnit;
/* renamed from: io.a.b */
/* loaded from: classes5-dex2jar.jar:io/a/b.class */
public final class C17740b implements Comparable<C17740b> {

    /* renamed from: b */
    private static final long f62610b;

    /* renamed from: c */
    private static final long f62611c;

    /* renamed from: e */
    private final AbstractC17743b f62613e;

    /* renamed from: f */
    private final long f62614f;

    /* renamed from: g */
    private volatile boolean f62615g;

    /* renamed from: a */
    private static final C17742a f62609a = new C17742a();

    /* renamed from: d */
    private static final long f62612d = TimeUnit.SECONDS.toNanos(1);

    /* renamed from: io.a.b$a */
    /* loaded from: classes5-dex2jar.jar:io/a/b$a.class */
    static final class C17742a extends AbstractC17743b {
        private C17742a() {
        }

        @Override // io.p500a.C17740b.AbstractC17743b
        /* renamed from: a */
        public final long mo4755a() {
            return System.nanoTime();
        }
    }

    /* renamed from: io.a.b$b */
    /* loaded from: classes5-dex2jar.jar:io/a/b$b.class */
    public static abstract class AbstractC17743b {
        /* renamed from: a */
        public abstract long mo4755a();
    }

    static {
        long nanos = TimeUnit.DAYS.toNanos(36500L);
        f62610b = nanos;
        f62611c = -nanos;
    }

    private C17740b(AbstractC17743b abstractC17743b, long j, long j2, boolean z) {
        this.f62613e = abstractC17743b;
        long min = Math.min(f62610b, Math.max(f62611c, j2));
        this.f62614f = j + min;
        this.f62615g = z && min <= 0;
    }

    private C17740b(AbstractC17743b abstractC17743b, long j, boolean z) {
        this(abstractC17743b, abstractC17743b.mo4755a(), j, z);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(C17740b c17740b) {
        C17740b c17740b2 = c17740b;
        if (this.f62613e == c17740b2.f62613e) {
            int i = ((this.f62614f - c17740b2.f62614f) > 0L ? 1 : ((this.f62614f - c17740b2.f62614f) == 0L ? 0 : -1));
            if (i < 0) {
                return -1;
            }
            return i > 0 ? 1 : 0;
        }
        throw new AssertionError("Tickers (" + this.f62613e + " and " + c17740b2.f62613e + ") don't match. Custom Ticker should only be used in tests!");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C17740b)) {
            return false;
        }
        C17740b c17740b = (C17740b) obj;
        AbstractC17743b abstractC17743b = this.f62613e;
        if (abstractC17743b == null) {
            if (c17740b.f62613e != null) {
                return false;
            }
        } else if (abstractC17743b != c17740b.f62613e) {
            return false;
        }
        return this.f62614f == c17740b.f62614f;
    }

    public final int hashCode() {
        return Arrays.asList(this.f62613e, Long.valueOf(this.f62614f)).hashCode();
    }

    public final String toString() {
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        long mo4755a = this.f62613e.mo4755a();
        if (!this.f62615g && this.f62614f - mo4755a <= 0) {
            this.f62615g = true;
        }
        long convert = timeUnit.convert(this.f62614f - mo4755a, TimeUnit.NANOSECONDS);
        long abs = Math.abs(convert);
        long j = f62612d;
        long j2 = abs / j;
        long abs2 = Math.abs(convert) % j;
        StringBuilder sb = new StringBuilder();
        if (convert < 0) {
            sb.append('-');
        }
        sb.append(j2);
        if (abs2 > 0) {
            sb.append(String.format(".%09d", Long.valueOf(abs2)));
        }
        sb.append("s from now");
        if (this.f62613e != f62609a) {
            sb.append(" (ticker=" + this.f62613e + ")");
        }
        return sb.toString();
    }
}
