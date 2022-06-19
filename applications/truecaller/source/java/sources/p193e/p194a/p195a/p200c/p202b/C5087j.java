package p193e.p194a.p195a.p200c.p202b;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.search.SearchFilter;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Message;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.AbstractC5484l5;
import p193e.p194a.p195a.p200c.AbstractC5794w3;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6149q;
import p193e.p194a.p195a.p241i1.C6405h;
import q3.a.i0;
import q3.a.j0;
import s1.u.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.c.b.j */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/b/j.class */
public final class C5087j extends AbstractC20574a<AbstractC5085h> implements AbstractC5084g {

    /* renamed from: d */
    public List<Message> f17438d = s.a;

    /* renamed from: e */
    public int f17439e = -1;

    /* renamed from: f */
    public String f17440f;

    /* renamed from: g */
    public final f f17441g;

    /* renamed from: h */
    public final Conversation f17442h;

    /* renamed from: i */
    public final int f17443i;

    /* renamed from: j */
    public final AbstractC5794w3 f17444j;

    /* renamed from: k */
    public final a<AbstractC6248w> f17445k;

    /* renamed from: l */
    public final AbstractC6392i0 f17446l;

    /* renamed from: m */
    public final AbstractC5484l5 f17447m;

    /* renamed from: n */
    public final AbstractC19462a f17448n;

    @e(c = "com.truecaller.messaging.conversation.search.SearchConversationPresenter$onFilterByStarredClicked$1", f = "SearchConversationPresenter.kt", l = {132}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.b.j$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/b/j$a.class */
    public static final class C5088a extends i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: e */
        public int f17449e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5088a(d dVar) {
            super(2, dVar);
            C5087j.this = r5;
        }

        /* renamed from: i */
        public final d<s1.s> m33848i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5088a(dVar);
        }

