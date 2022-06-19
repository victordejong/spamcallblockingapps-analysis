package p193e.p194a.p195a.p200c.p215n;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.messageDetails.GroupReportsItemMvp$Type;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.Reaction;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p195a.p200c.AbstractC5794w3;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6149q;
import p193e.p194a.p195a.p231g.p234l0.C6226b;
import p193e.p194a.p195a.p244k.p245a.AbstractC6523c0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import q3.a.j0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.c.n.w */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/n/w.class */
public class C5569w extends AbstractC20574a<AbstractC5568v> implements AbstractC5567u {

    /* renamed from: f */
    public int f18800f;

    /* renamed from: i */
    public final Message f18803i;

    /* renamed from: j */
    public final String f18804j;

    /* renamed from: k */
    public final AbstractC19868j f18805k;

    /* renamed from: l */
    public final f f18806l;

    /* renamed from: m */
    public final AbstractC19854f<AbstractC6523c0> f18807m;

    /* renamed from: n */
    public final ContentResolver f18808n;

    /* renamed from: o */
    public final Uri f18809o;

    /* renamed from: p */
    public final Uri f18810p;

    /* renamed from: q */
    public final AbstractC19854f<AbstractC6485m> f18811q;

    /* renamed from: r */
    public final AbstractC5794w3 f18812r;

    /* renamed from: s */
    public final a<AbstractC6248w> f18813s;

    /* renamed from: d */
    public List<C6226b> f18798d = new ArrayList();

    /* renamed from: e */
    public List<C6226b> f18799e = new ArrayList();

    /* renamed from: g */
    public final C5574e f18801g = new C5574e(new Handler(Looper.getMainLooper()));

    /* renamed from: h */
    public final C5575f f18802h = new C5575f(new Handler(Looper.getMainLooper()));

    /* renamed from: e.a.a.c.n.w$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/n/w$a.class */
    public static final class C5570a<R> implements AbstractC19851d0<k<? extends List<? extends C6226b>, ? extends List<? extends C6226b>>> {
        public C5570a() {
            C5569w.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(k<? extends List<? extends C6226b>, ? extends List<? extends C6226b>> kVar) {
            k<? extends List<? extends C6226b>, ? extends List<? extends C6226b>> kVar2 = kVar;
            if (kVar2 != null) {
                C5569w c5569w = C5569w.this;
                l.d(kVar2, "it");
                Objects.requireNonNull(c5569w);
                c5569w.f18798d = (List) kVar2.a;
                c5569w.f18799e = (List) kVar2.b;
                AbstractC5568v abstractC5568v = (AbstractC5568v) c5569w.f57683a;
                if (abstractC5568v != null) {
                    abstractC5568v.mo32962Mz();
                }
                AbstractC5568v abstractC5568v2 = (AbstractC5568v) c5569w.f57683a;
                if (abstractC5568v2 != null) {
                    abstractC5568v2.mo32964Ed();
                }
                c5569w.m32952Kj();
            }
        }
    }

    @e(c = "com.truecaller.messaging.conversation.messageDetails.MessageDetailsPresenter$loadMessage$1", f = "MessageDetailsPresenter.kt", l = {89}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.n.w$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/n/w$b.class */
    public static final class C5571b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f18815e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5571b(d dVar) {
            super(2, dVar);
            C5569w.this = r5;
        }

        /* renamed from: i */
        public final d<s> m32949i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5571b(dVar);
        }

        /* renamed from: k */
        public final Object m32948k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5571b(dVar).m32947s(s.a);
        }

        /* renamed from: s */
        public final Object m32947s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f18815e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6248w abstractC6248w = (AbstractC6248w) C5569w.this.f18813s.get();
                long j = C5569w.this.f18803i.f13380a;
                this.f18815e = 1;
                Object mo31569g = abstractC6248w.mo31569g(j, this);
                obj = mo31569g;
                if (mo31569g == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C5569w.this.f18812r.mo32579e((AbstractC6149q) obj);
            AbstractC5568v abstractC5568v = (AbstractC5568v) C5569w.this.f57683a;
            if (abstractC5568v != null) {
                abstractC5568v.mo32965A();
            }
            AbstractC5568v abstractC5568v2 = (AbstractC5568v) C5569w.this.f57683a;
            if (abstractC5568v2 != null) {
                abstractC5568v2.mo32958jb();
            }
            C5569w.this.m32952Kj();
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.n.w$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/n/w$c.class */
    public static final class C5572c<R> implements AbstractC19851d0<Map<Reaction, ? extends Participant>> {
        public C5572c() {
            C5569w.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Map<Reaction, ? extends Participant> map) {
            Map<Reaction, ? extends Participant> map2 = map;
            if (map2 != null) {
                C5569w c5569w = C5569w.this;
                l.d(map2, "it");
                AbstractC5568v abstractC5568v = (AbstractC5568v) c5569w.f57683a;
                if (abstractC5568v != null) {
                    abstractC5568v.mo32957qc(map2);
                }
                AbstractC5568v abstractC5568v2 = (AbstractC5568v) c5569w.f57683a;
                if (abstractC5568v2 == null) {
                    return;
                }
                abstractC5568v2.mo32963Je(map2.isEmpty());
            }
        }
    }

    /* renamed from: e.a.a.c.n.w$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/n/w$d.class */
    public static final class C5573d<R> implements AbstractC19851d0<Integer> {
        public C5573d() {
            C5569w.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Integer num) {
            Integer num2 = num;
            C5569w.this.f18800f = num2 != null ? num2.intValue() : 0;
            C5569w.this.m32952Kj();
        }
    }

    /* renamed from: e.a.a.c.n.w$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/n/w$e.class */
    public static final class C5574e extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5574e(Handler handler) {
            super(handler);
            C5569w.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            C5569w.this.m32953Jj();
        }
    }

