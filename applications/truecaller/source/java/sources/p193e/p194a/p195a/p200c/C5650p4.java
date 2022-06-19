package p193e.p194a.p195a.p200c;

import android.view.Menu;
import android.view.MenuItem;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationMode;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import io.agora.rtc.Constants;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.AbstractC5583n4;
import p193e.p194a.p195a.p200c.p201a.AbstractC5027g;
import p193e.p194a.p195a.p200c.p201a.AbstractC5040n;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p552i.p557e.AbstractC10330c;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.c.p4 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/p4.class */
public final class C5650p4 extends AbstractC20574a<AbstractC5688r4> implements AbstractC5583n4 {

    /* renamed from: A */
    public final AbstractC6392i0 f18976A;

    /* renamed from: B */
    public final boolean f18977B;

    /* renamed from: C */
    public final AbstractC6394b f18978C;

    /* renamed from: d */
    public boolean f18979d;

    /* renamed from: e */
    public final f f18980e;

    /* renamed from: f */
    public final AbstractC5524m5 f18981f;

    /* renamed from: g */
    public final AbstractC5719s4 f18982g;

    /* renamed from: h */
    public final AbstractC11476s1 f18983h;

    /* renamed from: i */
    public final a<AbstractC5583n4.AbstractC5584a> f18984i;

    /* renamed from: j */
    public final AbstractC5687r3 f18985j;

    /* renamed from: k */
    public final AbstractC19233h0 f18986k;

    /* renamed from: l */
    public final a<AbstractC6248w> f18987l;

    /* renamed from: m */
    public final AbstractC19868j f18988m;

    /* renamed from: n */
    public final boolean f18989n;

    /* renamed from: o */
    public final boolean f18990o;

    /* renamed from: p */
    public final boolean f18991p;

    /* renamed from: q */
    public final C20592g f18992q;

    /* renamed from: r */
    public final AbstractC19854f<AbstractC6485m> f18993r;

    /* renamed from: s */
    public final AbstractC5108b4 f18994s;

    /* renamed from: t */
    public final AbstractC9691j f18995t;

    /* renamed from: u */
    public final AbstractC10330c f18996u;

    /* renamed from: v */
    public final AbstractC5040n f18997v;

    /* renamed from: w */
    public final AbstractC5027g f18998w;

    /* renamed from: x */
    public final AbstractC8438a f18999x;

    /* renamed from: y */
    public final AbstractC5276f4 f19000y;

    /* renamed from: z */
    public final AbstractC19462a f19001z;

    /* renamed from: e.a.a.c.p4$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/p4$a.class */
    public static final class C5651a<R> implements AbstractC19851d0<Boolean> {
        public C5651a() {
            C5650p4.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            AbstractC5688r4 abstractC5688r4;
            Boolean bool2 = bool;
            AbstractC5688r4 abstractC5688r42 = (AbstractC5688r4) C5650p4.this.f57683a;
            if (abstractC5688r42 != null) {
                abstractC5688r42.mo32422r3();
            }
            if (!(!l.a(bool2, Boolean.TRUE)) || (abstractC5688r4 = (AbstractC5688r4) C5650p4.this.f57683a) == null) {
                return;
            }
            abstractC5688r4.mo32353a(2131886719);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationMenuPresenterImpl$onMenuItemSelected$1$1", f = "ConversationMenuPresenter.kt", l = {Constants.ERR_PUBLISH_STREAM_CDN_ERROR}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.p4$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/p4$b.class */
    public static final class C5652b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f19003e;

        /* renamed from: f */
        public final /* synthetic */ long f19004f;

        /* renamed from: g */
        public final /* synthetic */ C5650p4 f19005g;

        /* renamed from: h */
        public final /* synthetic */ AbstractC5688r4 f19006h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5652b(long j, d dVar, C5650p4 c5650p4, AbstractC5688r4 abstractC5688r4) {
            super(2, dVar);
            this.f19004f = j;
            this.f19005g = c5650p4;
            this.f19006h = abstractC5688r4;
        }

        /* renamed from: i */
        public final d<s> m32803i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5652b(this.f19004f, dVar, this.f19005g, this.f19006h);
        }

