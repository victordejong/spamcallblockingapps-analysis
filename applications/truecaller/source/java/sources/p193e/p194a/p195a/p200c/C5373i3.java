package p193e.p194a.p195a.p200c;

import android.content.Intent;
import android.util.SparseBooleanArray;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationMode;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.Message;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19091q0;
import p193e.p194a.p1114o5.AbstractC19108u0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.AbstractC5336h3;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6149q;
import p193e.p194a.p195a.p235g1.AbstractC6254b;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p284w0.AbstractC7290a;
import p193e.p194a.p195a.p285x0.C7296a;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p552i.p569m.AbstractC10419a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p851h5.AbstractC14965w;
import p193e.p194a.p851h5.AbstractC14967y;
import q3.a.i0;
import q3.a.j0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.c.i3 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/i3.class */
public final class C5373i3 extends AbstractC20574a<AbstractC5522m3> implements AbstractC5336h3 {

    /* renamed from: A */
    public final AbstractC9691j f18358A;

    /* renamed from: B */
    public final AbstractC5794w3 f18359B;

    /* renamed from: C */
    public final AbstractC18951b0 f18360C;

    /* renamed from: D */
    public final AbstractC7290a f18361D;

    /* renamed from: E */
    public final a<AbstractC5743t3> f18362E;

    /* renamed from: J */
    public final AbstractC5341h7 f18363J;

    /* renamed from: K */
    public final AbstractC6254b f18364K;

    /* renamed from: L */
    public final AbstractC6392i0 f18365L;

    /* renamed from: M */
    public final AbstractC19321u f18366M;

    /* renamed from: N */
    public final AbstractC10419a f18367N;

    /* renamed from: O */
    public final boolean f18368O;

    /* renamed from: d */
    public Draft f18369d;

    /* renamed from: e */
    public List<Message> f18370e;

    /* renamed from: f */
    public k<Message, Integer> f18371f;

    /* renamed from: g */
    public EnumC5789v7 f18372g;

    /* renamed from: h */
    public final AbstractC19868j f18373h;

    /* renamed from: i */
    public final f f18374i;

    /* renamed from: j */
    public final f f18375j;

    /* renamed from: k */
    public final int f18376k;

    /* renamed from: l */
    public final a<AbstractC5336h3.AbstractC5337a> f18377l;

    /* renamed from: m */
    public final AbstractC5585n5 f18378m;

    /* renamed from: n */
    public final C20592g f18379n;

    /* renamed from: o */
    public final AbstractC19022f0 f18380o;

    /* renamed from: p */
    public final AbstractC6708t f18381p;

    /* renamed from: q */
    public final AbstractC19233h0 f18382q;

    /* renamed from: r */
    public final AbstractC8571b f18383r;

    /* renamed from: s */
    public final AbstractC14967y f18384s;

    /* renamed from: t */
    public final AbstractC14965w f18385t;

    /* renamed from: u */
    public final AbstractC19854f<AbstractC19091q0> f18386u;

    /* renamed from: v */
    public final a<AbstractC19854f<AbstractC6233m>> f18387v;

    /* renamed from: w */
    public final AbstractC5687r3 f18388w;

    /* renamed from: x */
    public final AbstractC19108u0 f18389x;

    /* renamed from: y */
    public final AbstractC19230g f18390y;

    /* renamed from: z */
    public final C7296a f18391z;

