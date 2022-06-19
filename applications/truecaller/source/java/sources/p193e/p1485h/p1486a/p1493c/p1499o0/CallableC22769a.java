package p193e.p1485h.p1486a.p1493c.p1499o0;

import java.util.concurrent.Callable;
/* renamed from: e.h.a.c.o0.a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/o0/a.class */
public class CallableC22769a implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ C22770b f63073a;

    public CallableC22769a(C22770b c22770b) {
        this.f63073a = c22770b;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        try {
            this.f63073a.f63077d.mo7850a();
            return null;
        } catch (Exception e) {
            this.f63073a.m7803d().m7855b(this.f63073a.m7802e(), e.getLocalizedMessage());
            return null;
        }
    }
}