        /* renamed from: k */
        public final Object m32802k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5652b(this.f19004f, dVar, this.f19005g, this.f19006h).m32801s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x00ae, code lost:
            if (r0[0].f11569b != 3) goto L22;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m32801s(java.lang.Object r6) {
            /*
                r5 = this;
                s1.w.j.a r0 = s1.w.j.a.a
                r7 = r0
                r0 = r5
                int r0 = r0.f19003e
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L23
                r0 = r8
                r1 = 1
                if (r0 != r1) goto L19
                r0 = r6
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto L62
            L19:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L23:
                r0 = r6
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r5
                e.a.a.c.p4 r0 = r0.f19005g
                o3.a<e.a.a.g.w> r0 = r0.f18987l
                java.lang.Object r0 = r0.get()
                e.a.a.g.w r0 = (p193e.p194a.p195a.p231g.AbstractC6248w) r0
                r9 = r0
                java.lang.Long r0 = new java.lang.Long
                r1 = r0
                r2 = r5
                long r2 = r2.f19004f
                r1.<init>(r2)
                java.util.List r0 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3962T1(r0)
                r6 = r0
                r0 = r5
                r1 = 1
                r0.f19003e = r1
                r0 = r9
                r1 = r6
                r2 = r5
                java.lang.Object r0 = r0.mo31581B(r1, r2)
                r9 = r0
                r0 = r9
                r6 = r0
                r0 = r9
                r1 = r7
                if (r0 != r1) goto L62
                r0 = r7
                return r0
            L62:
                r0 = r6
                java.lang.Boolean r0 = (java.lang.Boolean) r0
                boolean r0 = r0.booleanValue()
                r10 = r0
                r0 = r5
                e.a.a.c.r4 r0 = r0.f19006h
                r6 = r0
                r0 = r5
                e.a.a.c.p4 r0 = r0.f19005g
                r7 = r0
                r0 = r7
                e.a.a.c.m5 r0 = r0.f18981f
                com.truecaller.data.entity.messaging.Participant[] r0 = r0.mo32852o()
                r9 = r0
                r0 = r7
                boolean r0 = r0.f18977B
                r11 = r0
                r0 = 0
                r12 = r0
                r0 = r11
                if (r0 == 0) goto L94
                r0 = 2131886658(0x7f120242, float:1.9407901E38)
                r8 = r0
                goto Lb4
            L94:
                r0 = r12
                r8 = r0
                r0 = r7
                boolean r0 = r0.m32816Kj()
                if (r0 != 0) goto Lb4
                r0 = r9
                if (r0 == 0) goto Lb1
                r0 = r12
                r8 = r0
                r0 = r9
                r1 = 0
                r0 = r0[r1]
                int r0 = r0.f11569b
                r1 = 3
                if (r0 == r1) goto Lb4
            Lb1:
                r0 = 2131886657(0x7f120241, float:1.94079E38)
                r8 = r0
            Lb4:
                r0 = r6
                r1 = r10
                r2 = r8
                r0.mo32434ns(r1, r2)
                s1.s r0 = s1.s.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5650p4.C5652b.m32801s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationMenuPresenterImpl$onMenuItemSelected$2$1", f = "ConversationMenuPresenter.kt", l = {Constants.ERR_MODULE_NOT_FOUND}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.p4$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/p4$c.class */
    public static final class C5653c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f19007e;

        /* renamed from: f */
        public final /* synthetic */ long f19008f;

        /* renamed from: g */
        public final /* synthetic */ C5650p4 f19009g;

        /* renamed from: h */
        public final /* synthetic */ AbstractC5688r4 f19010h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5653c(long j, d dVar, C5650p4 c5650p4, AbstractC5688r4 abstractC5688r4) {
            super(2, dVar);
            this.f19008f = j;
            this.f19009g = c5650p4;
            this.f19010h = abstractC5688r4;
        }

        /* renamed from: i */
        public final d<s> m32800i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5653c(this.f19008f, dVar, this.f19009g, this.f19010h);
        }

        /* renamed from: k */
        public final Object m32799k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5653c(this.f19008f, dVar, this.f19009g, this.f19010h).m32798s(s.a);
        }

