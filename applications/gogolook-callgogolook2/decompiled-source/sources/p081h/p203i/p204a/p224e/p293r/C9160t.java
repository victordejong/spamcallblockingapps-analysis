package p081h.p203i.p204a.p224e.p293r;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: h.i.a.e.r.t */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/t.class */
public final class C9160t<TResult> implements AbstractC9129a0<TResult> {

    /* renamed from: a */
    public final Executor f20861a;

    /* renamed from: b */
    public final Object f20862b = new Object();
    @GuardedBy("mLock")

    /* renamed from: c */
    public AbstractC9132c<TResult> f20863c;

    public C9160t(@NonNull Executor executor, @NonNull AbstractC9132c<TResult> cVar) {
        this.f20861a = executor;
        this.f20863c = cVar;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9129a0
    /* renamed from: a */
    public final void mo15977a(@NonNull AbstractC9143h<TResult> hVar) {
        synchronized (this.f20862b) {
            if (this.f20863c != null) {
                this.f20861a.execute(new RunnableC9159s(this, hVar));
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9129a0
    /* renamed from: c */
    public final void mo15975c() {
        synchronized (this.f20862b) {
            this.f20863c = null;
        }
    }
}
