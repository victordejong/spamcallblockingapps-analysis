package com.truecaller.messaging.sending;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import kotlin.Metadata;
import o3.a;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p223c1.AbstractC5843b;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p712e4.AbstractC13497p;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.b0;
import s1.z.c.l;
import w3.b.a.b;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010=\u001a\u00020<\u0012\u0006\u0010?\u001a\u00020>¢\u0006\u0004\b@\u0010AJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\"\u0010\f\u001a\u00020\u00058��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\u0014\u001a\u00020\r8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R(\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010-\u001a\u00020&8��@��X\u0081.¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u00105\u001a\u00020.8��@��X\u0081.¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R.\u0010;\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u000207060\u00158��@��X\u0081.¢\u0006\u0012\n\u0004\b8\u0010\u0018\u001a\u0004\b9\u0010\u001a\"\u0004\b:\u0010\u001c¨\u0006B"}, d2 = {"Lcom/truecaller/messaging/sending/ScheduleMessageWorker;", "Landroidx/work/Worker;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Le/a/q2/a;", "e", "Le/a/q2/a;", "getAnalytics$truecaller_googlePlayRelease", "()Le/a/q2/a;", "setAnalytics$truecaller_googlePlayRelease", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/p5/g;", "f", "Le/a/p5/g;", "getDeviceInfoUtil$truecaller_googlePlayRelease", "()Le/a/p5/g;", "setDeviceInfoUtil$truecaller_googlePlayRelease", "(Le/a/p5/g;)V", "deviceInfoUtil", "Lo3/a;", "Le/a/a/g/w;", C22021b.f61237c, "Lo3/a;", "getReadMessageStorage$truecaller_googlePlayRelease", "()Lo3/a;", "setReadMessageStorage$truecaller_googlePlayRelease", "(Lo3/a;)V", "readMessageStorage", "Le/a/e4/p;", "d", "Le/a/e4/p;", "getMultiSimManager$truecaller_googlePlayRelease", "()Le/a/e4/p;", "setMultiSimManager$truecaller_googlePlayRelease", "(Le/a/e4/p;)V", "multiSimManager", "Ln3/m0/y;", "g", "Ln3/m0/y;", "getWorkManager$truecaller_googlePlayRelease", "()Ln3/m0/y;", "setWorkManager$truecaller_googlePlayRelease", "(Ln3/m0/y;)V", "workManager", "Le/a/a/c1/d;", AbstractC2405c.f7629a, "Le/a/a/c1/d;", "getDraftSender$truecaller_googlePlayRelease", "()Le/a/a/c1/d;", "setDraftSender$truecaller_googlePlayRelease", "(Le/a/a/c1/d;)V", "draftSender", "Le/a/r2/f;", "Le/a/a/g/m;", "a", "getMessagesStorage$truecaller_googlePlayRelease", "setMessagesStorage$truecaller_googlePlayRelease", "messagesStorage", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/sending/ScheduleMessageWorker.class */
public final class ScheduleMessageWorker extends Worker {
    @Inject

    /* renamed from: a */
    public a<AbstractC19854f<AbstractC6233m>> f13658a;
    @Inject

    /* renamed from: b */
    public a<AbstractC6248w> f13659b;
    @Inject

    /* renamed from: c */
    public AbstractC5854d f13660c;
    @Inject

    /* renamed from: d */
    public AbstractC13497p f13661d;
    @Inject

    /* renamed from: e */
    public AbstractC19462a f13662e;
    @Inject

    /* renamed from: f */
    public AbstractC19230g f13663f;
    @Inject

    /* renamed from: g */
    public AbstractC26857y f13664g;

    @e(c = "com.truecaller.messaging.sending.ScheduleMessageWorker$doWork$1", f = "ScheduleMessageWorker.kt", l = {74}, m = "invokeSuspend")
    /* renamed from: com.truecaller.messaging.sending.ScheduleMessageWorker$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/sending/ScheduleMessageWorker$a.class */
    public static final class C4238a extends i implements p<i0, d<? super List<? extends Message>>, Object> {

        /* renamed from: e */
        public int f13665e;

        /* renamed from: g */
        public final /* synthetic */ b0 f13667g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4238a(b0 b0Var, d dVar) {
            super(2, dVar);
            ScheduleMessageWorker.this = r5;
            this.f13667g = b0Var;
        }

        /* renamed from: i */
        public final d<s> m34920i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4238a(this.f13667g, dVar);
        }

        /* renamed from: k */
        public final Object m34919k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4238a(this.f13667g, dVar).m34918s(s.a);
        }

        /* renamed from: s */
        public final Object m34918s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f13665e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                a<AbstractC6248w> aVar2 = ScheduleMessageWorker.this.f13659b;
                if (aVar2 == null) {
                    l.l("readMessageStorage");
                    throw null;
                }
                AbstractC6248w abstractC6248w = (AbstractC6248w) aVar2.get();
                Long l = new Long(this.f13667g.a);
                this.f13665e = 1;
                Object m25908q2 = C10480a.m25908q2(abstractC6248w, l, null, null, this, 6, null);
                obj = m25908q2;
                if (m25908q2 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.messaging.sending.ScheduleMessageWorker$doWork$3", f = "ScheduleMessageWorker.kt", l = {110}, m = "invokeSuspend")
    /* renamed from: com.truecaller.messaging.sending.ScheduleMessageWorker$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/sending/ScheduleMessageWorker$b.class */
    public static final class C4239b extends i implements p<i0, d<? super List<? extends Message>>, Object> {

        /* renamed from: e */
        public int f13668e;

        /* renamed from: g */
        public final /* synthetic */ b0 f13670g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4239b(b0 b0Var, d dVar) {
            super(2, dVar);
            ScheduleMessageWorker.this = r5;
            this.f13670g = b0Var;
        }

        /* renamed from: i */
        public final d<s> m34917i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4239b(this.f13670g, dVar);
        }

        /* renamed from: k */
        public final Object m34916k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4239b(this.f13670g, dVar).m34915s(s.a);
        }

        /* renamed from: s */
        public final Object m34915s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f13668e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                a<AbstractC6248w> aVar2 = ScheduleMessageWorker.this.f13659b;
                if (aVar2 == null) {
                    l.l("readMessageStorage");
                    throw null;
                }
                AbstractC6248w abstractC6248w = (AbstractC6248w) aVar2.get();
                Long l = new Long(this.f13670g.a);
                Integer num = new Integer(1);
                this.f13668e = 1;
                Object m25908q2 = C10480a.m25908q2(abstractC6248w, null, l, num, this, 1, null);
                obj = m25908q2;
                if (m25908q2 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScheduleMessageWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        AbstractC16444k2.f46188a.m17389a().mo11373t(this);
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        b0 b0Var = new b0();
        b0Var.a = System.currentTimeMillis();
        for (Message message : (Iterable) s1.a.a.a.v0.f.d.c3((f) null, new C4238a(b0Var, null), 1, (Object) null)) {
            Message message2 = message;
            if (C10480a.m25924n1(message)) {
                a<AbstractC19854f<AbstractC6233m>> aVar = this.f13658a;
                if (aVar == null) {
                    l.l("messagesStorage");
                    throw null;
                }
                ((AbstractC6233m) ((AbstractC19854f) aVar.get()).mo11854a()).mo31661y(message.f13380a).mo11831c();
                Message.C4209b m35024b = message.m35024b();
                m35024b.m35008e(-1L);
                m35024b.f13420O = 0L;
                message2 = m35024b.m35012a();
                l.d(message2, "it.buildUpon().editMessa…ditMessageDate(0).build()");
            }
            b E = message2.f13385f.E(24);
            l.d(E, "message.sendScheduleDate.plusHours(24)");
            if (((w3.b.a.e0.e) E).a < b0Var.a) {
                a<AbstractC19854f<AbstractC6233m>> aVar2 = this.f13658a;
                if (aVar2 == null) {
                    l.l("messagesStorage");
                    throw null;
                }
                ((AbstractC6233m) ((AbstractC19854f) aVar2.get()).mo11854a()).mo31677H(message2.f13380a, message2.f13391l).mo11831c();
            } else {
                Draft.C4194b c4194b = new Draft.C4194b();
                c4194b.f13286c.add(message2.f13382c);
                c4194b.f13288e = message2.m35025a();
                c4194b.f13295l = message2.f13374N;
                c4194b.m35051g(message2.f13395p);
                c4194b.f13289f = C10480a.m25865z1(message2);
                Draft m35055c = c4194b.m35055c();
                l.d(m35055c, "Draft.Builder()\n        …t())\n            .build()");
                AbstractC5854d abstractC5854d = this.f13660c;
                if (abstractC5854d == null) {
                    l.l("draftSender");
                    throw null;
                }
                Entity[] entityArr = message2.f13394o;
                l.d(entityArr, "message.entities");
                ArrayList arrayList = new ArrayList();
                for (Entity entity : entityArr) {
                    if (entity instanceof BinaryEntity) {
                        arrayList.add(entity);
                    }
                }
                List<k<Draft, Collection<BinaryEntity>>> m25999Y = C10480a.m25999Y(m35055c, arrayList);
                String str = message2.f13392m;
                l.d(str, "message.simToken");
                AbstractC5843b mo32322c = abstractC5854d.mo32322c(m25999Y, str, message2.f13391l == 2, false, false);
                if (mo32322c instanceof AbstractC5843b.C5848e) {
                    AbstractC5854d abstractC5854d2 = this.f13660c;
                    if (abstractC5854d2 == null) {
                        l.l("draftSender");
                        throw null;
                    }
                    AbstractC5843b.C5848e c5848e = (AbstractC5843b.C5848e) mo32322c;
                    b bVar = message2.f13385f;
                    l.d(bVar, "message.sendScheduleDate");
                    abstractC5854d2.mo32323b(c5848e, false, "conversation", ((w3.b.a.e0.e) bVar).a).mo11831c();
                    a<AbstractC19854f<AbstractC6233m>> aVar3 = this.f13658a;
                    if (aVar3 == null) {
                        l.l("messagesStorage");
                        throw null;
                    }
                    ((AbstractC6233m) ((AbstractC19854f) aVar3.get()).mo11854a()).mo31708Q(message2.f13380a).mo11831c();
                } else {
                    a<AbstractC19854f<AbstractC6233m>> aVar4 = this.f13658a;
                    if (aVar4 == null) {
                        l.l("messagesStorage");
                        throw null;
                    }
                    ((AbstractC6233m) ((AbstractC19854f) aVar4.get()).mo11854a()).mo31677H(message2.f13380a, message2.f13391l).mo11831c();
                }
            }
            b bVar2 = message2.f13385f;
            l.d(bVar2, "message.sendScheduleDate");
            long j = b0Var.a - ((w3.b.a.e0.e) bVar2).a;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            int seconds = (int) timeUnit.toSeconds(j);
            int minutes = (int) timeUnit.toMinutes(j);
            int hours = (int) timeUnit.toHours(j);
            String str2 = seconds <= 10 ? "0-10sec" : seconds <= 30 ? "11-30sec" : seconds <= 60 ? "31-60sec" : minutes <= 2 ? "1-2min" : minutes <= 5 ? "3-5min" : minutes <= 10 ? "6-10min" : minutes <= 30 ? "11-30min" : minutes <= 60 ? "31-60min" : hours <= 3 ? "1-3h" : hours <= 12 ? "4-12h" : hours <= 24 ? "13-24h" : "24h+";
            AbstractC19462a abstractC19462a = this.f13662e;
            if (abstractC19462a == null) {
                l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                throw null;
            }
            LinkedHashMap m8655X = C22128a.m8655X("ScheduledMessageSendDelay", "type");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("value", Double.valueOf(j));
            l.e("delay", AnalyticsConstants.NAME);
            l.e(str2, "value");
            m8655X.put("delay", str2);
            AbstractC19230g abstractC19230g = this.f13663f;
            if (abstractC19230g == null) {
                l.l("deviceInfoUtil");
                throw null;
            }
            boolean mo13771z = abstractC19230g.mo13771z();
            l.e("ignoringBatteryOptimisations", AnalyticsConstants.NAME);
            m8655X.put("ignoringBatteryOptimisations", String.valueOf(mo13771z));
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("ScheduledMessageSendDelay");
            m15852a.m15849c(linkedHashMap);
            C22128a.m8553x0(m15852a, m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
        }
        Message message3 = (Message) s1.u.i.D((List) s1.a.a.a.v0.f.d.c3((f) null, new C4239b(b0Var, null), 1, (Object) null));
        if (message3 != null) {
            AbstractC26857y abstractC26857y = this.f13664g;
            if (abstractC26857y == null) {
                l.l("workManager");
                throw null;
            }
            b bVar3 = message3.f13385f;
            l.d(bVar3, "it.sendScheduleDate");
            long j2 = ((w3.b.a.e0.e) bVar3).a;
            l.e(abstractC26857y, "workManager");
            abstractC26857y.m1279i("ScheduleMessage", EnumC26832h.REPLACE, new C26842r.C26843a(ScheduleMessageWorker.class).m1268f(Math.max(j2 - System.currentTimeMillis(), 0L), TimeUnit.MILLISECONDS).m1272b());
        }
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }
}
