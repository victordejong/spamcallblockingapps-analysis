package p193e.p194a.p195a.p269n.p270j;

import javax.inject.Inject;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p195a.p231g.p234l0.C6227c;
import p193e.p194a.p195a.p271o.AbstractC7107p;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.n.j.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/j/a.class */
public final class C7007a extends AbstractC18894c<AbstractC7032m> implements Object, AbstractC18904l {

    /* renamed from: b */
    public final AbstractC7037r f22623b;

    /* renamed from: c */
    public final AbstractC7034o f22624c;

    /* renamed from: d */
    public final AbstractC18951b0 f22625d;

    /* renamed from: e */
    public final AbstractC8541a f22626e;

    /* renamed from: f */
    public final AbstractC7107p f22627f;

    @Inject
    public C7007a(AbstractC7037r abstractC7037r, AbstractC7034o abstractC7034o, AbstractC18951b0 abstractC18951b0, AbstractC8541a abstractC8541a, AbstractC7107p abstractC7107p) {
        l.e(abstractC7037r, "model");
        l.e(abstractC7034o, "actionListener");
        l.e(abstractC18951b0, "dateHelper");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC7107p, "storageUtils");
        this.f22623b = abstractC7037r;
        this.f22624c = abstractC7034o;
        this.f22625d = abstractC18951b0;
        this.f22626e = abstractC8541a;
        this.f22627f = abstractC7107p;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        String str;
        AbstractC7032m abstractC7032m = (AbstractC7032m) obj;
        l.e(abstractC7032m, "itemView");
        C6227c mo30235zc = this.f22623b.mo30235zc(i);
        if (mo30235zc != null) {
            boolean z = true;
            if ((mo30235zc.f20873c & 1) == 0) {
                str = C10480a.m25885v0(C10480a.m25942j3(mo30235zc));
                l.d(str, "ParticipantUtils.getDisp…tachment.toParticipant())");
            } else {
                str = this.f22626e.getString("profileFirstName", "") + ' ' + this.f22626e.getString("profileLastName", "");
            }
            abstractC7032m.setTitle(str);
            StringBuilder sb = new StringBuilder();
            if (this.f22623b.mo30245c8()) {
                sb.append(this.f22627f.mo30114a(mo30235zc.f20889s) + "  • ");
            } else {
                sb.append(this.f22625d.mo14276s(mo30235zc.f20882l) + " • ");
            }
            sb.append(String.valueOf(this.f22625d.mo14273v(mo30235zc.f20872b)));
            String sb2 = sb.toString();
            l.d(sb2, "StringBuilder().apply(builderAction).toString()");
            abstractC7032m.mo30293c(sb2);
            abstractC7032m.setIcon(mo30235zc.f20879i == 3 ? 2131231612 : C10480a.m25944j1(mo30235zc) ? 2131231611 : this.f22623b.mo30243ja() == mo30235zc.f20876f ? 2131232611 : 2131232628);
            abstractC7032m.mo30294b(this.f22623b.mo30253If().contains(Long.valueOf(mo30235zc.f20876f)));
            abstractC7032m.mo30292g(mo30235zc.f20875e);
            if (mo30235zc.f20879i != 1) {
                z = false;
            }
            abstractC7032m.mo30291h(z);
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f22623b.mo30240ph();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        C6227c mo30235zc = this.f22623b.mo30235zc(i);
        return mo30235zc != null ? mo30235zc.f20876f : (char) 65535;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        C6227c mo30235zc = this.f22623b.mo30235zc(c18900h.f53002b);
        boolean z = false;
        if (mo30235zc != null) {
            String str = c18900h.f53001a;
            int hashCode = str.hashCode();
            if (hashCode == -1743572928) {
                z = false;
                if (str.equals("ItemEvent.CLICKED")) {
                    z = (!C10480a.m25944j1(mo30235zc) || !this.f22623b.mo30253If().isEmpty()) ? this.f22624c.mo30241o8(mo30235zc) : this.f22624c.mo30237yg(mo30235zc);
                }
            } else if (hashCode != -1314591573) {
                z = false;
            } else {
                z = false;
                if (str.equals("ItemEvent.LONG_CLICKED")) {
                    z = this.f22624c.mo30247R9(mo30235zc);
                }
            }
        }
        return z;
    }
}
