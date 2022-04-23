package io.a;

import java.util.Arrays;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5-dex2jar.jar:io/a/b.class */
public final class b implements Comparable<b> {

    /* renamed from: b  reason: collision with root package name */
    private static final long f36162b;

    /* renamed from: c  reason: collision with root package name */
    private static final long f36163c;
    private final AbstractC0585b e;
    private final long f;
    private volatile boolean g;

    /* renamed from: a  reason: collision with root package name */
    private static final a f36161a = new a();

    /* renamed from: d  reason: collision with root package name */
    private static final long f36164d = TimeUnit.SECONDS.toNanos(1);

    /* loaded from: classes5-dex2jar.jar:io/a/b$a.class */
    static final class a extends AbstractC0585b {
        private a() {
        }

        @Override // io.a.b.AbstractC0585b
        public final long a() {
            return System.nanoTime();
        }
    }

    /* renamed from: io.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:io/a/b$b.class */
    public static abstract class AbstractC0585b {
        public abstract long a();
    }

    static {
        long nanos = TimeUnit.DAYS.toNanos(36500L);
        f36162b = nanos;
        f36163c = -nanos;
    }

    private b(AbstractC0585b bVar, long j, long j2, boolean z) {
        this.e = bVar;
        long min = Math.min(f36162b, Math.max(f36163c, j2));
        this.f = j + min;
        this.g = z && min <= 0;
    }

    private b(AbstractC0585b bVar, long j, boolean z) {
        this(bVar, bVar.a(), j, z);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(b bVar) {
        b bVar2 = bVar;
        if (this.e == bVar2.e) {
            int i = ((this.f - bVar2.f) > 0L ? 1 : ((this.f - bVar2.f) == 0L ? 0 : -1));
            if (i < 0) {
                return -1;
            }
            return i > 0 ? 1 : 0;
        }
        throw new AssertionError("Tickers (" + this.e + " and " + bVar2.e + ") don't match. Custom Ticker should only be used in tests!");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        AbstractC0585b bVar2 = this.e;
        if (bVar2 == null) {
            if (bVar.e != null) {
                return false;
            }
        } else if (bVar2 != bVar.e) {
            return false;
        }
        return this.f == bVar.f;
    }

    public final int hashCode() {
        return Arrays.asList(this.e, Long.valueOf(this.f)).hashCode();
    }

    public final String toString() {
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        long a2 = this.e.a();
        if (!this.g && this.f - a2 <= 0) {
            this.g = true;
        }
        long convert = timeUnit.convert(this.f - a2, TimeUnit.NANOSECONDS);
        long abs = Math.abs(convert);
        long j = f36164d;
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
        if (this.e != f36161a) {
            sb.append(" (ticker=" + this.e + ")");
        }
        return sb.toString();
    }
}