    /* renamed from: e.a.a.c.n.w$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/n/w$f.class */
    public static final class C5575f extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5575f(Handler handler) {
            super(handler);
            C5569w.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            C5569w.this.m32954Ij();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5569w(@Named("message") Message message, @Named("im_group_id") String str, @Named("ui_thread") AbstractC19868j abstractC19868j, @Named("UI") f fVar, AbstractC19854f<AbstractC6523c0> abstractC19854f, ContentResolver contentResolver, @Named("messages_uri") Uri uri, @Named("reports_uri") Uri uri2, AbstractC19854f<AbstractC6485m> abstractC19854f2, AbstractC5794w3 abstractC5794w3, a<AbstractC6248w> aVar) {
        super(fVar);
        l.e(message, "message");
        l.e(abstractC19868j, "uiThread");
        l.e(fVar, "uiContext");
        l.e(abstractC19854f, "imReactionManager");
        l.e(contentResolver, "contentResolver");
        l.e(uri, "messagesUri");
        l.e(uri2, "reportsUri");
        l.e(abstractC19854f2, "imGroupManager");
        l.e(abstractC5794w3, "dataSource");
        l.e(aVar, "readMessageStorage");
        this.f18803i = message;
        this.f18804j = str;
        this.f18805k = abstractC19868j;
        this.f18806l = fVar;
        this.f18807m = abstractC19854f;
        this.f18808n = contentResolver;
        this.f18809o = uri;
        this.f18810p = uri2;
        this.f18811q = abstractC19854f2;
        this.f18812r = abstractC5794w3;
        this.f18813s = aVar;
    }

    /* renamed from: Ij */
    public final void m32954Ij() {
        if (this.f18804j != null) {
            this.f18811q.mo11854a().mo30886n(this.f18804j, this.f18803i.f13367C).mo11830e(this.f18805k, new C5570a());
        }
    }

    /* renamed from: Jj */
    public final void m32953Jj() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5571b(null), 3, (Object) null);
        if (this.f18803i.f13390k == 2) {
            this.f18807m.mo11854a().mo30803c(this.f18803i.f13380a).mo11830e(this.f18805k, new C5572c());
        }
        if (this.f18804j != null) {
            this.f18811q.mo11854a().mo30888l(this.f18804j).mo11830e(this.f18805k, new C5573d());
        }
    }

    /* renamed from: Kj */
    public final void m32952Kj() {
        int max = Math.max(this.f18800f - 1, 0);
        int max2 = Math.max((this.f18800f - 1) - this.f18798d.size(), 0);
        AbstractC5568v abstractC5568v = (AbstractC5568v) this.f57683a;
        if (abstractC5568v != null) {
            abstractC5568v.mo32960gA(this.f18798d.isEmpty(), max);
        }
        AbstractC5568v abstractC5568v2 = (AbstractC5568v) this.f57683a;
        if (abstractC5568v2 != null) {
            abstractC5568v2.mo32955ym(this.f18799e.isEmpty(), max2);
        }
        AbstractC5568v abstractC5568v3 = (AbstractC5568v) this.f57683a;
        if (abstractC5568v3 != null) {
            abstractC5568v3.mo32959io(this.f18804j != null && C10480a.m25874x1(this.f18803i) && ((this.f18798d.isEmpty() ^ true) || max > 0));
        }
        AbstractC5568v abstractC5568v4 = (AbstractC5568v) this.f57683a;
        if (abstractC5568v4 != null) {
            abstractC5568v4.mo32956rb(this.f18804j != null && C10480a.m25874x1(this.f18803i) && max2 > 0);
        }
        AbstractC5568v abstractC5568v5 = (AbstractC5568v) this.f57683a;
        if (abstractC5568v5 != null) {
            abstractC5568v5.mo32961ds(this.f18803i.f13390k == 2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.a.c.n.v] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC5568v abstractC5568v) {
        AbstractC5568v abstractC5568v2 = abstractC5568v;
        l.e(abstractC5568v2, "presenterView");
        this.f57683a = abstractC5568v2;
        m32953Jj();
        m32954Ij();
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5556j
    /* renamed from: cb */
    public List<C6226b> mo32951cb(GroupReportsItemMvp$Type groupReportsItemMvp$Type) {
        List<C6226b> list;
        l.e(groupReportsItemMvp$Type, "type");
        int ordinal = groupReportsItemMvp$Type.ordinal();
        if (ordinal == 0) {
            list = this.f18798d;
        } else if (ordinal != 1) {
            throw new s1.i();
        } else {
            list = this.f18799e;
        }
        return list;
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5567u
    public void onStart() {
        this.f18808n.registerContentObserver(this.f18809o, true, this.f18801g);
        this.f18808n.registerContentObserver(this.f18810p, true, this.f18802h);
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5567u
    public void onStop() {
        this.f18808n.unregisterContentObserver(this.f18801g);
        this.f18808n.unregisterContentObserver(this.f18802h);
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5567u
    /* renamed from: r0 */
    public void mo32950r0() {
        AbstractC5568v abstractC5568v = (AbstractC5568v) this.f57683a;
        if (abstractC5568v != null) {
            abstractC5568v.finish();
        }
    }
}
