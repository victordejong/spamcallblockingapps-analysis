package p193e.p194a.p195a.p269n.p270j;

import javax.inject.Inject;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p195a.p231g.p234l0.C6227c;
import p193e.p194a.p195a.p271o.AbstractC7107p;
import s1.z.c.l;
/* renamed from: e.a.a.n.j.i */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/j/i.class */
public final class C7017i extends AbstractC18894c<AbstractC7036q> implements Object, AbstractC18904l {

    /* renamed from: b */
    public final AbstractC7037r f22664b;

    /* renamed from: c */
    public final AbstractC7034o f22665c;

    /* renamed from: d */
    public final AbstractC18951b0 f22666d;

    /* renamed from: e */
    public final AbstractC7107p f22667e;

    @Inject
    public C7017i(AbstractC7037r abstractC7037r, AbstractC7034o abstractC7034o, AbstractC18951b0 abstractC18951b0, AbstractC7107p abstractC7107p) {
        l.e(abstractC7037r, "model");
        l.e(abstractC7034o, "actionListener");
        l.e(abstractC18951b0, "dateHelper");
        l.e(abstractC7107p, "storageUtils");
        this.f22664b = abstractC7037r;
        this.f22665c = abstractC7034o;
        this.f22666d = abstractC18951b0;
        this.f22667e = abstractC7107p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c5, code lost:
        if (p193e.p194a.p1129p5.p1132s0.C19286f.m13665n(r0) != false) goto L26;
     */
    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo11464G(java.lang.Object r6, int r7) {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p269n.p270j.C7017i.mo11464G(java.lang.Object, int):void");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f22664b.mo30240ph();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        C6227c mo30235zc = this.f22664b.mo30235zc(i);
        return mo30235zc != null ? mo30235zc.f20876f : (char) 65535;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        C6227c mo30235zc = this.f22664b.mo30235zc(c18900h.f53002b);
        boolean z = false;
        if (mo30235zc != null) {
            String str = c18900h.f53001a;
            int hashCode = str.hashCode();
            if (hashCode == -1743572928) {
                z = false;
                if (str.equals("ItemEvent.CLICKED")) {
                    z = this.f22665c.mo30241o8(mo30235zc);
                }
            } else if (hashCode == -1314591573) {
                z = false;
                if (str.equals("ItemEvent.LONG_CLICKED")) {
                    z = this.f22665c.mo30247R9(mo30235zc);
                }
            } else if (hashCode != -487085933) {
                z = false;
            } else {
                z = false;
                if (str.equals("ItemEvent.ACTION_DOWNLOAD_CLICK")) {
                    z = this.f22665c.mo30237yg(mo30235zc);
                }
            }
        }
        return z;
    }
}
