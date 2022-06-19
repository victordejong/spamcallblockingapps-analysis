package p220r4;

import java.util.concurrent.Executor;
/* renamed from: r4.g */
/* loaded from: classes-dex2jar.jar:r4/g.class */
public final class C4198g implements AbstractC4201j {

    /* renamed from: a */
    public final Executor f13185a;

    /* renamed from: b */
    public final Object f13186b = new Object();

    /* renamed from: c */
    public final AbstractC4192a f13187c;

    public C4198g(Executor executor, AbstractC4192a abstractC4192a) {
        this.f13185a = executor;
        this.f13187c = abstractC4192a;
    }

    @Override // p220r4.AbstractC4201j
    /* renamed from: a */
    public final void mo1297a(C4206o c4206o) {
        if (!c4206o.m1290c()) {
            synchronized (this.f13186b) {
                if (this.f13187c == null) {
                    return;
                }
                this.f13185a.execute(new RunnableC4197f(this, c4206o));
            }
        }
    }
}
