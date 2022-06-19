package p193e.p194a.p195a.p200c.p217o;

import android.content.Intent;
import android.net.Uri;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.notifications.ConversationMutePeriod;
import com.truecaller.messaging.data.types.Conversation;
import io.agora.rtc.Constants;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19056l1;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.c.o.e */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/o/e.class */
public final class C5604e extends AbstractC20574a<AbstractC5603d> implements AbstractC5602c {

    /* renamed from: d */
    public String f18858d;

    /* renamed from: e */
    public boolean f18859e;

    /* renamed from: f */
    public final f f18860f;

    /* renamed from: g */
    public final f f18861g;

    /* renamed from: h */
    public Conversation f18862h;

    /* renamed from: i */
    public final a<AbstractC6248w> f18863i;

    /* renamed from: j */
    public final AbstractC5614h f18864j;

    /* renamed from: k */
    public final AbstractC18951b0 f18865k;

    /* renamed from: l */
    public final AbstractC19219a0 f18866l;

    /* renamed from: m */
    public final AbstractC19223c0 f18867m;

    /* renamed from: n */
    public final AbstractC19462a f18868n;

    /* renamed from: o */
    public final AbstractC19056l1 f18869o;

    @e(c = "com.truecaller.messaging.conversation.notifications.ConversationNotificationSettingsPresenter", f = "ConversationNotificationSettingsPresenter.kt", l = {Constants.ERR_PUBLISH_STREAM_NOT_FOUND, Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED}, m = "loadData")
    /* renamed from: e.a.a.c.o.e$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/e$a.class */
    public static final class C5605a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f18870d;

        /* renamed from: e */
        public int f18871e;

        /* renamed from: g */
        public Object f18873g;

        /* renamed from: h */
        public Object f18874h;

        /* renamed from: i */
        public Object f18875i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5605a(d dVar) {
            super(dVar);
            C5604e.this = r4;
        }

        /* renamed from: s */
        public final Object m32911s(Object obj) {
            this.f18870d = obj;
            this.f18871e |= Integer.MIN_VALUE;
            return C5604e.this.m32919Ij(this);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.notifications.ConversationNotificationSettingsPresenter$loadData$2", f = "ConversationNotificationSettingsPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.o.e$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/e$b.class */
    public static final class C5606b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ c0 f18877f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5606b(c0 c0Var, d dVar) {
            super(2, dVar);
            C5604e.this = r5;
            this.f18877f = c0Var;
        }

        /* renamed from: i */
        public final d<s> m32910i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5606b(this.f18877f, dVar);
        }

