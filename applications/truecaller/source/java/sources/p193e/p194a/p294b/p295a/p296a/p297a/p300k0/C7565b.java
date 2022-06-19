package p193e.p194a.p294b.p295a.p296a.p297a.p300k0;

import java.util.List;
import p1727n3.p1744b0.p1745a.C25586h;
import s1.z.c.l;
/* renamed from: e.a.b.a.a.a.k0.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/k0/b.class */
public final class C7565b extends C25586h.AbstractC25588b {

    /* renamed from: a */
    public final List<String> f23885a;

    /* renamed from: b */
    public final List<String> f23886b;

    public C7565b(List<String> list, List<String> list2) {
        l.e(list, "oldImageUrls");
        l.e(list2, "newImageUrls");
        this.f23885a = list;
        this.f23886b = list2;
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public boolean areContentsTheSame(int i, int i2) {
        return true;
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public boolean areItemsTheSame(int i, int i2) {
        return l.a(this.f23885a.get(i), this.f23886b.get(i2));
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public int getNewListSize() {
        return this.f23886b.size();
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public int getOldListSize() {
        return this.f23885a.size();
    }
}
