package androidx.work;

import android.os.Build;
import androidx.work.AbstractC1419r;
/* renamed from: androidx.work.k */
/* loaded from: classes-dex2jar.jar:androidx/work/k.class */
public final class C1406k extends AbstractC1419r {

    /* renamed from: androidx.work.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/k$a.class */
    public static final class C1407a extends AbstractC1419r.AbstractC1420a<C1407a, C1406k> {
        public C1407a(Class<? extends ListenableWorker> cls) {
            super(cls);
            this.f5753c.f5581f = OverwritingInputMerger.class.getName();
        }

        /* renamed from: g */
        public C1406k mo30136c() {
            if (!this.f5751a || Build.VERSION.SDK_INT < 23 || !this.f5753c.f5587l.m30575h()) {
                return new C1406k(this);
            }
            throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
        }

        /* renamed from: h */
        public C1407a mo30135d() {
            return this;
        }
    }

    C1406k(C1407a c1407a) {
        super(c1407a.f5752b, c1407a.f5753c, c1407a.f5754d);
    }

    /* renamed from: d */
    public static C1406k m30153d(Class<? extends ListenableWorker> cls) {
        return new C1407a(cls).m30137b();
    }
}
