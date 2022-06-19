package androidx.work;

import android.os.Build;
import androidx.work.AbstractC1311u;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.work.o */
/* loaded from: classes-dex2jar.jar:androidx/work/o.class */
public final class C1302o extends AbstractC1311u {

    /* renamed from: androidx.work.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/o$a.class */
    public static final class C1303a extends AbstractC1311u.AbstractC1312a<C1303a, C1302o> {
        public C1303a(Class<? extends ListenableWorker> cls, long j, TimeUnit timeUnit) {
            super(cls);
            this.f4359c.m17807a(timeUnit.toMillis(j));
        }

        /* renamed from: a */
        public C1302o mo17523d() {
            if (!this.f4357a || Build.VERSION.SDK_INT < 23 || !this.f4359c.f4022j.m17938c()) {
                if (this.f4359c.f4029q && Build.VERSION.SDK_INT >= 23 && this.f4359c.f4022j.m17938c()) {
                    throw new IllegalArgumentException("Cannot run in foreground with an idle mode constraint");
                }
                return new C1302o(this);
            }
            throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
        }

        /* renamed from: b */
        public C1303a mo17524c() {
            return this;
        }
    }

    C1302o(C1303a c1303a) {
        super(c1303a.f4358b, c1303a.f4359c, c1303a.f4360d);
    }
}
