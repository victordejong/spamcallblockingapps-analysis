package p193e.p194a.p195a.p198b;

import android.graphics.drawable.Drawable;
import com.truecaller.C2752R;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.InboxTab;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1342w4.AbstractC21204d;
import p193e.p194a.p1356x2.C21392b;
import p193e.p194a.p1405z2.AbstractC21847a;
import p193e.p194a.p195a.AbstractC7267u;
import p193e.p194a.p195a.p231g.AbstractC6116g0;
import p193e.p194a.p195a.p231g.C6159k;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6126a;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p751f4.p762g.AbstractC14015j;
import s1.g;
import s1.z.c.l;
import s1.z.c.m;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.b.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/b.class */
public final class C4940b extends AbstractC18894c<AbstractC4965k> implements AbstractC4963j {

    /* renamed from: b */
    public final g f16786b = C25225a.m3978P1(new C4941a(1, this));

    /* renamed from: c */
    public final g f16787c = C25225a.m3978P1(new C4941a(0, this));

    /* renamed from: d */
    public final AbstractC4961i f16788d;

    /* renamed from: e */
    public final AbstractC4973n f16789e;

    /* renamed from: f */
    public final AbstractC19022f0 f16790f;

    /* renamed from: g */
    public final AbstractC6394b f16791g;

    /* renamed from: h */
    public final AbstractC19233h0 f16792h;

    /* renamed from: i */
    public final AbstractC14015j f16793i;

    /* renamed from: j */
    public final AbstractC4959h f16794j;

    /* renamed from: k */
    public final C20592g f16795k;

    /* renamed from: l */
    public final AbstractC21204d f16796l;

    /* renamed from: m */
    public final AbstractC11476s1 f16797m;

    /* renamed from: n */
    public final InitiateCallHelper f16798n;

    /* renamed from: o */
    public final AbstractC19222c f16799o;

    /* renamed from: p */
    public final AbstractC21847a f16800p;

    /* renamed from: q */
    public final a<AbstractC6116g0> f16801q;

    /* renamed from: r */
    public final C21392b f16802r;

    /* renamed from: s */
    public final AbstractC6708t f16803s;

    /* renamed from: t */
    public final AbstractC7267u f16804t;

    /* renamed from: u */
    public final boolean f16805u;

    /* renamed from: e.a.a.b.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/a/b/b$a.class */
    public static final class C4941a extends m implements s1.z.b.a<Drawable> {

        /* renamed from: b */
        public final /* synthetic */ int f16806b;

        /* renamed from: c */
        public final /* synthetic */ Object f16807c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4941a(int i, Object obj) {
            super(0);
            this.f16806b = i;
            this.f16807c = obj;
        }