    @e(c = "com.truecaller.messaging.conversation.ConversationActionModePresenterImpl$deleteMessages$1", f = "ConversationActionModePresenter.kt", l = {380}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.i3$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i3$a.class */
    public static final class C5374a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f18392e;

        /* renamed from: g */
        public final /* synthetic */ boolean f18394g;

        /* renamed from: h */
        public final /* synthetic */ boolean f18395h;

        /* renamed from: i */
        public final /* synthetic */ List f18396i;

        /* renamed from: j */
        public final /* synthetic */ String f18397j;

        /* renamed from: e.a.a.c.i3$a$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/i3$a$a.class */
        public static final class C5375a<R> implements AbstractC19851d0<SparseBooleanArray> {
            public C5375a() {
                C5374a.this = r4;
            }

            @Override // p193e.p194a.p1187r2.AbstractC19851d0
            public void onResult(SparseBooleanArray sparseBooleanArray) {
                SparseBooleanArray sparseBooleanArray2 = sparseBooleanArray;
                if (sparseBooleanArray2 == null) {
                    return;
                }
                Objects.requireNonNull(C5373i3.this);
                boolean z = true;
                if (sparseBooleanArray2.get(0, true)) {
                    z = !sparseBooleanArray2.get(1, true);
                }
                if (z) {
                    C5373i3 c5373i3 = C5373i3.this;
                    AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) c5373i3.f57683a;
                    if (abstractC5522m3 == null) {
                        return;
                    }
                    String mo13768b = c5373i3.f18382q.mo13768b(C2752R.string.DialogGrantPermissionToDeleteSms, new Object[0]);
                    l.d(mo13768b, "resourceProvider.getStri…antPermissionToDeleteSms)");
                    abstractC5522m3.mo32512P5(mo13768b, 100, C5374a.this.f18397j);
                    return;
                }
                C5374a c5374a = C5374a.this;
                AbstractC5522m3 abstractC5522m32 = (AbstractC5522m3) C5373i3.this.f57683a;
                if (abstractC5522m32 != null) {
                    int size = c5374a.f18396i.size();
                    Objects.requireNonNull(C5373i3.this);
                    abstractC5522m32.mo32399x7(size, C2752R.plurals.ConversationMessagesDeleteConfirmation_tcx);
                }
                C5374a c5374a2 = C5374a.this;
                C5373i3.this.f18370e = null;
                List list = c5374a2.f18396i;
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (C10480a.m26093A1((Message) obj)) {
                        arrayList.add(obj);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Message message = (Message) it.next();
                    C5373i3 c5373i32 = C5373i3.this;
                    AbstractC7290a abstractC7290a = c5373i32.f18361D;
                    String context = c5373i32.f18378m.mo32868G().getContext();
                    int i = message.f13391l;
                    b bVar = message.f13384e;
                    l.d(bVar, "it.date");
                    long j = ((w3.b.a.e0.e) bVar).a;
                    b bVar2 = message.f13385f;
                    l.d(bVar2, "it.sendScheduleDate");
                    abstractC7290a.mo29842f(context, i, j, ((w3.b.a.e0.e) bVar2).a);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5374a(boolean z, boolean z2, List list, String str, d dVar) {
            super(2, dVar);
            C5373i3.this = r5;
            this.f18394g = z;
            this.f18395h = z2;
            this.f18396i = list;
            this.f18397j = str;
        }

        /* renamed from: i */
        public final d<s> m33218i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5374a(this.f18394g, this.f18395h, this.f18396i, this.f18397j, dVar);
        }

        /* renamed from: k */
        public final Object m33217k(Object obj, Object obj2) {
            return m33218i(obj, (d) obj2).m33216s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x01dd, code lost:
            if (r0.m11120e(r0) != null) goto L42;
         */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0067  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m33216s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 559
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5373i3.C5374a.m33216s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationActionModePresenterImpl$onReportNotSpamOptionClicked$1", f = "ConversationActionModePresenter.kt", l = {323}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.i3$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i3$b.class */
    public static final class C5376b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f18399e;

        /* renamed from: g */
        public final /* synthetic */ Message[] f18401g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5376b(Message[] messageArr, d dVar) {
            super(2, dVar);
            C5373i3.this = r5;
            this.f18401g = messageArr;
        }

        /* renamed from: i */
        public final d<s> m33215i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5376b(this.f18401g, dVar);
        }

        /* renamed from: k */
        public final Object m33214k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5376b(this.f18401g, dVar).m33213s(s.a);
        }

        /* renamed from: s */
        public final Object m33213s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f18399e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                List<Message> m3897h3 = C25225a.m3897h3(this.f18401g);
                ArrayList arrayList = new ArrayList(C25225a.m4004J(m3897h3, 10));
                for (Message message : m3897h3) {
                    arrayList.add(new Long(message.f13380a));
                }
                AbstractC10419a abstractC10419a = C5373i3.this.f18367N;
                this.f18399e = 1;
                if (abstractC10419a.mo26182b(arrayList, 2, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationActionModePresenterImpl$onReportSpamConfirmationPositiveClicked$1", f = "ConversationActionModePresenter.kt", l = {312}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.i3$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i3$c.class */
    public static final class C5377c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f18402e;

        /* renamed from: g */
        public final /* synthetic */ Message[] f18404g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5377c(Message[] messageArr, d dVar) {
            super(2, dVar);
            C5373i3.this = r5;
            this.f18404g = messageArr;
        }

        /* renamed from: i */
        public final d<s> m33212i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5377c(this.f18404g, dVar);
        }

        /* renamed from: k */
        public final Object m33211k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5377c(this.f18404g, dVar).m33210s(s.a);
        }

        /* renamed from: s */
        public final Object m33210s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f18402e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                List<Message> m3897h3 = C25225a.m3897h3(this.f18404g);
                ArrayList arrayList = new ArrayList(C25225a.m4004J(m3897h3, 10));
                for (Message message : m3897h3) {
                    arrayList.add(new Long(message.f13380a));
                }
                AbstractC10419a abstractC10419a = C5373i3.this.f18367N;
                this.f18402e = 1;
                if (abstractC10419a.mo26182b(arrayList, 3, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationActionModePresenterImpl", f = "ConversationActionModePresenter.kt", l = {881}, m = "requestStoragePermissions")
    /* renamed from: e.a.a.c.i3$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i3$d.class */
    public static final class C5378d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f18405d;

        /* renamed from: e */
        public int f18406e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5378d(d dVar) {
            super(dVar);
            C5373i3.this = r4;
        }

        /* renamed from: s */
        public final Object m33209s(Object obj) {
            this.f18405d = obj;
            this.f18406e |= Integer.MIN_VALUE;
            return C5373i3.this.m33237Jj(this);
        }
    }

    /* renamed from: e.a.a.c.i3$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i3$e.class */
    public static final class C5379e<R> implements AbstractC19851d0<Message> {

        /* renamed from: b */
        public final /* synthetic */ Message f18409b;

        /* renamed from: c */
        public final /* synthetic */ Participant[] f18410c;

        /* renamed from: d */
        public final /* synthetic */ int f18411d;

        public C5379e(Message message, Participant[] participantArr, int i) {
            C5373i3.this = r4;
            this.f18409b = message;
            this.f18410c = participantArr;
            this.f18411d = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Message message) {
            Message message2 = message;
            ((AbstractC6233m) ((AbstractC19854f) C5373i3.this.f18387v.get()).mo11854a()).mo31708Q(this.f18409b.f13380a).mo11828g();
            if (message2 == null) {
                return;
            }
            C5373i3.this.f18381p.mo30560b(message2, this.f18410c, false, this.f18411d != 2).mo11828g();
            ((C5718s3) C5373i3.this.f18388w).m32767d(message2, this.f18410c, this.f18411d);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5373i3(@Named("UiThread") AbstractC19868j abstractC19868j, @Named("UI") f fVar, @Named("IO") f fVar2, @Named("Filter") int i, a<AbstractC5336h3.AbstractC5337a> aVar, AbstractC5585n5 abstractC5585n5, C20592g c20592g, AbstractC19022f0 abstractC19022f0, AbstractC6708t abstractC6708t, AbstractC19233h0 abstractC19233h0, AbstractC8571b abstractC8571b, AbstractC14967y abstractC14967y, AbstractC14965w abstractC14965w, AbstractC19854f<AbstractC19091q0> abstractC19854f, a<AbstractC19854f<AbstractC6233m>> aVar2, AbstractC5687r3 abstractC5687r3, AbstractC19108u0 abstractC19108u0, AbstractC19230g abstractC19230g, C7296a c7296a, AbstractC9691j abstractC9691j, AbstractC5794w3 abstractC5794w3, AbstractC18951b0 abstractC18951b0, AbstractC7290a abstractC7290a, a<AbstractC5743t3> aVar3, AbstractC5341h7 abstractC5341h7, AbstractC6254b abstractC6254b, AbstractC6392i0 abstractC6392i0, AbstractC19321u abstractC19321u, AbstractC10419a abstractC10419a, @Named("isQaDevice") boolean z) {
        super(fVar);
        l.e(abstractC19868j, "uiThread");
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(aVar, "listener");
        l.e(abstractC5585n5, "conversationState");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC6708t, "transportManager");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC8571b, "attachmentStoreHelper");
        l.e(abstractC14967y, "permissionsView");
        l.e(abstractC14965w, "permissionUtil");
        l.e(abstractC19854f, "mediaHelper");
        l.e(aVar2, "messagesStorage");
        l.e(abstractC5687r3, "conversationAnalytics");
        l.e(abstractC19108u0, "mediaUtils");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(c7296a, "multiSimInputPresenter");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC5794w3, "conversationDataSource");
        l.e(abstractC18951b0, "dateHelper");
        l.e(abstractC7290a, "messagesMonitor");
        l.e(aVar3, "conversationBubbleInteractions");
        l.e(abstractC5341h7, "messagesTranslateHelper");
        l.e(abstractC6254b, "translateManager");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19321u, "networkUtil");
        l.e(abstractC10419a, "insightsSmsSyncManager");
        this.f18373h = abstractC19868j;
        this.f18374i = fVar;
        this.f18375j = fVar2;
        this.f18376k = i;
        this.f18377l = aVar;
        this.f18378m = abstractC5585n5;
        this.f18379n = c20592g;
        this.f18380o = abstractC19022f0;
        this.f18381p = abstractC6708t;
        this.f18382q = abstractC19233h0;
        this.f18383r = abstractC8571b;
        this.f18384s = abstractC14967y;
        this.f18385t = abstractC14965w;
        this.f18386u = abstractC19854f;
        this.f18387v = aVar2;
        this.f18388w = abstractC5687r3;
        this.f18389x = abstractC19108u0;
        this.f18390y = abstractC19230g;
        this.f18391z = c7296a;
        this.f18358A = abstractC9691j;
        this.f18359B = abstractC5794w3;
        this.f18360C = abstractC18951b0;
        this.f18361D = abstractC7290a;
        this.f18362E = aVar3;
        this.f18363J = abstractC5341h7;
        this.f18364K = abstractC6254b;
        this.f18365L = abstractC6392i0;
        this.f18366M = abstractC19321u;
        this.f18367N = abstractC10419a;
        this.f18368O = z;
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5419a
    /* renamed from: A3 */
    public void mo32971A3(Message message, boolean z) {
        l.e(message, "message");
        AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m3 != null) {
            abstractC5522m3.mo32443lm();
        }
        mo32970Sb(message, z);
        ((AbstractC5336h3.AbstractC5337a) this.f18377l.get()).mo32675x0();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: B */
    public void mo33243B() {
        Conversation conversation;
        if (this.f18372g == null || !this.f18378m.mo32873B()) {
            return;
        }
        AbstractC6149q mo32578f = this.f18359B.mo32578f();
        if (mo32578f != null) {
            mo32578f.moveToPosition(-1);
            while (mo32578f.moveToNext()) {
                int mo31738R0 = mo32578f.mo31738R0();
                if (mo31738R0 != 6) {
                    boolean z = mo31738R0 != 5;
                    EnumC5789v7 enumC5789v7 = this.f18372g;
                    if (enumC5789v7 != null) {
                        int ordinal = enumC5789v7.ordinal();
                        if (ordinal != 0) {
                            if (ordinal == 1 && z) {
                                AbstractC5585n5 abstractC5585n5 = this.f18378m;
                                Message message = mo32578f.getMessage();
                                l.d(message, "message");
                                abstractC5585n5.mo32855j(message);
                            }
                        } else if (!z) {
                            AbstractC5585n5 abstractC5585n52 = this.f18378m;
                            Message message2 = mo32578f.getMessage();
                            l.d(message2, "message");
                            abstractC5585n52.mo32855j(message2);
                        }
                    }
                }
            }
        }
        AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m3 != null) {
            abstractC5522m3.mo32373A();
        }
        Draft draft = this.f18369d;
        if (draft != null && (conversation = draft.f13267b) != null) {
            l.d(conversation, "it");
            m33234Lj(conversation, false);
        }
        this.f18372g = null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: Cf */
    public void mo33242Cf(boolean z, boolean z2, List<Message> list, String str) {
        l.e(list, "messages");
        l.e(str, "analyticsContext");
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5374a(z, z2, list, str, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: Fi */
    public void mo33241Fi(String str, boolean z, Message message) {
        l.e(str, "languageCode");
        l.e(message, "message");
        if (!z && !this.f18366M.mo13430c()) {
            AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) this.f57683a;
            if (abstractC5522m3 != null) {
                abstractC5522m3.mo32353a(C2752R.string.ConversationDownloadConnectToWiFi);
            }
        } else if (!z || this.f18366M.mo13429d()) {
            AbstractC5522m3 abstractC5522m32 = (AbstractC5522m3) this.f57683a;
            if (abstractC5522m32 != null) {
                abstractC5522m32.mo32353a(C2752R.string.ConversationDownloadStarted);
            }
        } else {
            AbstractC5522m3 abstractC5522m33 = (AbstractC5522m3) this.f57683a;
            if (abstractC5522m33 != null) {
                abstractC5522m33.mo32353a(C2752R.string.ConversationDownloadWillStartLater);
            }
        }
        this.f18364K.mo31539j(str, z, !l.a(this.f18365L.mo31051j2(), "wifiOrMobile"), new C5400j3(this, message));
        AbstractC5687r3 abstractC5687r3 = this.f18388w;
        String mo14242d = this.f18380o.mo14242d();
        l.d(mo14242d, "deviceManager.languageIso");
        int i = this.f18376k;
        C5718s3 c5718s3 = (C5718s3) abstractC5687r3;
        Objects.requireNonNull(c5718s3);
        l.e(message, "message");
        l.e(mo14242d, "deviceLanguage");
        AbstractC19510i0 abstractC19510i0 = c5718s3.f19171b;
        LinkedHashMap m8655X = C22128a.m8655X("DownloadLangPack", "type");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String str2 = message.f13405z;
        if (str2 == null) {
            str2 = "";
        }
        l.e("sourceLanguage", AnalyticsConstants.NAME);
        l.e(str2, "value");
        m8655X.put("sourceLanguage", str2);
        l.e("deviceLanguage", AnalyticsConstants.NAME);
        l.e(mo14242d, "value");
        m8655X.put("deviceLanguage", mo14242d);
        String q1 = n.q1(message);
        l.e("messageType", AnalyticsConstants.NAME);
        l.e(q1, "value");
        m8655X.put("messageType", q1);
        String m32770a = c5718s3.m32770a(i);
        C17697p3.C17699b m8560v1 = C22128a.m8560v1(AnalyticsConstants.CONTACT, AnalyticsConstants.NAME, m32770a, "value", m8655X, AnalyticsConstants.CONTACT, m32770a, "DownloadLangPack", linkedHashMap);
        m8560v1.m15848d(m8655X);
        C17697p3 build = m8560v1.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        abstractC19510i0.mo13225a(build);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: Ig */
    public boolean mo33240Ig() {
        boolean z;
        boolean z2 = false;
        if (m33239Ij()) {
            Message[] mo32864b = this.f18378m.mo32864b();
            int length = mo32864b.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = true;
                    break;
                }
                Message message = mo32864b[i];
                int i2 = message.f13390k;
                if (!((i2 == 0 || i2 == 4 || i2 == 1 || i2 == 7 || i2 == 2 || C10480a.m26093A1(message)) && !message.f13374N)) {
                    z = false;
                    break;
                }
                i++;
            }
            z2 = false;
            if (z) {
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: Ij */
    public final boolean m33239Ij() {
        return this.f18358A.mo27286I() || this.f18358A.mo27289F() || this.f18358A.mo27262d() || this.f18358A.mo27237w();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: Jb */
    public void mo33238Jb() {
        ((AbstractC5336h3.AbstractC5337a) this.f18377l.get()).mo32723N8(this.f18378m.mo32864b(), this.f18378m.mo32873B() ? "longPress" : ViewAction.TAP);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
    /* renamed from: Jj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m33237Jj(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p195a.p200c.C5373i3.C5378d
            if (r0 == 0) goto L27
            r0 = r6
            e.a.a.c.i3$d r0 = (p193e.p194a.p195a.p200c.C5373i3.C5378d) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f18406e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L27
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f18406e = r1
            r0 = r7
            r6 = r0
            goto L31
        L27:
            e.a.a.c.i3$d r0 = new e.a.a.c.i3$d
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L31:
            r0 = r6
            java.lang.Object r0 = r0.f18405d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f18406e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5d
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L52
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L98
        L52:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5d:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.h5.y r0 = r0.f18384s
            r7 = r0
            r0 = r5
            e.a.h5.w r0 = r0.f18385t
            java.lang.String[] r0 = r0.mo19340q()
            r10 = r0
            r0 = r10
            r1 = r10
            int r1 = r1.length
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r1)
            java.lang.String[] r0 = (java.lang.String[]) r0
            r10 = r0
            r0 = r6
            r1 = 1
            r0.f18406e = r1
            r0 = r7
            r1 = r10
            r2 = r6
            java.lang.Object r0 = r0.mo19334f(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L98
            r0 = r9
            return r0
        L98:
            r0 = r6
            e.a.h5.l r0 = (p193e.p194a.p851h5.C14945l) r0
            boolean r0 = r0.f42679a
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5373i3.m33237Jj(s1.w.d):java.lang.Object");
    }

    /* renamed from: Kj */
    public final boolean m33236Kj() {
        Message[] mo32864b = this.f18378m.mo32864b();
        int length = mo32864b.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = true;
                break;
            }
            Message message = mo32864b[i];
            boolean z2 = true;
            if (!C10480a.m25949i1(message)) {
                z2 = true;
                if (!message.m35015l()) {
                    z2 = true;
                    if (message.f13390k != 5) {
                        z2 = C10480a.m25945j0(message);
                    }
                }
            }
            if (z2) {
                break;
            }
            i++;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: L6 */
    public void mo33235L6() {
        AbstractC5522m3 abstractC5522m3;
        if (this.f18378m.mo32873B() && (abstractC5522m3 = (AbstractC5522m3) this.f57683a) != null) {
            abstractC5522m3.mo32533Jp(0.0f);
        }
        ((AbstractC5743t3) this.f18362E.get()).mo32631p0(this.f18378m.mo32864b());
        this.f18378m.mo32848s(false);
        this.f18378m.mo32853l();
        AbstractC5522m3 abstractC5522m32 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m32 != null) {
            abstractC5522m32.mo32373A();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:267:0x05d5, code lost:
        if (((r0.f13386g & 8) > 0) != false) goto L268;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x05f7, code lost:
        if (r35 == false) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0086, code lost:
        if (r31 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ea, code lost:
        if (r31 != false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ed, code lost:
        r36 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x06b8  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0702  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0378 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:319:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e1 A[LOOP:1: B:35:0x00a3->B:46:0x00e1, LOOP_END] */
    /* renamed from: Lj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33234Lj(com.truecaller.messaging.data.types.Conversation r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 1836
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5373i3.m33234Lj(com.truecaller.messaging.data.types.Conversation, boolean):void");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: N4 */
    public void mo33233N4(int i, Message[] messageArr, boolean z) {
        l.e(messageArr, "messages");
        ((AbstractC6233m) ((AbstractC19854f) this.f18387v.get()).mo11854a()).mo31716F(messageArr, i);
        if (z) {
            ((C5718s3) this.f18388w).m32768c(C25225a.m3897h3(messageArr), null, this.f18376k, false);
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5376b(messageArr, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: N9 */
    public void mo33232N9() {
        Conversation conversation;
        ImGroupInfo imGroupInfo;
        AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m3 != null) {
            Message mo32858g = this.f18378m.mo32858g();
            Draft draft = this.f18369d;
            Participant[] participantArr = null;
            String str = (draft == null || (conversation = draft.f13267b) == null || (imGroupInfo = conversation.f13224z) == null) ? null : imGroupInfo.f13319a;
            if (draft != null) {
                participantArr = draft.f13270e;
            }
            abstractC5522m3.mo32489V6(mo32858g, str, participantArr);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5419a
    /* renamed from: Sb */
    public void mo32970Sb(Message message, boolean z) {
        Conversation conversation;
        l.e(message, "message");
        Draft draft = this.f18369d;
        if (draft == null || (conversation = draft.f13267b) == null) {
            return;
        }
        l.d(conversation, "draft?.conversation ?: return");
        if (this.f18378m.mo32845v(message.f13380a)) {
            this.f18378m.mo32854k(message.f13380a);
        } else {
            this.f18378m.mo32855j(message);
        }
        AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m3 != null) {
            abstractC5522m3.mo32373A();
        }
        if (this.f18378m.mo32870E()) {
            m33234Lj(conversation, z);
            return;
        }
        AbstractC5522m3 abstractC5522m32 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m32 == null) {
            return;
        }
        abstractC5522m32.mo32468e();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: U2 */
    public void mo33231U2() {
        ((AbstractC5336h3.AbstractC5337a) this.f18377l.get()).mo32680rg(this.f18378m.mo32864b(), "conversation");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: Vh */
    public void mo33230Vh(Message[] messageArr, boolean z) {
        l.e(messageArr, "messages");
        ((AbstractC6233m) ((AbstractC19854f) this.f18387v.get()).mo11854a()).mo31716F(messageArr, 1);
        if (z) {
            ((C5718s3) this.f18388w).m32768c(C25225a.m3897h3(messageArr), null, this.f18376k, true);
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5377c(messageArr, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: Wi */
    public void mo33229Wi() {
        Message mo32858g = this.f18378m.mo32858g();
        AbstractC19022f0 abstractC19022f0 = this.f18380o;
        Participant participant = mo32858g.f13382c;
        l.d(participant, "message.participant");
        String m31301c = C6405h.m31301c(participant);
        String str = this.f18378m.mo32841z().get(Long.valueOf(mo32858g.f13380a));
        if (str == null) {
            str = mo32858g.m35025a();
            l.d(str, "message.buildMessageText()");
        }
        abstractC19022f0.mo14234l(m31301c, str);
        AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m3 != null) {
            abstractC5522m3.mo32353a(2131887876);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: Xb */
    public void mo33228Xb(Message message, int i) {
        Participant[] participantArr;
        boolean z;
        boolean z2;
        l.e(message, "message");
        Draft draft = this.f18369d;
        if (draft == null || (participantArr = draft.f13270e) == null) {
            return;
        }
        if (i == 0 || i == 1) {
            if (this.f18390y.mo13802B()) {
                z2 = false;
            } else {
                AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) this.f57683a;
                if (abstractC5522m3 != null) {
                    abstractC5522m3.mo32485W(7, "conversation-sendSms");
                }
                z2 = true;
            }
            if (z2) {
                this.f18371f = new k<>(message, Integer.valueOf(i));
                return;
            }
        }
        int i2 = message.f13386g;
        if (((i2 & 9) != 9 && (i2 & 65) != 65) || message.f13390k == i) {
            return;
        }
        if (message.m35018h()) {
            long mo14088d = this.f18389x.mo14088d(i);
            Entity[] entityArr = message.f13394o;
            l.d(entityArr, "message.entities");
            int length = entityArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    z = false;
                    break;
                }
                Entity entity = entityArr[i3];
                if ((entity instanceof BinaryEntity) && ((BinaryEntity) entity).f13175k > mo14088d) {
                    z = true;
                    break;
                }
                i3++;
            }
            if (z) {
                AbstractC5522m3 abstractC5522m32 = (AbstractC5522m3) this.f57683a;
                if (abstractC5522m32 == null) {
                    return;
                }
                abstractC5522m32.mo32236L2(mo14088d);
                return;
            }
        }
        boolean z3 = false;
        if (participantArr.length == 0) {
            z3 = true;
        }
        if (z3) {
            return;
        }
        ((AbstractC6233m) ((AbstractC19854f) this.f18387v.get()).mo11854a()).mo31682w(message, i, this.f18391z.f23291e).mo11829f(new C5379e(message, participantArr, i));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: Ya */
    public void mo33227Ya() {
        AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m3 != null) {
            abstractC5522m3.mo32343j4();
        }
        Message mo32858g = this.f18378m.mo32858g();
        this.f18378m.mo32853l();
        mo32967s4(mo32858g);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: a2 */
    public void mo33226a2(boolean z, boolean z2, List<Message> list, String str) {
        l.e(list, "messages");
        l.e(str, "analyticsContext");
        AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m3 != null) {
            abstractC5522m3.mo32468e();
        }
        this.f18370e = list;
        mo33242Cf(z && z2, false, list, str);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5419a
    /* renamed from: ab */
    public void mo32969ab(Message message) {
        l.e(message, "message");
        AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m3 != null) {
            abstractC5522m3.mo32443lm();
        }
        this.f18378m.mo32855j(message);
        AbstractC5522m3 abstractC5522m32 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m32 != null) {
            abstractC5522m32.mo32569Ac();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: aj */
    public void mo33225aj(boolean z, List<Message> list) {
        l.e(list, "messages");
        AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m3 != null) {
            abstractC5522m3.mo32468e();
        }
        this.f18370e = list;
        mo33242Cf(this.f18385t.mo19343n(), z, list, (r11 & 8) != 0 ? "conversation-deleteSms" : null);
        C5718s3 c5718s3 = (C5718s3) this.f18388w;
        Objects.requireNonNull(c5718s3);
        l.e(list, "messages");
        AbstractC19510i0 abstractC19510i0 = c5718s3.f19171b;
        LinkedHashMap m8655X = C22128a.m8655X("RemoveMessage", "type");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("deleteByRecepient", AnalyticsConstants.NAME);
        m8655X.put("deleteByRecepient", String.valueOf(z));
        String m26016T2 = C10480a.m26016T2(list);
        l.e("type", AnalyticsConstants.NAME);
        l.e(m26016T2, "value");
        m8655X.put("type", m26016T2);
        l.e("peer", AnalyticsConstants.NAME);
        l.e("chat", "value");
        m8655X.put("peer", "chat");
        int size = list.size();
        l.e("count", AnalyticsConstants.NAME);
        linkedHashMap.put("count", Double.valueOf(size));
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("RemoveMessage");
        m15852a.m15849c(linkedHashMap);
        m15852a.m15848d(m8655X);
        C17697p3 build = m15852a.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        abstractC19510i0.mo13225a(build);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5419a
    /* renamed from: e */
    public void mo32968e() {
        AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m3 != null) {
            abstractC5522m3.mo32468e();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: g9 */
    public boolean mo33224g9() {
        boolean z;
        boolean z2 = false;
        if (m33239Ij()) {
            Message[] mo32864b = this.f18378m.mo32864b();
            int length = mo32864b.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = true;
                    break;
                }
                Message message = mo32864b[i];
                int i2 = message.f13390k;
                if (!((i2 == 0 || i2 == 4 || i2 == 1 || i2 == 7 || i2 == 2 || C10480a.m26093A1(message)) && message.f13374N)) {
                    z = false;
                    break;
                }
                i++;
            }
            z2 = false;
            if (z) {
                z2 = true;
            }
        }
        return z2;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    public void onActivityResult(int i, int i2, Intent intent) {
        List<Message> list;
        List<Message> list2;
        if (i2 != -1) {
            return;
        }
        if (i == 7) {
            k<Message, Integer> kVar = this.f18371f;
            if (kVar != null) {
                mo33228Xb((Message) kVar.a, ((Number) kVar.b).intValue());
            }
        } else if (i == 100 && (list2 = this.f18370e) != null) {
            mo33242Cf(false, false, list2, (r11 & 8) != 0 ? "conversation-deleteSms" : null);
        }
        if (i != 100 || i2 != -1 || (list = this.f18370e) == null) {
            return;
        }
        mo33242Cf(false, false, list, (r11 & 8) != 0 ? "conversation-deleteSms" : null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        List<Message> list;
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        if (i != 100 || !this.f18385t.mo19347j() || (list = this.f18370e) == null) {
            return;
        }
        mo33242Cf(false, false, list, (r11 & 8) != 0 ? "conversation-deleteSms" : null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: p */
    public void mo33223p(Draft draft) {
        this.f18369d = draft;
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5419a
    /* renamed from: s4 */
    public void mo32967s4(Message message) {
        l.e(message, "message");
        boolean z = true;
        this.f18378m.mo32848s(true);
        AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m3 != null) {
            if (this.f18378m.mo32868G() != ConversationMode.SCHEDULE) {
                z = false;
            }
            abstractC5522m3.mo32514Od(z);
        }
        C10480a.m26013U1(this, message, false, 2, null);
        ((AbstractC5336h3.AbstractC5337a) this.f18377l.get()).mo32675x0();
        AbstractC5522m3 abstractC5522m32 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m32 != null) {
            abstractC5522m32.mo32533Jp(1.0f);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: si */
    public void mo33222si() {
        AbstractC5522m3 abstractC5522m3;
        if (this.f18378m.mo32872C() != 1 || this.f18378m.mo32873B() || (abstractC5522m3 = (AbstractC5522m3) this.f57683a) == null) {
            return;
        }
        abstractC5522m3.mo32468e();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: vg */
    public void mo33221vg(Message[] messageArr, String str) {
        l.e(messageArr, "messages");
        ((C5718s3) this.f18388w).m32768c(C25225a.m3897h3(messageArr), str, this.f18376k, true);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: w2 */
    public void mo33220w2(Message[] messageArr, String str) {
        l.e(messageArr, "messages");
        ((C5718s3) this.f18388w).m32768c(C25225a.m3897h3(messageArr), str, this.f18376k, false);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3
    /* renamed from: ye */
    public boolean mo33219ye(int i) {
        boolean z;
        boolean z2;
        if (!this.f18378m.mo32870E()) {
            return false;
        }
        ((AbstractC5743t3) this.f18362E.get()).mo32630q0(i, this.f18378m.mo32873B(), this.f18378m.mo32864b());
        if (i == 2131361903) {
            mo33227Ya();
            return true;
        }
        switch (i) {
            case C2752R.C2754id.actionCopy /* 2131361890 */:
                mo33229Wi();
                break;
            case C2752R.C2754id.actionDelete /* 2131361891 */:
                List<Message> m3897h3 = C25225a.m3897h3(this.f18378m.mo32864b());
                if (C10480a.m26095A(m3897h3, this.f18379n, this.f18378m)) {
                    AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) this.f57683a;
                    if (abstractC5522m3 == null) {
                        return true;
                    }
                    abstractC5522m3.mo32340n4(C2752R.plurals.ConversationMessagesDeleteQuestion_tcx, C10480a.m25890u0(this.f18378m, this.f18382q), m3897h3);
                    return true;
                }
                AbstractC5522m3 abstractC5522m32 = (AbstractC5522m3) this.f57683a;
                if (abstractC5522m32 == null) {
                    return true;
                }
                if (m3897h3.isEmpty()) {
                    z = false;
                } else {
                    Iterator<T> it = m3897h3.iterator();
                    while (true) {
                        z = false;
                        if (it.hasNext()) {
                            Entity[] entityArr = ((Message) it.next()).f13394o;
                            l.d(entityArr, "entities");
                            int length = entityArr.length;
                            int i2 = 0;
                            while (true) {
                                if (i2 < length) {
                                    Entity entity = entityArr[i2];
                                    if ((entity instanceof BinaryEntity) && this.f18383r.mo28370a(((BinaryEntity) entity).f13173i)) {
                                        z2 = true;
                                    } else {
                                        i2++;
                                    }
                                } else {
                                    z2 = false;
                                }
                            }
                            if (z2) {
                                z = true;
                            }
                        }
                    }
                }
                abstractC5522m32.mo32360S4(z, C2752R.plurals.ConversationMessagesDeleteQuestion_tcx, m3897h3, "conversation-deleteSms");
                return true;
            case 2131361892:
            case 2131361897:
            case 2131361898:
            case C2752R.C2754id.actionMode /* 2131361901 */:
            case C2752R.C2754id.actionModeShadow /* 2131361902 */:
            case C2752R.C2754id.actionMultiSelect /* 2131361903 */:
            case C2752R.C2754id.actionNegative /* 2131361904 */:
            case C2752R.C2754id.actionOne /* 2131361908 */:
            case C2752R.C2754id.actionPositive /* 2131361909 */:
            case 2131361914:
            case 2131361922:
            case 2131361923:
            case 2131361924:
            case 2131361925:
            default:
                return false;
            case C2752R.C2754id.actionDownload /* 2131361893 */:
                s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5441k3(this, this.f18378m.mo32858g(), null), 3, (Object) null);
                break;
            case C2752R.C2754id.actionEdit /* 2131361894 */:
                ((AbstractC5336h3.AbstractC5337a) this.f18377l.get()).mo32727Ma(this.f18378m.mo32858g());
                break;
            case C2752R.C2754id.actionFeedback /* 2131361895 */:
                AbstractC5522m3 abstractC5522m33 = (AbstractC5522m3) this.f57683a;
                if (abstractC5522m33 != null) {
                    Message[] mo32864b = this.f18378m.mo32864b();
                    abstractC5522m33.mo32444lA((Message[]) Arrays.copyOf(mo32864b, mo32864b.length));
                    break;
                }
                break;
            case C2752R.C2754id.actionForward /* 2131361896 */:
                ((AbstractC5336h3.AbstractC5337a) this.f18377l.get()).mo32699h6(this.f18378m.mo32864b());
                break;
            case C2752R.C2754id.actionInfo /* 2131361899 */:
                mo33232N9();
                break;
            case C2752R.C2754id.actionMarkImportant /* 2131361900 */:
                mo33238Jb();
                break;
            case C2752R.C2754id.actionNotImportant /* 2131361905 */:
                ((AbstractC5336h3.AbstractC5337a) this.f18377l.get()).mo32680rg(this.f18378m.mo32864b(), "conversation");
                break;
            case C2752R.C2754id.actionNotPromotional /* 2131361906 */:
                ((AbstractC6233m) ((AbstractC19854f) this.f18387v.get()).mo11854a()).mo31710O(this.f18378m.mo32864b(), 2);
                AbstractC5522m3 abstractC5522m34 = (AbstractC5522m3) this.f57683a;
                if (abstractC5522m34 != null) {
                    abstractC5522m34.mo32415ty();
                    break;
                }
                break;
            case C2752R.C2754id.actionNotSpam /* 2131361907 */:
                AbstractC5522m3 abstractC5522m35 = (AbstractC5522m3) this.f57683a;
                if (abstractC5522m35 != null) {
                    Message[] mo32864b2 = this.f18378m.mo32864b();
                    abstractC5522m35.mo32364N4((Message[]) Arrays.copyOf(mo32864b2, mo32864b2.length));
                    break;
                }
                break;
            case C2752R.C2754id.actionPromotional /* 2131361910 */:
                ((AbstractC6233m) ((AbstractC19854f) this.f18387v.get()).mo11854a()).mo31710O(this.f18378m.mo32864b(), 4);
                AbstractC5522m3 abstractC5522m36 = (AbstractC5522m3) this.f57683a;
                if (abstractC5522m36 != null) {
                    abstractC5522m36.mo32403vx();
                    break;
                }
                break;
            case C2752R.C2754id.actionReply /* 2131361911 */:
                ((AbstractC5336h3.AbstractC5337a) this.f18377l.get()).mo32705ag(this.f18378m.mo32858g());
                break;
            case C2752R.C2754id.actionReschedule /* 2131361912 */:
                Message mo32858g = this.f18378m.mo32858g();
                AbstractC5522m3 abstractC5522m37 = (AbstractC5522m3) this.f57683a;
                if (abstractC5522m37 != null) {
                    b bVar = mo32858g.f13385f;
                    l.d(bVar, "it.sendScheduleDate");
                    abstractC5522m37.mo32546Fj(((w3.b.a.e0.e) bVar).a, mo32858g.f13380a, mo32858g.f13391l);
                    break;
                }
                break;
            case C2752R.C2754id.actionResendSms /* 2131361913 */:
                Message mo32858g2 = this.f18378m.mo32858g();
                int i3 = 2;
                if (mo32858g2.m35018h()) {
                    i3 = 1;
                }
                mo33228Xb(mo32858g2, i3);
                break;
            case C2752R.C2754id.actionSelectAllCalls /* 2131361915 */:
                this.f18372g = EnumC5789v7.CALLS;
                ((AbstractC5336h3.AbstractC5337a) this.f18377l.get()).mo32686n6();
                return true;
            case C2752R.C2754id.actionSelectAllMessages /* 2131361916 */:
                this.f18372g = EnumC5789v7.MESSAGES;
                ((AbstractC5336h3.AbstractC5337a) this.f18377l.get()).mo32686n6();
                return true;
            case C2752R.C2754id.actionSendNow /* 2131361917 */:
                Message mo32858g3 = this.f18378m.mo32858g();
                this.f18381p.mo30537z(this.f18378m.mo32868G().getContext(), mo32858g3.f13380a, ((w3.b.a.e0.e) this.f18360C.mo14285j()).a, mo32858g3.f13391l).mo11828g();
                break;
            case C2752R.C2754id.actionShare /* 2131361918 */:
                if (!((AbstractC5336h3.AbstractC5337a) this.f18377l.get()).mo32715R7(this.f18378m.mo32858g())) {
                    AbstractC5522m3 abstractC5522m38 = (AbstractC5522m3) this.f57683a;
                    if (abstractC5522m38 != null) {
                        abstractC5522m38.mo32544Gd(this.f18378m.mo32858g());
                        break;
                    }
                } else {
                    ((AbstractC5336h3.AbstractC5337a) this.f18377l.get()).mo32698hd(this.f18378m.mo32858g());
                    break;
                }
                break;
            case C2752R.C2754id.actionShowInChat /* 2131361919 */:
                Message mo32858g4 = this.f18378m.mo32858g();
                AbstractC5522m3 abstractC5522m39 = (AbstractC5522m3) this.f57683a;
                if (abstractC5522m39 != null) {
                    abstractC5522m39.mo32538I8(mo32858g4.f13381b, mo32858g4.f13380a);
                    break;
                }
                break;
            case C2752R.C2754id.actionShowOriginal /* 2131361920 */:
                this.f18378m.mo32841z().remove(Long.valueOf(this.f18378m.mo32858g().f13380a));
                AbstractC5522m3 abstractC5522m310 = (AbstractC5522m3) this.f57683a;
                if (abstractC5522m310 != null) {
                    abstractC5522m310.mo32373A();
                    break;
                }
                break;
            case C2752R.C2754id.actionSpam /* 2131361921 */:
                AbstractC5522m3 abstractC5522m311 = (AbstractC5522m3) this.f57683a;
                if (abstractC5522m311 != null) {
                    Message[] mo32864b3 = this.f18378m.mo32864b();
                    abstractC5522m311.mo32371C2((Message[]) Arrays.copyOf(mo32864b3, mo32864b3.length));
                    break;
                }
                break;
            case C2752R.C2754id.actionTranslate /* 2131361926 */:
                s1.a.a.a.v0.f.d.w2(this, this.f18374i, (j0) null, new C5480l3(this, this.f18378m.mo32858g(), null), 2, (Object) null);
                break;
            case C2752R.C2754id.actionViewPdo /* 2131361927 */:
                AbstractC5522m3 abstractC5522m312 = (AbstractC5522m3) this.f57683a;
                if (abstractC5522m312 != null) {
                    abstractC5522m312.mo32455is(this.f18378m.mo32858g().f13380a);
                    break;
                }
                break;
        }
        AbstractC5522m3 abstractC5522m313 = (AbstractC5522m3) this.f57683a;
        if (abstractC5522m313 == null) {
            return true;
        }
        abstractC5522m313.mo32468e();
        return true;
    }
}
