package p193e.p194a.p1159q4;

import com.truecaller.C2752R;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.referral.BulkSmsView;
import com.truecaller.referral.ReferralManager;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p193e.p194a.AbstractC20947v0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1334w.p1336b.AbstractC21179b;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import w3.c.a.a.a.h;
/* renamed from: e.a.q4.x */
/* loaded from: classes12-dex2jar.jar:e/a/q4/x.class */
public class C19679x extends AbstractC20576b<BulkSmsView> implements AbstractC20947v0<AbstractC19667s> {

    /* renamed from: b */
    public final String f54666b;

    /* renamed from: c */
    public final ArrayList<Participant> f54667c = new ArrayList<>();

    /* renamed from: d */
    public final C19680y f54668d;

    /* renamed from: e */
    public final AbstractC21179b f54669e;

    /* renamed from: f */
    public final AbstractC19022f0 f54670f;

    /* renamed from: g */
    public final Participant f54671g;

    /* renamed from: h */
    public final AbstractC19223c0 f54672h;

    /* renamed from: i */
    public final AbstractC19219a0 f54673i;

    /* renamed from: j */
    public final AbstractC20235a f54674j;

    /* renamed from: k */
    public final AbstractC19647j0 f54675k;

    /* renamed from: l */
    public BulkSmsView.PromoLayout f54676l;

    /* renamed from: m */
    public ReferralManager.ReferralLaunchContext f54677m;

    /* renamed from: n */
    public final AbstractC19854f<AbstractC19643h0> f54678n;

    /* renamed from: o */
    public AbstractC19868j f54679o;

    /* renamed from: p */
    public AbstractC19844a f54680p;

    /* renamed from: q */
    public String f54681q;

    /* renamed from: r */
    public boolean f54682r;

    public C19679x(String str, C19680y c19680y, AbstractC21179b abstractC21179b, AbstractC19022f0 abstractC19022f0, Contact contact, AbstractC19223c0 abstractC19223c0, AbstractC19854f<AbstractC19643h0> abstractC19854f, AbstractC19868j abstractC19868j, AbstractC19219a0 abstractC19219a0, AbstractC20235a abstractC20235a, AbstractC19647j0 abstractC19647j0) {
        this.f54666b = str;
        this.f54668d = c19680y;
        this.f54669e = abstractC21179b;
        this.f54670f = abstractC19022f0;
        this.f54671g = contact != null ? Participant.m35457b(contact, null, null, C12864a2.m22592B(contact, true)) : null;
        this.f54672h = abstractC19223c0;
        this.f54678n = abstractC19854f;
        this.f54679o = abstractC19868j;
        this.f54673i = abstractC19219a0;
        this.f54674j = abstractC20235a;
        this.f54675k = abstractC19647j0;
    }

    /* renamed from: Hj */
    public final void m13009Hj(List<Participant> list) {
        this.f54667c.clear();
        this.f54667c.addAll(new HashSet(list));
        Participant participant = this.f54671g;
        if (participant != null) {
            this.f54667c.remove(participant);
        }
        PV pv = this.f57683a;
        if (pv != 0) {
            ((BulkSmsView) pv).mo13015ih();
            m13001Pj((BulkSmsView) this.f57683a);
        }
    }

