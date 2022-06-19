package p193e.p194a.p1275v.p1276a.p1298r0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.v.a.r0.e */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/r0/e.class */
public final class C20841e {

    /* renamed from: a */
    public final AbstractC20845h f58560a;

    /* renamed from: b */
    public final AbstractC20845h f58561b;

    /* renamed from: c */
    public final AbstractC20845h f58562c;

    public C20841e(AbstractC20845h abstractC20845h, AbstractC20845h abstractC20845h2, AbstractC20845h abstractC20845h3) {
        l.e(abstractC20845h, "tagPainter");
        l.e(abstractC20845h2, "suggestedNamePainter");
        l.e(abstractC20845h3, "invitePainter");
        this.f58560a = abstractC20845h;
        this.f58561b = abstractC20845h2;
        this.f58562c = abstractC20845h3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20841e)) {
                return false;
            }
            C20841e c20841e = (C20841e) obj;
            return l.a(this.f58560a, c20841e.f58560a) && l.a(this.f58561b, c20841e.f58561b) && l.a(this.f58562c, c20841e.f58562c);
        }
        return true;
    }

    public int hashCode() {
        AbstractC20845h abstractC20845h = this.f58560a;
        int i = 0;
        int hashCode = abstractC20845h != null ? abstractC20845h.hashCode() : 0;
        AbstractC20845h abstractC20845h2 = this.f58561b;
        int hashCode2 = abstractC20845h2 != null ? abstractC20845h2.hashCode() : 0;
        AbstractC20845h abstractC20845h3 = this.f58562c;
        if (abstractC20845h3 != null) {
            i = abstractC20845h3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DetailsViewFeedbackAppearance(tagPainter=");
        m8728C.append(this.f58560a);
        m8728C.append(", suggestedNamePainter=");
        m8728C.append(this.f58561b);
        m8728C.append(", invitePainter=");
        m8728C.append(this.f58562c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