        /* renamed from: k */
        public final Object m33847k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5088a(dVar).m33846s(s1.s.a);
        }

        /* renamed from: s */
        public final Object m33846s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f17449e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6248w abstractC6248w = (AbstractC6248w) C5087j.this.f17445k.get();
                C5087j c5087j = C5087j.this;
                Conversation conversation = c5087j.f17442h;
                long j = conversation.f13199a;
                int i2 = c5087j.f17443i;
                int i3 = conversation.f13218t;
                this.f17449e = 1;
                Object mo31552x = abstractC6248w.mo31552x(j, i2, i3, this);
                obj = mo31552x;
                if (mo31552x == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC6149q abstractC6149q = (AbstractC6149q) obj;
            if (abstractC6149q != null) {
                C5087j.this.m33866Lj(abstractC6149q, false);
                if (abstractC6149q.getCount() > 0) {
                    C5087j.this.m33862Oj(SearchFilter.STARRED, null);
                }
                C5087j.this.m33867Kj("starred", new Integer(abstractC6149q.getCount()));
            } else {
                AbstractC5085h abstractC5085h = (AbstractC5085h) C5087j.this.f57683a;
                if (abstractC5085h != null) {
                    abstractC5085h.mo33877m9();
                }
            }
            return s1.s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.search.SearchConversationPresenter$onJumpToDate$1", f = "SearchConversationPresenter.kt", l = {107}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.b.j$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/b/j$b.class */
    public static final class C5089b extends i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: e */
        public int f17451e;

        /* renamed from: g */
        public final /* synthetic */ b f17453g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5089b(b bVar, d dVar) {
            super(2, dVar);
            C5087j.this = r5;
            this.f17453g = bVar;
        }

        /* renamed from: i */
        public final d<s1.s> m33845i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5089b(this.f17453g, dVar);
        }

        /* renamed from: k */
        public final Object m33844k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5089b(this.f17453g, dVar).m33843s(s1.s.a);
        }

        /* renamed from: s */
        public final Object m33843s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f17451e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6248w abstractC6248w = (AbstractC6248w) C5087j.this.f17445k.get();
                long j = ((w3.b.a.e0.e) this.f17453g).a;
                b E = this.f17453g.E(24);
                l.d(E, "date.plusHours(24)");
                long j2 = ((w3.b.a.e0.e) E).a;
                C5087j c5087j = C5087j.this;
                Conversation conversation = c5087j.f17442h;
                long j3 = conversation.f13199a;
                int i2 = c5087j.f17443i;
                int i3 = conversation.f13218t;
                this.f17451e = 1;
                Object mo31564l = abstractC6248w.mo31564l(j, j2, j3, i2, i3, this);
                obj = mo31564l;
                if (mo31564l == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Message message = (Message) obj;
            if (message != null) {
                Integer mo32583a = C5087j.this.f17444j.mo32583a(new Long(message.f13380a).longValue());
                if (mo32583a != null) {
                    C5087j.this.m33864Nj(message.f13380a, mo32583a.intValue(), false);
                }
                C5087j c5087j2 = C5087j.this;
                c5087j2.m33862Oj(SearchFilter.DATE, c5087j2.f17447m.mo33017z(this.f17453g));
                C5087j.this.m33867Kj("date", null);
            } else {
                AbstractC5085h abstractC5085h = (AbstractC5085h) C5087j.this.f57683a;
                if (abstractC5085h != null) {
                    abstractC5085h.mo33877m9();
                }
            }
            return s1.s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.search.SearchConversationPresenter$onMemberSelected$1", f = "SearchConversationPresenter.kt", l = {149, Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.b.j$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/b/j$c.class */
    public static final class C5090c extends i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: e */
        public int f17454e;

        /* renamed from: g */
        public final /* synthetic */ Participant f17456g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5090c(Participant participant, d dVar) {
            super(2, dVar);
            C5087j.this = r5;
            this.f17456g = participant;
        }

        /* renamed from: i */
        public final d<s1.s> m33842i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5090c(this.f17456g, dVar);
        }

        /* renamed from: k */
        public final Object m33841k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5090c(this.f17456g, dVar).m33840s(s1.s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0095  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00a7  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0108  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x011a  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m33840s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 307
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p202b.C5087j.C5090c.m33840s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.messaging.conversation.search.SearchConversationPresenter$onSearchButtonClicked$1", f = "SearchConversationPresenter.kt", l = {72}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.b.j$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/b/j$d.class */
    public static final class C5091d extends i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: e */
        public int f17457e;

        /* renamed from: g */
        public final /* synthetic */ String f17459g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5091d(String str, d dVar) {
            super(2, dVar);
            C5087j.this = r5;
            this.f17459g = str;
        }

        /* renamed from: i */
        public final d<s1.s> m33839i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5091d(this.f17459g, dVar);
        }

        /* renamed from: k */
        public final Object m33838k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5091d(this.f17459g, dVar).m33837s(s1.s.a);
        }

        /* renamed from: s */
        public final Object m33837s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f17457e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6248w abstractC6248w = (AbstractC6248w) C5087j.this.f17445k.get();
                String str = this.f17459g;
                C5087j c5087j = C5087j.this;
                Conversation conversation = c5087j.f17442h;
                long j = conversation.f13199a;
                int i2 = c5087j.f17443i;
                int i3 = conversation.f13218t;
                this.f17457e = 1;
                Object mo31572d = abstractC6248w.mo31572d(str, j, i2, i3, this);
                obj = mo31572d;
                if (mo31572d == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC6149q abstractC6149q = (AbstractC6149q) obj;
            if (abstractC6149q != null) {
                C5087j.this.m33866Lj(abstractC6149q, true);
                C5087j.this.m33867Kj("keyword", new Integer(abstractC6149q.getCount()));
            } else {
                AbstractC5085h abstractC5085h = (AbstractC5085h) C5087j.this.f57683a;
                if (abstractC5085h != null) {
                    abstractC5085h.mo33877m9();
                }
            }
            return s1.s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5087j(@Named("UI") f fVar, @Named("conversation") Conversation conversation, @Named("conversation_filter") int i, AbstractC5794w3 abstractC5794w3, a<AbstractC6248w> aVar, AbstractC6392i0 abstractC6392i0, AbstractC5484l5 abstractC5484l5, AbstractC19462a abstractC19462a) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(conversation, "conversation");
        l.e(abstractC5794w3, "conversationDataSource");
        l.e(aVar, "readMessageStorage");
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC5484l5, "conversationResourceProvider");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f17441g = fVar;
        this.f17442h = conversation;
        this.f17443i = i;
        this.f17444j = abstractC5794w3;
        this.f17445k = aVar;
        this.f17446l = abstractC6392i0;
        this.f17447m = abstractC5484l5;
        this.f17448n = abstractC19462a;
    }

    /* renamed from: Ij */
    public static final void m33869Ij(C5087j c5087j, AbstractC6149q abstractC6149q, String str) {
        c5087j.m33866Lj(abstractC6149q, true);
        if (abstractC6149q.getCount() > 0) {
            c5087j.m33862Oj(SearchFilter.MEMBER, str);
        }
        c5087j.m33867Kj("member", Integer.valueOf(abstractC6149q.getCount()));
    }

    /* renamed from: Jj */
    public final void m33868Jj(int i) {
        long longValue;
        Integer mo32583a;
        Message message = (Message) s1.u.i.G(this.f17438d, i);
        if (message != null && (mo32583a = this.f17444j.mo32583a((longValue = Long.valueOf(message.f13380a).longValue()))) != null) {
            m33864Nj(longValue, mo32583a.intValue(), true);
        }
        AbstractC5085h abstractC5085h = (AbstractC5085h) this.f57683a;
        if (abstractC5085h != null) {
            abstractC5085h.mo33891Fh(i + 1, this.f17438d.size());
        }
    }

    /* renamed from: Kj */
    public final void m33867Kj(String str, Integer num) {
        AbstractC19462a abstractC19462a = this.f17448n;
        LinkedHashMap m8655X = C22128a.m8655X("ConversationSearch", "type");
        LinkedHashMap m8652Y = C22128a.m8652Y("searchType", AnalyticsConstants.NAME, str, "value", m8655X, "searchType", str);
        Participant[] participantArr = this.f17442h.f13211m;
        l.d(participantArr, "conversation.participants");
        String str2 = C6405h.m31299e(participantArr) ? "group" : "121";
        C22128a.m8695K0("conversation", AnalyticsConstants.NAME, str2, "value", m8655X, "conversation", str2);
        if (num != null) {
            num.intValue();
            int intValue = num.intValue();
            l.e("numResults", AnalyticsConstants.NAME);
            m8652Y.put("numResults", Double.valueOf(intValue));
        }
        C22128a.m8684N0("ConversationSearch", m8652Y, m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: Lj */
    public final void m33866Lj(AbstractC6149q abstractC6149q, boolean z) {
        try {
            ArrayList arrayList = new ArrayList();
            if (abstractC6149q != null) {
                while (abstractC6149q.moveToNext()) {
                    arrayList.add(abstractC6149q.getMessage());
                }
            }
            C25225a.m4016G(abstractC6149q, null);
            this.f17438d = arrayList;
            if (arrayList.isEmpty()) {
                AbstractC5085h abstractC5085h = (AbstractC5085h) this.f57683a;
                if (abstractC5085h == null) {
                    return;
                }
                abstractC5085h.mo33877m9();
                return;
            }
            this.f17439e = 0;
            Integer mo32583a = this.f17444j.mo32583a(((Message) s1.u.i.B(this.f17438d)).f13380a);
            if (mo32583a != null) {
                m33864Nj(((Message) s1.u.i.B(this.f17438d)).f13380a, mo32583a.intValue(), z);
            }
            AbstractC5085h abstractC5085h2 = (AbstractC5085h) this.f57683a;
            if (abstractC5085h2 == null) {
                return;
            }
            abstractC5085h2.mo33874yz(true);
            abstractC5085h2.mo33880fk(false);
            abstractC5085h2.mo33891Fh(this.f17439e + 1, this.f17438d.size());
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                C25225a.m4016G(abstractC6149q, th);
                throw th2;
            }
        }
    }

    /* renamed from: Mj */
    public final void m33865Mj() {
        AbstractC5085h abstractC5085h = (AbstractC5085h) this.f57683a;
        if (abstractC5085h != null) {
            abstractC5085h.mo33874yz(false);
            abstractC5085h.mo33880fk(true);
            abstractC5085h.mo33889Ok(true);
            abstractC5085h.mo33873zs();
            abstractC5085h.mo33895A();
        }
        this.f17440f = null;
        this.f17438d = s.a;
        this.f17439e = -1;
    }

    /* renamed from: Nj */
    public final void m33864Nj(long j, int i, boolean z) {
        AbstractC5085h abstractC5085h = (AbstractC5085h) this.f57683a;
        if (abstractC5085h != null) {
            abstractC5085h.mo33894A3(i);
            abstractC5085h.mo33893C4(i);
            if (!z) {
                return;
            }
            abstractC5085h.mo33892Eb(j, this.f17440f);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5084g
    /* renamed from: O7 */
    public void mo33863O7() {
        AbstractC5085h abstractC5085h = (AbstractC5085h) this.f57683a;
        if (abstractC5085h != null) {
            abstractC5085h.mo33890MA();
        }
        AbstractC5085h abstractC5085h2 = (AbstractC5085h) this.f57683a;
        if (abstractC5085h2 != null) {
            abstractC5085h2.mo33885Wr(false);
        }
        m33865Mj();
    }

    /* renamed from: Oj */
    public final void m33862Oj(SearchFilter searchFilter, String str) {
        AbstractC5085h abstractC5085h = (AbstractC5085h) this.f57683a;
        if (abstractC5085h != null) {
            abstractC5085h.mo33880fk(false);
            abstractC5085h.mo33889Ok(false);
            abstractC5085h.mo33885Wr(true);
            abstractC5085h.mo33886Um(searchFilter, str);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5084g
    /* renamed from: Pd */
    public void mo33861Pd(String str) {
        l.e(str, "string");
        AbstractC5085h abstractC5085h = (AbstractC5085h) this.f57683a;
        boolean z = false;
        if (abstractC5085h != null) {
            abstractC5085h.mo33881f3(false, 0L);
        }
        if (str.length() == 0) {
            z = true;
        }
        if (z) {
            return;
        }
        this.f17440f = str;
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5091d(str, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5084g
    /* renamed from: Q */
    public void mo33860Q(String str) {
        l.e(str, AnalyticsConstants.EMAIL);
        AbstractC5085h abstractC5085h = (AbstractC5085h) this.f57683a;
        if (abstractC5085h != null) {
            abstractC5085h.mo33888Q(str);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5084g
    /* renamed from: X */
    public void mo33859X(String str) {
        l.e(str, "number");
        AbstractC5085h abstractC5085h = (AbstractC5085h) this.f57683a;
        if (abstractC5085h != null) {
            abstractC5085h.mo33884X(str);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5084g
    /* renamed from: Xg */
    public void mo33858Xg() {
        AbstractC5085h abstractC5085h = (AbstractC5085h) this.f57683a;
        if (abstractC5085h != null) {
            abstractC5085h.mo33876to();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.a.c.b.h] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC5085h abstractC5085h) {
        AbstractC5085h abstractC5085h2 = abstractC5085h;
        l.e(abstractC5085h2, "presenterView");
        this.f57683a = abstractC5085h2;
        this.f17446l.mo31059i0(true);
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5086i(this, null), 3, (Object) null);
        abstractC5085h2.mo33881f3(true, 300L);
        abstractC5085h2.mo33887Qr();
        Participant[] participantArr = this.f17442h.f13211m;
        l.d(participantArr, "conversation.participants");
        abstractC5085h2.mo33878lh(C6405h.m31298f(participantArr));
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5084g
    /* renamed from: Ye */
    public void mo33857Ye() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5088a(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5084g
    /* renamed from: aa */
    public void mo33856aa() {
        if (this.f17439e != this.f17438d.size() - 1) {
            int size = this.f17438d.size();
            int i = this.f17439e;
            if (size <= i) {
                return;
            }
            int i2 = i + 1;
            this.f17439e = i2;
            m33868Jj(i2);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5084g
    /* renamed from: b */
    public void mo33855b(String str) {
        l.e(str, "url");
        AbstractC5085h abstractC5085h = (AbstractC5085h) this.f57683a;
        if (abstractC5085h != null) {
            abstractC5085h.mo33882b(str);
        }
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        this.f17444j.mo32579e(null);
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5084g
    /* renamed from: ha */
    public void mo33854ha(String str) {
        l.e(str, "string");
        AbstractC5085h abstractC5085h = (AbstractC5085h) this.f57683a;
        if (abstractC5085h != null) {
            abstractC5085h.mo33885Wr(str.length() > 0);
        }
        m33865Mj();
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5084g
    /* renamed from: l5 */
    public void mo33853l5(Participant participant) {
        l.e(participant, "participant");
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5090c(participant, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5084g
    /* renamed from: n5 */
    public void mo33852n5() {
        AbstractC5085h abstractC5085h = (AbstractC5085h) this.f57683a;
        if (abstractC5085h != null) {
            abstractC5085h.mo33883a2(0);
        }
        AbstractC5085h abstractC5085h2 = (AbstractC5085h) this.f57683a;
        if (abstractC5085h2 != null) {
            abstractC5085h2.mo33879it(false);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5084g
    /* renamed from: nb */
    public void mo33851nb(b bVar) {
        l.e(bVar, "date");
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5089b(bVar, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5084g
    /* renamed from: pd */
    public void mo33850pd() {
        int i = this.f17439e;
        if (i == 0) {
            return;
        }
        int i2 = i - 1;
        this.f17439e = i2;
        m33868Jj(i2);
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5084g
    /* renamed from: uh */
    public void mo33849uh() {
        AbstractC5085h abstractC5085h = (AbstractC5085h) this.f57683a;
        if (abstractC5085h != null) {
            abstractC5085h.mo33875x9();
        }
    }
}
