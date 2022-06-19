package p193e.p194a.p195a.p244k.p245a;

import android.os.HandlerThread;
import android.os.Looper;
import com.google.protobuf.ExtensionRegistryLite;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import java.util.logging.Logger;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.C20458b;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p3.a.d;
import p3.a.f;
import p3.a.o0;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.c;
import p3.a.q1.e;
import p3.a.q1.h;
import p3.a.r;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.h0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/h0.class */
public final class C6564h0 implements AbstractC6557g0 {

    /* renamed from: a */
    public h<Event.Ack> f21645a;

    /* renamed from: b */
    public final Runnable f21646b = new RunnableC6566b();

    /* renamed from: c */
    public HandlerThread f21647c;

    /* renamed from: d */
    public HandlerC6644w1 f21648d;

    /* renamed from: e */
    public boolean f21649e;

    /* renamed from: f */
    public final AbstractC19222c f21650f;

    /* renamed from: g */
    public final AbstractC6508b f21651g;

    /* renamed from: h */
    public final AbstractC6625s1 f21652h;

    /* renamed from: i */
    public final AbstractC6600p f21653i;

    /* renamed from: j */
    public final AbstractC6573i1 f21654j;

    /* renamed from: k */
    public final AbstractC8432l f21655k;

    /* renamed from: l */
    public final AbstractC19854f<AbstractC6646x0> f21656l;

    /* renamed from: m */
    public final AbstractC19854f<AbstractC6485m> f21657m;

    /* renamed from: n */
    public final AbstractC19854f<AbstractC6233m> f21658n;

    /* renamed from: e.a.a.k.a.h0$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/h0$a.class */
    public static final class RunnableC6565a implements Runnable {
        public RunnableC6565a() {
            C6564h0.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C6564h0.this.m30764b();
        }
    }

    /* renamed from: e.a.a.k.a.h0$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/h0$b.class */
    public static final class RunnableC6566b implements Runnable {
        public RunnableC6566b() {
            C6564h0.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C6564h0 c6564h0 = C6564h0.this;
            c6564h0.f21657m.mo11854a().mo30887m().mo11831c();
            c6564h0.f21656l.mo11854a().mo30603b().mo11831c();
            C20458b.C20460b mo20912b = c6564h0.f21652h.mo20912b(AbstractC8371e.C8372a.f25732a);
            C20458b.C20460b m11100a = mo20912b != null ? mo20912b.m11100a(((c) mo20912b).a, ((c) mo20912b).b.c((r) null)) : null;
            if (m11100a == null || c6564h0.f21654j.mo30754f() || !c6564h0.f21655k.mo28580d()) {
                c6564h0.m30765a(false);
                return;
            }
            HandlerC6644w1 handlerC6644w1 = c6564h0.f21648d;
            if (handlerC6644w1 == null) {
                l.l("handler");
                throw null;
            }
            C6541e c6541e = new C6541e(handlerC6644w1);
            d dVar = ((c) m11100a).a;
            p0<Event.Ack, Event> p0Var = C20458b.f57522c;
            p0<Event.Ack, Event> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<Event.Ack, Event> p0Var3 = C20458b.f57522c;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.d;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "Subscribe");
                            b.e = true;
                            Event.Ack defaultInstance = Event.Ack.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(Event.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57522c = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            f h = dVar.h(p0Var2, ((c) m11100a).b);
            Logger logger = e.a;
            e.b bVar = new e.b(h, true);
            e.e eVar = new e.e(c6541e, bVar);
            h.e(eVar, new o0());
            eVar.e();
            c6564h0.f21645a = bVar;
        }
    }

    @Inject
    public C6564h0(AbstractC19222c abstractC19222c, AbstractC6508b abstractC6508b, AbstractC6625s1 abstractC6625s1, AbstractC6600p abstractC6600p, AbstractC6573i1 abstractC6573i1, AbstractC8432l abstractC8432l, AbstractC19854f<AbstractC6646x0> abstractC19854f, AbstractC19854f<AbstractC6485m> abstractC19854f2, AbstractC19854f<AbstractC6233m> abstractC19854f3) {
        l.e(abstractC19222c, "clock");
        l.e(abstractC6508b, "backoffHelper");
        l.e(abstractC6625s1, "stubManager");
        l.e(abstractC6600p, "imEventProcessor");
        l.e(abstractC6573i1, "imVersionManager");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC19854f, "imUnsupportedEventManager");
        l.e(abstractC19854f2, "imGroupManager");
        l.e(abstractC19854f3, "messagesStorage");
        this.f21650f = abstractC19222c;
        this.f21651g = abstractC6508b;
        this.f21652h = abstractC6625s1;
        this.f21653i = abstractC6600p;
        this.f21654j = abstractC6573i1;
        this.f21655k = abstractC8432l;
        this.f21656l = abstractC19854f;
        this.f21657m = abstractC19854f2;
        this.f21658n = abstractC19854f3;
    }

    /* renamed from: a */
    public final void m30765a(boolean z) {
        this.f21645a = null;
        if (this.f21649e) {
            HandlerThread handlerThread = this.f21647c;
            if (handlerThread != null) {
                handlerThread.quitSafely();
                return;
            } else {
                l.l("thread");
                throw null;
            }
        }
        long mo30821a = this.f21651g.mo30821a(this.f21650f.mo13821a(), z);
        HandlerC6644w1 handlerC6644w1 = this.f21648d;
        if (handlerC6644w1 != null) {
            handlerC6644w1.postDelayed(this.f21646b, mo30821a);
        } else {
            l.l("handler");
            throw null;
        }
    }

    /* renamed from: b */
    public final void m30764b() {
        this.f21649e = true;
        HandlerC6644w1 handlerC6644w1 = this.f21648d;
        if (handlerC6644w1 == null) {
            l.l("handler");
            throw null;
        }
        handlerC6644w1.removeCallbacks(this.f21646b);
        h<Event.Ack> hVar = this.f21645a;
        if (hVar != null) {
            hVar.a();
            return;
        }
        HandlerThread handlerThread = this.f21647c;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        } else {
            l.l("thread");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6557g0
    public void onCreate() {
        HandlerThread handlerThread = new HandlerThread("im_subscription");
        this.f21647c = handlerThread;
        if (handlerThread == null) {
            l.l("thread");
            throw null;
        }
        handlerThread.start();
        HandlerThread handlerThread2 = this.f21647c;
        if (handlerThread2 == null) {
            l.l("thread");
            throw null;
        }
        Looper looper = handlerThread2.getLooper();
        l.d(looper, "thread.looper");
        HandlerC6644w1 handlerC6644w1 = new HandlerC6644w1(this, looper);
        this.f21648d = handlerC6644w1;
        if (handlerC6644w1 != null) {
            handlerC6644w1.post(this.f21646b);
        } else {
            l.l("handler");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6557g0
    public void onDestroy() {
        HandlerC6644w1 handlerC6644w1 = this.f21648d;
        if (handlerC6644w1 != null) {
            handlerC6644w1.post(new RunnableC6565a());
        } else {
            l.l("handler");
            throw null;
        }
    }
}
