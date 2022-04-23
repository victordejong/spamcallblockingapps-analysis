package p081h.p203i.p204a.p224e.p293r;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* renamed from: h.i.a.e.r.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/m.class */
public final class C9153m<TResult, TContinuationResult> implements AbstractC9129a0<TResult> {

    /* renamed from: a */
    public final Executor f20845a;

    /* renamed from: b */
    public final AbstractC9128a<TResult, TContinuationResult> f20846b;

    /* renamed from: c */
    public final C9135d0<TContinuationResult> f20847c;

    public C9153m(@NonNull Executor executor, @NonNull AbstractC9128a<TResult, TContinuationResult> aVar, @NonNull C9135d0<TContinuationResult> d0Var) {
        this.f20845a = executor;
        this.f20846b = aVar;
        this.f20847c = d0Var;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9129a0
    /* renamed from: a */
    public final void mo15977a(@NonNull AbstractC9143h<TResult> hVar) {
        this.f20845a.execute(new RunnableC9155o(this, hVar));
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9129a0
    /* renamed from: c */
    public final void mo15975c() {
        throw new UnsupportedOperationException();
    }
}
