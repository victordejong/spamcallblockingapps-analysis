package p193e.p194a.p195a.p231g;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.InboxTab;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.AbstractC7289w;
import p193e.p194a.p195a.p231g.AbstractC6116g0;
import p193e.p194a.p372b0.p413i.AbstractC8449b;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p751f4.p762g.AbstractC14015j;
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
import w3.b.a.b;
/* renamed from: e.a.a.g.h0 */
/* loaded from: classes6-dex2jar.jar:e/a/a/g/h0.class */
public final class C6119h0 implements AbstractC6116g0, AbstractC14015j.AbstractC14016a {

    /* renamed from: c */
    public boolean f20313c;

    /* renamed from: d */
    public boolean f20314d;

    /* renamed from: e */
    public boolean f20315e;

    /* renamed from: f */
    public long f20316f;

    /* renamed from: g */
    public long f20317g;

    /* renamed from: h */
    public long f20318h;

    /* renamed from: i */
    public long f20319i;

    /* renamed from: j */
    public boolean f20320j;

    /* renamed from: l */
    public C6159k f20322l;

    /* renamed from: o */
    public final ContentResolver f20325o;

    /* renamed from: p */
    public final a<AbstractC6248w> f20326p;

    /* renamed from: q */
    public final f f20327q;

    /* renamed from: r */
    public final AbstractC19022f0 f20328r;

    /* renamed from: s */
    public final AbstractC14015j f20329s;

    /* renamed from: t */
    public final AbstractC6392i0 f20330t;

    /* renamed from: u */
    public final C8601l0 f20331u;

    /* renamed from: v */
    public final AbstractC7289w f20332v;

    /* renamed from: a */
    public final List<AbstractC6116g0.AbstractC6117a> f20311a = new ArrayList();

    /* renamed from: b */
    public C6114f0 f20312b = new C6114f0(0, 0, 0, 0, null, null, 48);

    /* renamed from: k */
    public List<InboxTab> f20321k = new ArrayList();

    /* renamed from: m */
    public final ContentObserver f20323m = new C6120a(new Handler(Looper.getMainLooper()), 600);

    /* renamed from: n */
    public final C6122c f20324n = new C6122c();

    /* renamed from: e.a.a.g.h0$a */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/h0$a.class */
    public static final class C6120a extends AbstractC8449b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6120a(Handler handler, long j) {
            super(handler, j);
            C6119h0.this = r6;
        }

