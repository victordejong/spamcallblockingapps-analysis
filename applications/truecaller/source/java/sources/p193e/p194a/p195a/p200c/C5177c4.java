package p193e.p194a.p195a.p200c;

import android.net.Uri;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationMode;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import e.m.d.y.n;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.C19103t;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1405z2.AbstractC21847a;
import p193e.p194a.p195a.p200c.AbstractC5108b4;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p195a.p244k.p245a.AbstractC6598o0;
import p193e.p194a.p195a.p244k.p245a.AbstractC6601p0;
import p193e.p194a.p195a.p244k.p245a.C6654z1;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p837h0.AbstractC14840m;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.c.c4 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c4.class */
public final class C5177c4 extends AbstractC20574a<AbstractC5239e4> implements AbstractC5108b4, AbstractC6598o0 {

    /* renamed from: A */
    public final f f17750A;

    /* renamed from: B */
    public final AbstractC19222c f17751B;

    /* renamed from: d */
    public C6654z1 f17752d;

    /* renamed from: e */
    public int f17753e;

    /* renamed from: f */
    public String f17754f;

    /* renamed from: g */
    public AbstractC19844a f17755g;

    /* renamed from: h */
    public int f17756h;

    /* renamed from: i */
    public Uri f17757i;

    /* renamed from: j */
    public boolean f17758j;

    /* renamed from: k */
    public final AbstractC5524m5 f17759k;

    /* renamed from: l */
    public final AbstractC5276f4 f17760l;

    /* renamed from: m */
    public final boolean f17761m;

    /* renamed from: n */
    public final boolean f17762n;

    /* renamed from: o */
    public final boolean f17763o;

    /* renamed from: p */
    public final C20592g f17764p;

    /* renamed from: q */
    public final a<AbstractC5108b4.AbstractC5109a> f17765q;

    /* renamed from: r */
    public final AbstractC6601p0 f17766r;

    /* renamed from: s */
    public final AbstractC19233h0 f17767s;

    /* renamed from: t */
    public final AbstractC14840m f17768t;

    /* renamed from: u */
    public final AbstractC17405c f17769u;

    /* renamed from: v */
    public final AbstractC19854f<AbstractC6485m> f17770v;

    /* renamed from: w */
    public final AbstractC19868j f17771w;

    /* renamed from: x */
    public final AbstractC21847a f17772x;

    /* renamed from: y */
    public final AbstractC6489q f17773y;

    /* renamed from: z */
    public final AbstractC19022f0 f17774z;

