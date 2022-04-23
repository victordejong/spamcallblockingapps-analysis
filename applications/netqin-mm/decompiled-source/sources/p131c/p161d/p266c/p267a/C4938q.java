package p131c.p161d.p266c.p267a;

import com.inmobi.ads.C8303s;
import java.util.concurrent.TimeUnit;
/* renamed from: c.d.c.a.q */
/* loaded from: classes2-dex2jar.jar:c/d/c/a/q.class */
public final class C4938q {

    /* renamed from: a */
    public final AbstractC4943u f17571a = AbstractC4943u.m24747b();

    /* renamed from: b */
    public boolean f17572b;

    /* renamed from: c */
    public long f17573c;

    /* renamed from: d */
    public long f17574d;

    /* renamed from: c.d.c.a.q$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/a/q$a.class */
    public static /* synthetic */ class C4939a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17575a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[TimeUnit.values().length];
            f17575a = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17575a[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17575a[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f17575a[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f17575a[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f17575a[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f17575a[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: a */
    public static TimeUnit m24764a(long j) {
        return TimeUnit.DAYS.convert(j, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.DAYS : TimeUnit.HOURS.convert(j, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.HOURS : TimeUnit.MINUTES.convert(j, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.MINUTES : TimeUnit.SECONDS.convert(j, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.SECONDS : TimeUnit.MILLISECONDS.convert(j, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.MILLISECONDS : TimeUnit.MICROSECONDS.convert(j, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.MICROSECONDS : TimeUnit.NANOSECONDS;
    }

    /* renamed from: b */
    public static String m24761b(TimeUnit timeUnit) {
        switch (C4939a.f17575a[timeUnit.ordinal()]) {
            case 1:
                return "ns";
            case 2:
                return "μs";
            case 3:
                return "ms";
            case 4:
                return C8303s.f32309d;
            case 5:
                return "min";
            case 6:
                return "h";
            case 7:
                return "d";
            default:
                throw new AssertionError();
        }
    }

    /* renamed from: e */
    public static C4938q m24758e() {
        C4938q qVar = new C4938q();
        qVar.m24760c();
        return qVar;
    }

    /* renamed from: f */
    public static C4938q m24757f() {
        return new C4938q();
    }

    /* renamed from: a */
    public final long m24765a() {
        return this.f17572b ? (this.f17571a.mo8523a() - this.f17574d) + this.f17573c : this.f17573c;
    }

    /* renamed from: a */
    public long m24763a(TimeUnit timeUnit) {
        return timeUnit.convert(m24765a(), TimeUnit.NANOSECONDS);
    }

    /* renamed from: b */
    public C4938q m24762b() {
        this.f17573c = 0L;
        this.f17572b = false;
        return this;
    }

    /* renamed from: c */
    public C4938q m24760c() {
        C4933n.m24775b(!this.f17572b, "This stopwatch is already running.");
        this.f17572b = true;
        this.f17574d = this.f17571a.mo8523a();
        return this;
    }

    /* renamed from: d */
    public C4938q m24759d() {
        long a = this.f17571a.mo8523a();
        C4933n.m24775b(this.f17572b, "This stopwatch is already stopped.");
        this.f17572b = false;
        this.f17573c += a - this.f17574d;
        return this;
    }

    public String toString() {
        long a = m24765a();
        TimeUnit a2 = m24764a(a);
        double d = a;
        double convert = TimeUnit.NANOSECONDS.convert(1L, a2);
        Double.isNaN(d);
        Double.isNaN(convert);
        double d2 = d / convert;
        return C4930m.m24805a(d2) + " " + m24761b(a2);
    }
}
