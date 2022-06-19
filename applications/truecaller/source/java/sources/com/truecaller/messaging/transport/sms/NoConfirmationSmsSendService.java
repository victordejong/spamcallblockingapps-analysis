package com.truecaller.messaging.transport.sms;

import android.app.Application;
import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Message;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import o3.a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p244k.AbstractC6704q;
import p193e.p194a.p195a.p244k.AbstractC6707s;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p284w0.AbstractC7290a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p712e4.AbstractC13497p;
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
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b:\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ)\u0010\r\u001a\u00020\n2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eR(\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R(\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00180\u000f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0019\u0010\u0012\u001a\u0004\b\u001a\u0010\u0014\"\u0004\b\u001b\u0010\u0016R(\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001d0\u000f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001e\u0010\u0012\u001a\u0004\b\u001f\u0010\u0014\"\u0004\b \u0010\u0016R(\u0010&\u001a\b\u0012\u0004\u0012\u00020\"0\u000f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b#\u0010\u0012\u001a\u0004\b$\u0010\u0014\"\u0004\b%\u0010\u0016R(\u0010+\u001a\b\u0012\u0004\u0012\u00020'0\u000f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b(\u0010\u0012\u001a\u0004\b)\u0010\u0014\"\u0004\b*\u0010\u0016R(\u00100\u001a\b\u0012\u0004\u0012\u00020,0\u000f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b-\u0010\u0012\u001a\u0004\b.\u0010\u0014\"\u0004\b/\u0010\u0016R(\u00109\u001a\u0002018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b2\u00103\u0012\u0004\b8\u0010\u0004\u001a\u0004\b4\u00105\"\u0004\b6\u00107¨\u0006;"}, d2 = {"Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;", "Landroid/app/Service;", "Ls1/s;", "onCreate", "()V", "Landroid/content/Intent;", "intent", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "Lo3/a;", "Le/a/e4/p;", C22021b.f61237c, "Lo3/a;", "getMultiSimManager", "()Lo3/a;", "setMultiSimManager", "(Lo3/a;)V", "multiSimManager", "Le/a/q2/i0;", "e", "getMessageAnalytics", "setMessageAnalytics", "messageAnalytics", "Le/a/a/k/t;", "d", "getTransportManager", "setTransportManager", "transportManager", "Le/a/a/w0/a;", "f", "getMessagesMonitor", "setMessagesMonitor", "messagesMonitor", "Le/a/a/g/w;", "g", "getReadMessageStorage", "setReadMessageStorage", "readMessageStorage", "Le/a/b0/q/z;", AbstractC2405c.f7629a, "getPhoneNumberHelper", "setPhoneNumberHelper", "phoneNumberHelper", "Ls1/w/f;", "a", "Ls1/w/f;", "getUiCoroutineContext", "()Ls1/w/f;", "setUiCoroutineContext", "(Ls1/w/f;)V", "getUiCoroutineContext$annotations", "uiCoroutineContext", "<init>", "messaging-transport_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/sms/NoConfirmationSmsSendService.class */
public final class NoConfirmationSmsSendService extends Service {
    @Inject

    /* renamed from: a */
    public f f13850a;
    @Inject

    /* renamed from: b */
    public a<AbstractC13497p> f13851b;
    @Inject

    /* renamed from: c */
    public a<AbstractC8621z> f13852c;
    @Inject

    /* renamed from: d */
    public a<AbstractC6708t> f13853d;
    @Inject

    /* renamed from: e */
    public a<AbstractC19510i0> f13854e;
    @Inject

    /* renamed from: f */
    public a<AbstractC7290a> f13855f;
    @Inject

    /* renamed from: g */
    public a<AbstractC6248w> f13856g;

    /* renamed from: com.truecaller.messaging.transport.sms.NoConfirmationSmsSendService$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$a.class */
    public static final class C4263a<R> implements AbstractC19851d0<Message> {

        /* renamed from: b */
        public final /* synthetic */ int f13858b;

        public C4263a(int i) {
            NoConfirmationSmsSendService.this = r4;
            this.f13858b = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Message message) {
            NoConfirmationSmsSendService.this.stopSelf(this.f13858b);
        }
    }

    @e(c = "com.truecaller.messaging.transport.sms.NoConfirmationSmsSendService$onStartCommand$2", f = "NoConfirmationSmsSendService.kt", l = {110}, m = "invokeSuspend")
    /* renamed from: com.truecaller.messaging.transport.sms.NoConfirmationSmsSendService$b */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b.class */
    public static final class C4264b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f13859e;

        /* renamed from: g */
        public final /* synthetic */ Participant[] f13861g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4264b(Participant[] participantArr, d dVar) {
            super(2, dVar);
            NoConfirmationSmsSendService.this = r5;
            this.f13861g = participantArr;
        }

        /* renamed from: i */
        public final d<s> m34891i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4264b(this.f13861g, dVar);
        }

        /* renamed from: k */
        public final Object m34890k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4264b(this.f13861g, dVar).m34889s(s.a);
        }

        /* renamed from: s */
        public final Object m34889s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f13859e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                a<AbstractC6248w> aVar2 = NoConfirmationSmsSendService.this.f13856g;
                if (aVar2 == null) {
                    l.l("readMessageStorage");
                    throw null;
                }
                AbstractC6248w abstractC6248w = (AbstractC6248w) aVar2.get();
                Participant[] participantArr = this.f13861g;
                this.f13859e = 1;
                Object mo31555u = abstractC6248w.mo31555u(participantArr, 1, this);
                obj = mo31555u;
                if (mo31555u == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Draft draft = (Draft) obj;
            NoConfirmationSmsSendService noConfirmationSmsSendService = NoConfirmationSmsSendService.this;
            a<AbstractC19510i0> aVar3 = noConfirmationSmsSendService.f13854e;
            if (aVar3 == null) {
                l.l("messageAnalytics");
                throw null;
            }
            Object obj2 = aVar3.get();
            l.d(obj2, "messageAnalytics.get()");
            AbstractC19510i0 abstractC19510i0 = (AbstractC19510i0) obj2;
            a<AbstractC7290a> aVar4 = NoConfirmationSmsSendService.this.f13855f;
            if (aVar4 == null) {
                l.l("messagesMonitor");
                throw null;
            }
            Object obj3 = aVar4.get();
            l.d(obj3, "messagesMonitor.get()");
            AbstractC7290a abstractC7290a = (AbstractC7290a) obj3;
            a<AbstractC6708t> aVar5 = NoConfirmationSmsSendService.this.f13853d;
            if (aVar5 == null) {
                l.l("transportManager");
                throw null;
            }
            Object obj4 = aVar5.get();
            l.d(obj4, "transportManager.get()");
            AbstractC6708t abstractC6708t = (AbstractC6708t) obj4;
            Objects.requireNonNull(noConfirmationSmsSendService);
            BinaryEntity[] binaryEntityArr = draft.f13272g;
            l.d(binaryEntityArr, "draft.media");
            int mo30548n = abstractC6708t.mo30548n(!(binaryEntityArr.length == 0), draft.f13270e, true);
            AbstractC6704q mo30539x = abstractC6708t.mo30539x(mo30548n);
            l.d(mo30539x, "transportManager.getTransport(transportType)");
            String name = mo30539x.getName();
            l.d(name, "transportManager.getTransport(transportType).name");
            String str = draft.f13274i;
            l.d(str, "draft.analyticsId");
            Participant[] participantArr2 = draft.f13270e;
            l.d(participantArr2, "draft.participants");
            abstractC19510i0.mo13207s("inCall", str, name, participantArr2);
            String str2 = draft.f13274i;
            Participant[] participantArr3 = draft.f13270e;
            l.d(participantArr3, "draft.participants");
            BinaryEntity[] binaryEntityArr2 = draft.f13272g;
            l.d(binaryEntityArr2, "draft.media");
            abstractC7290a.mo29839i(str2, "inCall", mo30548n, participantArr3, binaryEntityArr2, false);
            return s.a;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        l.e(intent, "intent");
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Application application = getApplication();
        Objects.requireNonNull(application, "null cannot be cast to non-null type com.truecaller.messaging.transport.TransportComponentProvider");
        ((AbstractC6707s) application).mo30565r().mo11146d(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null && !(!l.a("android.intent.action.RESPOND_VIA_MESSAGE", intent.getAction()))) {
            Uri data = intent.getData();
            if (data == null) {
                String str = "Empty data uri: " + intent;
                return super.onStartCommand(intent, i, i2);
            }
            StringBuilder sb = new StringBuilder();
            if (intent.hasExtra("android.intent.extra.SUBJECT")) {
                sb.append(intent.getStringExtra("android.intent.extra.SUBJECT"));
                if (intent.hasExtra("android.intent.extra.TEXT")) {
                    sb.append('\n');
                }
            }
            String stringExtra = intent.getStringExtra("android.intent.extra.TEXT");
            String str2 = stringExtra;
            if (stringExtra == null) {
                str2 = "";
            }
            sb.append(str2);
            if (sb.length() == 0) {
                return super.onStartCommand(intent, i, i2);
            }
            a<AbstractC13497p> aVar = this.f13851b;
            if (aVar == null) {
                l.l("multiSimManager");
                throw null;
            }
            String mo21731z = ((AbstractC13497p) aVar.get()).mo21731z(intent);
            l.d(mo21731z, "multiSimManager.get().ge…dViaMessageIntent(intent)");
            String str3 = mo21731z;
            if (l.a("-1", mo21731z)) {
                a<AbstractC13497p> aVar2 = this.f13851b;
                if (aVar2 == null) {
                    l.l("multiSimManager");
                    throw null;
                }
                Object obj = aVar2.get();
                l.d(obj, "multiSimManager.get()");
                str3 = ((AbstractC13497p) obj).mo21743b();
                l.d(str3, "multiSimManager.get().defaultSimToken");
            }
            a<AbstractC8621z> aVar3 = this.f13852c;
            if (aVar3 == null) {
                l.l("phoneNumberHelper");
                throw null;
            }
            Participant[] m35456c = Participant.m35456c(data, (AbstractC8621z) aVar3.get(), str3);
            l.d(m35456c, "Participant.buildFromDat…erHelper.get(), simToken)");
            if (m35456c.length == 0) {
                String str4 = "Empty participants list: " + intent;
                return super.onStartCommand(intent, i, i2);
            }
            Draft.C4194b c4194b = new Draft.C4194b();
            for (Participant participant : m35456c) {
                l.c(participant);
                c4194b.f13286c.add(participant);
            }
            c4194b.f13288e = sb.toString();
            Draft m35055c = c4194b.m35055c();
            l.d(m35055c, "draftBuilder.build()");
            Message m35062a = m35055c.m35062a(str3, "inCall");
            l.d(m35062a, "draft.buildMessage(simTo…nalyticsContexts.IN_CALL)");
            a<AbstractC6708t> aVar4 = this.f13853d;
            if (aVar4 == null) {
                l.l("transportManager");
                throw null;
            }
            ((AbstractC6708t) aVar4.get()).mo30554h(m35062a, false).mo11829f(new C4263a(i2));
            h1 h1Var = h1.a;
            f fVar = this.f13850a;
            if (fVar != null) {
                s1.a.a.a.v0.f.d.w2(h1Var, fVar, (j0) null, new C4264b(m35456c, null), 2, (Object) null);
                return super.onStartCommand(intent, i, i2);
            }
            l.l("uiCoroutineContext");
            throw null;
        }
        return super.onStartCommand(intent, i, i2);
    }
}
