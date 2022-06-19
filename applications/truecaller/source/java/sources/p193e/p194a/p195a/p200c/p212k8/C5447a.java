package p193e.p194a.p195a.p200c.p212k8;

import android.graphics.drawable.Drawable;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.InboxTab;
import e.m.d.y.n;
import javax.inject.Inject;
import p193e.p194a.p1049l4.C17408d;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC7267u;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.c.k8.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/a.class */
public final class C5447a extends AbstractC18894c<AbstractC5467k> implements AbstractC5466j {

    /* renamed from: b */
    public final AbstractC5465i f18554b;

    /* renamed from: c */
    public final AbstractC5464h f18555c;

    /* renamed from: d */
    public final AbstractC5468l f18556d;

    /* renamed from: e */
    public final AbstractC6394b f18557e;

    /* renamed from: f */
    public final AbstractC19233h0 f18558f;

    /* renamed from: g */
    public final AbstractC6708t f18559g;

    /* renamed from: h */
    public final AbstractC7267u f18560h;

    /* renamed from: i */
    public final boolean f18561i;

    @Inject
    public C5447a(AbstractC5465i abstractC5465i, AbstractC5464h abstractC5464h, AbstractC5468l abstractC5468l, AbstractC6394b abstractC6394b, AbstractC19233h0 abstractC19233h0, C20592g c20592g, AbstractC6708t abstractC6708t, AbstractC7267u abstractC7267u, boolean z) {
        l.e(abstractC5465i, "model");
        l.e(abstractC5464h, "itemAction");
        l.e(abstractC5468l, "actionModeHandler");
        l.e(abstractC6394b, "messageUtil");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC6708t, "transportManager");
        l.e(abstractC7267u, "inboxAvatarPresenterFactory");
        this.f18554b = abstractC5465i;
        this.f18555c = abstractC5464h;
        this.f18556d = abstractC5468l;
        this.f18557e = abstractC6394b;
        this.f18558f = abstractC19233h0;
        this.f18559g = abstractC6708t;
        this.f18560h = abstractC7267u;
        this.f18561i = z;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(AbstractC5467k abstractC5467k, int i) {
        AbstractC5467k abstractC5467k2 = abstractC5467k;
        l.e(abstractC5467k2, "itemView");
        Conversation conversation = this.f18554b.mo33094N().get(i);
        abstractC5467k2.setTitle(this.f18557e.mo31326n(conversation));
        abstractC5467k2.mo33091R(this.f52996a && this.f18555c.mo33098F1(conversation));
        abstractC5467k2.mo33088f(this.f18557e.mo31327m(conversation));
        abstractC5467k2.mo33090S(C10480a.m26085C1(conversation), conversation.f13210l);
        C8243a mo29859b = this.f18560h.mo29859b(abstractC5467k2);
        C8243a.m28739ok(mo29859b, n.r(conversation, conversation.f13217s), false, 2, null);
        abstractC5467k2.mo33087i(mo29859b);
        int i2 = conversation.f13217s;
        abstractC5467k2.mo33092H4(this.f18557e.mo31334f(i2, this.f18561i), this.f18557e.mo31330j(i2, this.f18561i));
        AbstractC6394b abstractC6394b = this.f18557e;
        InboxTab.C4204a c4204a = InboxTab.Companion;
        String mo31346D = abstractC6394b.mo31346D(conversation, c4204a.m35029a(conversation.f13217s));
        int i3 = conversation.f13223y;
        int i4 = conversation.f13203e;
        String mo31320t = this.f18557e.mo31320t(conversation.f13208j, conversation.f13204f, conversation.f13205g);
        if (C10480a.m25909q1(conversation)) {
            String mo13768b = this.f18558f.mo13768b(C2752R.string.messaging_im_group_invitation, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…ging_im_group_invitation)");
            ListItemX.SubtitleColor subtitleColor = ListItemX.SubtitleColor.BLUE;
            abstractC5467k2.mo33086p1(mo13768b, subtitleColor, this.f18558f.mo13767c(C2752R.C2753drawable.ic_snippet_group_16dp), null, subtitleColor, C10480a.m26085C1(conversation), false);
        } else if (C10480a.m25939k1(conversation)) {
            int mo30548n = this.f18559g.mo30548n(conversation.f13204f > 0, conversation.f13211m, conversation.f13219u == 0);
            String mo13768b2 = this.f18558f.mo13768b(C2752R.string.MessageDraft, new Object[0]);
            l.d(mo13768b2, "resourceProvider.getString(R.string.MessageDraft)");
            ListItemX.SubtitleColor subtitleColor2 = ListItemX.SubtitleColor.BLUE;
            Drawable mo13767c = this.f18558f.mo13767c(C2752R.C2753drawable.ic_snippet_draft);
            l.d(mo13767c, "resourceProvider.getDraw…rawable.ic_snippet_draft)");
            abstractC5467k2.mo33093E(mo13768b2, mo31320t, subtitleColor2, mo13767c, mo30548n == 2);
        } else {
            if (mo31346D != null) {
                mo31320t = mo31346D;
            }
            abstractC5467k2.mo33086p1(mo31320t, this.f18557e.mo31328l(mo31346D, i3), this.f18557e.mo31329k(conversation), this.f18557e.mo31338b(conversation.f13204f, conversation.f13205g), this.f18557e.mo31322r(mo31346D, i3, i4), C10480a.m26085C1(conversation), conversation.f13209k);
        }
        C17408d mo29860a = this.f18560h.mo29860a(abstractC5467k2);
        mo29860a.m16140Kj(C10480a.m25935l0(conversation, c4204a.m35029a(conversation.f13217s)));
        abstractC5467k2.mo33089e(mo29860a);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f18554b.mo33094N().size();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return this.f18554b.mo33094N().get(i).f13199a;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        Conversation conversation = this.f18554b.mo33094N().get(c18900h.f53002b);
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        boolean z = false;
        if (hashCode != -1743572928) {
            if (hashCode == -1314591573 && str.equals("ItemEvent.LONG_CLICKED")) {
                if (!this.f52996a && this.f18556d.mo33084P()) {
                    this.f18555c.mo33096J(conversation);
                    z = true;
                }
                z = false;
            }
        } else if (str.equals("ItemEvent.CLICKED")) {
            if (this.f52996a) {
                this.f18555c.mo33096J(conversation);
                z = false;
            } else {
                ImGroupInfo imGroupInfo = conversation.f13224z;
                if (imGroupInfo == null || !C10480a.m25894t1(imGroupInfo)) {
                    this.f18555c.mo33095ij(conversation);
                    z = true;
                } else {
                    ImGroupInfo imGroupInfo2 = conversation.f13224z;
                    z = true;
                    if (imGroupInfo2 != null) {
                        AbstractC5464h abstractC5464h = this.f18555c;
                        l.d(imGroupInfo2, "it");
                        abstractC5464h.mo33097I(imGroupInfo2);
                        z = true;
                    }
                }
            }
        }
        return z;
    }
}
