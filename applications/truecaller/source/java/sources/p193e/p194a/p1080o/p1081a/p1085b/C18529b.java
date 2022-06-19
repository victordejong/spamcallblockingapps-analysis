package p193e.p194a.p1080o.p1081a.p1085b;

import java.util.List;
import p1727n3.p1744b0.p1745a.C25586h;
import s1.z.c.l;
/* renamed from: e.a.o.a.b.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/b/b.class */
public final class C18529b extends C25586h.AbstractC25588b {

    /* renamed from: a */
    public final List<C18539j> f52272a;

    /* renamed from: b */
    public final List<C18539j> f52273b;

    public C18529b(List<C18539j> list, List<C18539j> list2) {
        l.e(list, "oldContacts");
        l.e(list2, "newContacts");
        this.f52272a = list;
        this.f52273b = list2;
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public boolean areContentsTheSame(int i, int i2) {
        return l.a(this.f52272a.get(i), this.f52273b.get(i2));
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public boolean areItemsTheSame(int i, int i2) {
        return l.a(this.f52272a.get(i), this.f52273b.get(i2));
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public int getNewListSize() {
        return this.f52273b.size();
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public int getOldListSize() {
        return this.f52272a.size();
    }
}
