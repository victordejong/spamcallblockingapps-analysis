package p193e.p194a.p1080o.p1097b;

import androidx.work.ListenableWorker;
import com.truecaller.api.services.callerid.p135v1.GetCallContextMessages;
import com.truecaller.api.services.callerid.p135v1.model.PredefinedMessage;
import com.truecaller.contextcall.p159db.reason.predefinedreasons.PredefinedCallReasonType;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.p1103p.p1108e.p1109g.AbstractC18882c;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1238t2.p1239a.p1240a.p1241a.C20436b;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p677d3.AbstractC12592j;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.b0;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.o.b.h */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/h.class */
public final class C18726h extends AbstractC21765k {

    /* renamed from: b */
    public final String f52646b = "ContextCallMessagesFetcherWorkAction";

    /* renamed from: c */
    public final AbstractC12592j f52647c;

    /* renamed from: d */
    public final AbstractC18882c f52648d;

    /* renamed from: e */
    public final AbstractC18746o f52649e;

    /* renamed from: f */
    public final AbstractC18710f f52650f;

    /* renamed from: g */
    public final AbstractC19222c f52651g;

    @e(c = "com.truecaller.contextcall.utils.ContextCallMessagesFetcherWorkAction$execute$1", f = "ContextCallMessagesFetcherWorkAction.kt", l = {67}, m = "invokeSuspend")
    /* renamed from: e.a.o.b.h$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/h$a.class */
    public static final class C18727a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f52652e;

        /* renamed from: g */
        public final /* synthetic */ c0 f52654g;

        /* renamed from: h */
        public final /* synthetic */ b0 f52655h;

        /* renamed from: i */
        public final /* synthetic */ b0 f52656i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18727a(c0 c0Var, b0 b0Var, b0 b0Var2, d dVar) {
            super(2, dVar);
            C18726h.this = r5;
            this.f52654g = c0Var;
            this.f52655h = b0Var;
            this.f52656i = b0Var2;
        }

        /* renamed from: i */
        public final d<s> m14577i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18727a(this.f52654g, this.f52655h, this.f52656i, dVar);
        }

        /* renamed from: k */
        public final Object m14576k(Object obj, Object obj2) {
            return m14577i(obj, (d) obj2).m14575s(s.a);
        }

        /* renamed from: s */
        public final Object m14575s(Object obj) {
            a aVar = a.a;
            int i = this.f52652e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                ((List) this.f52654g.a).size();
                long j = this.f52655h.a;
                this.f52652e = 1;
                if (C18726h.this.f52648d.mo14359c((List) this.f52654g.a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C18726h.this.f52649e.putLong("predefinedMessagesExpirationTime", this.f52656i.a);
            return s.a;
        }
    }

    @Inject
    public C18726h(AbstractC12592j abstractC12592j, AbstractC18882c abstractC18882c, AbstractC18746o abstractC18746o, AbstractC18710f abstractC18710f, AbstractC19222c abstractC19222c) {
        l.e(abstractC12592j, "pushCallerIdStubManager");
        l.e(abstractC18882c, "repository");
        l.e(abstractC18746o, "settings");
        l.e(abstractC18710f, "availabilityManager");
        l.e(abstractC19222c, "clock");
        this.f52647c = abstractC12592j;
        this.f52648d = abstractC18882c;
        this.f52649e = abstractC18746o;
        this.f52650f = abstractC18710f;
        this.f52651g = abstractC19222c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        ListenableWorker.AbstractC0414a abstractC0414a;
        C20436b.C20437a mo20911c;
        GetCallContextMessages.Response m11140g;
        try {
            mo20911c = this.f52647c.mo20911c(AbstractC8371e.C8372a.f25732a);
        } catch (Exception e) {
            abstractC0414a = new ListenableWorker.AbstractC0414a.C0416b();
            l.d(abstractC0414a, "Result.retry()");
        }
        if (mo20911c == null || (m11140g = mo20911c.m11140g((GetCallContextMessages.Request) GetCallContextMessages.Request.newBuilder().build())) == null) {
            ListenableWorker.AbstractC0414a.C0416b c0416b = new ListenableWorker.AbstractC0414a.C0416b();
            l.d(c0416b, "Result.retry()");
            return c0416b;
        }
        c0 c0Var = new c0();
        List<PredefinedMessage> predefinedMessagesList = m11140g.getPredefinedMessagesList();
        l.d(predefinedMessagesList, "predefinedMessagesList");
        List m15612g = C17891a1.C17902k.m15612g(predefinedMessagesList, PredefinedCallReasonType.Predefined);
        List<PredefinedMessage> midCallPredefinedMessagesList = m11140g.getMidCallPredefinedMessagesList();
        l.d(midCallPredefinedMessagesList, "midCallPredefinedMessagesList");
        List l0 = s1.u.i.l0(m15612g, C17891a1.C17902k.m15612g(midCallPredefinedMessagesList, PredefinedCallReasonType.MidCall));
        List<PredefinedMessage> secondCallPredefinedMessagesList = m11140g.getSecondCallPredefinedMessagesList();
        l.d(secondCallPredefinedMessagesList, "secondCallPredefinedMessagesList");
        List l02 = s1.u.i.l0(l0, C17891a1.C17902k.m15612g(secondCallPredefinedMessagesList, PredefinedCallReasonType.SecondCall));
        List<PredefinedMessage> callbackPredefinedMessagesList = m11140g.getCallbackPredefinedMessagesList();
        l.d(callbackPredefinedMessagesList, "callbackPredefinedMessagesList");
        c0Var.a = s1.u.i.l0(l02, C17891a1.C17902k.m15612g(callbackPredefinedMessagesList, PredefinedCallReasonType.MissedCall));
        b0 b0Var = new b0();
        b0Var.a = TimeUnit.SECONDS.toMillis(m11140g.getTtl());
        b0 b0Var2 = new b0();
        b0Var2.a = this.f52651g.mo13819c() + b0Var.a;
        s1.a.a.a.v0.f.d.c3((f) null, new C18727a(c0Var, b0Var, b0Var2, null), 1, (Object) null);
        abstractC0414a = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(abstractC0414a, "Result.success()");
        return abstractC0414a;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f52646b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        boolean z = false;
        if (!this.f52650f.isSupported()) {
            return false;
        }
        if (this.f52651g.mo13819c() >= this.f52649e.getLong("predefinedMessagesExpirationTime", 0L)) {
            z = true;
        }
        return z;
    }
}