    /* renamed from: Ij */
    public final void m13008Ij(boolean z) {
        AssertionUtil.isNotNull(this.f57683a, new String[0]);
        if (z) {
            this.f54675k.mo13000a(m13007Jj() ? "SingleSMS" : this.f54669e.getString("featureReferralShareApps"));
        }
        if (!this.f54673i.mo13825h("android.permission.SEND_SMS")) {
            ((BulkSmsView) this.f57683a).mo13012q0(102);
            return;
        }
        ArrayList arrayList = new ArrayList(this.f54667c);
        Participant participant = this.f54671g;
        if (participant != null) {
            arrayList.add(participant);
        }
        C19680y c19680y = this.f54668d;
        String str = this.f54666b;
        Objects.requireNonNull(c19680y);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str2 = ((Participant) it.next()).f11572e;
            if (!C15571h.m18636o("qaReferralFakeSendSms")) {
                c19680y.f54683a.sendTextMessage(str2, null, str, null, null);
            }
        }
        int size = arrayList.size();
        ((BulkSmsView) this.f57683a).mo13025Nf(this.f54672h.mo13768b(C2752R.string.referral_invitation_sent, Integer.valueOf(size), this.f54672h.mo13759k(C2752R.plurals.invitations, size, new Object[0])));
        if (!m13007Jj()) {
            this.f54669e.remove("smsReferralPrefetchBatch");
        }
        AbstractC21179b abstractC21179b = this.f54669e;
        String string = abstractC21179b.getString("smsReferralSentTo");
        StringBuilder sb = new StringBuilder();
        if (!h.j(string)) {
            sb.append(string);
            sb.append(",");
        }
        Iterator<Participant> it2 = this.f54667c.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().f11572e);
            sb.append(",");
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        abstractC21179b.mo13034b("smsReferralSentTo", sb.toString());
        ((BulkSmsView) this.f57683a).finish();
    }

    /* renamed from: Jj */
    public final boolean m13007Jj() {
        return this.f54671g != null && !this.f54674j.getString("inviteMore_17575").equalsIgnoreCase("bulkInvite");
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: Kb */
    public int mo10091Kb() {
        return m13007Jj() ? 0 : this.f54667c.size() + 1;
    }

    /* renamed from: Kj */
    public void m13006Kj() {
        AssertionUtil.isNotNull(this.f57683a, new String[0]);
        if (!this.f54673i.mo13825h("android.permission.SEND_SMS")) {
            ((BulkSmsView) this.f57683a).mo13012q0(103);
        } else {
            ((BulkSmsView) this.f57683a).mo13030Ek(this.f54667c);
        }
    }

    /* renamed from: Lj */
    public void mo10095G(AbstractC19667s abstractC19667s, int i) {
        int mo10064Za = mo10064Za(i);
        if (mo10064Za == 1 || mo10064Za == 2) {
            Participant participant = this.f54667c.get(i);
            String m25885v0 = C10480a.m25885v0(participant);
            String m26058J0 = C10480a.m26058J0(participant);
            abstractC19667s.mo13042u(this.f54670f.mo14235k(participant.f11582o, participant.f11580m, true));
            abstractC19667s.setName(m25885v0);
            abstractC19667s.setPhoneNumber(m26058J0);
            abstractC19667s.mo13041z4(!h.e(m25885v0, m26058J0));
        }
    }

    /* renamed from: Mj */
    public final void m13004Mj() {
        if (this.f57683a == 0 || m13002Oj()) {
            return;
        }
        int mo13027Lu = ((BulkSmsView) this.f57683a).mo13027Lu();
        BulkSmsView bulkSmsView = (BulkSmsView) this.f57683a;
        boolean z = true;
        if (mo13027Lu + 1 >= this.f54667c.size()) {
            z = false;
        }
        bulkSmsView.mo13017Uo(z);
    }

    /* renamed from: Nj */
    public final void m13003Nj(boolean z) {
        if (this.f57683a != 0) {
            boolean m13002Oj = m13002Oj();
            ((BulkSmsView) this.f57683a).mo13023P6(z, m13002Oj ? 1 : 0);
            if (!m13002Oj || !z) {
                return;
            }
            ((BulkSmsView) this.f57683a).mo13011tw(true);
        }
    }

    /* renamed from: Oj */
    public final boolean m13002Oj() {
        return this.f54671g != null;
    }

    /* renamed from: Pj */
    public final void m13001Pj(BulkSmsView bulkSmsView) {
        bulkSmsView.mo13010xt(!this.f54667c.isEmpty() || this.f54671g != null);
        m13003Nj(true);
        m13004Mj();
        if (!this.f54667c.isEmpty()) {
            int size = this.f54667c.size();
            String mo13759k = this.f54672h.mo13759k(C2752R.plurals.plural_friend, size, new Object[0]);
            bulkSmsView.mo13028Ja(this.f54671g != null ? this.f54672h.mo13768b(C2752R.string.referral_invite_more_people_message_with_contact, Integer.valueOf(size), mo13759k, Integer.valueOf(this.f54667c.size() * 7)) : this.f54672h.mo13768b(C2752R.string.referral_invite_more_people_message, Integer.valueOf(size), mo13759k, Integer.valueOf(this.f54667c.size() * 7)), true);
        } else if (this.f54671g == null || !this.f54674j.getString("inviteMore_17575").equalsIgnoreCase("bulkInvite")) {
            bulkSmsView.mo13028Ja(null, false);
        } else {
            bulkSmsView.mo13028Ja(this.f54672h.mo13768b(C2752R.string.referral_invite_more_people_message_with_contact_zero_items, new Object[0]), true);
        }
        bulkSmsView.mo13016f(false);
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: Za */
    public int mo10064Za(int i) {
        int i2;
        if (this.f54667c.size() == i) {
            i2 = m13002Oj() ? 4 : 3;
        } else {
            i2 = 1;
            if (m13002Oj()) {
                i2 = 2;
            }
        }
        return i2;
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f57683a = null;
        AbstractC19844a abstractC19844a = this.f54680p;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
        }
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: gc */
    public long mo10061gc(int i) {
        return 0L;
    }
}
