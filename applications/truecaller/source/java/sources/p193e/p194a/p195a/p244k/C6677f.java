package p193e.p194a.p195a.p244k;

import android.content.Intent;
import android.os.Bundle;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.sending.ScheduleMessageWorker;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p244k.p256z.AbstractC6753d;
import p193e.p194a.p195a.p284w0.AbstractC7290a;
import p193e.p194a.p682e.C12864a2;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.k.f */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/f.class */
public final class C6677f implements AbstractC6690i {

    /* renamed from: a */
    public final f f22025a;

    /* renamed from: b */
    public final a<AbstractC19854f<AbstractC6233m>> f22026b;

    /* renamed from: c */
    public final AbstractC19854f<AbstractC6753d> f22027c;

    /* renamed from: d */
    public final AbstractC19854f<AbstractC6753d> f22028d;

    /* renamed from: e */
    public final AbstractC7290a f22029e;

    /* renamed from: f */
    public final AbstractC26857y f22030f;

    /* renamed from: g */
    public final AbstractC18951b0 f22031g;

    @e(c = "com.truecaller.messaging.transport.MessageProcessorImpl$addMessageToQueue$1", f = "MessageProcessorImpl.kt", l = {69}, m = "invokeSuspend")
    /* renamed from: e.a.a.k.f$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/f$a.class */
    public static final class C6678a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f22032e;

        /* renamed from: g */
        public final /* synthetic */ int f22034g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6678a(int i, d dVar) {
            super(2, dVar);
            C6677f.this = r5;
            this.f22034g = i;
        }

