package p193e.p194a.p195a.p223c1;

import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Message;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p195a.p223c1.AbstractC5840a;
import p193e.p194a.p195a.p223c1.AbstractC5851c;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p244k.AbstractC6704q;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p284w0.AbstractC7290a;
import p193e.p194a.p437c.p578p.C10480a;
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
/* renamed from: e.a.a.c1.m */
/* loaded from: classes7-dex2jar.jar:e/a/a/c1/m.class */
public final class C5866m implements AbstractC5865l {

    /* renamed from: a */
    public final AbstractC6708t f19620a;

    /* renamed from: b */
    public final AbstractC7290a f19621b;

    /* renamed from: c */
    public final AbstractC19510i0 f19622c;

    /* renamed from: d */
    public final a<AbstractC19854f<AbstractC6233m>> f19623d;

    /* renamed from: e */
    public final a<AbstractC6248w> f19624e;

    @e(c = "com.truecaller.messaging.sending.DraftTransportWrapperImpl$editDraft$messageToEdit$1", f = "DraftTransportWrapper.kt", l = {Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED}, m = "invokeSuspend")
    /* renamed from: e.a.a.c1.m$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/c1/m$a.class */
    public static final class C5867a extends i implements p<i0, d<? super Message>, Object> {

        /* renamed from: e */
        public int f19625e;

        /* renamed from: g */
        public final /* synthetic */ b0 f19627g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5867a(b0 b0Var, d dVar) {
            super(2, dVar);
            C5866m.this = r5;
            this.f19627g = b0Var;
        }

        /* renamed from: i */
        public final d<s> m32318i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5867a(this.f19627g, dVar);
        }

