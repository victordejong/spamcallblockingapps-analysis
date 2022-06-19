package p193e.p194a.p195a.p224d;

import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.views.Switch;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p224d.AbstractC5931s;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6127a0;
import p193e.p194a.p195a.p231g.p234l0.C6230f;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import p193e.p194a.p997k3.p1000l.p1001k.C16503a;
import s1.u.i;
import s1.u.s;
import s1.u.t;
import s1.z.c.l;
/* renamed from: e.a.a.d.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/e.class */
public final class C5917e extends AbstractC5926n {

    /* renamed from: b */
    public AbstractC5937u f19769b;

    /* renamed from: c */
    public AbstractC6127a0 f19770c;

    /* renamed from: d */
    public Integer f19771d;

    /* renamed from: e */
    public Integer f19772e;

    /* renamed from: g */
    public C6230f f19774g;

    /* renamed from: j */
    public boolean f19777j;

    /* renamed from: k */
    public boolean f19778k;

    /* renamed from: o */
    public final String f19782o;

    /* renamed from: p */
    public final String f19783p;

    /* renamed from: q */
    public final String f19784q;

    /* renamed from: r */
    public final String f19785r;

    /* renamed from: s */
    public final AbstractC19022f0 f19786s;

    /* renamed from: t */
    public final AbstractC16498f f19787t;

    /* renamed from: u */
    public final AbstractC5931s f19788u;

    /* renamed from: v */
    public final AbstractC6392i0 f19789v;

    /* renamed from: w */
    public final C8601l0 f19790w;

    /* renamed from: f */
    public List<? extends Participant> f19773f = s.a;

    /* renamed from: h */
    public String f19775h = "";

    /* renamed from: i */
    public String f19776i = "";

    /* renamed from: l */
    public Map<String, C16503a> f19779l = t.a;

    /* renamed from: m */
    public List<C6230f> f19780m = new ArrayList();

    /* renamed from: n */
    public List<C6230f> f19781n = new ArrayList();