        /* renamed from: k */
        public final Object m32909k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C5604e c5604e = C5604e.this;
            c0 c0Var = this.f18877f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            c5604e.f18862h = (Conversation) c0Var.a;
            c5604e.m32917Kj();
            s1.a.a.a.v0.f.d.w2(c5604e, c5604e.f18861g, (j0) null, new C5612g(c5604e, null), 2, (Object) null);
            return sVar;
        }

        /* renamed from: s */
        public final Object m32908s(Object obj) {
            C25225a.m3932a3(obj);
            C5604e c5604e = C5604e.this;
            c5604e.f18862h = (Conversation) this.f18877f.a;
            c5604e.m32917Kj();
            C5604e c5604e2 = C5604e.this;
            s1.a.a.a.v0.f.d.w2(c5604e2, c5604e2.f18861g, (j0) null, new C5612g(c5604e2, null), 2, (Object) null);
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.notifications.ConversationNotificationSettingsPresenter$onActivityResult$1", f = "ConversationNotificationSettingsPresenter.kt", l = {132, 133}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.o.e$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/e$c.class */
    public static final class C5607c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f18878e;

        /* renamed from: g */
        public final /* synthetic */ Uri f18880g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5607c(Uri uri, d dVar) {
            super(2, dVar);
            C5604e.this = r5;
            this.f18880g = uri;
        }

        /* renamed from: i */
        public final d<s> m32907i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5607c(this.f18880g, dVar);
        }

        /* renamed from: k */
        public final Object m32906k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5607c(this.f18880g, dVar).m32905s(s.a);
        }

        /* renamed from: s */
        public final Object m32905s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f18878e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C5604e c5604e = C5604e.this;
                AbstractC5614h abstractC5614h = c5604e.f18864j;
                Conversation conversation = c5604e.f18862h;
                Uri uri = this.f18880g;
                this.f18878e = 1;
                if (abstractC5614h.mo32886a(conversation, uri, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            C5604e c5604e2 = C5604e.this;
            this.f18878e = 2;
            if (c5604e2.m32919Ij(this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.notifications.ConversationNotificationSettingsPresenter$onMuteNotificationsChanged$1", f = "ConversationNotificationSettingsPresenter.kt", l = {72, 73}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.o.e$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/e$d.class */
    public static final class C5608d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f18881e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5608d(d dVar) {
            super(2, dVar);
            C5604e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m32904i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5608d(dVar);
        }

        /* renamed from: k */
        public final Object m32903k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5608d(dVar).m32902s(s.a);
        }

        /* renamed from: s */
        public final Object m32902s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f18881e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C5604e c5604e = C5604e.this;
                AbstractC5614h abstractC5614h = c5604e.f18864j;
                long j = c5604e.f18862h.f13199a;
                this.f18881e = 1;
                if (abstractC5614h.mo32882e(j, 0L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            C5604e c5604e2 = C5604e.this;
            this.f18881e = 2;
            if (c5604e2.m32919Ij(this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.notifications.ConversationNotificationSettingsPresenter$onMutePeriodSelected$1", f = "ConversationNotificationSettingsPresenter.kt", l = {86, 90}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.o.e$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/e$e.class */
    public static final class C5609e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f18883e;

        /* renamed from: g */
        public final /* synthetic */ ConversationMutePeriod f18885g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5609e(ConversationMutePeriod conversationMutePeriod, d dVar) {
            super(2, dVar);
            C5604e.this = r5;
            this.f18885g = conversationMutePeriod;
        }

        /* renamed from: i */
        public final d<s> m32901i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5609e(this.f18885g, dVar);
        }

        /* renamed from: k */
        public final Object m32900k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5609e(this.f18885g, dVar).m32899s(s.a);
        }

        /* JADX WARN: Type inference failed for: r0v34, types: [long] */
        /* JADX WARN: Type inference failed for: r0v43, types: [long] */
        /* JADX WARN: Type inference failed for: r0v47, types: [long] */
        /* renamed from: s */
        public final Object m32899s(Object obj) {
            char c;
            Object obj2 = s1.w.j.a.a;
            int i = this.f18883e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C5604e c5604e = C5604e.this;
                AbstractC5614h abstractC5614h = c5604e.f18864j;
                long j = c5604e.f18862h.f13199a;
                int ordinal = this.f18885g.ordinal();
                if (ordinal == 0) {
                    b E = C5604e.this.f18865k.mo14285j().E(1);
                    l.d(E, "dateHelper.now().plusHours(1)");
                    c = ((w3.b.a.e0.e) E).a;
                } else if (ordinal == 1) {
                    b E2 = C5604e.this.f18865k.mo14285j().E(24);
                    l.d(E2, "dateHelper.now().plusHours(24)");
                    c = ((w3.b.a.e0.e) E2).a;
                } else if (ordinal != 2) {
                    throw new s1.i();
                } else {
                    c = -1;
                }
                this.f18883e = 1;
                if (abstractC5614h.mo32882e(j, c, this) == obj2) {
                    return obj2;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            C5604e c5604e2 = C5604e.this;
            this.f18883e = 2;
            if (c5604e2.m32919Ij(this) == obj2) {
                return obj2;
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.notifications.ConversationNotificationSettingsPresenter$onSoundSwitchChanged$1", f = "ConversationNotificationSettingsPresenter.kt", l = {121, 122}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.o.e$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/e$f.class */
    public static final class C5610f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f18886e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5610f(d dVar) {
            super(2, dVar);
            C5604e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m32898i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5610f(dVar);
        }

        /* renamed from: k */
        public final Object m32897k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5610f(dVar).m32896s(s.a);
        }

        /* renamed from: s */
        public final Object m32896s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f18886e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C5604e c5604e = C5604e.this;
                AbstractC5614h abstractC5614h = c5604e.f18864j;
                Conversation conversation = c5604e.f18862h;
                this.f18886e = 1;
                if (abstractC5614h.mo32886a(conversation, null, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            C5604e c5604e2 = C5604e.this;
            this.f18886e = 2;
            if (c5604e2.m32919Ij(this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5604e(@Named("UI") f fVar, @Named("CPU") f fVar2, @Named("conversation") Conversation conversation, a<AbstractC6248w> aVar, AbstractC5614h abstractC5614h, AbstractC18951b0 abstractC18951b0, AbstractC19219a0 abstractC19219a0, AbstractC19223c0 abstractC19223c0, AbstractC19462a abstractC19462a, AbstractC19056l1 abstractC19056l1) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncContext");
        l.e(conversation, "conversation");
        l.e(aVar, "readMessageStorage");
        l.e(abstractC5614h, "conversationNotificationsManager");
        l.e(abstractC18951b0, "dateHelper");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19056l1, "ringtoneNotificationSettings");
        this.f18860f = fVar;
        this.f18861g = fVar2;
        this.f18862h = conversation;
        this.f18863i = aVar;
        this.f18864j = abstractC5614h;
        this.f18865k = abstractC18951b0;
        this.f18866l = abstractC19219a0;
        this.f18867m = abstractC19223c0;
        this.f18868n = abstractC19462a;
        this.f18869o = abstractC19056l1;
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5602c
    /* renamed from: F5 */
    public void mo32920F5(boolean z) {
        if (z) {
            mo32914sg();
        } else {
            s1.a.a.a.v0.f.d.w2(this, this.f18861g, (j0) null, new C5610f(null), 2, (Object) null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e6  */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m32919Ij(s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p217o.C5604e.m32919Ij(s1.w.d):java.lang.Object");
    }

    /* renamed from: Jj */
    public final void m32918Jj() {
        Uri uri;
        boolean z;
        Conversation conversation = this.f18862h;
        String str = conversation.f13198Q;
        if (str != null) {
            uri = Uri.parse(str);
        } else {
            Participant[] participantArr = conversation.f13211m;
            l.d(participantArr, "conversation.participants");
            int length = participantArr.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                }
                if (participantArr[i].f11570c != null) {
                    z = true;
                    break;
                }
                i++;
            }
            uri = z ? this.f18869o.mo14179g() : this.f18869o.mo14182d();
        }
        AbstractC5603d abstractC5603d = (AbstractC5603d) this.f57683a;
        if (abstractC5603d != null) {
            abstractC5603d.mo32921q6(uri, 1);
        }
    }

    /* renamed from: Kj */
    public final void m32917Kj() {
        String str;
        String str2;
        boolean m25884v1 = C10480a.m25884v1(this.f18862h, ((w3.b.a.e0.e) this.f18865k.mo14285j()).a);
        b bVar = this.f18862h.f13197P;
        l.d(bVar, "conversation.muted");
        long j = ((w3.b.a.e0.e) bVar).a;
        String str3 = null;
        if (j == -1) {
            str = this.f18867m.mo13768b(C2752R.string.conversation_notification_muted_forever, new Object[0]);
        } else if (j == 0) {
            str = null;
        } else {
            AbstractC19223c0 abstractC19223c0 = this.f18867m;
            b bVar2 = this.f18862h.f13197P;
            l.d(bVar2, "conversation.muted");
            long j2 = ((w3.b.a.e0.e) bVar2).a;
            AbstractC18951b0 abstractC18951b0 = this.f18865k;
            if (abstractC18951b0.mo14274u(j2, ((w3.b.a.e0.e) abstractC18951b0.mo14285j()).a)) {
                str2 = this.f18865k.mo14283l(j2);
            } else if (this.f18865k.mo14280o(j2)) {
                str2 = this.f18867m.mo13768b(C2752R.string.conversation_notification_channel_date_tomorrow, new Object[0]) + ' ' + this.f18865k.mo14283l(j2);
            } else {
                str2 = this.f18865k.mo14275t(j2, "dd MMM YYYY") + ' ' + this.f18865k.mo14283l(j2);
            }
            str = abstractC19223c0.mo13768b(C2752R.string.conversation_notification_muted_until, str2);
        }
        AbstractC5603d abstractC5603d = (AbstractC5603d) this.f57683a;
        if (abstractC5603d != null) {
            abstractC5603d.mo32926Uj(m25884v1);
        }
        AbstractC5603d abstractC5603d2 = (AbstractC5603d) this.f57683a;
        if (abstractC5603d2 != null) {
            if (m25884v1) {
                str3 = str;
            }
            abstractC5603d2.mo32923cf(str3);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5602c
    /* renamed from: U3 */
    public void mo32916U3() {
        m32917Kj();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.a.c.o.d, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC5603d abstractC5603d) {
        AbstractC5603d abstractC5603d2 = abstractC5603d;
        l.e(abstractC5603d2, "presenterView");
        this.f57683a = abstractC5603d2;
        s1.a.a.a.v0.f.d.w2(this, this.f18861g, (j0) null, new C5611f(this, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        String str = this.f18858d;
        if (str != null) {
            boolean m25884v1 = C10480a.m25884v1(this.f18862h, ((w3.b.a.e0.e) this.f18865k.mo14285j()).a);
            AbstractC19462a abstractC19462a = this.f18868n;
            LinkedHashMap m8655X = C22128a.m8655X("ConversationMute", "type");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            l.e(VastIconXmlManager.DURATION, AnalyticsConstants.NAME);
            l.e(str, "value");
            m8655X.put(VastIconXmlManager.DURATION, str);
            l.e("muted", AnalyticsConstants.NAME);
            m8655X.put("muted", String.valueOf(m25884v1));
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("ConversationMute");
            m15852a.m15849c(linkedHashMap);
            m15852a.m15848d(m8655X);
            C17697p3 build = m15852a.build();
            l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
            abstractC19462a.mo13275a(build);
        }
        if (!this.f18859e) {
            return;
        }
        AbstractC19462a abstractC19462a2 = this.f18868n;
        LinkedHashMap m8655X2 = C22128a.m8655X("ConversationMessageSoundSetting", "type");
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        boolean z = this.f18862h.f13198Q != null;
        l.e("customSound", AnalyticsConstants.NAME);
        m8655X2.put("customSound", String.valueOf(z));
        C17697p3.C17699b m15852a2 = C17697p3.m15852a();
        m15852a2.m15850b("ConversationMessageSoundSetting");
        m15852a2.m15849c(linkedHashMap2);
        m15852a2.m15848d(m8655X2);
        C17697p3 build2 = m15852a2.build();
        l.d(build2, "GenericAnalyticsEvent.ne…rties(properties).build()");
        abstractC19462a2.mo13275a(build2);
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5602c
    /* renamed from: c2 */
    public void mo32915c2(ConversationMutePeriod conversationMutePeriod) {
        String str;
        l.e(conversationMutePeriod, "period");
        s1.a.a.a.v0.f.d.w2(this, this.f18861g, (j0) null, new C5609e(conversationMutePeriod, null), 2, (Object) null);
        int ordinal = conversationMutePeriod.ordinal();
        if (ordinal == 0) {
            str = "1h";
        } else if (ordinal == 1) {
            str = "24h";
        } else if (ordinal != 2) {
            throw new s1.i();
        } else {
            str = "forever";
        }
        this.f18858d = str;
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5602c
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && -1 == i2) {
            s1.a.a.a.v0.f.d.w2(this, this.f18861g, (j0) null, new C5607c(intent != null ? (Uri) intent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI") : null, null), 2, (Object) null);
            this.f18859e = true;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5602c
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        if (i != 1 || !this.f18866l.mo13826g(strArr, iArr, "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE")) {
            return;
        }
        m32918Jj();
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5602c
    public void onResume() {
        s1.a.a.a.v0.f.d.w2(this, this.f18861g, (j0) null, new C5612g(this, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5602c
    /* renamed from: sg */
    public void mo32914sg() {
        if (this.f18866l.mo13825h("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE")) {
            m32918Jj();
            return;
        }
        AbstractC5603d abstractC5603d = (AbstractC5603d) this.f57683a;
        if (abstractC5603d == null) {
            return;
        }
        abstractC5603d.mo32925Vo(1);
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5602c
    /* renamed from: u3 */
    public void mo32913u3() {
        AbstractC5603d abstractC5603d = (AbstractC5603d) this.f57683a;
        if (abstractC5603d != null) {
            abstractC5603d.mo32924bc();
        }
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5602c
    /* renamed from: v3 */
    public void mo32912v3(boolean z) {
        if (!z) {
            s1.a.a.a.v0.f.d.w2(this, this.f18861g, (j0) null, new C5608d(null), 2, (Object) null);
            this.f18858d = "unmuted";
            return;
        }
        AbstractC5603d abstractC5603d = (AbstractC5603d) this.f57683a;
        if (abstractC5603d == null) {
            return;
        }
        abstractC5603d.mo32924bc();
    }
}
