package p530d.p531a;

import java.util.Arrays;
import java.util.concurrent.TimeUnit;
/* renamed from: d.a.q */
/* loaded from: classes2-dex2jar.jar:d/a/q.class */
public final class C9297q implements Comparable<C9297q> {

    /* renamed from: e */
    public static final long f35867e;

    /* renamed from: f */
    public static final long f35868f;

    /* renamed from: a */
    public final AbstractC9300c f35870a;

    /* renamed from: b */
    public final long f35871b;

    /* renamed from: c */
    public volatile boolean f35872c;

    /* renamed from: d */
    public static final C9299b f35866d = new C9299b();

    /* renamed from: g */
    public static final long f35869g = TimeUnit.SECONDS.toNanos(1);

    /* renamed from: d.a.q$b */
    /* loaded from: classes2-dex2jar.jar:d/a/q$b.class */
    public static class C9299b extends AbstractC9300c {
        public C9299b() {
        }

        @Override // p530d.p531a.C9297q.AbstractC9300c
        /* renamed from: a */
        public long mo2974a() {
            return System.nanoTime();
        }
    }

    /* renamed from: d.a.q$c */
    /* loaded from: classes2-dex2jar.jar:d/a/q$c.class */
    public static abstract class AbstractC9300c {
        /* renamed from: a */
        public abstract long mo2974a();
    }

    static {
        long nanos = TimeUnit.DAYS.toNanos(36500L);
        f35867e = nanos;
        f35868f = -nanos;
    }

    public C9297q(AbstractC9300c cVar, long j, long j2, boolean z) {
        this.f35870a = cVar;
        long min = Math.min(f35867e, Math.max(f35868f, j2));
        this.f35871b = j + min;
        this.f35872c = z && min <= 0;
    }

    public C9297q(AbstractC9300c cVar, long j, boolean z) {
        this(cVar, cVar.mo2974a(), j, z);
    }

    /* renamed from: a */
    public static C9297q m2982a(long j, TimeUnit timeUnit) {
        return m2981a(j, timeUnit, f35866d);
    }

    /* renamed from: a */
    public static C9297q m2981a(long j, TimeUnit timeUnit, AbstractC9300c cVar) {
        m2979a(timeUnit, "units");
        return new C9297q(cVar, timeUnit.toNanos(j), true);
    }

    /* renamed from: a */
    public static <T> T m2979a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: a */
    public long m2978a(TimeUnit timeUnit) {
        long a = this.f35870a.mo2974a();
        if (!this.f35872c && this.f35871b - a <= 0) {
            this.f35872c = true;
        }
        return timeUnit.convert(this.f35871b - a, TimeUnit.NANOSECONDS);
    }

    /* renamed from: a */
    public final void m2980a(C9297q qVar) {
        if (this.f35870a != qVar.f35870a) {
            throw new AssertionError("Tickers (" + this.f35870a + " and " + qVar.f35870a + ") don't match. Custom Ticker should only be used in tests!");
        }
    }

    /* renamed from: a */
    public boolean m2983a() {
        if (this.f35872c) {
            return true;
        }
        if (this.f35871b - this.f35870a.mo2974a() > 0) {
            return false;
        }
        this.f35872c = true;
        return true;
    }

    /* renamed from: b */
    public int compareTo(C9297q qVar) {
        m2980a(qVar);
        long j = this.f35871b - qVar.f35871b;
        if (j < 0) {
            return -1;
        }
        return j > 0 ? 1 : 0;
    }

    /* renamed from: c */
    public boolean m2976c(C9297q qVar) {
        m2980a(qVar);
        return this.f35871b - qVar.f35871b < 0;
    }

    /* renamed from: d */
    public C9297q m2975d(C9297q qVar) {
        m2980a(qVar);
        C9297q qVar2 = qVar;
        if (m2976c(qVar)) {
            qVar2 = this;
        }
        return qVar2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9297q)) {
            return false;
        }
        C9297q qVar = (C9297q) obj;
        AbstractC9300c cVar = this.f35870a;
        if (cVar == null) {
            if (qVar.f35870a != null) {
                return false;
            }
        } else if (cVar != qVar.f35870a) {
            return false;
        }
        return this.f35871b == qVar.f35871b;
    }

    public int hashCode() {
        return Arrays.asList(this.f35870a, Long.valueOf(this.f35871b)).hashCode();
    }

    public String toString() {
        long a = m2978a(TimeUnit.NANOSECONDS);
        long abs = Math.abs(a) / f35869g;
        long abs2 = Math.abs(a) % f35869g;
        StringBuilder sb = new StringBuilder();
        if (a < 0) {
            sb.append('-');
        }
        sb.append(abs);
        if (abs2 > 0) {
            sb.append(String.format(".%09d", Long.valueOf(abs2)));
        }
        sb.append("s from now");
        if (this.f35870a != f35866d) {
            sb.append(" (ticker=" + this.f35870a + ")");
        }
        return sb.toString();
    }
}