        /* renamed from: s */
        public final Object m32798s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f19007e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6248w abstractC6248w = (AbstractC6248w) this.f19009g.f18987l.get();
                List<Long> m3962T1 = C25225a.m3962T1(new Long(this.f19008f));
                this.f19007e = 1;
                Object mo31581B = abstractC6248w.mo31581B(m3962T1, this);
                obj = mo31581B;
                if (mo31581B == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            this.f19010h.mo32401wl(((Boolean) obj).booleanValue());
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.p4$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/p4$d.class */
    public static final class C5654d<R> implements AbstractC19851d0<Boolean> {
        public C5654d() {
            C5650p4.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            AbstractC5688r4 abstractC5688r4;
            if (!(!l.a(bool, Boolean.TRUE)) || (abstractC5688r4 = (AbstractC5688r4) C5650p4.this.f57683a) == null) {
                return;
            }
            abstractC5688r4.mo32353a(2131886719);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5650p4(@Named("UI") f fVar, AbstractC5524m5 abstractC5524m5, AbstractC5719s4 abstractC5719s4, AbstractC11476s1 abstractC11476s1, a<AbstractC5583n4.AbstractC5584a> aVar, AbstractC5687r3 abstractC5687r3, AbstractC19233h0 abstractC19233h0, a<AbstractC6248w> aVar2, @Named("UiThread") AbstractC19868j abstractC19868j, @Named("IsHiddenNumberIntent") boolean z, @Named("IsBubbleIntent") boolean z2, @Named("IsUrgentIntent") boolean z3, C20592g c20592g, AbstractC19854f<AbstractC6485m> abstractC19854f, AbstractC5108b4 abstractC5108b4, AbstractC9691j abstractC9691j, AbstractC10330c abstractC10330c, AbstractC5040n abstractC5040n, AbstractC5027g abstractC5027g, AbstractC8438a abstractC8438a, AbstractC5276f4 abstractC5276f4, AbstractC19462a abstractC19462a, AbstractC6392i0 abstractC6392i0, boolean z4, AbstractC6394b abstractC6394b) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC5524m5, "conversationState");
        l.e(abstractC5719s4, "messagesPresenter");
        l.e(abstractC11476s1, "voipUtil");
        l.e(aVar, "listener");
        l.e(abstractC5687r3, "conversationAnalytics");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(aVar2, "readMessageStorage");
        l.e(abstractC19868j, "uiThread");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19854f, "imGroupManager");
        l.e(abstractC5108b4, "headerPresenter");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC10330c, "insightsFeedbackManager");
        l.e(abstractC5040n, "smartCardsManager");
        l.e(abstractC5027g, "infoCardsManagerRevamp");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC5276f4, "inputPresenter");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC6394b, "messageUtil");
        this.f18980e = fVar;
        this.f18981f = abstractC5524m5;
        this.f18982g = abstractC5719s4;
        this.f18983h = abstractC11476s1;
        this.f18984i = aVar;
        this.f18985j = abstractC5687r3;
        this.f18986k = abstractC19233h0;
        this.f18987l = aVar2;
        this.f18988m = abstractC19868j;
        this.f18989n = z;
        this.f18990o = z2;
        this.f18991p = z3;
        this.f18992q = c20592g;
        this.f18993r = abstractC19854f;
        this.f18994s = abstractC5108b4;
        this.f18995t = abstractC9691j;
        this.f18996u = abstractC10330c;
        this.f18997v = abstractC5040n;
        this.f18998w = abstractC5027g;
        this.f18999x = abstractC8438a;
        this.f19000y = abstractC5276f4;
        this.f19001z = abstractC19462a;
        this.f18976A = abstractC6392i0;
        this.f18977B = z4;
        this.f18978C = abstractC6394b;
    }

    /* renamed from: Ij */
    public final String m32818Ij(Participant participant) {
        String str = participant.m35448l() ? participant.f11572e : participant.f11571d;
        l.d(str, "if (isBusinessIm) {\n    …ess\n    } else rawAddress");
        return str;
    }

    /* renamed from: Jj */
    public final boolean m32817Jj() {
        Conversation mo32851p = this.f18981f.mo32851p();
        ImGroupInfo mo32857h = this.f18981f.mo32857h();
        return mo32851p != null && m32815Lj() && (mo32857h == null || mo32857h.f13324f == 0);
    }

    /* renamed from: Kj */
    public final boolean m32816Kj() {
        Conversation mo32851p = this.f18981f.mo32851p();
        return mo32851p != null ? mo32851p.f13188C : this.f18989n;
    }

    /* renamed from: Lj */
    public final boolean m32815Lj() {
        Participant[] mo32852o = this.f18981f.mo32852o();
        return C12864a2.m22540r(mo32852o != null ? Boolean.valueOf(C6405h.m31298f(mo32852o)) : null);
    }

    /* renamed from: Mj */
    public final void m32814Mj(int i) {
        ImGroupInfo mo32857h = this.f18981f.mo32857h();
        if (mo32857h != null) {
            this.f18993r.mo11854a().mo30885o(mo32857h.f13319a, i).mo11830e(this.f18988m, new C5654d());
        }
    }

    /* renamed from: Nj */
    public final void m32813Nj(int i, int i2, int i3) {
        String str;
        Participant[] mo32852o = this.f18981f.mo32852o();
        if (mo32852o != null) {
            if (mo32852o.length == 1) {
                str = this.f18986k.mo13768b(i2, C10480a.m25885v0(mo32852o[0]));
                l.d(str, "resourceProvider.getStri…layName(participants[0]))");
            } else {
                str = this.f18986k.mo13768b(i3, new Object[0]);
                l.d(str, "resourceProvider.getString(messageMultiple)");
            }
            AbstractC5688r4 abstractC5688r4 = (AbstractC5688r4) this.f57683a;
            if (abstractC5688r4 == null) {
                return;
            }
            abstractC5688r4.mo32457h4(i, str);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5583n4
    /* renamed from: Og */
    public void mo32812Og(Menu menu) {
        l.e(menu, "menu");
        int mo13758l = this.f18986k.mo13758l(2130970255);
        int mo13758l2 = this.f18986k.mo13758l(2130970253);
        int mo13758l3 = this.f18986k.mo13758l(2130969966);
        int size = menu.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = menu.getItem(i);
            l.d(item, "menu.getItem(i)");
            if (item.getItemId() != 2131361963) {
                MenuItem item2 = menu.getItem(i);
                l.d(item2, "menu.getItem(i)");
                if (item2.getItemId() != 2131361961) {
                    MenuItem item3 = menu.getItem(i);
                    l.d(item3, "menu.getItem(i)");
                    if (item3.getItemId() != 2131361957) {
                        MenuItem item4 = menu.getItem(i);
                        l.d(item4, "menu.getItem(i)");
                        if (item4.getItemId() != 2131361981) {
                            MenuItem item5 = menu.getItem(i);
                            l.d(item5, "menu.getItem(i)");
                            if (item5.getItemId() != 2131362016 || !mo32808Y8()) {
                                MenuItem item6 = menu.getItem(i);
                                l.d(item6, "menu.getItem(i)");
                                C19286f.m13674e(item6, Integer.valueOf(mo13758l), Integer.valueOf(mo13758l2));
                            } else {
                                menu.getItem(i).setIcon(C2752R.C2753drawable.ic_search_conversation_badge);
                                MenuItem item7 = menu.getItem(i);
                                l.d(item7, "menu.getItem(i)");
                                C19286f.m13673f(item7, null, Integer.valueOf(mo13758l2), 1);
                            }
                        }
                    }
                }
            }
            MenuItem item8 = menu.getItem(i);
            l.d(item8, "menu.getItem(i)");
            C19286f.m13674e(item8, Integer.valueOf(mo13758l3), Integer.valueOf(mo13758l3));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5583n4
    /* renamed from: R1 */
    public void mo32811R1() {
        String str;
        ImGroupInfo mo32857h = this.f18981f.mo32857h();
        if (mo32857h == null || (str = mo32857h.f13319a) == null) {
            return;
        }
        AbstractC5688r4 abstractC5688r4 = (AbstractC5688r4) this.f57683a;
        if (abstractC5688r4 != null) {
            abstractC5688r4.mo32484W3();
        }
        this.f18993r.mo11854a().mo30878v(str, false).mo11830e(this.f18988m, new C5651a());
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5583n4
    /* renamed from: Tb */
    public int mo32810Tb() {
        return this.f18981f.mo32868G() == ConversationMode.SCHEDULE ? 2131623985 : this.f18990o ? 2131623940 : 2131623950;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5583n4
    /* renamed from: V2 */
    public void mo32809V2() {
        m32813Nj(C2752R.string.NeverMarkAsSpam, C2752R.string.InboxNeverMarkAsSpamSingle, C2752R.string.InboxNeverMarkAsSpamMultiple);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5583n4
    /* renamed from: Y8 */
    public boolean mo32808Y8() {
        boolean z = true;
        if (!(this.f18981f.getId() != null) || this.f18976A.mo30964z1()) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5583n4
    /* renamed from: d2 */
    public void mo32807d2() {
        m32813Nj(C2752R.string.NeverMarkAsPromotion, C2752R.string.InboxNeverMarkAsPromotionSingle, C2752R.string.InboxNeverMarkAsPromotionMultiple);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5583n4
    /* renamed from: o2 */
    public void mo32806o2(boolean z, boolean z2) {
        ImGroupInfo mo32857h = this.f18981f.mo32857h();
        if (mo32857h != null) {
            this.f18993r.mo11854a().mo30893g(mo32857h.f13319a, z && z2).mo11828g();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0377  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x045f  */
    @Override // p193e.p194a.p195a.p200c.AbstractC5583n4
    /* renamed from: q9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo32805q9(int r12) {
        /*
            Method dump skipped, instructions count: 1145
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5650p4.mo32805q9(int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:187:0x0641, code lost:
        if (p193e.p194a.p682e.C12864a2.m22540r(r33) == false) goto L189;
     */
    @Override // p193e.p194a.p195a.p200c.AbstractC5583n4
    /* renamed from: vc */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo32804vc(android.view.Menu r9) {
        /*
            Method dump skipped, instructions count: 1627
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5650p4.mo32804vc(android.view.Menu):void");
    }
}
