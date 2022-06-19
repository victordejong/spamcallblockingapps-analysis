package p193e.p194a.p195a.p224d;

import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.messaging.Participant;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p224d.AbstractC5931s;
import p193e.p194a.p195a.p241i1.C6405h;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.a.d.j */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/j.class */
public final class C5922j extends AbstractC5928p {

    /* renamed from: b */
    public final ArrayList<Participant> f19802b = new ArrayList<>();

    /* renamed from: c */
    public String f19803c = "one_to_one_type";

    /* renamed from: d */
    public boolean f19804d;

    /* renamed from: e */
    public int f19805e;

    /* renamed from: f */
    public final AbstractC5931s f19806f;

    /* renamed from: g */
    public final AbstractC19022f0 f19807g;

    /* renamed from: h */
    public final AbstractC6392i0 f19808h;

    /* renamed from: i */
    public final AbstractC19510i0 f19809i;

    @Inject
    public C5922j(AbstractC5931s abstractC5931s, AbstractC19022f0 abstractC19022f0, C20592g c20592g, AbstractC6392i0 abstractC6392i0, AbstractC19510i0 abstractC19510i0) {
        l.e(abstractC5931s, AnalyticsConstants.MODE);
        l.e(abstractC19022f0, "deviceManager");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19510i0, "messageAnalytics");
        this.f19806f = abstractC5931s;
        this.f19807g = abstractC19022f0;
        this.f19808h = abstractC6392i0;
        this.f19809i = abstractC19510i0;
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: G */
    public void mo10095G(AbstractC5927o abstractC5927o, int i) {
        AbstractC5927o abstractC5927o2 = abstractC5927o;
        l.e(abstractC5927o2, "presenterView");
        Participant participant = this.f19802b.get(i);
        l.d(participant, "participants[adapterPosition]");
        Participant participant2 = participant;
        abstractC5927o2.mo32198a(new AvatarXConfig(this.f19807g.mo14235k(participant2.f11582o, participant2.f11580m, true), participant2.f11572e, null, n.t1(C6405h.m31301c(participant2), false, 1), false, false, false, false, false, false, false, false, false, false, null, false, 65524));
        abstractC5927o2.setName(C6405h.m31301c(participant2));
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5928p
    /* renamed from: Hj */
    public void mo32197Hj(List<? extends Participant> list) {
        AbstractC5929q abstractC5929q;
        boolean z;
        l.e(list, "participantsToAdd");
        if (!list.isEmpty() && (abstractC5929q = (AbstractC5929q) this.f57683a) != null) {
            List Z = i.Z(list, this.f19802b);
            if (Z.isEmpty()) {
                abstractC5929q.mo32138w2(C2752R.string.pick_contact_already_added);
                return;
            }
            int size = Z.size() + this.f19802b.size();
            if (this.f19805e + size > this.f19808h.mo31172N0()) {
                abstractC5929q.mo32138w2(C2752R.string.NewConversationMaxParticipantSize);
            } else if (size > this.f19808h.mo31101b0()) {
                abstractC5929q.mo32164J1(C2752R.string.NewConversationMaxBatchParticipantSize, this.f19808h.mo31101b0());
            } else {
                this.f19802b.addAll(Z);
                if (!l.a(this.f19803c, "one_to_one_type") || this.f19802b.size() <= 1) {
                    abstractC5929q.mo32183St(this.f19802b.isEmpty());
                    abstractC5929q.mo32144m3(!this.f19802b.isEmpty());
                } else {
                    if (!list.isEmpty()) {
                        for (Participant participant : list) {
                            if (!participant.m35450i()) {
                                z = false;
                                break;
                            }
                        }
                    }
                    z = true;
                    if (z) {
                        m32218Sj();
                    } else {
                        m32217Tj();
                    }
                }
                abstractC5929q.mo32185An(this.f19802b.size() - 1);
                abstractC5929q.mo32147l0();
                abstractC5929q.mo32179ux();
            }
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5928p
    /* renamed from: Ij */
    public String mo32196Ij() {
        return this.f19803c;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5928p
    /* renamed from: Jj */
    public boolean mo32195Jj() {
        return l.a(this.f19803c, "im_group_type") || l.a(this.f19803c, "mms_group_type");
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: Kb */
    public int mo10091Kb() {
        return this.f19802b.size();
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5928p
    /* renamed from: Kj */
    public boolean mo32194Kj() {
        return this.f19804d;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5928p
    /* renamed from: Lj */
    public void mo32193Lj(int i) {
        this.f19805e = i;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5928p
    /* renamed from: Mj */
    public void mo32192Mj(Participant participant) {
        l.e(participant, "participant");
        this.f19802b.remove(participant);
        AbstractC5929q abstractC5929q = (AbstractC5929q) this.f57683a;
        if (abstractC5929q != null) {
            abstractC5929q.mo32182Tp();
            if (this.f19802b.isEmpty()) {
                abstractC5929q.mo32183St(true);
                abstractC5929q.mo32144m3(false);
            }
            abstractC5929q.mo32179ux();
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5928p
    /* renamed from: Nj */
    public boolean mo32191Nj() {
        this.f19808h.mo31091c4(true);
        AbstractC5929q abstractC5929q = (AbstractC5929q) this.f57683a;
        if (abstractC5929q != null) {
            abstractC5929q.mo32180uw();
        }
        this.f19809i.mo13208r("im");
        return true;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5928p
    /* renamed from: Oj */
    public boolean mo32190Oj() {
        m32217Tj();
        this.f19809i.mo13208r(TokenResponseDto.METHOD_SMS);
        return true;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5928p
    /* renamed from: Pj */
    public void mo32189Pj(List<? extends Participant> list) {
        mo32197Hj(list);
        this.f19804d = true;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5928p
    /* renamed from: Qj */
    public void mo32188Qj(Bundle bundle) {
        l.e(bundle, "state");
        bundle.putString("conversation_mode", this.f19803c);
        bundle.putBoolean("is_in_multi_pick_mode", this.f19804d);
        bundle.putParcelableArrayList("group_participants", this.f19802b);
    }

    /* renamed from: Rj */
    public final void m32219Rj() {
        AbstractC5929q abstractC5929q = (AbstractC5929q) this.f57683a;
        if (abstractC5929q != null) {
            abstractC5929q.mo32147l0();
            abstractC5929q.mo32184Nc(true);
            abstractC5929q.mo32151i2(false);
            abstractC5929q.mo32183St(this.f19802b.isEmpty());
            abstractC5929q.mo32144m3(true ^ this.f19802b.isEmpty());
            if (this.f19806f instanceof AbstractC5931s.C5935d) {
                String str = this.f19803c;
                int hashCode = str.hashCode();
                if (hashCode != -1481575691) {
                    if (hashCode == -1152006682 && str.equals("mms_group_type")) {
                        abstractC5929q.mo32156c2(Integer.valueOf((int) C2752R.string.NewConversationCreateNewGroupMms));
                    }
                } else if (str.equals("im_group_type")) {
                    abstractC5929q.mo32156c2(Integer.valueOf((int) C2752R.string.NewConversationCreateNewGroupChat));
                }
            }
            abstractC5929q.mo32181az();
        }
    }

    /* renamed from: Sj */
    public final void m32218Sj() {
        this.f19803c = "im_group_type";
        m32219Rj();
    }

    /* renamed from: Tj */
    public final void m32217Tj() {
        this.f19803c = "mms_group_type";
        m32219Rj();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.a.d.q, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC5929q) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        if ((this.f19806f instanceof AbstractC5931s.C5932a) || l.a(this.f19803c, "im_group_type")) {
            m32218Sj();
            return;
        }
        AbstractC5931s abstractC5931s = this.f19806f;
        if ((abstractC5931s instanceof AbstractC5931s.C5935d) && ((AbstractC5931s.C5935d) abstractC5931s).f19822a) {
            m32218Sj();
        } else if (!l.a(this.f19803c, "mms_group_type")) {
        } else {
            m32217Tj();
        }
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: Za */
    public int mo10064Za(int i) {
        return 0;
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: gc */
    public long mo10061gc(int i) {
        return -1L;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5928p
    /* renamed from: hh */
    public void mo32187hh(Bundle bundle) {
        if (bundle != null) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("group_participants");
            if (parcelableArrayList != null) {
                l.d(parcelableArrayList, "it");
                mo32197Hj(parcelableArrayList);
            }
            String string = bundle.getString("conversation_mode");
            if (string == null) {
                string = "one_to_one_type";
            }
            this.f19803c = string;
            int hashCode = string.hashCode();
            if (hashCode != -1481575691) {
                if (hashCode == -1152006682 && string.equals("mms_group_type")) {
                    m32217Tj();
                }
            } else if (string.equals("im_group_type")) {
                m32218Sj();
            }
            this.f19804d = bundle.getBoolean("is_in_multi_pick_mode");
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5928p
    /* renamed from: o */
    public List mo32186o() {
        return this.f19802b;
    }
}
