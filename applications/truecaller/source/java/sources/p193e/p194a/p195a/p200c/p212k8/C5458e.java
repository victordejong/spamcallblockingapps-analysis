package p193e.p194a.p195a.p200c.p212k8;

import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.InboxTab;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeSet;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.k8.e */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/e.class */
public final class C5458e extends AbstractC20574a<AbstractC5470n> implements AbstractC5469m, AbstractC5465i {

    /* renamed from: d */
    public ArrayList<Conversation> f18579d = new ArrayList<>();

    /* renamed from: e */
    public Map<Long, Conversation> f18580e = new LinkedHashMap();

    /* renamed from: f */
    public final Map<Long, Conversation> f18581f = new LinkedHashMap();

    /* renamed from: g */
    public final AbstractC19868j f18582g;

    /* renamed from: h */
    public final f f18583h;

    /* renamed from: i */
    public final AbstractC19854f<AbstractC6233m> f18584i;

    /* renamed from: j */
    public final a<AbstractC6248w> f18585j;

    /* renamed from: k */
    public final AbstractC19510i0 f18586k;

    /* renamed from: e.a.a.c.k8.e$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/e$a.class */
    public static final class C5459a<R> implements AbstractC19851d0<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ s1.z.b.a f18587a;

        public C5459a(s1.z.b.a aVar) {
            this.f18587a = aVar;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            this.f18587a.invoke();
        }
    }

    @e(c = "com.truecaller.messaging.conversation.archive.ArchiveConversationListPresenter$loadArchiveConversationList$1", f = "ArchiveConversationListPresenter.kt", l = {39}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.k8.e$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/e$b.class */
    public static final class C5460b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f18588e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5460b(d dVar) {
            super(2, dVar);
            C5458e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m33101i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5460b(dVar);
        }

        /* renamed from: k */
        public final Object m33100k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5460b(dVar).m33099s(s.a);
        }

        /* renamed from: s */
        public final Object m33099s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f18588e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f18588e = 1;
                Object mo31551y = ((AbstractC6248w) C5458e.this.f18585j.get()).mo31551y(this);
                obj = mo31551y;
                if (mo31551y == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            List list = (List) obj;
            C5458e c5458e = C5458e.this;
            c5458e.f18579d.clear();
            c5458e.f18580e.clear();
            if (list != null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Conversation conversation : s1.u.i.F0(list, new C5457d())) {
                    if (linkedHashMap.get(Long.valueOf(conversation.f13199a)) == null) {
                        linkedHashMap.put(Long.valueOf(conversation.f13199a), conversation);
                    } else {
                        c5458e.f18580e.put(Long.valueOf(conversation.f13199a), conversation);
                    }
                }
                ArrayList<Conversation> arrayList = c5458e.f18579d;
                Collection values = linkedHashMap.values();
                C5463g c5463g = C5463g.f18593a;
                l.e(values, "$this$toSortedSet");
                l.e(c5463g, "comparator");
                TreeSet treeSet = new TreeSet(c5463g);
                s1.u.i.P0(values, treeSet);
                arrayList.addAll(treeSet);
            }
            AbstractC5470n abstractC5470n = (AbstractC5470n) c5458e.f57683a;
            if (abstractC5470n != null) {
                abstractC5470n.mo33078Df(c5458e.f18579d.isEmpty());
            }
            AbstractC5470n abstractC5470n2 = (AbstractC5470n) c5458e.f57683a;
            if (abstractC5470n2 != null) {
                abstractC5470n2.mo33076c0();
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.k8.e$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/e$c.class */
    public static final class C5461c extends m implements s1.z.b.a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5461c() {
            super(0);
            C5458e.this = r4;
        }

        public Object invoke() {
            C5458e.this.mo33081v6();
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5458e(@Named("ui_thread") AbstractC19868j abstractC19868j, @Named("UI") f fVar, AbstractC19854f<AbstractC6233m> abstractC19854f, a<AbstractC6248w> aVar, AbstractC19510i0 abstractC19510i0) {
        super(fVar);
        l.e(abstractC19868j, "uiThread");
        l.e(fVar, "uiContext");
        l.e(abstractC19854f, "messagesStorage");
        l.e(aVar, "readMessageStorage");
        l.e(abstractC19510i0, "messageAnalytics");
        this.f18582g = abstractC19868j;
        this.f18583h = fVar;
        this.f18584i = abstractC19854f;
        this.f18585j = aVar;
        this.f18586k = abstractC19510i0;
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5464h
    /* renamed from: F1 */
    public boolean mo33098F1(Conversation conversation) {
        l.e(conversation, "conversation");
        return this.f18581f.containsKey(Long.valueOf(conversation.f13199a));
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5464h
    /* renamed from: I */
    public void mo33097I(ImGroupInfo imGroupInfo) {
        l.e(imGroupInfo, "imGroupInfo");
        AbstractC5470n abstractC5470n = (AbstractC5470n) this.f57683a;
        if (abstractC5470n != null) {
            abstractC5470n.mo33077I(imGroupInfo);
        }
    }

    /* renamed from: Ij */
    public final void m33102Ij(List<? extends Conversation> list, boolean z, s1.z.b.a<s> aVar) {
        AbstractC6233m mo11854a = this.f18584i.mo11854a();
        Object[] array = list.toArray(new Conversation[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        mo11854a.mo31670f((Conversation[]) array, z).mo11830e(this.f18582g, new C5459a(aVar));
        l.e(list, "conversationList");
        for (Conversation conversation : list) {
            this.f18586k.mo13205u(z, conversation.f13199a, conversation.f13218t, InboxTab.Companion.m35029a(conversation.f13217s));
        }
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5464h
    /* renamed from: J */
    public void mo33096J(Conversation conversation) {
        l.e(conversation, "conversation");
        long j = conversation.f13199a;
        if (this.f18581f.containsKey(Long.valueOf(j))) {
            this.f18581f.remove(Long.valueOf(j));
        } else {
            this.f18581f.put(Long.valueOf(j), conversation);
        }
        if (!(!this.f18581f.isEmpty())) {
            AbstractC5470n abstractC5470n = (AbstractC5470n) this.f57683a;
            if (abstractC5470n == null) {
                return;
            }
            abstractC5470n.mo33075e();
            return;
        }
        AbstractC5470n abstractC5470n2 = (AbstractC5470n) this.f57683a;
        if (abstractC5470n2 == null) {
            return;
        }
        abstractC5470n2.mo33076c0();
        abstractC5470n2.mo33073g0();
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5465i
    /* renamed from: N */
    public List<Conversation> mo33094N() {
        return this.f18579d;
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5468l
    /* renamed from: O */
    public void mo33085O() {
        this.f18581f.clear();
        AbstractC5470n abstractC5470n = (AbstractC5470n) this.f57683a;
        if (abstractC5470n != null) {
            abstractC5470n.mo33079B1(false);
            abstractC5470n.mo33076c0();
        }
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5468l
    /* renamed from: P */
    public boolean mo33084P() {
        AbstractC5470n abstractC5470n = (AbstractC5470n) this.f57683a;
        if (abstractC5470n != null) {
            abstractC5470n.mo33074g();
            abstractC5470n.mo33079B1(true);
            abstractC5470n.mo33076c0();
            return true;
        }
        return true;
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5468l
    /* renamed from: R */
    public String mo33083R() {
        return String.valueOf(this.f18581f.size());
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5468l
    /* renamed from: d */
    public boolean mo33082d(int i) {
        Conversation conversation;
        if (i != 2131362027) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        for (Conversation conversation2 : this.f18581f.values()) {
            arrayList.add(conversation2);
            if (this.f18580e.containsKey(Long.valueOf(conversation2.f13199a)) && (conversation = this.f18580e.get(Long.valueOf(conversation2.f13199a))) != null) {
                arrayList.add(conversation);
            }
        }
        m33102Ij(arrayList, false, new C5462f(this, arrayList));
        return true;
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5464h
    /* renamed from: ij */
    public void mo33095ij(Conversation conversation) {
        l.e(conversation, "conversation");
        int i = this.f18580e.containsKey(Long.valueOf(conversation.f13199a)) ? 1 : conversation.f13217s;
        AbstractC5470n abstractC5470n = (AbstractC5470n) this.f57683a;
        if (abstractC5470n != null) {
            abstractC5470n.mo33072q2(conversation, i);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5469m
    /* renamed from: v6 */
    public void mo33081v6() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5460b(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5469m
    /* renamed from: ya */
    public void mo33080ya(List<? extends Conversation> list) {
        l.e(list, "archiveList");
        m33102Ij(list, true, new C5461c());
    }
}
