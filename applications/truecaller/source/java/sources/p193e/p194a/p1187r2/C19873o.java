package p193e.p194a.p1187r2;

import android.os.HandlerThread;
import android.os.Looper;
import java.util.Objects;
/* renamed from: e.a.r2.o */
/* loaded from: classes5-dex2jar.jar:e/a/r2/o.class */
public class C19873o implements AbstractC19868j {

    /* renamed from: a */
    public final AbstractC19878e f56287a;

    /* renamed from: b */
    public final C19872n f56288b;

    /* renamed from: c */
    public final AbstractC19845a0 f56289c;

    /* renamed from: d */
    public final String f56290d;

    /* renamed from: e */
    public final long f56291e;

    /* renamed from: f */
    public AbstractHandlerC19848c f56292f;

    /* renamed from: e.a.r2.o$b */
    /* loaded from: classes5-dex2jar.jar:e/a/r2/o$b.class */
    public class HandlerC19875b extends AbstractHandlerC19848c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC19875b(Looper looper, long j) {
            super(looper, j, null);
            C19873o.this = r7;
        }

        @Override // p193e.p194a.p1187r2.AbstractHandlerC19848c
        /* renamed from: c */
        public void mo11840c() {
            C19873o c19873o = C19873o.this;
            Looper looper = getLooper();
            AbstractHandlerC19848c abstractHandlerC19848c = c19873o.f56292f;
            synchronized (c19873o) {
                if (abstractHandlerC19848c == c19873o.f56292f) {
                    c19873o.f56292f = null;
                }
            }
            looper.quit();
        }
    }

    /* renamed from: e.a.r2.o$c */
    /* loaded from: classes5-dex2jar.jar:e/a/r2/o$c.class */
    public class C19876c implements AbstractC19878e {
        public C19876c(C19874a c19874a) {
            C19873o.this = r4;
        }
    }

    /* renamed from: e.a.r2.o$d */
    /* loaded from: classes5-dex2jar.jar:e/a/r2/o$d.class */
    public class C19877d<T> implements AbstractC19890w {

        /* renamed from: a */
        public final C19872n f56295a;

        /* renamed from: b */
        public final T f56296b;

        /* JADX WARN: Multi-variable type inference failed */
        public C19877d(C19872n c19872n, Object obj, C19874a c19874a) {
            C19873o.this = r4;
            this.f56296b = obj;
            this.f56295a = c19872n;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19890w
        /* renamed from: a */
        public void mo11835a(AbstractC19888u abstractC19888u) {
            C19862h0 m11851a = C19862h0.m11851a(this.f56296b, abstractC19888u, this.f56295a);
            C19873o c19873o = C19873o.this;
            AbstractHandlerC19848c abstractHandlerC19848c = c19873o.f56292f;
            if (abstractHandlerC19848c == null || !abstractHandlerC19848c.m11856b(m11851a)) {
                synchronized (c19873o) {
                    AbstractHandlerC19848c abstractHandlerC19848c2 = c19873o.f56292f;
                    if (abstractHandlerC19848c2 == null || !abstractHandlerC19848c2.m11856b(m11851a)) {
                        HandlerThread handlerThread = new HandlerThread(c19873o.f56290d);
                        handlerThread.start();
                        AbstractC19878e abstractC19878e = c19873o.f56287a;
                        Looper looper = handlerThread.getLooper();
                        long j = c19873o.f56291e;
                        C19876c c19876c = (C19876c) abstractC19878e;
                        Objects.requireNonNull(c19876c);
                        HandlerC19875b handlerC19875b = new HandlerC19875b(looper, j);
                        c19873o.f56292f = handlerC19875b;
                        handlerC19875b.m11856b(m11851a);
                    }
                }
            }
        }
    }

    /* renamed from: e.a.r2.o$e */
    /* loaded from: classes5-dex2jar.jar:e/a/r2/o$e.class */
    public interface AbstractC19878e {
    }

    public C19873o(AbstractC19845a0 abstractC19845a0, C19872n c19872n, String str) {
        this.f56287a = new C19876c(null);
        this.f56289c = abstractC19845a0;
        this.f56288b = c19872n;
        this.f56290d = str;
        this.f56291e = -1L;
    }

    public C19873o(AbstractC19845a0 abstractC19845a0, C19872n c19872n, String str, long j) {
        this.f56287a = new C19876c(null);
        this.f56289c = abstractC19845a0;
        this.f56288b = c19872n;
        this.f56290d = str;
        this.f56291e = j;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19868j
    /* renamed from: a */
    public <T> AbstractC19854f<T> mo11838a(Class<T> cls, T t) {
        return new C19857g(this.f56289c.mo10410a(cls, new C19877d(this.f56288b, t, null)));
    }
}
