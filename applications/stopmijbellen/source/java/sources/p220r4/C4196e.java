package p220r4;

import ba.C0758g;
import java.util.concurrent.Executor;
import p122i2.RunnableC3089y;
/* renamed from: r4.e */
/* loaded from: classes-dex2jar.jar:r4/e.class */
public final class C4196e implements AbstractC4201j {

    /* renamed from: a */
    public final Executor f13180a;

    /* renamed from: b */
    public final Object f13181b = new Object();

    /* renamed from: c */
    public final C0758g f13182c;

    public C4196e(Executor executor, C0758g c0758g) {
        this.f13180a = executor;
        this.f13182c = c0758g;
    }

    @Override // p220r4.AbstractC4201j
    /* renamed from: a */
    public final void mo1297a(C4206o c4206o) {
        synchronized (this.f13181b) {
            if (this.f13182c == null) {
                return;
            }
            this.f13180a.execute(new RunnableC3089y(this, c4206o));
        }
    }
}
