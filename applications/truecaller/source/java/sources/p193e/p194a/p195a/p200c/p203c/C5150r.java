package p193e.p194a.p195a.p200c.p203c;

import android.net.Uri;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.draft.DraftArguments;
import com.truecaller.messaging.conversation.draft.DraftMode;
import com.truecaller.messaging.conversation.draft.DraftUri;
import com.truecaller.messaging.conversation.draft.UriTypeHint;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.Mention;
import com.truecaller.messaging.data.types.VideoEntity;
import com.truecaller.messaging.mediaviewer.MediaPosition;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19073o0;
import p193e.p194a.p1114o5.AbstractC19091q0;
import p193e.p194a.p1114o5.AbstractC19108u0;
import p193e.p194a.p1114o5.AbstractC19109u1;
import p193e.p194a.p1114o5.AbstractC19126x;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19236j;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.p218o8.AbstractC5639g;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p195a.p280s0.AbstractC7249d;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.c.r */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c/r.class */
public final class C5150r extends AbstractC20574a<AbstractC5149q> implements AbstractC5148p {

    /* renamed from: A */
    public final AbstractC6708t f17582A;

    /* renamed from: e */
    public boolean f17584e;

    /* renamed from: f */
    public boolean f17585f;

    /* renamed from: g */
    public boolean f17586g;

    /* renamed from: h */
    public Uri f17587h;

    /* renamed from: j */
    public final f f17589j;

    /* renamed from: k */
    public final DraftArguments f17590k;

    /* renamed from: l */
    public final AbstractC19854f<AbstractC19091q0> f17591l;

    /* renamed from: m */
    public final AbstractC19108u0 f17592m;

    /* renamed from: n */
    public final AbstractC6489q f17593n;

    /* renamed from: o */
    public final AbstractC5854d f17594o;

    /* renamed from: p */
    public final AbstractC7249d f17595p;

    /* renamed from: q */
    public final AbstractC6392i0 f17596q;

    /* renamed from: r */
    public final AbstractC19109u1 f17597r;

    /* renamed from: s */
    public final C19236j f17598s;

    /* renamed from: t */
    public final AbstractC19854f<AbstractC19126x> f17599t;

    /* renamed from: u */
    public final AbstractC6394b f17600u;

    /* renamed from: v */
    public final AbstractC19223c0 f17601v;

    /* renamed from: w */
    public final AbstractC8571b f17602w;

    /* renamed from: x */
    public final AbstractC18951b0 f17603x;

    /* renamed from: y */
    public final C5138f f17604y;

    /* renamed from: z */
    public final AbstractC5639g f17605z;

    /* renamed from: d */
    public final List<C5139g> f17583d = new ArrayList();

    /* renamed from: i */
    public int f17588i = -1;

    @e(c = "com.truecaller.messaging.conversation.draft.DraftPresenterImpl$addUris$1", f = "DraftPresenterImpl.kt", l = {541}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.c.r$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/r$a.class */
    public static final class C5151a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f17606e;

        /* renamed from: g */
        public final /* synthetic */ List f17608g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5151a(List list, d dVar) {
            super(2, dVar);
            C5150r.this = r5;
            this.f17608g = list;
        }

        /* renamed from: i */
        public final d<s> m33737i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5151a(this.f17608g, dVar);
        }

