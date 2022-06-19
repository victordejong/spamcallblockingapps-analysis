package p193e.p194a.p195a.p269n.p270j;

import javax.inject.Inject;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p195a.p231g.p234l0.C6227c;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p195a.p271o.AbstractC7107p;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.n.j.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/j/e.class */
public final class C7013e extends AbstractC18894c<AbstractC7033n> implements Object, AbstractC18904l {

    /* renamed from: b */
    public final AbstractC7037r f22649b;

    /* renamed from: c */
    public final AbstractC7034o f22650c;

    /* renamed from: d */
    public final AbstractC18951b0 f22651d;

    /* renamed from: e */
    public final AbstractC6394b f22652e;

    /* renamed from: f */
    public final AbstractC19233h0 f22653f;

    /* renamed from: g */
    public final AbstractC7107p f22654g;

    @Inject
    public C7013e(AbstractC7037r abstractC7037r, AbstractC7034o abstractC7034o, AbstractC18951b0 abstractC18951b0, AbstractC6394b abstractC6394b, AbstractC19233h0 abstractC19233h0, AbstractC7107p abstractC7107p) {
        l.e(abstractC7037r, "model");
        l.e(abstractC7034o, "actionListener");
        l.e(abstractC18951b0, "dateHelper");
        l.e(abstractC6394b, "messageUtil");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC7107p, "storageUtils");
        this.f22649b = abstractC7037r;
        this.f22650c = abstractC7034o;
        this.f22651d = abstractC18951b0;
        this.f22652e = abstractC6394b;
        this.f22653f = abstractC19233h0;
        this.f22654g = abstractC7107p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c0, code lost:
        if (r6 != null) goto L33;
     */
    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo11464G(java.lang.Object r6, int r7) {
        /*
            Method dump skipped, instructions count: 697
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p269n.p270j.C7013e.mo11464G(java.lang.Object, int):void");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f22649b.mo30240ph();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        C6227c mo30235zc = this.f22649b.mo30235zc(i);
        return mo30235zc != null ? mo30235zc.f20876f : (char) 65535;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        C6227c mo30235zc = this.f22649b.mo30235zc(c18900h.f53002b);
        boolean z = false;
        if (mo30235zc != null) {
            String str = c18900h.f53001a;
            int hashCode = str.hashCode();
            if (hashCode == -1743572928) {
                z = false;
                if (str.equals("ItemEvent.CLICKED")) {
                    z = (!C10480a.m25944j1(mo30235zc) || !this.f22649b.mo30253If().isEmpty()) ? this.f22650c.mo30241o8(mo30235zc) : this.f22650c.mo30237yg(mo30235zc);
                }
            } else if (hashCode != -1314591573) {
                z = false;
            } else {
                z = false;
                if (str.equals("ItemEvent.LONG_CLICKED")) {
                    z = this.f22650c.mo30247R9(mo30235zc);
                }
            }
        }
        return z;
    }
}
