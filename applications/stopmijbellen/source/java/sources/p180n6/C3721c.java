package p180n6;

import java.util.concurrent.TimeUnit;
/* renamed from: n6.c */
/* loaded from: classes-dex2jar.jar:n6/c.class */
public class C3721c {

    /* renamed from: a */
    public long f12110a;

    /* renamed from: b */
    public long f12111b;

    /* renamed from: c */
    public TimeUnit f12112c;

    /* renamed from: n6.c$a */
    /* loaded from: classes-dex2jar.jar:n6/c$a.class */
    public static /* synthetic */ class C3722a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12113a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[TimeUnit.values().length];
            f12113a = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12113a[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12113a[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public C3721c(long j, long j2, TimeUnit timeUnit) {
        this.f12110a = j;
        this.f12111b = j2;
        this.f12112c = timeUnit;
    }

    /* renamed from: a */
    public double m1842a() {
        int i = C3722a.f12113a[this.f12112c.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? this.f12110a / this.f12112c.toSeconds(this.f12111b) : (this.f12110a / this.f12111b) * TimeUnit.SECONDS.toMillis(1L) : (this.f12110a / this.f12111b) * TimeUnit.SECONDS.toMicros(1L) : (this.f12110a / this.f12111b) * TimeUnit.SECONDS.toNanos(1L);
    }
}