    /* renamed from: e.a.a.c.c4$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c4$a.class */
    public static final class C5178a<R> implements AbstractC19851d0<Integer> {
        public C5178a() {
            C5177c4.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Integer num) {
            Integer num2 = num;
            C5177c4 c5177c4 = C5177c4.this;
            c5177c4.f17756h = num2 != null ? num2.intValue() : 0;
            c5177c4.m33686Kj();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5177c4(AbstractC5524m5 abstractC5524m5, AbstractC5276f4 abstractC5276f4, @Named("IsHiddenNumberIntent") boolean z, @Named("IsBubbleIntent") boolean z2, @Named("IsUrgentIntent") boolean z3, C20592g c20592g, a<AbstractC5108b4.AbstractC5109a> aVar, AbstractC6601p0 abstractC6601p0, AbstractC19233h0 abstractC19233h0, AbstractC14840m abstractC14840m, AbstractC17405c abstractC17405c, AbstractC19854f<AbstractC6485m> abstractC19854f, @Named("UiThread") AbstractC19868j abstractC19868j, AbstractC21847a abstractC21847a, AbstractC6489q abstractC6489q, AbstractC19022f0 abstractC19022f0, @Named("UI") f fVar, AbstractC19222c abstractC19222c) {
        super(fVar);
        l.e(abstractC5524m5, "conversationState");
        l.e(abstractC5276f4, "inputPresenter");
        l.e(c20592g, "featuresRegistry");
        l.e(aVar, "listener");
        l.e(abstractC6601p0, "imTypingManager");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC14840m, "filterSettings");
        l.e(abstractC17405c, "availabilityManager");
        l.e(abstractC19854f, "imGroupManager");
        l.e(abstractC19868j, "uiThread");
        l.e(abstractC21847a, "badgeHelper");
        l.e(abstractC6489q, "imGroupUtil");
        l.e(abstractC19022f0, "deviceManager");
        l.e(fVar, "uiContext");
        l.e(abstractC19222c, "clock");
        this.f17759k = abstractC5524m5;
        this.f17760l = abstractC5276f4;
        this.f17761m = z;
        this.f17762n = z2;
        this.f17763o = z3;
        this.f17764p = c20592g;
        this.f17765q = aVar;
        this.f17766r = abstractC6601p0;
        this.f17767s = abstractC19233h0;
        this.f17768t = abstractC14840m;
        this.f17769u = abstractC17405c;
        this.f17770v = abstractC19854f;
        this.f17771w = abstractC19868j;
        this.f17772x = abstractC21847a;
        this.f17773y = abstractC6489q;
        this.f17774z = abstractC19022f0;
        this.f17750A = fVar;
        this.f17751B = abstractC19222c;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5108b4
    /* renamed from: C */
    public void mo33690C() {
        m33689Ij();
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6598o0
    /* renamed from: G6 */
    public void mo30688G6(String str, C6654z1 c6654z1) {
        Participant participant;
        l.e(str, "imPeerId");
        if (this.f17759k.mo32861d1()) {
            return;
        }
        Participant[] m33687Jj = m33687Jj();
        if (!l.a((m33687Jj == null || (participant = (Participant) C25225a.m3830v0(m33687Jj)) == null) ? null : participant.f11570c, str)) {
            return;
        }
        this.f17752d = c6654z1;
        m33686Kj();
    }

    /* renamed from: Ij */
    public final void m33689Ij() {
        ImGroupInfo mo32857h;
        AbstractC19844a abstractC19844a = this.f17755g;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
        }
        this.f17755g = null;
        if (this.f57683a == 0 || (mo32857h = this.f17759k.mo32857h()) == null) {
            return;
        }
        if (C10480a.m25989a1(mo32857h)) {
            m33686Kj();
        } else {
            this.f17755g = this.f17770v.mo11854a().mo30888l(mo32857h.f13319a).mo11830e(this.f17771w, new C5178a());
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5108b4
    /* renamed from: J9 */
    public void mo33688J9() {
        m33689Ij();
        m33685Lj();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        if ((!(r4.length == 0)) != false) goto L11;
     */
    /* renamed from: Jj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.data.entity.messaging.Participant[] m33687Jj() {
        /*
            r3 = this;
            r0 = r3
            e.a.a.c.m5 r0 = r0.f17759k
            com.truecaller.data.entity.messaging.Participant[] r0 = r0.mo32852o()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L23
            r0 = r4
            int r0 = r0.length
            if (r0 != 0) goto L18
            r0 = 1
            r5 = r0
            goto L1a
        L18:
            r0 = 0
            r5 = r0
        L1a:
            r0 = r5
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L23
            goto L25
        L23:
            r0 = 0
            r4 = r0
        L25:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5177c4.m33687Jj():com.truecaller.data.entity.messaging.Participant[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
        if (r14 != null) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0309  */
    /* renamed from: Kj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33686Kj() {
        /*
            Method dump skipped, instructions count: 867
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5177c4.m33686Kj():void");
    }

    /* renamed from: Lj */
    public final void m33685Lj() {
        Uri uri;
        AvatarXConfig avatarXConfig;
        Participant participant;
        AbstractC5239e4 abstractC5239e4;
        AbstractC5239e4 abstractC5239e42;
        Boolean bool;
        boolean z;
        Conversation mo32851p = this.f17759k.mo32851p();
        Participant[] m33687Jj = m33687Jj();
        if (m33687Jj != null) {
            int i = 2131232589;
            String str = "";
            if (C6405h.m31298f(m33687Jj)) {
                ImGroupInfo imGroupInfo = mo32851p != null ? mo32851p.f13224z : null;
                if (imGroupInfo != null) {
                    AbstractC5239e4 abstractC5239e43 = (AbstractC5239e4) this.f57683a;
                    if (abstractC5239e43 != null) {
                        String str2 = imGroupInfo.f13320b;
                        if (str2 != null) {
                            str = str2;
                        }
                        l.d(str, "StringUtils.defaultString(groupInfo.title)");
                        abstractC5239e43.mo32419sa(str);
                    }
                    String str3 = imGroupInfo.f13321c;
                    Uri parse = str3 != null ? Uri.parse(str3) : null;
                    AbstractC5239e4 abstractC5239e44 = (AbstractC5239e4) this.f57683a;
                    uri = parse;
                    if (abstractC5239e44 != null) {
                        if (!C10480a.m25879w1(imGroupInfo)) {
                            i = 0;
                        }
                        abstractC5239e44.mo32506Qt(i, true);
                        uri = parse;
                    }
                } else {
                    AbstractC5239e4 abstractC5239e45 = (AbstractC5239e4) this.f57683a;
                    if (abstractC5239e45 != null) {
                        AbstractC6489q abstractC6489q = this.f17773y;
                        String str4 = m33687Jj[0].f11572e;
                        l.d(str4, "participants[0].normalizedAddress");
                        abstractC5239e45.mo32419sa(abstractC6489q.mo30870e(str4));
                    }
                    AbstractC5239e4 abstractC5239e46 = (AbstractC5239e4) this.f57683a;
                    if (abstractC5239e46 != null) {
                        abstractC5239e46.mo32506Qt(0, false);
                    }
                    uri = null;
                }
            } else {
                AbstractC5239e4 abstractC5239e47 = (AbstractC5239e4) this.f57683a;
                if (abstractC5239e47 != null) {
                    String str5 = this.f17754f;
                    if (str5 != null) {
                        str = str5;
                    }
                    l.d(str, "StringUtils.defaultString(getParticipantsText())");
                    abstractC5239e47.mo32419sa(str);
                }
                Uri uri2 = this.f17757i;
                boolean m22540r = C12864a2.m22540r(mo32851p != null ? Boolean.valueOf(C10480a.m25884v1(mo32851p, this.f17751B.mo13819c())) : null);
                AbstractC5239e4 abstractC5239e48 = (AbstractC5239e4) this.f57683a;
                uri = uri2;
                if (abstractC5239e48 != null) {
                    if (!m22540r) {
                        i = 0;
                    }
                    abstractC5239e48.mo32506Qt(i, false);
                    uri = uri2;
                }
            }
            Participant[] m33687Jj2 = m33687Jj();
            if (m33687Jj2 != null) {
                Participant participant2 = m33687Jj2[0];
                boolean m31299e = C6405h.m31299e(m33687Jj2);
                int m14107f = !m31299e ? C19103t.m14107f(participant2.f11585r, participant2.f11588u) : 0;
                String str6 = participant2.f11572e;
                ImGroupInfo mo32857h = this.f17759k.mo32857h();
                String str7 = mo32857h != null ? mo32857h.f13319a : null;
                String N = m31299e ? null : n.N(m33687Jj2);
                boolean z2 = this.f17759k.getFilter() == 3;
                Participant[] m33687Jj3 = m33687Jj();
                if (m33687Jj3 != null) {
                    int length = m33687Jj3.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            z = false;
                            break;
                        }
                        Participant participant3 = m33687Jj3[i2];
                        String str8 = participant3.f11572e;
                        l.d(str8, "it.normalizedAddress");
                        int m28330K = C8582g0.m28330K(str8);
                        String str9 = participant3.f11572e;
                        l.d(str9, "it.normalizedAddress");
                        if (C8582g0.m28317c(str9, participant3.f11569b, m28330K)) {
                            z = true;
                            break;
                        }
                        i2++;
                    }
                    bool = Boolean.valueOf(z);
                } else {
                    bool = null;
                }
                avatarXConfig = new AvatarXConfig(uri, str6, str7, N, z2, m31299e, C12864a2.m22540r(bool), false, m14107f == 4, m14107f == 32, m14107f == 128, m14107f == 256, m14107f == 16, true, null, false, 49152);
            } else {
                avatarXConfig = null;
            }
            if (avatarXConfig != null && (abstractC5239e42 = (AbstractC5239e4) this.f57683a) != null) {
                abstractC5239e42.mo32411v1(avatarXConfig);
            }
            if (this.f17759k.mo32868G() == ConversationMode.SCHEDULE) {
                AbstractC5239e4 abstractC5239e49 = (AbstractC5239e4) this.f57683a;
                if (abstractC5239e49 == null) {
                    return;
                }
                String mo13768b = this.f17767s.mo13768b(C2752R.string.ConversationScheduledMessages, new Object[0]);
                l.d(mo13768b, "resourceProvider.getStri…rsationScheduledMessages)");
                abstractC5239e49.mo32419sa(mo13768b);
                return;
            }
            int length2 = m33687Jj.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length2) {
                    participant = null;
                    break;
                }
                participant = m33687Jj[i3];
                if (this.f17772x.mo8991d(participant)) {
                    break;
                }
                i3++;
            }
            if (participant == null || (abstractC5239e4 = (AbstractC5239e4) this.f57683a) == null) {
                return;
            }
            abstractC5239e4.mo32467e4();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5108b4
    /* renamed from: Qc */
    public void mo33684Qc(Participant[] participantArr) {
        Uri uri;
        AbstractC5239e4 abstractC5239e4;
        l.e(participantArr, "participants");
        this.f17754f = C10480a.m26073F1(participantArr);
        boolean m31298f = C6405h.m31298f(participantArr);
        if (participantArr.length != 1 || m31298f) {
            uri = null;
        } else {
            Participant participant = participantArr[0];
            uri = this.f17774z.mo14235k(participant.f11582o, participant.f11580m, true);
        }
        this.f17757i = uri;
        if (!m31298f && (abstractC5239e4 = (AbstractC5239e4) this.f57683a) != null) {
            abstractC5239e4.mo32398xs(null);
        }
        m33686Kj();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.a.c.e4] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC5239e4 abstractC5239e4) {
        AbstractC5239e4 abstractC5239e42 = abstractC5239e4;
        l.e(abstractC5239e42, "presenterView");
        this.f57683a = abstractC5239e42;
        this.f17766r.mo30678e(this);
        abstractC5239e42.mo32483Wo(!this.f17762n || this.f17763o);
        abstractC5239e42.mo32479Yd(!this.f17763o);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6598o0
    /* renamed from: Yh */
    public void mo30687Yh(String str, C6654z1 c6654z1) {
        l.e(str, "imGroupId");
        Participant[] m33687Jj = m33687Jj();
        if (m33687Jj == null || !C6405h.m31298f(m33687Jj) || (!l.a(str, m33687Jj[0].f11572e))) {
            return;
        }
        this.f17752d = c6654z1;
        m33686Kj();
        m33685Lj();
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        this.f17766r.mo30677f(this);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5108b4
    /* renamed from: hi */
    public void mo33683hi() {
        AbstractC5239e4 abstractC5239e4;
        AbstractC5239e4 abstractC5239e42;
        Participant[] m33687Jj = m33687Jj();
        if (m33687Jj != null) {
            if (C6405h.m31298f(m33687Jj)) {
                ((AbstractC5108b4.AbstractC5109a) this.f17765q.get()).mo33503l0();
            } else if (m33687Jj.length == 1) {
                Participant participant = (Participant) C25225a.m3845s0(m33687Jj);
                if (!C6405h.m31303a(participant) || (abstractC5239e42 = (AbstractC5239e4) this.f57683a) == null) {
                    return;
                }
                String str = participant.f11572e;
                l.d(str, "participant.normalizedAddress");
                String str2 = participant.f11571d;
                String str3 = participant.f11579l;
                String str4 = participant.f11574g;
                Conversation mo32851p = this.f17759k.mo32851p();
                abstractC5239e42.mo32528Kr(str, str2, str3, str4, mo32851p != null ? mo32851p.f13188C : this.f17761m, this.f17760l.mo33325d1());
            } else if (m33687Jj.length <= 1) {
            } else {
                Conversation mo32851p2 = this.f17759k.mo32851p();
                Participant[] m33687Jj2 = m33687Jj();
                if (mo32851p2 != null) {
                    AbstractC5239e4 abstractC5239e43 = (AbstractC5239e4) this.f57683a;
                    if (abstractC5239e43 == null) {
                        return;
                    }
                    abstractC5239e43.mo32475a1(mo32851p2);
                } else if (m33687Jj2 == null || (abstractC5239e4 = (AbstractC5239e4) this.f57683a) == null) {
                } else {
                    Conversation.C4191b c4191b = new Conversation.C4191b();
                    c4191b.f13237a = -1L;
                    List m3897h3 = C25225a.m3897h3(m33687Jj2);
                    c4191b.f13249m.clear();
                    c4191b.f13249m.addAll(m3897h3);
                    Conversation m35063b = c4191b.m35063b();
                    l.d(m35063b, "Conversation.Builder()\n …                 .build()");
                    abstractC5239e4.mo32475a1(m35063b);
                }
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5108b4
    public void onStart() {
        this.f17769u.mo9925I1();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5108b4
    public void onStop() {
        this.f17769u.mo9924Y();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5108b4
    /* renamed from: qa */
    public String mo33682qa() {
        return this.f17754f;
    }
}