    @Inject
    public C5917e(AbstractC19022f0 abstractC19022f0, AbstractC16498f abstractC16498f, AbstractC5931s abstractC5931s, AbstractC19223c0 abstractC19223c0, AbstractC6392i0 abstractC6392i0, C8601l0 c8601l0) {
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC16498f, "numberProvider");
        l.e(abstractC5931s, AnalyticsConstants.MODE);
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC6392i0, "messageSettings");
        l.e(c8601l0, "timestampUtil");
        this.f19786s = abstractC19022f0;
        this.f19787t = abstractC16498f;
        this.f19788u = abstractC5931s;
        this.f19789v = abstractC6392i0;
        this.f19790w = c8601l0;
        String mo13768b = abstractC19223c0.mo13768b(C2752R.string.NewConversationSectionOtherContacts, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…tionSectionOtherContacts)");
        this.f19782o = mo13768b;
        String mo13768b2 = abstractC19223c0.mo13768b(C2752R.string.NewConversationSectionImContacts, new Object[0]);
        l.d(mo13768b2, "resourceProvider.getStri…rsationSectionImContacts)");
        this.f19783p = mo13768b2;
        String mo13768b3 = abstractC19223c0.mo13768b(C2752R.string.NewConversationSectionRecentlyContacted, new Object[0]);
        l.d(mo13768b3, "resourceProvider.getStri…SectionRecentlyContacted)");
        this.f19784q = mo13768b3;
        String mo13768b4 = abstractC19223c0.mo13768b(C2752R.string.NewConversationSectionOtherConversations, new Object[0]);
        l.d(mo13768b4, "resourceProvider.getStri…ectionOtherConversations)");
        this.f19785r = mo13768b4;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5926n
    /* renamed from: A */
    public List<C6230f> mo32209A() {
        return this.f19781n;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5926n
    /* renamed from: B */
    public void mo32208B(AbstractC5937u abstractC5937u) {
        l.e(abstractC5937u, "router");
        this.f19769b = abstractC5937u;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5926n
    /* renamed from: C */
    public void mo32207C() {
        this.f19769b = null;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5926n
    /* renamed from: E */
    public void mo32206E(AbstractC6127a0 abstractC6127a0) {
        AbstractC6127a0 abstractC6127a02 = this.f19770c;
        if (abstractC6127a02 != null) {
            abstractC6127a02.close();
        }
        this.f19770c = abstractC6127a0;
        this.f19771d = (abstractC6127a0 == null || !abstractC6127a0.moveToFirst()) ? null : Integer.valueOf(abstractC6127a0.getGroupId());
        this.f19772e = (abstractC6127a0 == null || !abstractC6127a0.moveToLast()) ? null : Integer.valueOf(abstractC6127a0.getGroupId());
        this.f19774g = null;
        this.f19775h = "";
        this.f19776i = "";
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5926n
    /* renamed from: F */
    public void mo32205F(Map<String, C16503a> map) {
        l.e(map, "participants");
        this.f19779l = map;
    }

    /* JADX WARN: Code restructure failed: missing block: B:192:0x05d1, code lost:
        if (r9 != null) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01f2, code lost:
        if ((r9.length() == 0) == false) goto L50;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0522  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x055d  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0576  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x05ad  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x05ca  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x060d  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x05c1 A[EDGE_INSN: B:199:0x05c1->B:189:0x05c1 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v107, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v193 */
    /* JADX WARN: Type inference failed for: r0v224, types: [long] */
    /* JADX WARN: Type inference failed for: r0v235 */
    /* JADX WARN: Type inference failed for: r0v284 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v21 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r1v46 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r8v0, types: [e.a.a.d.e] */
    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo11464G(java.lang.Object r9, int r10) {
        /*
            Method dump skipped, instructions count: 1616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p224d.C5917e.mo11464G(java.lang.Object, int):void");
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5926n
    /* renamed from: H */
    public void mo32204H(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        mo32206E(null);
        l.e(contact, AnalyticsConstants.CONTACT);
        List U = i.U(contact.m35491w());
        List U2 = i.U(contact.m35548R());
        List m3962T1 = C25225a.m3962T1(Integer.valueOf(contact.getSource()));
        List m3962T12 = C25225a.m3962T1(Integer.valueOf(contact.m35533a0()));
        List U3 = i.U(contact.m35530b0());
        List m3962T13 = C25225a.m3962T1(Boolean.valueOf(contact.m35574A0()));
        int i = 0;
        List m3962T14 = C25225a.m3962T1(0);
        String m35573B = contact.m35573B();
        List<Number> m35557M = contact.m35557M();
        l.d(m35557M, "contact.numbers");
        String m35575A = contact.m35575A();
        if (contact.m35572B0()) {
            i = 3;
        }
        this.f19774g = new C6230f(null, false, U, U2, m3962T1, m3962T12, U3, m3962T13, m3962T14, C25225a.m3962T1(Integer.valueOf(i)), m35573B, m35557M, m35575A, 0L, 0L, 1, 4, null, null, null, 3);
        this.f19775h = "";
        this.f19776i = "";
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5926n
    /* renamed from: I */
    public void mo32203I(String str) {
        l.e(str, "error");
        mo32206E(null);
        this.f19775h = "";
        this.f19774g = null;
        this.f19776i = str;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5926n
    /* renamed from: J */
    public void mo32202J(String str) {
        l.e(str, "string");
        mo32206E(null);
        this.f19775h = str;
        this.f19774g = null;
        this.f19776i = "";
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5926n
    /* renamed from: L */
    public void mo32201L(boolean z) {
        this.f19778k = z;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5926n
    /* renamed from: M */
    public void mo32200M(boolean z) {
        this.f19777j = z;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5926n
    /* renamed from: N */
    public void mo32199N(List<? extends Participant> list) {
        l.e(list, "participants");
        this.f19773f = list;
    }

    /* renamed from: O */
    public final C6230f m32228O(int i) {
        AbstractC6127a0 abstractC6127a0 = this.f19770c;
        if (abstractC6127a0 == null || !abstractC6127a0.moveToPosition(i)) {
            AbstractC6127a0 abstractC6127a02 = this.f19770c;
            int count = i - (abstractC6127a02 != null ? abstractC6127a02.getCount() : 0);
            return (this.f19774g != null || !(this.f19780m.isEmpty() ^ true) || count >= this.f19780m.size()) ? this.f19774g : this.f19780m.get(count);
        }
        return abstractC6127a0.mo31751N0();
    }

    /* renamed from: P */
    public final Switch m32227P(C6230f c6230f) {
        int i = c6230f.f20929v;
        return i != 0 ? i != 1 ? i != 2 ? c6230f.f20908a ? Switch.CHAT : m32226Q(c6230f) ? Switch.MMS : Switch.SMS : Switch.CHAT : Switch.MMS : m32226Q(c6230f) ? Switch.MMS : Switch.SMS;
    }

    /* renamed from: Q */
    public final boolean m32226Q(C6230f c6230f) {
        boolean z;
        if (m32224S(c6230f)) {
            z = true;
            if (!C10480a.m25889u1(this.f19788u)) {
                if (c6230f.f20909b != null && c6230f.f20920m.size() > 1) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: R */
    public final boolean m32225R(C6230f c6230f) {
        boolean z = true;
        if (c6230f.f20920m.size() == 1) {
            String m35479e = ((Number) i.B(c6230f.f20920m)).m35479e();
            List<? extends Participant> list = this.f19773f;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (Participant participant : list) {
                    if (l.a(participant.f11572e, m35479e)) {
                        break;
                    }
                }
            }
        }
        z = false;
        return z;
    }

    /* renamed from: S */
    public final boolean m32224S(C6230f c6230f) {
        boolean z;
        if (!(c6230f.f20926s != null)) {
            z = true;
            if (((Number) i.B(c6230f.f20918k)).intValue() != 0) {
                if (((Number) i.B(c6230f.f20918k)).intValue() == 3) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: T */
    public final void m32223T(AbstractC5930r abstractC5930r, Uri uri, String str, String str2, boolean z, String str3) {
        abstractC5930r.mo32178a(new AvatarXConfig(uri, str, str3, n.s1(str2, z), false, z, false, false, false, false, false, false, false, false, null, false, 65488));
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        int i;
        if (this.f19774g == null) {
            if (this.f19775h.length() > 0) {
                return 1;
            }
            if (this.f19776i.length() > 0) {
                return 1;
            }
            if (this.f19778k) {
                AbstractC6127a0 abstractC6127a0 = this.f19770c;
                i = 0;
                if (abstractC6127a0 != null) {
                    i = abstractC6127a0.getCount();
                }
            } else {
                AbstractC6127a0 abstractC6127a02 = this.f19770c;
                int i2 = 0;
                if (abstractC6127a02 != null) {
                    i2 = abstractC6127a02.getCount();
                }
                i = i2 + this.f19780m.size();
            }
            return i;
        }
        return 1;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        Object obj;
        l.e(c18900h, "event");
        C6230f m32228O = m32228O(c18900h.f53002b);
        int i = 0;
        if (m32228O != null) {
            String str = c18900h.f53001a;
            int hashCode = str.hashCode();
            if (hashCode == -1743572928) {
                if (!str.equals("ItemEvent.CLICKED")) {
                    return true;
                }
                AbstractC5931s abstractC5931s = this.f19788u;
                if (!(abstractC5931s instanceof AbstractC5931s.C5934c) && !(abstractC5931s instanceof AbstractC5931s.C5933b)) {
                    AbstractC5937u abstractC5937u = this.f19769b;
                    if (abstractC5937u == null) {
                        return false;
                    }
                    abstractC5937u.mo32168Rb(C25225a.m3962T1(m32228O(c18900h.f53002b)));
                    return true;
                }
                if (l.a(this.f19774g, m32228O)) {
                    this.f19780m.add(m32228O);
                }
                if (this.f19781n.contains(m32228O)) {
                    this.f19781n.remove(m32228O);
                } else {
                    this.f19781n.add(m32228O);
                }
                AbstractC5937u abstractC5937u2 = this.f19769b;
                if (abstractC5937u2 == null) {
                    return true;
                }
                abstractC5937u2.mo32169D4(this.f19781n, c18900h.f53002b);
                return true;
            } else if (hashCode != -134756063 || !str.equals("ItemEvent.CHANGE_TRANSPORT")) {
                return true;
            } else {
                Iterator<T> it = this.f19781n.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    if (l.a((C6230f) obj, m32228O)) {
                        break;
                    }
                }
                C6230f c6230f = (C6230f) obj;
                if (c6230f != null) {
                    Object obj2 = c18900h.f53005e;
                    Objects.requireNonNull(obj2, "null cannot be cast to non-null type com.truecaller.messaging.views.Switch");
                    int ordinal = ((Switch) obj2).ordinal();
                    if (ordinal == 0) {
                        i = 2;
                    } else if (ordinal == 2) {
                        i = 1;
                    }
                    c6230f.f20929v = i;
                }
                AbstractC5937u abstractC5937u3 = this.f19769b;
                if (abstractC5937u3 == null) {
                    return true;
                }
                abstractC5937u3.mo32167s3(this.f19781n);
                return true;
            }
        }
        return false;
    }
}