        @Override // p193e.p194a.p372b0.p413i.AbstractC8449b
        /* renamed from: a */
        public void mo9046a() {
            C6119h0.this.m31762l();
        }
    }

    @e(c = "com.truecaller.messaging.data.UnreadThreadsCounterImpl$fetch$1", f = "UnreadThreadsCounterImpl.kt", l = {108}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.h0$b */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/h0$b.class */
    public static final class C6121b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f20334e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6121b(d dVar) {
            super(2, dVar);
            C6119h0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m31757i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6121b(dVar);
        }

        /* renamed from: k */
        public final Object m31756k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6121b(dVar).m31755s(s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v107 */
        /* JADX WARN: Type inference failed for: r0v127 */
        /* JADX WARN: Type inference failed for: r0v53, types: [long] */
        /* JADX WARN: Type inference failed for: r0v60, types: [long] */
        /* JADX WARN: Type inference failed for: r0v71, types: [long] */
        /* JADX WARN: Type inference failed for: r13v1 */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Type inference failed for: r13v5 */
        /* JADX WARN: Type inference failed for: r13v6 */
        /* JADX WARN: Type inference failed for: r27v0 */
        /* JADX WARN: Type inference failed for: r27v1 */
        /* JADX WARN: Type inference failed for: r27v10 */
        /* JADX WARN: Type inference failed for: r27v2 */
        /* JADX WARN: Type inference failed for: r27v3 */
        /* JADX WARN: Type inference failed for: r27v4 */
        /* JADX WARN: Type inference failed for: r27v5 */
        /* JADX WARN: Type inference failed for: r27v6 */
        /* JADX WARN: Type inference failed for: r27v7 */
        /* JADX WARN: Type inference failed for: r27v8 */
        /* JADX WARN: Type inference failed for: r27v9 */
        /* JADX WARN: Type inference failed for: r2v4 */
        /* JADX WARN: Type inference failed for: r2v5 */
        /* JADX WARN: Type inference failed for: r2v6 */
        /* renamed from: s */
        public final Object m31755s(Object obj) {
            ArrayList<C6112e0> arrayList;
            ArrayList arrayList2;
            C6112e0 c6112e0;
            List<C6112e0> list;
            C6112e0 c6112e02;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f20334e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C6119h0 c6119h0 = C6119h0.this;
                c6119h0.f20315e = true;
                AbstractC6248w abstractC6248w = (AbstractC6248w) c6119h0.f20326p.get();
                List<? extends InboxTab> S0 = s1.u.i.S0(C6119h0.this.f20321k);
                this.f20334e = 1;
                Object mo31556t = abstractC6248w.mo31556t(S0, this);
                obj = mo31556t;
                if (mo31556t == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Map<InboxTab, ? extends List<C6112e0>> map = (Map) obj;
            C6119h0 c6119h02 = C6119h0.this;
            c6119h02.f20315e = false;
            if (c6119h02.f20314d) {
                c6119h02.f20314d = false;
                c6119h02.m31762l();
            }
            ArrayList arrayList3 = null;
            List<C6112e0> list2 = map != null ? map.get(c6119h02.f20320j ? InboxTab.PROMOTIONAL : InboxTab.OTHERS) : null;
            if (list2 != null) {
                ArrayList arrayList4 = new ArrayList();
                Iterator it = list2.iterator();
                while (true) {
                    arrayList = arrayList4;
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if ((((C6112e0) next).f20291b > c6119h02.f20330t.mo30981w()) != false) {
                        arrayList4.add(next);
                    }
                }
            } else {
                arrayList = null;
            }
            int m31759o = c6119h02.m31759o(map, InboxTab.PERSONAL);
            int m31759o2 = c6119h02.m31759o(map, c6119h02.f20320j ? InboxTab.PROMOTIONAL : InboxTab.OTHERS);
            int m31759o3 = c6119h02.m31759o(map, InboxTab.SPAM);
            int i2 = c6119h02.f20312b.f20308d;
            if (arrayList != null) {
                arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
                for (C6112e0 c6112e03 : arrayList) {
                    String str = c6112e03.f20292c;
                    if (str != null) {
                        if ((str.length() > 0) == false) {
                            str = null;
                        }
                        if (str != null) {
                            arrayList2.add(str);
                        }
                    }
                    str = c6112e03.f20293d;
                    arrayList2.add(str);
                }
            } else {
                arrayList2 = null;
            }
            C6119h0 c6119h03 = c6119h02;
            if (arrayList != null) {
                ArrayList arrayList5 = new ArrayList();
                Iterator it2 = arrayList.iterator();
                while (true) {
                    c6119h03 = c6119h02;
                    arrayList3 = arrayList5;
                    if (!it2.hasNext()) {
                        break;
                    }
                    C6112e0 c6112e04 = (C6112e0) it2.next();
                    Uri mo14235k = c6119h02.f20328r.mo14235k(c6112e04.f20294e, c6112e04.f20295f, true);
                    if (mo14235k != null) {
                        arrayList5.add(mo14235k);
                    }
                }
            }
            c6119h03.f20312b = new C6114f0(m31759o, m31759o2, m31759o3, i2, arrayList2, arrayList3);
            InboxTab inboxTab = InboxTab.PERSONAL;
            c6119h03.m31758p(inboxTab, ((map == null || (list = map.get(inboxTab)) == null || (c6112e02 = (C6112e0) s1.u.i.D(list)) == null) ? false : c6112e02.f20291b) == true ? 1L : 0L);
            c6119h03.m31758p(InboxTab.OTHERS, ((list2 == null || (c6112e0 = (C6112e0) s1.u.i.D(list2)) == null) ? false : c6112e0.f20291b) == true ? 1L : 0L);
            InboxTab inboxTab2 = InboxTab.SPAM;
            ?? r27 = false;
            if (map != null) {
                List<C6112e0> list3 = map.get(inboxTab2);
                r27 = false;
                if (list3 != null) {
                    C6112e0 c6112e05 = (C6112e0) s1.u.i.D(list3);
                    r27 = false;
                    if (c6112e05 != null) {
                        r27 = c6112e05.f20291b;
                    }
                }
            }
            c6119h03.m31758p(inboxTab2, r27 == true ? 1L : 0L);
            c6119h03.m31760n();
            return s.a;
        }
    }

    /* renamed from: e.a.a.g.h0$c */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/h0$c.class */
    public static final class C6122c extends BroadcastReceiver {
        public C6122c() {
            C6119h0.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(intent, "intent");
            C6119h0.this.m31762l();
        }
    }

    @Inject
    public C6119h0(ContentResolver contentResolver, a<AbstractC6248w> aVar, @Named("UI") f fVar, AbstractC19022f0 abstractC19022f0, @Named("inbox") AbstractC14015j abstractC14015j, AbstractC6392i0 abstractC6392i0, C8601l0 c8601l0, AbstractC7289w abstractC7289w) {
        l.e(contentResolver, "contentResolver");
        l.e(aVar, "readMessageStorage");
        l.e(fVar, "uiContext");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC14015j, "bulkSearcher");
        l.e(abstractC6392i0, "settings");
        l.e(c8601l0, "timestampUtil");
        l.e(abstractC7289w, "inboxTabsProvider");
        this.f20325o = contentResolver;
        this.f20326p = aVar;
        this.f20327q = fVar;
        this.f20328r = abstractC19022f0;
        this.f20329s = abstractC14015j;
        this.f20330t = abstractC6392i0;
        this.f20331u = c8601l0;
        this.f20332v = abstractC7289w;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6116g0
    /* renamed from: a */
    public C6159k mo31771a() {
        return this.f20322l;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6116g0
    /* renamed from: b */
    public void mo31770b(AbstractC6116g0.AbstractC6117a abstractC6117a) {
        l.e(abstractC6117a, "observer");
        if (this.f20313c && !this.f20315e) {
            m31761m(abstractC6117a);
        }
        this.f20311a.add(abstractC6117a);
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9685d
    /* renamed from: c */
    public void mo27313c(boolean z, int i) {
        if (z) {
            this.f20319i = this.f20331u.m28258c();
        } else {
            this.f20330t.mo30975x0(this.f20331u.m28258c());
        }
        this.f20312b.f20308d = i;
        m31760n();
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6116g0
    /* renamed from: d */
    public void mo31769d() {
        if (this.f20313c) {
            return;
        }
        this.f20321k.clear();
        List<InboxTab> list = this.f20321k;
        List<InboxTab> mo29825a = this.f20332v.mo29825a();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = mo29825a.iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                list.addAll(arrayList);
                this.f20320j = this.f20321k.contains(InboxTab.PROMOTIONAL);
                this.f20325o.registerContentObserver(C8582g0.m28306n(), true, this.f20323m);
                this.f20328r.mo14241e(this.f20324n, "com.truecaller.messaging.spam.SEARCH_COMPLETED");
                this.f20329s.mo20855b(this);
                this.f20313c = true;
                m31762l();
                return;
            }
            Object next = it.next();
            if (((InboxTab) next) != InboxTab.BUSINESS) {
                z = false;
            }
            if (!z) {
                arrayList.add(next);
            }
        }
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6116g0
    /* renamed from: e */
    public void mo31768e(AbstractC6116g0.AbstractC6117a abstractC6117a) {
        l.e(abstractC6117a, "observer");
        this.f20311a.remove(abstractC6117a);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6116g0
    /* renamed from: f */
    public void mo31767f() {
        this.f20325o.unregisterContentObserver(this.f20323m);
        this.f20328r.mo14238h(this.f20324n);
        this.f20329s.mo20854c(this);
        this.f20313c = false;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6116g0
    /* renamed from: g */
    public void mo31766g(InboxTab inboxTab) {
        l.e(inboxTab, "tab");
        this.f20322l = null;
        m31762l();
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14015j.AbstractC14016a
    /* renamed from: g6 */
    public void mo20852g6(Collection<String> collection) {
        l.e(collection, "normalizedNumbers");
        m31762l();
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6116g0
    /* renamed from: h */
    public void mo31765h(InboxTab inboxTab) {
        l.e(inboxTab, "tab");
        int ordinal = inboxTab.ordinal();
        if (ordinal == 0) {
            this.f20330t.mo31020o3(this.f20331u.m28258c());
        } else if (ordinal == 1) {
            C6114f0 c6114f0 = this.f20312b;
            this.f20312b = new C6114f0(c6114f0.f20305a, c6114f0.f20306b, c6114f0.f20307c, c6114f0.f20308d, null, null, 32);
            this.f20330t.mo31139T3(this.f20331u.m28258c());
        } else if (ordinal == 2) {
            throw new IllegalArgumentException("Business tab doesn't have unseen badge");
        } else {
            if (ordinal == 3) {
                this.f20330t.mo31180L2(this.f20331u.m28258c());
            } else if (ordinal == 4) {
                C6114f0 c6114f02 = this.f20312b;
                this.f20312b = new C6114f0(c6114f02.f20305a, c6114f02.f20306b, c6114f02.f20307c, c6114f02.f20308d, null, null, 32);
                this.f20330t.mo30967y3(this.f20331u.m28258c());
            }
        }
        m31760n();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r6v0 */
    @Override // p193e.p194a.p195a.p231g.AbstractC6116g0
    /* renamed from: i */
    public void mo31764i(InboxTab inboxTab, List<? extends Conversation> list) {
        b bVar;
        l.e(inboxTab, "tab");
        l.e(list, "conversations");
        long m28258c = this.f20331u.m28258c();
        Conversation conversation = (Conversation) s1.u.i.D(list);
        this.f20322l = new C6159k(inboxTab, list, Math.max(m28258c, ((conversation == null || (bVar = conversation.f13207i) == null) ? false : ((w3.b.a.e0.e) bVar).a) == true ? 1L : 0L));
        m31762l();
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6116g0
    /* renamed from: k */
    public void mo31763k(InboxTab inboxTab) {
        l.e(inboxTab, "tab");
        this.f20322l = null;
        m31762l();
    }

    /* renamed from: l */
    public void m31762l() {
        if (this.f20315e) {
            this.f20314d = true;
        } else {
            s1.a.a.a.v0.f.d.w2(h1.a, this.f20327q, (j0) null, new C6121b(null), 2, (Object) null);
        }
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14015j.AbstractC14016a
    /* renamed from: la */
    public void mo20851la(Set<String> set) {
        l.e(set, "normalizedNumbers");
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* renamed from: m */
    public final void m31761m(AbstractC6116g0.AbstractC6117a abstractC6117a) {
        C6114f0 c6114f0 = this.f20312b;
        boolean z = true;
        boolean z2 = this.f20316f > this.f20330t.mo31088d1();
        boolean z3 = this.f20317g > (this.f20320j ? this.f20330t.mo31161P1() : this.f20330t.mo30981w());
        boolean z4 = this.f20318h > this.f20330t.mo31192J0();
        if (this.f20319i <= this.f20330t.mo31178M()) {
            z = false;
        }
        abstractC6117a.mo29936s2(c6114f0, new C6124i0(z2, z3, z4, z));
    }

    /* renamed from: n */
    public final void m31760n() {
        for (AbstractC6116g0.AbstractC6117a abstractC6117a : this.f20311a) {
            m31761m(abstractC6117a);
        }
    }

    /* renamed from: o */
    public final int m31759o(Map<InboxTab, ? extends List<C6112e0>> map, InboxTab inboxTab) {
        List<Conversation> list;
        List<C6112e0> list2;
        int size = (map == null || (list2 = map.get(inboxTab)) == null) ? 0 : list2.size();
        C6159k c6159k = this.f20322l;
        if ((c6159k != null ? c6159k.f20748a : null) != inboxTab) {
            return size;
        }
        return Math.max(0, size - ((c6159k == null || (list = c6159k.f20749b) == null) ? 0 : list.size()));
    }

    /* renamed from: p */
    public final void m31758p(InboxTab inboxTab, long j) {
        int ordinal = inboxTab.ordinal();
        if (ordinal == 0) {
            this.f20316f = j;
            return;
        }
        if (ordinal != 1) {
            if (ordinal == 2) {
                throw new IllegalArgumentException("Business tab doesn't have unseen badge");
            }
            if (ordinal == 3) {
                this.f20318h = j;
                return;
            } else if (ordinal != 4) {
                return;
            }
        }
        this.f20317g = j;
    }
}