        public final Object invoke() {
            int i = this.f16806b;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                return ((C4940b) this.f16807c).f16792h.mo13763g(C2752R.attr.tcx_conversationListPinnedIcon);
            }
            return ((C4940b) this.f16807c).f16792h.mo13767c(C2752R.C2753drawable.ic_tcx_muted);
        }
    }

    @Inject
    public C4940b(AbstractC4961i abstractC4961i, AbstractC4973n abstractC4973n, AbstractC19022f0 abstractC19022f0, AbstractC6394b abstractC6394b, AbstractC19233h0 abstractC19233h0, @Named("inbox") AbstractC14015j abstractC14015j, AbstractC4959h abstractC4959h, C20592g c20592g, AbstractC21204d abstractC21204d, AbstractC11476s1 abstractC11476s1, InitiateCallHelper initiateCallHelper, AbstractC19222c abstractC19222c, AbstractC21847a abstractC21847a, a<AbstractC6116g0> aVar, C21392b c21392b, AbstractC6708t abstractC6708t, AbstractC7267u abstractC7267u, boolean z) {
        l.e(abstractC4961i, "conversationDataHolder");
        l.e(abstractC4973n, "actionModeHandler");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC6394b, "messageUtil");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC14015j, "bulkSearcher");
        l.e(abstractC4959h, "conversationActionHelper");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC21204d, "contactStalenessHelper");
        l.e(abstractC11476s1, "voipUtil");
        l.e(initiateCallHelper, "initiateCallHelper");
        l.e(abstractC19222c, "clock");
        l.e(abstractC21847a, "badgeHelper");
        l.e(aVar, "unreadThreadsCounter");
        l.e(c21392b, "conversationAvatarXConfigProvider");
        l.e(abstractC6708t, "transportManager");
        l.e(abstractC7267u, "inboxAvatarPresenterFactory");
        this.f16788d = abstractC4961i;
        this.f16789e = abstractC4973n;
        this.f16790f = abstractC19022f0;
        this.f16791g = abstractC6394b;
        this.f16792h = abstractC19233h0;
        this.f16793i = abstractC14015j;
        this.f16794j = abstractC4959h;
        this.f16795k = c20592g;
        this.f16796l = abstractC21204d;
        this.f16797m = abstractC11476s1;
        this.f16798n = initiateCallHelper;
        this.f16799o = abstractC19222c;
        this.f16800p = abstractC21847a;
        this.f16801q = aVar;
        this.f16802r = c21392b;
        this.f16803s = abstractC6708t;
        this.f16804t = abstractC7267u;
        this.f16805u = z;
    }

    /* renamed from: A */
    public final AbstractC6126a m34229A(int i) {
        AbstractC6126a mo34053f = this.f16788d.mo34053f();
        if (mo34053f != null) {
            mo34053f.moveToPosition(i);
        } else {
            mo34053f = null;
        }
        return mo34053f;
    }

    /* renamed from: B */
    public final boolean m34228B(Conversation conversation) {
        if (!this.f52996a && this.f16789e.mo34074P()) {
            this.f16788d.mo34082J(conversation);
            return true;
        }
        return true;
    }

    /* renamed from: C */
    public final boolean m34227C(Conversation conversation) {
        boolean z;
        if (C10480a.m26085C1(conversation)) {
            C6159k mo31771a = ((AbstractC6116g0) this.f16801q.get()).mo31771a();
            Boolean bool = null;
            if (mo31771a != null) {
                if (!(mo31771a.f20748a == this.f16788d.mo34068S5())) {
                    mo31771a = null;
                }
                bool = null;
                if (mo31771a != null) {
                    long j = mo31771a.f20750c;
                    b bVar = conversation.f13207i;
                    l.d(bVar, "date");
                    bool = Boolean.valueOf(j > ((e) bVar).a);
                }
            }
            if (!C12864a2.m22540r(bool)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x04ae  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x056a  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0574  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x06ba  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x06bc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x029f  */
    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo11464G(p193e.p194a.p195a.p198b.AbstractC4965k r13, int r14) {
        /*
            Method dump skipped, instructions count: 1820
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p198b.C4940b.mo11464G(java.lang.Object, int):void");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        AbstractC6126a mo34053f = this.f16788d.mo34053f();
        return mo34053f != null ? mo34053f.getCount() : 0;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        AbstractC6126a m34229A = m34229A(i);
        return m34229A != null ? m34229A.getId() : (char) 65535;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        AbstractC6126a m34229A = m34229A(c18900h.f53002b);
        boolean z = false;
        if (m34229A != null) {
            Conversation mo31752p = m34229A.mo31752p();
            z = false;
            if (mo31752p != null) {
                String str = c18900h.f53001a;
                switch (str.hashCode()) {
                    case -1743572928:
                        z = false;
                        if (str.equals("ItemEvent.CLICKED")) {
                            InboxTab mo34068S5 = this.f16788d.mo34068S5();
                            if (!this.f52996a) {
                                ImGroupInfo imGroupInfo = mo31752p.f13224z;
                                if (imGroupInfo == null || !C10480a.m25894t1(imGroupInfo)) {
                                    this.f16794j.mo34046q2(mo31752p, (this.f16805u && mo34068S5 == InboxTab.PERSONAL && mo31752p.f13218t == 1) ? 2 : mo34068S5.getConversationFilter());
                                } else {
                                    ImGroupInfo imGroupInfo2 = mo31752p.f13224z;
                                    if (imGroupInfo2 != null) {
                                        AbstractC4959h abstractC4959h = this.f16794j;
                                        l.d(imGroupInfo2, "it");
                                        abstractC4959h.mo34084I(imGroupInfo2);
                                    }
                                }
                                z = true;
                                break;
                            } else {
                                this.f16788d.mo34082J(mo31752p);
                                z = false;
                                break;
                            }
                        }
                        break;
                    case -1614871260:
                        z = false;
                        if (str.equals("ItemEvent.ACTION_AVATAR_CLICK")) {
                            if (this.f52996a) {
                                this.f16788d.mo34082J(mo31752p);
                            } else {
                                Participant[] participantArr = mo31752p.f13211m;
                                l.d(participantArr, "conversation.participants");
                                Participant[] participantArr2 = mo31752p.f13211m;
                                l.d(participantArr2, "conversation.participants");
                                if (C6405h.m31298f(participantArr2)) {
                                    ImGroupInfo imGroupInfo3 = mo31752p.f13224z;
                                    if (imGroupInfo3 != null && !C10480a.m25989a1(imGroupInfo3) && !C10480a.m25894t1(imGroupInfo3)) {
                                        this.f16794j.mo34059a1(mo31752p);
                                    }
                                } else {
                                    Participant[] participantArr3 = mo31752p.f13211m;
                                    l.d(participantArr3, "conversation.participants");
                                    if (!C6405h.m31299e(participantArr3)) {
                                        Object m3845s0 = C25225a.m3845s0(participantArr);
                                        l.d(m3845s0, "participants.first()");
                                        if (C6405h.m31303a((Participant) m3845s0)) {
                                            Participant participant = (Participant) C25225a.m3845s0(participantArr);
                                            AbstractC4959h abstractC4959h2 = this.f16794j;
                                            long j = mo31752p.f13199a;
                                            String str2 = participant.f11572e;
                                            l.d(str2, "normalizedAddress");
                                            abstractC4959h2.mo34091Bl(j, str2, participant.f11571d, participant.f11579l, participant.f11574g, participant.m35447m(), mo31752p.f13188C, participant.m35448l());
                                        }
                                    }
                                    Participant[] participantArr4 = mo31752p.f13211m;
                                    l.d(participantArr4, "conversation.participants");
                                    if (C6405h.m31299e(participantArr4)) {
                                        this.f16794j.mo34059a1(mo31752p);
                                    }
                                }
                            }
                            z = true;
                            break;
                        }
                        break;
                    case -1314591573:
                        z = false;
                        if (str.equals("ItemEvent.LONG_CLICKED")) {
                            m34228B(mo31752p);
                            z = true;
                            break;
                        }
                        break;
                    case 246867005:
                        z = false;
                        if (str.equals("ItemEvent.ACTION_BUTTON_CLICK")) {
                            Object obj = c18900h.f53005e;
                            Object obj2 = obj;
                            if (!(obj instanceof ListItemX.Action)) {
                                obj2 = null;
                            }
                            ListItemX.Action action = (ListItemX.Action) obj2;
                            if (action != null) {
                                int ordinal = action.ordinal();
                                if (ordinal == 0) {
                                    InitiateCallHelper initiateCallHelper = this.f16798n;
                                    String str3 = mo31752p.f13211m[0].f11572e;
                                    l.e("inbox", "analyticsContext");
                                    initiateCallHelper.m35744b(new InitiateCallHelper.CallOptions(str3, "inbox", null, null, false, false, null, true, InitiateCallHelper.CallContextOption.ShowOnBoarded.a));
                                } else if (ordinal != 4) {
                                    z = false;
                                    break;
                                } else {
                                    AbstractC11476s1 abstractC11476s1 = this.f16797m;
                                    String str4 = mo31752p.f13211m[0].f11572e;
                                    l.d(str4, "conversation.participants[0].normalizedAddress");
                                    abstractC11476s1.mo24623a(str4, "inbox");
                                }
                                z = true;
                                break;
                            } else {
                                z = false;
                                break;
                            }
                        }
                        break;
                    case 2040553385:
                        z = false;
                        if (str.equals("ItemEvent.ACTION_AVATAR_LONG_CLICK")) {
                            m34228B(mo31752p);
                            z = true;
                            break;
                        }
                        break;
                    default:
                        z = false;
                        break;
                }
            }
        }
        return z;
    }
}