        /* renamed from: k */
        public final Object m33736k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5151a(this.f17608g, dVar).m33735s(s.a);
        }

        /* renamed from: s */
        public final Object m33735s(Object obj) {
            AbstractC5149q abstractC5149q;
            AbstractC5149q abstractC5149q2;
            a aVar = a.a;
            int i = this.f17606e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C5150r c5150r = C5150r.this;
                List<DraftUri> list = this.f17608g;
                this.f17606e = 1;
                Object m33763Lj = c5150r.m33763Lj(list, this);
                obj = m33763Lj;
                if (m33763Lj == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            k kVar = (k) obj;
            List<? extends BinaryEntity> list2 = (List) kVar.a;
            AbstractC19073o0 abstractC19073o0 = (AbstractC19073o0) kVar.b;
            if (C10480a.m25929m1(C5150r.this.f17590k)) {
                C5150r c5150r2 = C5150r.this;
                if (c5150r2.f17583d.isEmpty()) {
                    c5150r2.m33768Ij(list2);
                } else if (c5150r2.f17583d.size() == 1 && list2.size() == 1) {
                    C5139g c5139g = c5150r2.f17583d.get(0);
                    C5139g c5139g2 = new C5139g(list2.get(0), null, null, 6);
                    c5139g2.m33815a(c5139g.f17564b);
                    c5139g2.m33814b(c5139g.f17565c);
                    c5150r2.f17583d.clear();
                    c5150r2.f17583d.add(c5139g2);
                    c5150r2.f17597r.mo14085a(c5139g.f17563a);
                    AbstractC5149q abstractC5149q3 = (AbstractC5149q) c5150r2.f57683a;
                    if (abstractC5149q3 != null) {
                        abstractC5149q3.mo33793c0();
                    }
                    if (!c5150r2.f17583d.isEmpty()) {
                        c5150r2.m33749Vj(s1.u.i.F(c5150r2.f17583d), true);
                        C5138f c5138f = c5150r2.f17604y;
                        List<Draft> list3 = c5150r2.f17590k.f13075b;
                        ArrayList arrayList = new ArrayList();
                        for (Draft draft : list3) {
                            Participant[] participantArr = draft.f13270e;
                            l.d(participantArr, "it.participants");
                            s1.u.i.b(arrayList, s1.u.i.g(participantArr));
                        }
                        Object[] array = arrayList.toArray(new Participant[0]);
                        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                        c5138f.m33816b((Participant[]) array, ((C5139g) s1.u.i.B(c5150r2.f17583d)).f17563a.f13307b);
                    }
                }
            } else {
                C5150r.this.m33768Ij(list2);
            }
            if (abstractC19073o0 != null) {
                C5150r c5150r3 = C5150r.this;
                Objects.requireNonNull(c5150r3);
                if (abstractC19073o0 instanceof AbstractC19073o0.C19074a) {
                    AbstractC5149q abstractC5149q4 = (AbstractC5149q) c5150r3.f57683a;
                    if (abstractC5149q4 != null) {
                        abstractC5149q4.mo33782uA(((AbstractC19073o0.C19074a) abstractC19073o0).f53272a);
                    }
                } else if (abstractC19073o0 instanceof AbstractC19073o0.C19075b) {
                    AbstractC5149q abstractC5149q5 = (AbstractC5149q) c5150r3.f57683a;
                    if (abstractC5149q5 != null) {
                        abstractC5149q5.mo33796a(C2752R.string.ConversationFileNotSupported);
                    }
                } else if ((abstractC19073o0 instanceof AbstractC19073o0.C19076c) && (abstractC5149q2 = (AbstractC5149q) c5150r3.f57683a) != null) {
                    abstractC5149q2.mo33796a(C2752R.string.ConversationFileAttachFailed);
                }
                if (c5150r3.f17583d.isEmpty() && (abstractC5149q = (AbstractC5149q) c5150r3.f57683a) != null) {
                    abstractC5149q.mo33797Y4(true);
                }
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.draft.DraftPresenterImpl", f = "DraftPresenterImpl.kt", l = {442}, m = "getDraftForSending")
    /* renamed from: e.a.a.c.c.r$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/r$b.class */
    public static final class C5152b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f17609d;

        /* renamed from: e */
        public int f17610e;

        /* renamed from: g */
        public Object f17612g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5152b(d dVar) {
            super(dVar);
            C5150r.this = r4;
        }

        /* renamed from: s */
        public final Object m33734s(Object obj) {
            this.f17609d = obj;
            this.f17610e |= Integer.MIN_VALUE;
            return C5150r.this.m33765Kj(this);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.draft.DraftPresenterImpl", f = "DraftPresenterImpl.kt", l = {602, 603, 604, 607}, m = "getEntities")
    /* renamed from: e.a.a.c.c.r$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/r$c.class */
    public static final class C5153c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f17613d;

        /* renamed from: e */
        public int f17614e;

        /* renamed from: g */
        public Object f17616g;

        /* renamed from: h */
        public Object f17617h;

        /* renamed from: i */
        public Object f17618i;

        /* renamed from: j */
        public Object f17619j;

        /* renamed from: k */
        public long f17620k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5153c(d dVar) {
            super(dVar);
            C5150r.this = r4;
        }

        /* renamed from: s */
        public final Object m33733s(Object obj) {
            this.f17613d = obj;
            this.f17614e |= Integer.MIN_VALUE;
            return C5150r.this.m33763Lj(null, this);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.draft.DraftPresenterImpl", f = "DraftPresenterImpl.kt", l = {624}, m = "getVcardEntity")
    /* renamed from: e.a.a.c.c.r$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/r$d.class */
    public static final class C5154d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f17621d;

        /* renamed from: e */
        public int f17622e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5154d(d dVar) {
            super(dVar);
            C5150r.this = r4;
        }

        /* renamed from: s */
        public final Object m33732s(Object obj) {
            this.f17621d = obj;
            this.f17622e |= Integer.MIN_VALUE;
            return C5150r.this.m33761Mj(null, this);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.draft.DraftPresenterImpl$onScheduleMessageDateSet$1", f = "DraftPresenterImpl.kt", l = {278}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.c.r$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/r$e.class */
    public static final class C5155e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f17624e;

        /* renamed from: g */
        public final /* synthetic */ long f17626g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5155e(long j, d dVar) {
            super(2, dVar);
            C5150r.this = r5;
            this.f17626g = j;
        }

        /* renamed from: i */
        public final d<s> m33731i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5155e(this.f17626g, dVar);
        }

        /* renamed from: k */
        public final Object m33730k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5155e(this.f17626g, dVar).m33729s(s.a);
        }

        /* renamed from: s */
        public final Object m33729s(Object obj) {
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f17624e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                if (!C5150r.this.f17583d.isEmpty()) {
                    C5150r c5150r = C5150r.this;
                    if (c5150r.f17588i < c5150r.f17583d.size()) {
                        C5150r c5150r2 = C5150r.this;
                        C5139g c5139g = c5150r2.f17583d.get(c5150r2.f17588i);
                        AbstractC5149q abstractC5149q = (AbstractC5149q) C5150r.this.f57683a;
                        String mo33789m1 = abstractC5149q != null ? abstractC5149q.mo33789m1() : null;
                        if (mo33789m1 == null) {
                            mo33789m1 = "";
                        }
                        c5139g.m33815a(mo33789m1);
                        C5150r c5150r3 = C5150r.this;
                        c5150r3.f17583d.get(c5150r3.f17588i).m33814b(C5150r.this.f17605z.mo32829Ti());
                        C5150r c5150r4 = C5150r.this;
                        long j = this.f17626g;
                        this.f17624e = 1;
                        if (c5150r4.m33755Rj(j, this) == aVar) {
                            return aVar;
                        }
                    }
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.draft.DraftPresenterImpl", f = "DraftPresenterImpl.kt", l = {381, 384}, m = "prepareDraftsForSending")
    /* renamed from: e.a.a.c.c.r$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/r$f.class */
    public static final class C5156f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f17627d;

        /* renamed from: e */
        public int f17628e;

        /* renamed from: g */
        public Object f17630g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5156f(d dVar) {
            super(dVar);
            C5150r.this = r4;
        }

        /* renamed from: s */
        public final Object m33728s(Object obj) {
            this.f17627d = obj;
            this.f17628e |= Integer.MIN_VALUE;
            return C5150r.this.m33756Qj(this);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.draft.DraftPresenterImpl", f = "DraftPresenterImpl.kt", l = {358, 363}, m = "scheduleMessages")
    /* renamed from: e.a.a.c.c.r$g */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/r$g.class */
    public static final class C5157g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f17631d;

        /* renamed from: e */
        public int f17632e;

        /* renamed from: g */
        public Object f17634g;

        /* renamed from: h */
        public Object f17635h;

        /* renamed from: i */
        public long f17636i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5157g(d dVar) {
            super(dVar);
            C5150r.this = r4;
        }

        /* renamed from: s */
        public final Object m33727s(Object obj) {
            this.f17631d = obj;
            this.f17632e |= Integer.MIN_VALUE;
            return C5150r.this.m33755Rj(0L, this);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.draft.DraftPresenterImpl$sendMessages$1", f = "DraftPresenterImpl.kt", l = {306}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.c.r$h */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/r$h.class */
    public static final class C5158h extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f17637e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5158h(d dVar) {
            super(2, dVar);
            C5150r.this = r5;
        }

        /* renamed from: i */
        public final d<s> m33726i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5158h(dVar);
        }

        /* renamed from: k */
        public final Object m33725k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5158h(dVar).m33724s(s.a);
        }

        /* renamed from: s */
        public final Object m33724s(Object obj) {
            a aVar = a.a;
            int i = this.f17637e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C5150r c5150r = C5150r.this;
                this.f17637e = 1;
                if (c5150r.m33752Tj(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C5150r.this.f17584e = false;
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.draft.DraftPresenterImpl", f = "DraftPresenterImpl.kt", l = {312, 315}, m = "sendMessagesInternal")
    /* renamed from: e.a.a.c.c.r$i */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/r$i.class */
    public static final class C5159i extends c {

        /* renamed from: d */
        public /* synthetic */ Object f17639d;

        /* renamed from: e */
        public int f17640e;

        /* renamed from: g */
        public Object f17642g;

        /* renamed from: h */
        public Object f17643h;

        /* renamed from: i */
        public Object f17644i;

        /* renamed from: j */
        public Object f17645j;

        /* renamed from: k */
        public Object f17646k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5159i(d dVar) {
            super(dVar);
            C5150r.this = r4;
        }

        /* renamed from: s */
        public final Object m33723s(Object obj) {
            this.f17639d = obj;
            this.f17640e |= Integer.MIN_VALUE;
            return C5150r.this.m33752Tj(this);
        }
    }

    /* renamed from: e.a.a.c.c.r$j */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/r$j.class */
    public static final class C5160j extends m implements s1.z.b.l<C5139g, Boolean> {

        /* renamed from: b */
        public final /* synthetic */ List f17647b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5160j(List list) {
            super(1);
            this.f17647b = list;
        }

        /* renamed from: d */
        public Object m33722d(Object obj) {
            C5139g c5139g = (C5139g) obj;
            l.e(c5139g, "it");
            return Boolean.valueOf(!this.f17647b.contains(c5139g));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5150r(@Named("UI") f fVar, DraftArguments draftArguments, AbstractC19854f<AbstractC19091q0> abstractC19854f, AbstractC19108u0 abstractC19108u0, AbstractC6489q abstractC6489q, AbstractC5854d abstractC5854d, AbstractC7249d abstractC7249d, AbstractC6392i0 abstractC6392i0, AbstractC19109u1 abstractC19109u1, C19236j c19236j, AbstractC19854f<AbstractC19126x> abstractC19854f2, AbstractC6394b abstractC6394b, AbstractC19223c0 abstractC19223c0, AbstractC8571b abstractC8571b, AbstractC18951b0 abstractC18951b0, C5138f c5138f, AbstractC5639g abstractC5639g, C20592g c20592g, AbstractC6708t abstractC6708t) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(draftArguments, "arguments");
        l.e(abstractC19854f, "mediaHelper");
        l.e(abstractC19108u0, "mediaUtils");
        l.e(abstractC6489q, "imGroupUtil");
        l.e(abstractC5854d, "draftSender");
        l.e(abstractC7249d, "defaultSmsHelper");
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC19109u1, "entityCleaner");
        l.e(c19236j, "fileUtils");
        l.e(abstractC19854f2, "contactsManager");
        l.e(abstractC6394b, "messageUtil");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC8571b, "attachmentStoreHelper");
        l.e(abstractC18951b0, "dateHelper");
        l.e(c5138f, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC5639g, "mentionPresenter");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC6708t, "transportManager");
        this.f17589j = fVar;
        this.f17590k = draftArguments;
        this.f17591l = abstractC19854f;
        this.f17592m = abstractC19108u0;
        this.f17593n = abstractC6489q;
        this.f17594o = abstractC5854d;
        this.f17595p = abstractC7249d;
        this.f17596q = abstractC6392i0;
        this.f17597r = abstractC19109u1;
        this.f17598s = c19236j;
        this.f17599t = abstractC19854f2;
        this.f17600u = abstractC6394b;
        this.f17601v = abstractC19223c0;
        this.f17602w = abstractC8571b;
        this.f17603x = abstractC18951b0;
        this.f17604y = c5138f;
        this.f17605z = abstractC5639g;
        this.f17582A = abstractC6708t;
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: Af */
    public void mo33772Af(boolean z) {
        m33758Pj(true, z);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: D9 */
    public void mo33771D9(List<? extends Uri> list) {
        l.e(list, "uris");
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (Uri uri : list) {
            arrayList.add(new DraftUri(uri, UriTypeHint.UNKNOWN, false));
        }
        m33767Jj(arrayList);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5147o
    /* renamed from: Hg */
    public BinaryEntity mo33770Hg(int i) {
        return this.f17583d.get(i).f17563a;
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5147o
    /* renamed from: I3 */
    public int mo33769I3() {
        return this.f17583d.size();
    }

    /* renamed from: Ij */
    public final void m33768Ij(List<? extends BinaryEntity> list) {
        boolean isEmpty = this.f17583d.isEmpty();
        List<C5139g> list2 = this.f17583d;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (BinaryEntity binaryEntity : list) {
            arrayList.add(new C5139g(binaryEntity, null, null, 6));
        }
        s1.u.i.b(list2, arrayList);
        if (isEmpty && (!this.f17583d.isEmpty())) {
            C5139g c5139g = this.f17583d.get(0);
            String str = ((Draft) s1.u.i.B(this.f17590k.f13075b)).f13268c;
            l.d(str, "arguments.drafts.first().text");
            c5139g.m33815a(str);
            C5139g c5139g2 = this.f17583d.get(0);
            Mention[] mentionArr = ((Draft) s1.u.i.B(this.f17590k.f13075b)).f13271f;
            l.d(mentionArr, "arguments.drafts.first().mentions");
            c5139g2.m33814b(mentionArr);
        }
        AbstractC5149q abstractC5149q = (AbstractC5149q) this.f57683a;
        if (abstractC5149q != null) {
            abstractC5149q.mo33793c0();
        }
        if (!this.f17583d.isEmpty()) {
            m33749Vj(s1.u.i.F(this.f17583d), true);
            C5138f c5138f = this.f17604y;
            List<Draft> list3 = this.f17590k.f13075b;
            ArrayList arrayList2 = new ArrayList();
            for (Draft draft : list3) {
                Participant[] participantArr = draft.f13270e;
                l.d(participantArr, "it.participants");
                s1.u.i.b(arrayList2, s1.u.i.g(participantArr));
            }
            Object[] array = arrayList2.toArray(new Participant[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            c5138f.m33816b((Participant[]) array, ((C5139g) s1.u.i.B(this.f17583d)).f17563a.f13307b);
        }
    }

    /* renamed from: Jj */
    public final void m33767Jj(List<DraftUri> list) {
        if (list.isEmpty()) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(h1.a, this.f17589j, (j0) null, new C5151a(list, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: K2 */
    public void mo33766K2(long j) {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5155e(j, null), 3, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x03c3  */
    /* JADX WARN: Type inference failed for: r0v194, types: [java.util.List] */
    /* renamed from: Kj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m33765Kj(s1.w.d<? super java.util.List<s1.k<p193e.p194a.p195a.p200c.p203c.C5139g, com.truecaller.messaging.data.types.Draft>>> r12) {
        /*
            Method dump skipped, instructions count: 971
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p203c.C5150r.m33765Kj(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: Li */
    public void mo33764Li() {
        AbstractC5149q abstractC5149q = (AbstractC5149q) this.f57683a;
        if (abstractC5149q != null) {
            abstractC5149q.mo33795b2();
        }
        AbstractC5149q abstractC5149q2 = (AbstractC5149q) this.f57683a;
        if (abstractC5149q2 != null) {
            abstractC5149q2.mo33779w4();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0425  */
    /* JADX WARN: Type inference failed for: r0v184, types: [long] */
    /* JADX WARN: Type inference failed for: r0v194, types: [long] */
    /* JADX WARN: Type inference failed for: r0v213, types: [long] */
    /* JADX WARN: Type inference failed for: r0v232, types: [long] */
    /* JADX WARN: Type inference failed for: r0v251, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x023b -> B:43:0x0241). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x02c4 -> B:60:0x0355). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x033c -> B:60:0x0355). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x03be -> B:66:0x03c9). Please submit an issue!!! */
    /* renamed from: Lj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m33763Lj(java.util.List<com.truecaller.messaging.conversation.draft.DraftUri> r18, s1.w.d<? super s1.k<? extends java.util.List<? extends com.truecaller.messaging.data.types.BinaryEntity>, ? extends p193e.p194a.p1114o5.AbstractC19073o0>> r19) {
        /*
            Method dump skipped, instructions count: 1194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p203c.C5150r.m33763Lj(java.util.List, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: Mc */
    public boolean mo33762Mc() {
        return this.f17590k.f13074a == DraftMode.GIF;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ba  */
    /* renamed from: Mj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m33761Mj(android.net.Uri r17, s1.w.d<? super s1.k<com.truecaller.messaging.data.types.VCardEntity, ? extends p193e.p194a.p1114o5.AbstractC19073o0>> r18) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p203c.C5150r.m33761Mj(android.net.Uri, s1.w.d):java.lang.Object");
    }

    /* renamed from: Nj */
    public final void m33760Nj(boolean z) {
        if (this.f17584e) {
            return;
        }
        int ordinal = this.f17590k.f13074a.ordinal();
        if (ordinal == 0) {
            AbstractC5149q abstractC5149q = (AbstractC5149q) this.f57683a;
            if (abstractC5149q == null) {
                return;
            }
            abstractC5149q.mo33775yo(z);
        } else if (ordinal == 1) {
            AbstractC5149q abstractC5149q2 = (AbstractC5149q) this.f57683a;
            if (abstractC5149q2 == null) {
                return;
            }
            String[] mo31006r = this.f17596q.mo31006r();
            l.d(mo31006r, "messageSettings.fileMimeTypes");
            abstractC5149q2.mo33799O8(mo31006r, z);
        } else if (ordinal == 2) {
            AbstractC5149q abstractC5149q3 = (AbstractC5149q) this.f57683a;
            if (abstractC5149q3 == null) {
                return;
            }
            abstractC5149q3.mo33785q1();
        } else if (ordinal == 3) {
            m33759Oj(true);
        } else if (ordinal != 4) {
        } else {
            m33759Oj(false);
        }
    }

    /* renamed from: Oj */
    public final void m33759Oj(boolean z) {
        AbstractC5149q abstractC5149q;
        if (this.f17587h == null && (abstractC5149q = (AbstractC5149q) this.f57683a) != null) {
            Uri mo28369b = this.f17602w.mo28369b();
            this.f17587h = mo28369b;
            if (z) {
                abstractC5149q.mo33792ci(mo28369b);
            } else if (this.f17590k.f13077d) {
                AbstractC19108u0 abstractC19108u0 = this.f17592m;
                abstractC5149q.mo33805Fk(mo28369b, TimeUnit.MINUTES.toSeconds(TimeUnit.SECONDS.toMinutes(abstractC19108u0.mo14089c(abstractC19108u0.mo14088d(2)))));
            } else {
                boolean z2 = true;
                Long valueOf = Long.valueOf(this.f17592m.mo14088d(1));
                if (valueOf.longValue() <= 0) {
                    z2 = false;
                }
                if (!z2) {
                    valueOf = null;
                }
                abstractC5149q.mo33776xm(mo28369b, valueOf);
            }
        }
    }

    /* renamed from: Pj */
    public final void m33758Pj(boolean z, boolean z2) {
        AbstractC5149q abstractC5149q;
        Uri uri = this.f17587h;
        if (uri != null) {
            this.f17587h = null;
            if (z2) {
                m33767Jj(C25225a.m3962T1(new DraftUri(uri, z ? UriTypeHint.IMAGE : UriTypeHint.VIDEO, true)));
                return;
            }
            this.f17597r.mo14084b(uri);
            if (!this.f17583d.isEmpty() || (abstractC5149q = (AbstractC5149q) this.f57683a) == null) {
                return;
            }
            C10480a.m25950i0(abstractC5149q, false, 1, null);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: Q2 */
    public String[] mo33757Q2() {
        return (String[]) s1.u.i.t0(Entity.f13303f, Entity.f13302e);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00bd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x017a  */
    /* renamed from: Qj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m33756Qj(s1.w.d<? super java.util.Map<s1.k<p193e.p194a.p195a.p200c.p203c.C5139g, com.truecaller.messaging.data.types.Draft>, p193e.p194a.p195a.p223c1.AbstractC5843b.C5848e>> r9) {
        /*
            Method dump skipped, instructions count: 786
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p203c.C5150r.m33756Qj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01cd  */
    /* JADX WARN: Type inference failed for: r0v29, types: [e.a.a.k.t] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x01b9 -> B:40:0x01c0). Please submit an issue!!! */
    /* renamed from: Rj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m33755Rj(long r11, s1.w.d<? super s1.s> r13) {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p203c.C5150r.m33755Rj(long, s1.w.d):java.lang.Object");
    }

    /* renamed from: Sj */
    public final void m33754Sj() {
        this.f17584e = true;
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5158h(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5147o
    /* renamed from: T5 */
    public int mo33753T5() {
        return this.f17588i;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0193  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0178 -> B:33:0x0180). Please submit an issue!!! */
    /* renamed from: Tj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m33752Tj(s1.w.d<? super s1.s> r10) {
        /*
            Method dump skipped, instructions count: 1709
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p203c.C5150r.m33752Tj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x016e, code lost:
        if (r13 != false) goto L46;
     */
    /* renamed from: Uj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33751Uj(com.truecaller.messaging.mediaviewer.MediaPosition r9, p193e.p194a.p195a.p200c.p203c.C5139g r10) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p203c.C5150r.m33751Uj(com.truecaller.messaging.mediaviewer.MediaPosition, e.a.a.c.c.g):void");
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: Ve */
    public void mo33750Ve() {
        AbstractC5149q abstractC5149q = (AbstractC5149q) this.f57683a;
        if (abstractC5149q != null) {
            abstractC5149q.mo33804If(!this.f17585f);
        }
    }

    /* renamed from: Vj */
    public final void m33749Vj(int i, boolean z) {
        int size = this.f17583d.size();
        int i2 = this.f17588i;
        if (i2 >= 0 && size > i2) {
            C5139g c5139g = this.f17583d.get(i2);
            AbstractC5149q abstractC5149q = (AbstractC5149q) this.f57683a;
            String mo33789m1 = abstractC5149q != null ? abstractC5149q.mo33789m1() : null;
            if (mo33789m1 == null) {
                mo33789m1 = "";
            }
            c5139g.m33815a(mo33789m1);
            this.f17583d.get(this.f17588i).m33814b(this.f17605z.mo32829Ti());
        }
        this.f17588i = i;
        int size2 = this.f17583d.size();
        if (i < 0 || size2 <= i) {
            AbstractC5149q abstractC5149q2 = (AbstractC5149q) this.f57683a;
            if (abstractC5149q2 == null) {
                return;
            }
            C10480a.m25950i0(abstractC5149q2, false, 1, null);
            return;
        }
        C5139g c5139g2 = this.f17583d.get(this.f17588i);
        AbstractC5149q abstractC5149q3 = (AbstractC5149q) this.f57683a;
        if (abstractC5149q3 != null) {
            abstractC5149q3.setText(c5139g2.f17564b);
            abstractC5149q3.mo33784r2(c5139g2.f17563a.mo34892w());
            abstractC5149q3.mo33804If(false);
            abstractC5149q3.mo33793c0();
            if (z) {
                m33751Uj(MediaPosition.CURRENT, this.f17583d.get(i));
                m33751Uj(MediaPosition.PREVIOUS, i > 0 ? this.f17583d.get(i - 1) : null);
                m33751Uj(MediaPosition.NEXT, i < s1.u.i.F(this.f17583d) ? this.f17583d.get(i + 1) : null);
            }
            BinaryEntity binaryEntity = c5139g2.f17563a;
            abstractC5149q3.mo33794c(!(binaryEntity instanceof VideoEntity) ? null : this.f17601v.mo13768b(C2752R.string.draft_video_subtitle, this.f17603x.mo14276s(((VideoEntity) binaryEntity).f13482x), this.f17598s.m13755a(binaryEntity.f13175k)));
            int i3 = i;
            if (i == s1.u.i.F(this.f17583d)) {
                i3 = this.f17583d.size();
            }
            abstractC5149q3.scrollToPosition(i3);
        }
        this.f17605z.mo32821p4(c5139g2.f17565c, c5139g2.f17564b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0163, code lost:
        if (r5 != null) goto L61;
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.a.c.c.q] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo9029Y0(p193e.p194a.p195a.p200c.p203c.AbstractC5149q r5) {
        /*
            Method dump skipped, instructions count: 736
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p203c.C5150r.mo9029Y0(java.lang.Object):void");
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: Z */
    public void mo33748Z() {
        boolean z;
        if (this.f17583d.isEmpty() || this.f17588i >= this.f17583d.size() || this.f17584e) {
            return;
        }
        C5139g c5139g = this.f17583d.get(this.f17588i);
        AbstractC5149q abstractC5149q = (AbstractC5149q) this.f57683a;
        String mo33789m1 = abstractC5149q != null ? abstractC5149q.mo33789m1() : null;
        if (mo33789m1 == null) {
            mo33789m1 = "";
        }
        c5139g.m33815a(mo33789m1);
        this.f17583d.get(this.f17588i).m33814b(this.f17605z.mo32829Ti());
        if (C10480a.m25929m1(this.f17590k)) {
            DraftArguments draftArguments = this.f17590k;
            l.e(draftArguments, "$this$isScheduled");
            List<Draft> list = draftArguments.f13075b;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (Draft draft : list) {
                    if (draft.f13283r == 129) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (z) {
                s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5161s(this, null), 3, (Object) null);
                return;
            }
        }
        m33754Sj();
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: Z6 */
    public void mo33747Z6(boolean z) {
        m33758Pj(false, z);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: ac */
    public void mo33746ac(List<? extends Uri> list) {
        l.e(list, "uris");
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (Uri uri : list) {
            arrayList.add(new DraftUri(uri, UriTypeHint.UNKNOWN, false));
        }
        m33767Jj(arrayList);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: b1 */
    public void mo33745b1(Uri uri, String str, Runnable runnable) {
        l.e(uri, "uri");
        l.e(runnable, "releaseCallback");
        runnable.run();
        AbstractC5149q abstractC5149q = (AbstractC5149q) this.f57683a;
        if (abstractC5149q != null) {
            abstractC5149q.mo33796a(C2752R.string.operation_not_permitted);
        }
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        for (C5139g c5139g : this.f17583d) {
            this.f17597r.mo14085a(c5139g.f17563a);
        }
        Uri uri = this.f17587h;
        if (uri != null) {
            this.f17597r.mo14084b(uri);
        }
        super.mo9806c();
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6430n
    /* renamed from: fa */
    public void mo31243fa() {
        m33749Vj(this.f17588i - 1, false);
        int i = this.f17588i;
        if (i > 0) {
            m33751Uj(MediaPosition.PREVIOUS, this.f17583d.get(i - 1));
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: ga */
    public void mo33744ga(Uri uri) {
        if (uri == null) {
            return;
        }
        m33767Jj(C25225a.m3962T1(new DraftUri(uri, UriTypeHint.VCARD, false)));
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5639g.AbstractC5640a
    /* renamed from: h */
    public ImGroupInfo mo32836h() {
        Object obj;
        Iterator<T> it = this.f17590k.f13075b.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((Draft) obj).f13267b != null) {
                break;
            }
        }
        Draft draft = (Draft) obj;
        ImGroupInfo imGroupInfo = null;
        if (draft != null) {
            Conversation conversation = draft.f13267b;
            imGroupInfo = null;
            if (conversation != null) {
                imGroupInfo = conversation.f13224z;
            }
        }
        return imGroupInfo;
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: m */
    public void mo33743m() {
        AbstractC5149q abstractC5149q = (AbstractC5149q) this.f57683a;
        if (abstractC5149q != null) {
            C10480a.m25950i0(abstractC5149q, false, 1, null);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5144l
    /* renamed from: m9 */
    public void mo33742m9(int i) {
        if (i > s1.u.i.F(this.f17583d)) {
            m33760Nj(true);
        } else if (i == this.f17588i && C10480a.m25929m1(this.f17590k)) {
            m33760Nj(false);
        } else if (i != this.f17588i) {
            m33749Vj(i, true);
        } else if (this.f17584e) {
        } else {
            this.f17597r.mo14085a(this.f17583d.get(i).f17563a);
            this.f17583d.remove(i);
            this.f17588i = -1;
            AbstractC5149q abstractC5149q = (AbstractC5149q) this.f57683a;
            if (abstractC5149q != null) {
                abstractC5149q.mo33793c0();
            }
            if (i <= s1.u.i.F(this.f17583d)) {
                m33749Vj(i, true);
            } else if (i > 0) {
                m33749Vj(i - 1, true);
            } else {
                DraftMode draftMode = this.f17590k.f13074a;
                if (draftMode == DraftMode.CAPTURE_PHOTO) {
                    m33759Oj(true);
                } else if (draftMode == DraftMode.CAPTURE_VIDEO) {
                    m33759Oj(false);
                } else {
                    AbstractC5149q abstractC5149q2 = (AbstractC5149q) this.f57683a;
                    if (abstractC5149q2 == null) {
                        return;
                    }
                    C10480a.m25950i0(abstractC5149q2, false, 1, null);
                }
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: mh */
    public void mo33741mh() {
        AbstractC5149q abstractC5149q;
        int size = this.f17583d.size();
        int i = this.f17588i;
        if (i >= 0 && size > i && this.f17583d.get(i).f17563a.mo34892w() && (abstractC5149q = (AbstractC5149q) this.f57683a) != null) {
            abstractC5149q.mo33777xb();
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    public void onStart() {
        this.f17586g = true;
        int size = this.f17583d.size();
        int i = this.f17588i;
        if (i >= 0 && size > i) {
            m33749Vj(i, true);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    public void onStop() {
        AbstractC5149q abstractC5149q = (AbstractC5149q) this.f57683a;
        if (abstractC5149q != null) {
            abstractC5149q.mo33788n3();
        }
        this.f17586g = false;
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: pc */
    public void mo33740pc(boolean z, boolean z2) {
        this.f17585f = z;
        if (!z) {
            AbstractC5149q abstractC5149q = (AbstractC5149q) this.f57683a;
            if (abstractC5149q == null) {
                return;
            }
            abstractC5149q.mo33774z2(C2752R.C2753drawable.ic_media_player_play);
            return;
        }
        AbstractC5149q abstractC5149q2 = (AbstractC5149q) this.f57683a;
        if (abstractC5149q2 != null) {
            abstractC5149q2.mo33774z2(C2752R.C2753drawable.ic_media_player_pause);
        }
        AbstractC5149q abstractC5149q3 = (AbstractC5149q) this.f57683a;
        if (abstractC5149q3 != null) {
            abstractC5149q3.mo33784r2(z2);
        }
        if (!z2) {
            return;
        }
        AbstractC5149q abstractC5149q4 = (AbstractC5149q) this.f57683a;
        if (abstractC5149q4 != null) {
            abstractC5149q4.mo33804If(false);
        }
        AbstractC5149q abstractC5149q5 = (AbstractC5149q) this.f57683a;
        if (abstractC5149q5 == null) {
            return;
        }
        abstractC5149q5.mo33786oj();
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6430n
    /* renamed from: pf */
    public void mo31242pf() {
        m33749Vj(this.f17588i + 1, false);
        if (this.f17588i < s1.u.i.F(this.f17583d)) {
            m33751Uj(MediaPosition.NEXT, this.f17583d.get(this.f17588i + 1));
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: t */
    public void mo33739t() {
        this.f17596q.mo31134U3(true);
        m33754Sj();
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5148p
    /* renamed from: w */
    public void mo33738w() {
        this.f17596q.mo31134U3(false);
        m33754Sj();
    }
}