        /* renamed from: i */
        public final d<s> m30584i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6678a(this.f22034g, dVar);
        }

        /* renamed from: k */
        public final Object m30583k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6678a(this.f22034g, dVar).m30582s(s.a);
        }

        /* renamed from: s */
        public final Object m30582s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f22032e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f22032e = 1;
                if (s1.a.a.a.v0.f.d.D0(this.f22034g, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            ((AbstractC6233m) ((AbstractC19854f) C6677f.this.f22026b.get()).mo11854a()).mo31711N(null).mo11828g();
            return s.a;
        }
    }

    @Inject
    public C6677f(@Named("UI") f fVar, a<AbstractC19854f<AbstractC6233m>> aVar, @Named("sms_sender") AbstractC19854f<AbstractC6753d> abstractC19854f, @Named("im_sender") AbstractC19854f<AbstractC6753d> abstractC19854f2, AbstractC7290a abstractC7290a, AbstractC26857y abstractC26857y, AbstractC18951b0 abstractC18951b0) {
        l.e(fVar, "uiContext");
        l.e(aVar, "storage");
        l.e(abstractC19854f, "smsSender");
        l.e(abstractC19854f2, "imSender");
        l.e(abstractC7290a, "messagesMonitor");
        l.e(abstractC26857y, "workManager");
        l.e(abstractC18951b0, "dateHelper");
        this.f22025a = fVar;
        this.f22026b = aVar;
        this.f22027c = abstractC19854f;
        this.f22028d = abstractC19854f2;
        this.f22029e = abstractC7290a;
        this.f22030f = abstractC26857y;
        this.f22031g = abstractC18951b0;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6690i
    /* renamed from: b */
    public void mo30577b(Message message) {
        l.e(message, "message");
        if (message.f13390k == 2) {
            this.f22028d.mo11854a().mo30469b(message);
        } else {
            this.f22027c.mo11854a().mo30469b(message);
        }
        this.f22029e.mo29845c(message.f13396q, message.f13390k);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6690i
    /* renamed from: g */
    public void mo30576g(Message message) {
        l.e(message, "message");
        AssertionUtil.AlwaysFatal.isTrue((message.f13386g & 9) == 9, new String[0]);
        ((AbstractC6233m) ((AbstractC19854f) this.f22026b.get()).mo11854a()).mo31700a(message).mo11828g();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6690i
    /* renamed from: h */
    public AbstractC19891x<Message> mo30575h(Message message) {
        AbstractC19891x<Message> abstractC19891x;
        Message mo11831c;
        l.e(message, "message");
        try {
            mo11831c = ((AbstractC6233m) ((AbstractC19854f) this.f22026b.get()).mo11854a()).mo31702Y(message).mo11831c();
        } catch (InterruptedException e) {
            abstractC19891x = AbstractC19891x.m11834h(null);
            l.d(abstractC19891x, "Promise.wrap(null)");
        }
        if (mo11831c == null) {
            AbstractC19891x<Message> m11834h = AbstractC19891x.m11834h(null);
            l.d(m11834h, "Promise.wrap(null)");
            return m11834h;
        }
        AssertionUtil.AlwaysFatal.isTrue(mo11831c.m35019g(), new String[0]);
        AssertionUtil.AlwaysFatal.isTrue((mo11831c.f13386g & 16) != 0, new String[0]);
        abstractC19891x = l.a(((AbstractC6233m) ((AbstractC19854f) this.f22026b.get()).mo11854a()).mo31711N(null).mo11831c(), Boolean.FALSE) ? AbstractC19891x.m11834h(null) : AbstractC19891x.m11834h(mo11831c);
        l.d(abstractC19891x, "if (storage.get().tell()…omise.wrap(queuedMessage)");
        return abstractC19891x;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6690i
    /* renamed from: i */
    public AbstractC19891x<Bundle> mo30574i(AbstractC6704q<?> abstractC6704q, Intent intent, int i) {
        l.e(abstractC6704q, "transport");
        l.e(intent, "intent");
        AbstractC19891x<Bundle> m11834h = AbstractC19891x.m11834h(abstractC6704q.mo15186C(intent, i));
        l.d(m11834h, "Promise.wrap(transport.d…tent(intent, resultCode))");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6690i
    /* renamed from: j */
    public AbstractC19891x<Boolean> mo30573j(Message message, long j, Participant[] participantArr, long j2) {
        Boolean bool = Boolean.FALSE;
        l.e(message, "message");
        l.e(participantArr, "recipients");
        Long mo11831c = ((AbstractC6233m) ((AbstractC19854f) this.f22026b.get()).mo11854a()).mo31662v(message, participantArr, j).mo11831c();
        if (mo11831c == null) {
            AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(bool);
            l.d(m11834h, "Promise.wrap(false)");
            return m11834h;
        } else if (mo11831c.longValue() == -1) {
            AbstractC19891x<Boolean> m11834h2 = AbstractC19891x.m11834h(bool);
            l.d(m11834h2, "Promise.wrap(false)");
            return m11834h2;
        } else {
            if (j2 != -1) {
                ((AbstractC6233m) ((AbstractC19854f) this.f22026b.get()).mo11854a()).mo31689h(j2).mo11831c();
            }
            AbstractC26857y abstractC26857y = this.f22030f;
            long j3 = ((w3.b.a.e0.e) this.f22031g.mo14285j()).a;
            l.e(abstractC26857y, "workManager");
            abstractC26857y.m1279i("ScheduleMessage", EnumC26832h.REPLACE, new C26842r.C26843a(ScheduleMessageWorker.class).m1268f(Math.max(j3 - System.currentTimeMillis(), 0L), TimeUnit.MILLISECONDS).m1272b());
            AbstractC19891x<Boolean> m11834h3 = AbstractC19891x.m11834h(Boolean.TRUE);
            l.d(m11834h3, "Promise.wrap(true)");
            return m11834h3;
        }
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6690i
    /* renamed from: k */
    public AbstractC19891x<Message> mo30572k(Message message, Participant[] participantArr, int i, int i2) {
        AbstractC19891x<Message> abstractC19891x;
        Message mo11831c;
        AbstractC19891x<Message> abstractC19891x2;
        l.e(message, "message");
        l.e(participantArr, "recipients");
        try {
            mo11831c = ((AbstractC6233m) ((AbstractC19854f) this.f22026b.get()).mo11854a()).mo31696c(message, participantArr, i).mo11831c();
        } catch (InterruptedException e) {
            abstractC19891x = AbstractC19891x.m11834h(null);
            l.d(abstractC19891x, "Promise.wrap(null)");
        }
        if (mo11831c == null) {
            AbstractC19891x<Message> m11834h = AbstractC19891x.m11834h(null);
            l.d(m11834h, "Promise.wrap(null)");
            return m11834h;
        }
        AssertionUtil.AlwaysFatal.isTrue(mo11831c.m35019g(), new String[0]);
        AssertionUtil.AlwaysFatal.isTrue((mo11831c.f13386g & 16) != 0, new String[0]);
        AssertionUtil.AlwaysFatal.isTrue(mo11831c.f13391l != 3, new String[0]);
        AssertionUtil.AlwaysFatal.isTrue(mo11831c.f13390k == 3, new String[0]);
        TransportInfo transportInfo = mo11831c.f13393n;
        l.d(transportInfo, "queuedMessage.getTransportInfo<TransportInfo>()");
        AssertionUtil.AlwaysFatal.isTrue(transportInfo.mo34879u() != -1, new String[0]);
        if (i2 != 0) {
            ((AbstractC6233m) ((AbstractC19854f) this.f22026b.get()).mo11854a()).mo31711N(mo11831c.f13384e).mo11828g();
            s1.a.a.a.v0.f.d.w2(h1.a, this.f22025a, (j0) null, new C6678a(i2, null), 2, (Object) null);
            abstractC19891x = AbstractC19891x.m11834h(mo11831c);
            l.d(abstractC19891x, "Promise.wrap(queuedMessage)");
            return abstractC19891x;
        }
        if (l.a(((AbstractC6233m) ((AbstractC19854f) this.f22026b.get()).mo11854a()).mo31711N(null).mo11831c(), Boolean.FALSE)) {
            abstractC19891x2 = AbstractC19891x.m11834h(null);
            l.d(abstractC19891x2, "Promise.wrap(null)");
        } else {
            abstractC19891x2 = AbstractC19891x.m11834h(mo11831c);
            l.d(abstractC19891x2, "Promise.wrap(queuedMessage)");
        }
        return abstractC19891x2;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6690i
    /* renamed from: l */
    public AbstractC19891x<Boolean> mo30571l(long j, long j2) {
        AbstractC19891x<Boolean> abstractC19891x;
        if (C12864a2.m22540r(((AbstractC6233m) ((AbstractC19854f) this.f22026b.get()).mo11854a()).mo31663u(j, j2).mo11831c())) {
            AbstractC26857y abstractC26857y = this.f22030f;
            long j3 = ((w3.b.a.e0.e) this.f22031g.mo14285j()).a;
            l.e(abstractC26857y, "workManager");
            abstractC26857y.m1279i("ScheduleMessage", EnumC26832h.REPLACE, new C26842r.C26843a(ScheduleMessageWorker.class).m1268f(Math.max(j3 - System.currentTimeMillis(), 0L), TimeUnit.MILLISECONDS).m1272b());
            abstractC19891x = AbstractC19891x.m11834h(Boolean.TRUE);
            l.d(abstractC19891x, "Promise.wrap(true)");
        } else {
            abstractC19891x = AbstractC19891x.m11834h(Boolean.FALSE);
            l.d(abstractC19891x, "Promise.wrap(false)");
        }
        return abstractC19891x;
    }
}
