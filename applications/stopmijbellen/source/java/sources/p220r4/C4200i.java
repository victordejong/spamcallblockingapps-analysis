package p220r4;

import java.util.concurrent.Executor;
/* renamed from: r4.i */
/* loaded from: classes-dex2jar.jar:r4/i.class */
public final class C4200i implements AbstractC4201j {

    /* renamed from: a */
    public final Executor f13190a;

    /* renamed from: b */
    public final Object f13191b = new Object();

    /* renamed from: c */
    public final AbstractC4193b f13192c;

    public C4200i(Executor executor, AbstractC4193b abstractC4193b) {
        this.f13190a = executor;
        this.f13192c = abstractC4193b;
    }

    @Override // p220r4.AbstractC4201j
    /* renamed from: a */
    public final void mo1297a(C4206o c4206o) {
        if (c4206o.m1290c()) {
            synchronized (this.f13191b) {
                if (this.f13192c == null) {
                    return;
                }
                this.f13190a.execute(new RunnableC4199h(this, c4206o));
            }
        }
    }
}
