package p193e.p194a.p195a.p236h;

import android.net.Uri;
import com.truecaller.C2752R;
import com.truecaller.api.services.messenger.p138v1.models.GroupAction;
import com.truecaller.api.services.messenger.p138v1.models.Role;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.ImGroupInfo;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p241i1.AbstractC6403f;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6487o;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p997k3.p1000l.p1001k.C16503a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.a.h.p */
/* loaded from: classes7-dex2jar.jar:e/a/a/h/p.class */
public final class C6308p extends AbstractC18894c<AbstractC6307o> implements AbstractC6306n {

    /* renamed from: b */
    public final AbstractC6304l f21108b;

    /* renamed from: c */
    public final AbstractC19022f0 f21109c;

    /* renamed from: d */
    public final AbstractC6305m f21110d;

    /* renamed from: e */
    public final AbstractC6489q f21111e;

    /* renamed from: f */
    public final AbstractC6392i0 f21112f;

    /* renamed from: g */
    public final AbstractC8541a f21113g;

    /* renamed from: h */
    public final AbstractC8438a f21114h;

    /* renamed from: i */
    public final AbstractC19223c0 f21115i;

    /* renamed from: j */
    public final AbstractC6403f f21116j;

    @Inject
    public C6308p(AbstractC6304l abstractC6304l, AbstractC19022f0 abstractC19022f0, AbstractC6305m abstractC6305m, AbstractC6489q abstractC6489q, AbstractC6392i0 abstractC6392i0, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, AbstractC19223c0 abstractC19223c0, AbstractC6403f abstractC6403f) {
        l.e(abstractC6304l, "model");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC6305m, "menuListener");
        l.e(abstractC6489q, "groupUtil");
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC6403f, "messagingBulkSearcher");
        this.f21108b = abstractC6304l;
        this.f21109c = abstractC19022f0;
        this.f21110d = abstractC6305m;
        this.f21111e = abstractC6489q;
        this.f21112f = abstractC6392i0;
        this.f21113g = abstractC8541a;
        this.f21114h = abstractC8438a;
        this.f21115i = abstractC19223c0;
        this.f21116j = abstractC6403f;
    }

    /* renamed from: A */
    public final C16503a m31466A(int i) {
        C16503a c16503a;
        AbstractC6487o mo31476f = this.f21108b.mo31476f();
        if (mo31476f != null) {
            mo31476f.moveToPosition(i);
            c16503a = mo31476f.mo30875i1();
        } else {
            c16503a = null;
        }
        if (c16503a == null || (!l.a(c16503a.f46397a, this.f21112f.mo31078f()))) {
            return c16503a;
        }
        String mo13768b = this.f21115i.mo13768b(C2752R.string.ParticipantSelfName, new Object[0]);
        String string = this.f21113g.getString("profileAvatar");
        String string2 = this.f21114h.getString("profileNumber");
        String str = c16503a.f46397a;
        int i2 = c16503a.f46398b;
        String str2 = c16503a.f46400d;
        String str3 = c16503a.f46402f;
        long j = c16503a.f46404h;
        String str4 = c16503a.f46405i;
        int i3 = c16503a.f46406j;
        long j2 = c16503a.f46407k;
        Long l = c16503a.f46408l;
        l.e(str, "imPeerId");
        return new C16503a(str, i2, string2, str2, mo13768b, str3, string, j, str4, i3, j2, l);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(AbstractC6307o abstractC6307o, int i) {
        List<Participant> mo31474o;
        Participant participant;
        AbstractC6307o abstractC6307o2 = abstractC6307o;
        l.e(abstractC6307o2, "itemView");
        String str = null;
        boolean z = false;
        if (this.f21108b.mo31475h() == null) {
            if (this.f21108b.mo31474o() == null || (mo31474o = this.f21108b.mo31474o()) == null || (participant = (Participant) i.G(mo31474o, i)) == null) {
                return;
            }
            abstractC6307o2.mo31463s2(false);
            boolean a = l.a(participant.f11570c, this.f21112f.mo31078f());
            Uri mo14235k = this.f21109c.mo14235k(participant.f11582o, participant.f11580m, true);
            String str2 = participant.f11579l;
            if (str2 != null) {
                str = C17891a1.C17902k.m15693B(str2);
            }
            abstractC6307o2.mo31464a(new AvatarXConfig(mo14235k, participant.f11572e, null, str, false, false, false, false, false, false, false, false, false, false, null, false, 65524));
            String str3 = participant.f11579l;
            if (str3 == null) {
                str3 = participant.f11572e;
            }
            l.d(str3, "participant.name ?: participant.normalizedAddress");
            abstractC6307o2.setName(str3);
            abstractC6307o2.mo31462y1(false, false, false, true);
            abstractC6307o2.mo31461y2(!a);
            this.f21116j.mo31305a(participant);
            return;
        }
        C16503a m31466A = m31466A(i);
        if (m31466A == null) {
            return;
        }
        String mo30872c = this.f21111e.mo30872c(m31466A.f46398b);
        if (mo30872c == null) {
            mo30872c = "";
        }
        abstractC6307o2.mo31465L0(mo30872c);
        abstractC6307o2.mo31463s2((m31466A.f46398b & 8) == 0);
        Uri mo14235k2 = this.f21109c.mo14235k(m31466A.f46404h, m31466A.f46403g, true);
        String str4 = m31466A.f46401e;
        String str5 = null;
        if (str4 != null) {
            str5 = C17891a1.C17902k.m15693B(str4);
        }
        abstractC6307o2.mo31464a(new AvatarXConfig(mo14235k2, m31466A.f46399c, null, str5, false, false, false, false, false, false, false, false, false, false, null, false, 65524));
        String str6 = m31466A.f46401e;
        if (str6 == null) {
            str6 = m31466A.f46399c;
        }
        if (str6 == null) {
            str6 = this.f21111e.mo30871d(m31466A.f46397a);
        }
        abstractC6307o2.setName(str6);
        ImGroupInfo mo31475h = this.f21108b.mo31475h();
        if (mo31475h != null) {
            boolean a2 = l.a(m31466A.f46397a, this.f21112f.mo31078f());
            boolean z2 = !a2 && this.f21111e.mo30869f(mo31475h.f13325g, GroupAction.KICK_OUT, m31466A);
            boolean z3 = !a2 && this.f21111e.mo30874a(mo31475h.f13325g, m31466A.f46398b, 536870912) && C10480a.m25979c1(m31466A, Role.USER);
            boolean z4 = !a2 && this.f21111e.mo30874a(mo31475h.f13325g, m31466A.f46398b, 8) && C10480a.m25979c1(m31466A, Role.ADMIN);
            if (m31466A.f46405i != null || m31466A.f46399c != null) {
                z = true;
            }
            abstractC6307o2.mo31462y1(z2, z3, z4, z);
            abstractC6307o2.mo31461y2(!a2);
        }
        this.f21116j.mo31304b(m31466A);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        int i = 0;
        if (this.f21108b.mo31474o() == null) {
            AbstractC6487o mo31476f = this.f21108b.mo31476f();
            if (mo31476f != null) {
                i = mo31476f.getCount();
            }
        } else {
            List<Participant> mo31474o = this.f21108b.mo31474o();
            if (mo31474o != null) {
                i = mo31474o.size();
            }
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        char c;
        Participant participant;
        if (this.f21108b.mo31474o() == null) {
            C16503a m31466A = m31466A(i);
            String str = m31466A != null ? m31466A.f46397a : null;
            c = str != null ? str.hashCode() : 0;
        } else {
            List<Participant> mo31474o = this.f21108b.mo31474o();
            c = (mo31474o == null || (participant = (Participant) i.G(mo31474o, i)) == null) ? (char) 0 : participant.f11568a;
        }
        return c;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        Participant participant;
        l.e(c18900h, "event");
        if (this.f21108b.mo31474o() != null) {
            List<Participant> mo31474o = this.f21108b.mo31474o();
            if (mo31474o == null || (participant = (Participant) i.G(mo31474o, c18900h.f53002b)) == null) {
                return false;
            }
            String str = c18900h.f53001a;
            int hashCode = str.hashCode();
            if (hashCode == 806490894) {
                if (!str.equals("ItemEvent.ImGroupParticipantItemMvp.MESSAGE")) {
                    return false;
                }
                this.f21110d.mo31473a8(participant);
                return true;
            } else if (hashCode != 1076450088 || !str.equals("ItemEvent.ImGroupParticipantItemMvp.VIEW_PROFILE")) {
                return false;
            } else {
                this.f21110d.mo31471kf(participant);
                return true;
            }
        }
        C16503a m31466A = m31466A(c18900h.f53002b);
        if (m31466A == null) {
            return false;
        }
        String str2 = c18900h.f53001a;
        switch (str2.hashCode()) {
            case -2047777667:
                if (!str2.equals("ItemEvent.ImGroupParticipantItemMvp.REMOVE")) {
                    return false;
                }
                this.f21110d.mo31468w9(m31466A);
                return true;
            case -981297897:
                if (!str2.equals("ItemEvent.ImGroupParticipantItemMvp.MAKE_ADMIN")) {
                    return false;
                }
                this.f21110d.mo31469r9(m31466A);
                return true;
            case 806490894:
                if (!str2.equals("ItemEvent.ImGroupParticipantItemMvp.MESSAGE")) {
                    return false;
                }
                this.f21110d.mo31467x8(m31466A);
                return true;
            case 1076450088:
                if (!str2.equals("ItemEvent.ImGroupParticipantItemMvp.VIEW_PROFILE")) {
                    return false;
                }
                this.f21110d.mo31470o4(m31466A);
                return true;
            case 1662714625:
                if (!str2.equals("ItemEvent.ImGroupParticipantItemMvp.DISMISS_ADMIN")) {
                    return false;
                }
                this.f21110d.mo31472e7(m31466A);
                return true;
            default:
                return false;
        }
    }
}
