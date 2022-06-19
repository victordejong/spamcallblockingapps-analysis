package p193e.p194a.p1187r2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* renamed from: e.a.r2.t */
/* loaded from: classes5-dex2jar.jar:e/a/r2/t.class */
public class C19886t implements AbstractC19868j {

    /* renamed from: a */
    public final C19872n f56313a;

    /* renamed from: b */
    public final AbstractC19845a0 f56314b;

    /* renamed from: c */
    public final Looper f56315c;

    /* renamed from: e.a.r2.t$a */
    /* loaded from: classes5-dex2jar.jar:e/a/r2/t$a.class */
    public static class HandlerC19887a<T> extends Handler implements AbstractC19890w {

        /* renamed from: a */
        public final C19872n f56316a;

        /* renamed from: b */
        public final T f56317b;

        public HandlerC19887a(Looper looper, C19872n c19872n, T t) {
            super(looper);
            this.f56316a = c19872n;
            this.f56317b = t;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19890w
        /* renamed from: a */
        public void mo11835a(AbstractC19888u abstractC19888u) {
            obtainMessage(0, abstractC19888u).sendToTarget();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AbstractC19888u abstractC19888u = (AbstractC19888u) message.obj;
            try {
                abstractC19888u.mo10183d(this.f56317b);
            } catch (Throwable th) {
                C19850d mo11833a = abstractC19888u.mo11833a();
                mo11833a.initCause(th);
                this.f56316a.m11841a(this.f56317b, abstractC19888u, mo11833a);
                throw null;
            }
        }
    }

    public C19886t(AbstractC19845a0 abstractC19845a0, C19872n c19872n, Looper looper) {
        this.f56314b = abstractC19845a0;
        this.f56313a = c19872n;
        this.f56315c = looper;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19868j
    /* renamed from: a */
    public <T> AbstractC19854f<T> mo11838a(Class<T> cls, T t) {
        return new C19857g(this.f56314b.mo10410a(cls, new HandlerC19887a(this.f56315c, this.f56313a, t)));
    }
}
