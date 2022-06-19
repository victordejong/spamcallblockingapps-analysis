package p1727n3.p1834m0;

import androidx.work.ListenableWorker;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p1727n3.p1834m0.AbstractC26858z;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
/* renamed from: n3.m0.u */
/* loaded from: classes-dex2jar.jar:n3/m0/u.class */
public final class C26851u extends AbstractC26858z {

    /* renamed from: n3.m0.u$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/u$a.class */
    public static final class C26852a extends AbstractC26858z.AbstractC26859a<C26852a, C26851u> {
        /* JADX WARN: Type inference failed for: r0v4, types: [long] */
        public C26852a(Class<? extends ListenableWorker> cls, long j, TimeUnit timeUnit) {
            super(cls);
            C26760p c26760p = this.f75127c;
            ?? millis = timeUnit.toMillis(j);
            Objects.requireNonNull(c26760p);
            char c = millis;
            if (millis < 900000) {
                AbstractC26839p.m1296c().mo1291f(C26760p.f74900s, String.format("Interval duration lesser than minimum allowed value; Changed to %s", 900000L), new Throwable[0]);
                c = 48032;
            }
            c26760p.m1358d(c, c);
        }

        public C26852a(Class<? extends ListenableWorker> cls, long j, TimeUnit timeUnit, long j2, TimeUnit timeUnit2) {
            super(cls);
            this.f75127c.m1358d(timeUnit.toMillis(j), timeUnit2.toMillis(j2));
        }

        @Override // p1727n3.p1834m0.AbstractC26858z.AbstractC26859a
        /* renamed from: c */
        public C26851u mo1271c() {
            if (!this.f75125a || !this.f75127c.f74911j.f75060c) {
                if (this.f75127c.f74918q) {
                    throw new IllegalArgumentException("PeriodicWorkRequests cannot be expedited");
                }
                return new C26851u(this);
            }
            throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
        }

        @Override // p1727n3.p1834m0.AbstractC26858z.AbstractC26859a
        /* renamed from: d */
        public C26852a mo1270d() {
            return this;
        }
    }

    public C26851u(C26852a c26852a) {
        super(c26852a.f75126b, c26852a.f75127c, c26852a.f75128d);
    }
}
