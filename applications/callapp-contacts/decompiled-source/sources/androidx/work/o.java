package androidx.work;

import android.os.Build;
import androidx.work.v;
import java.time.Duration;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/o.class */
public final class o extends v {

    /* loaded from: classes-dex2jar.jar:androidx/work/o$a.class */
    public static final class a extends v.a<a, o> {
        public a(Class<? extends ListenableWorker> cls, long j, TimeUnit timeUnit) {
            super(cls);
            this.f6244c.setPeriodic(timeUnit.toMillis(j));
        }

        public a(Class<? extends ListenableWorker> cls, long j, TimeUnit timeUnit, long j2, TimeUnit timeUnit2) {
            super(cls);
            this.f6244c.setPeriodic(timeUnit.toMillis(j), timeUnit2.toMillis(j2));
        }

        public a(Class<? extends ListenableWorker> cls, Duration duration) {
            super(cls);
            this.f6244c.setPeriodic(duration.toMillis());
        }

        public a(Class<? extends ListenableWorker> cls, Duration duration, Duration duration2) {
            super(cls);
            this.f6244c.setPeriodic(duration.toMillis(), duration2.toMillis());
        }

        @Override // androidx.work.v.a
        final /* bridge */ /* synthetic */ a a() {
            return this;
        }

        @Override // androidx.work.v.a
        final /* synthetic */ o b() {
            if (this.f6242a && Build.VERSION.SDK_INT >= 23 && this.f6244c.constraints.f5968d) {
                throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
            } else if (!this.f6244c.runInForeground || Build.VERSION.SDK_INT < 23 || !this.f6244c.constraints.f5968d) {
                return new o(this);
            } else {
                throw new IllegalArgumentException("Cannot run in foreground with an idle mode constraint");
            }
        }
    }

    o(a aVar) {
        super(aVar.f6243b, aVar.f6244c, aVar.f6245d);
    }
}
