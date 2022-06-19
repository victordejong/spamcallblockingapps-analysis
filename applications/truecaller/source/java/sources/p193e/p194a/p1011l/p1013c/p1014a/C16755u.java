package p193e.p194a.p1011l.p1013c.p1014a;

import java.util.List;
import java.util.Objects;
import p1727n3.p1744b0.p1745a.C25586h;
import s1.a.c;
import s1.z.c.d0;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.u */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/u.class */
public final class C16755u extends C25586h.AbstractC25588b {

    /* renamed from: a */
    public final List<Object> f46974a;

    /* renamed from: b */
    public final List<Object> f46975b;

    public C16755u(List<? extends Object> list, List<? extends Object> list2) {
        l.e(list, "oldList");
        l.e(list2, "newList");
        this.f46974a = list;
        this.f46975b = list2;
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public boolean areContentsTheSame(int i, int i2) {
        return l.a(this.f46974a.get(i), this.f46975b.get(i2));
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public boolean areItemsTheSame(int i, int i2) {
        boolean z = true;
        if (i == i2 && !(!l.a(d0.a(this.f46974a.get(i).getClass()), d0.a(this.f46975b.get(i2).getClass())))) {
            if (!(this.f46974a.get(i) instanceof C16710n0)) {
                if (this.f46974a.get(i) instanceof C16717p) {
                    Object obj = this.f46974a.get(i);
                    Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardItem");
                    c a = d0.a(((C16717p) obj).f46880b.getClass());
                    Object obj2 = this.f46975b.get(i2);
                    Objects.requireNonNull(obj2, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardItem");
                    z = l.a(a, d0.a(((C16717p) obj2).f46880b.getClass()));
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public int getNewListSize() {
        return this.f46975b.size();
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public int getOldListSize() {
        return this.f46974a.size();
    }
}