        /* renamed from: k */
        public final Object m32317k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5867a(this.f19627g, dVar).m32316s(s.a);
        }

        /* renamed from: s */
        public final Object m32316s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f19625e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6248w abstractC6248w = (AbstractC6248w) C5866m.this.f19624e.get();
                long j = this.f19627g.a;
                this.f19625e = 1;
                Object mo31579D = abstractC6248w.mo31579D(j, this);
                obj = mo31579D;
                if (mo31579D == aVar) {
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

    @e(c = "com.truecaller.messaging.sending.DraftTransportWrapperImpl$scheduleDrafts$messageToEdit$1", f = "DraftTransportWrapper.kt", l = {90}, m = "invokeSuspend")
    /* renamed from: e.a.a.c1.m$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/c1/m$b.class */
    public static final class C5868b extends i implements p<i0, d<? super Message>, Object> {

        /* renamed from: e */
        public int f19628e;

        /* renamed from: g */
        public final /* synthetic */ b0 f19630g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5868b(b0 b0Var, d dVar) {
            super(2, dVar);
            C5866m.this = r5;
            this.f19630g = b0Var;
        }

        /* renamed from: i */
        public final d<s> m32315i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5868b(this.f19630g, dVar);
        }

        /* renamed from: k */
        public final Object m32314k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5868b(this.f19630g, dVar).m32313s(s.a);
        }

        /* renamed from: s */
        public final Object m32313s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f19628e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6248w abstractC6248w = (AbstractC6248w) C5866m.this.f19624e.get();
                long j = this.f19630g.a;
                this.f19628e = 1;
                Object mo31579D = abstractC6248w.mo31579D(j, this);
                obj = mo31579D;
                if (mo31579D == aVar) {
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

    @Inject
    public C5866m(AbstractC6708t abstractC6708t, AbstractC7290a abstractC7290a, AbstractC19510i0 abstractC19510i0, a<AbstractC19854f<AbstractC6233m>> aVar, a<AbstractC6248w> aVar2) {
        l.e(abstractC6708t, "transportManager");
        l.e(abstractC7290a, "messagesMonitor");
        l.e(abstractC19510i0, "messageAnalytics");
        l.e(aVar, "messagesStorage");
        l.e(aVar2, "readMessageStorage");
        this.f19620a = abstractC6708t;
        this.f19621b = abstractC7290a;
        this.f19622c = abstractC19510i0;
        this.f19623d = aVar;
        this.f19624e = aVar2;
    }

    @Override // p193e.p194a.p195a.p223c1.AbstractC5865l
    /* renamed from: a */
    public AbstractC19891x<AbstractC5840a> mo32321a(Draft draft, String str, boolean z, String str2) {
        s1.u.s sVar = s1.u.s.a;
        l.e(draft, "draft");
        l.e(str, "simToken");
        l.e(str2, "analyticsContext");
        ArrayList arrayList = new ArrayList();
        if (draft.m35060c()) {
            b0 b0Var = new b0();
            Long valueOf = Long.valueOf(draft.f13282q);
            if (!(valueOf.longValue() != -1)) {
                valueOf = null;
            }
            if (valueOf == null) {
                AbstractC19891x<AbstractC5840a> m11834h = AbstractC19891x.m11834h(new AbstractC5840a.C5842b(sVar, draft));
                l.d(m11834h, "Promise.wrap(DraftEditRe…iled(emptyList(), draft))");
                return m11834h;
            }
            b0Var.a = valueOf.longValue();
            Message message = (Message) s1.a.a.a.v0.f.d.c3((f) null, new C5867a(b0Var, null), 1, (Object) null);
            if (message == null) {
                AbstractC19891x<AbstractC5840a> m11834h2 = AbstractC19891x.m11834h(new AbstractC5840a.C5842b(sVar, draft));
                l.d(m11834h2, "Promise.wrap(DraftEditRe…iled(emptyList(), draft))");
                return m11834h2;
            } else if (message.f13386g != 129) {
                AbstractC19891x<AbstractC5840a> m11834h3 = AbstractC19891x.m11834h(new AbstractC5840a.C5842b(sVar, draft));
                l.d(m11834h3, "Promise.wrap(DraftEditRe…iled(emptyList(), draft))");
                return m11834h3;
            } else {
                Draft m32319c = m32319c(message, draft, str2);
                if (m32319c != null) {
                    Message m35062a = m32319c.m35062a(str, str2);
                    l.d(m35062a, "saved.buildMessage(simToken, analyticsContext)");
                    Message mo11831c = this.f19620a.mo30563B(m35062a).mo11831c();
                    if (mo11831c != null) {
                        arrayList.add(new k(m32319c, mo11831c));
                    }
                    this.f19621b.mo29838j(C10480a.m25981c(m32319c, message));
                }
            }
        }
        AbstractC19891x<AbstractC5840a> m11834h4 = AbstractC19891x.m11834h(new AbstractC5840a.C5841a(arrayList));
        l.d(m11834h4, "Promise.wrap(DraftEditRe…(editedDraftMessageList))");
        return m11834h4;
    }

    @Override // p193e.p194a.p195a.p223c1.AbstractC5865l
    /* renamed from: b */
    public AbstractC19891x<AbstractC5851c> mo32320b(List<Draft> list, String str, boolean z, boolean z2, String str2, long j) {
        Draft m32319c;
        l.e(list, "draftsList");
        l.e(str, "simToken");
        l.e(str2, "analyticsContext");
        if (list.isEmpty()) {
            AbstractC19891x<AbstractC5851c> m11834h = AbstractC19891x.m11834h(null);
            l.d(m11834h, "Promise.wrap(null)");
            return m11834h;
        }
        ArrayList arrayList = new ArrayList();
        for (Draft draft : list) {
            if (draft.m35060c()) {
                b0 b0Var = new b0();
                Long valueOf = Long.valueOf(draft.f13282q);
                if (!(valueOf.longValue() != -1)) {
                    valueOf = null;
                }
                if (valueOf != null) {
                    b0Var.a = valueOf.longValue();
                    Message message = (Message) s1.a.a.a.v0.f.d.c3((f) null, new C5868b(b0Var, null), 1, (Object) null);
                    if (message != null && (m32319c = m32319c(message, draft, str2)) != null) {
                        Message m35062a = m32319c.m35062a(str, str2);
                        l.d(m35062a, "saved.buildMessage(simToken, analyticsContext)");
                        Message mo11831c = this.f19620a.mo30547o(m35062a).mo11831c();
                        if (mo11831c != null) {
                            arrayList.add(new k(m32319c, mo11831c));
                        }
                        this.f19621b.mo29838j(C10480a.m25981c(m32319c, message));
                    }
                }
            } else {
                Message.C4209b m35024b = draft.m35062a(str, str2).m35024b();
                m35024b.m35004i(j);
                m35024b.f13415J = draft.f13277l;
                m35024b.f13417L = draft.f13280o;
                Message m35012a = m35024b.m35012a();
                l.d(m35012a, "draft.buildMessage(simTo…\n                .build()");
                int i = draft.f13279n;
                boolean z3 = i != 3 ? i == 0 : !z;
                AbstractC6708t abstractC6708t = this.f19620a;
                BinaryEntity[] binaryEntityArr = draft.f13272g;
                l.d(binaryEntityArr, "draft.media");
                int mo30548n = abstractC6708t.mo30548n(!(binaryEntityArr.length == 0), draft.f13270e, z3);
                AbstractC7290a abstractC7290a = this.f19621b;
                String str3 = draft.f13274i;
                Participant[] participantArr = draft.f13270e;
                l.d(participantArr, "draft.participants");
                BinaryEntity[] binaryEntityArr2 = draft.f13272g;
                l.d(binaryEntityArr2, "draft.media");
                abstractC7290a.mo29839i(str3, str2, mo30548n, participantArr, binaryEntityArr2, draft.f13273h);
                Message mo11831c2 = this.f19620a.mo30560b(m35012a, draft.f13270e, z2, z3).mo11831c();
                if (mo30548n == 2) {
                    AbstractC19510i0 abstractC19510i0 = this.f19622c;
                    String str4 = draft.f13274i;
                    l.d(str4, "draft.analyticsId");
                    Participant[] participantArr2 = draft.f13270e;
                    l.d(participantArr2, "draft.participants");
                    String str5 = draft.f13268c;
                    l.d(str5, "draft.text");
                    boolean z4 = str5.length() == 0;
                    BinaryEntity[] binaryEntityArr3 = draft.f13272g;
                    l.d(binaryEntityArr3, "draft.media");
                    BinaryEntity binaryEntity = (BinaryEntity) C25225a.m3830v0(binaryEntityArr3);
                    abstractC19510i0.mo13209q(str2, str4, participantArr2, !z4, binaryEntity != null ? binaryEntity.f13307b : null);
                } else {
                    AbstractC6704q mo30539x = this.f19620a.mo30539x(mo30548n);
                    l.d(mo30539x, "transportManager.getTransport(transportType)");
                    String name = mo30539x.getName();
                    l.d(name, "transportManager.getTransport(transportType).name");
                    AbstractC19510i0 abstractC19510i02 = this.f19622c;
                    String str6 = draft.f13274i;
                    l.d(str6, "draft.analyticsId");
                    Participant[] participantArr3 = draft.f13270e;
                    l.d(participantArr3, "draft.participants");
                    abstractC19510i02.mo13207s(str2, str6, name, participantArr3);
                }
                if (mo11831c2 == null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : list) {
                        Draft draft2 = (Draft) obj;
                        ArrayList arrayList3 = new ArrayList(C25225a.m4004J(arrayList, 10));
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            arrayList3.add((Draft) ((k) it.next()).a);
                        }
                        if (!arrayList3.contains(draft2)) {
                            arrayList2.add(obj);
                        }
                    }
                    AbstractC19891x<AbstractC5851c> m11834h2 = AbstractC19891x.m11834h(new AbstractC5851c.C5852a(arrayList2, draft));
                    l.d(m11834h2, "Promise.wrap(DraftSchedu…p { it.first } }, draft))");
                    return m11834h2;
                }
                arrayList.add(new k(draft, mo11831c2));
            }
        }
        AbstractC19891x<AbstractC5851c> m11834h3 = AbstractC19891x.m11834h(new AbstractC5851c.C5853b(arrayList));
        l.d(m11834h3, "Promise.wrap(DraftSchedu…heduledDraftMessageList))");
        return m11834h3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x01d9, code lost:
        if (r5 != null) goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0181 A[SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.messaging.data.types.Draft m32319c(com.truecaller.messaging.data.types.Message r5, com.truecaller.messaging.data.types.Draft r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p223c1.C5866m.m32319c(com.truecaller.messaging.data.types.Message, com.truecaller.messaging.data.types.Draft, java.lang.String):com.truecaller.messaging.data.types.Draft");
    }
}
