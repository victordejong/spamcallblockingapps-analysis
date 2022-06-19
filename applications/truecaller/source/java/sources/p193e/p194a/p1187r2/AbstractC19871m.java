package p193e.p194a.p1187r2;

import android.content.Context;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: e.a.r2.m */
/* loaded from: classes5-dex2jar.jar:e/a/r2/m.class */
public abstract class AbstractC19871m implements AbstractC19870l {

    /* renamed from: a */
    public final AbstractC19845a0 f56284a;

    /* renamed from: b */
    public final C19872n f56285b;

    /* renamed from: c */
    public volatile AbstractC19868j f56286c = null;

    public AbstractC19871m(AbstractC19845a0 abstractC19845a0, C19872n c19872n) {
        this.f56284a = abstractC19845a0;
        this.f56285b = c19872n;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19870l
    /* renamed from: a */
    public AbstractC19868j mo11848a(Context context, Class<? extends ServiceC19863i> cls, int i) {
        return new C19858g0(context, this.f56284a, this.f56285b, cls, i);
    }

    @Override // p193e.p194a.p1187r2.AbstractC19870l
    /* renamed from: b */
    public AbstractC19868j mo11847b(Executor executor) {
        return new C19880q(executor, this.f56284a, this.f56285b);
    }

    @Override // p193e.p194a.p1187r2.AbstractC19870l
    /* renamed from: c */
    public AbstractC19868j mo11846c(String str, int i) {
        return new C19880q(new ThreadPoolExecutor(0, i, 5L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new ThreadFactoryC19869k(str)), this.f56284a, this.f56285b);
    }

    @Override // p193e.p194a.p1187r2.AbstractC19870l
    /* renamed from: d */
    public AbstractC19868j mo11845d() {
        AbstractC19868j abstractC19868j = this.f56286c;
        AbstractC19868j abstractC19868j2 = abstractC19868j;
        if (abstractC19868j == null) {
            synchronized (this.f56284a) {
                AbstractC19868j abstractC19868j3 = this.f56286c;
                abstractC19868j2 = abstractC19868j3;
                if (abstractC19868j3 == null) {
                    abstractC19868j2 = new C19886t(this.f56284a, this.f56285b, Looper.getMainLooper());
                    this.f56286c = abstractC19868j2;
                }
            }
        }
        return abstractC19868j2;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19870l
    /* renamed from: e */
    public AbstractC19868j mo11844e(String str) {
        return new C19873o(this.f56284a, this.f56285b, str);
    }

    @Override // p193e.p194a.p1187r2.AbstractC19870l
    /* renamed from: f */
    public AbstractC19868j mo11843f(String str, long j) {
        return new C19873o(this.f56284a, this.f56285b, str, j);
    }

    /* renamed from: g */
    public AbstractC19868j m11842g(Looper looper) {
        return new C19886t(this.f56284a, this.f56285b, looper);
    }
}
