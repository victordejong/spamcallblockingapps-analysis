package androidx.work;

import android.os.Build;
import androidx.work.AbstractC3166v;
import java.time.Duration;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.work.o */
/* loaded from: classes-dex2jar.jar:androidx/work/o.class */
public final class C3156o extends AbstractC3166v {

    /* renamed from: androidx.work.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/o$a.class */
    public static final class C3157a extends AbstractC3166v.AbstractC3167a<C3157a, C3156o> {
        public C3157a(Class<? extends ListenableWorker> cls, long j, TimeUnit timeUnit) {
            super(cls);
            this.f11524c.setPeriodic(timeUnit.toMillis(j));
        }

        public C3157a(Class<? extends ListenableWorker> cls, long j, TimeUnit timeUnit, long j2, TimeUnit timeUnit2) {
            super(cls);
            this.f11524c.setPeriodic(timeUnit.toMillis(j), timeUnit2.toMillis(j2));
        }

        public C3157a(Class<? extends ListenableWorker> cls, Duration duration) {
            super(cls);
            this.f11524c.setPeriodic(duration.toMillis());
        }

        public C3157a(Class<? extends ListenableWorker> cls, Duration duration, Duration duration2) {
            super(cls);
            this.f11524c.setPeriodic(duration.toMillis(), duration2.toMillis());
        }

        @Override // androidx.work.AbstractC3166v.AbstractC3167a
        /* renamed from: a */
        final /* bridge */ /* synthetic */ C3157a mo39260a() {
            return this;
        }

        @Override // androidx.work.AbstractC3166v.AbstractC3167a
        /* renamed from: b */
        final /* synthetic */ C3156o mo39255b() {
            if (!this.f11522a || Build.VERSION.SDK_INT < 23 || !this.f11524c.constraints.f11132d) {
                if (this.f11524c.runInForeground && Build.VERSION.SDK_INT >= 23 && this.f11524c.constraints.f11132d) {
                    throw new IllegalArgumentException("Cannot run in foreground with an idle mode constraint");
                }
                return new C3156o(this);
            }
            throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
        }
    }

    C3156o(C3157a c3157a) {
        super(c3157a.f11523b, c3157a.f11524c, c3157a.f11525d);
    }
}
