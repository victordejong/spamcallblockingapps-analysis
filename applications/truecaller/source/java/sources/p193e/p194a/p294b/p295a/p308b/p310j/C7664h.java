package p193e.p194a.p294b.p295a.p308b.p310j;

import p1727n3.p1744b0.p1745a.C25586h;
import s1.z.c.l;
/* renamed from: e.a.b.a.b.j.h */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/b/j/h.class */
public final class C7664h extends C25586h.AbstractC25588b {

    /* renamed from: a */
    public final String[] f24045a;

    /* renamed from: b */
    public String[] f24046b;

    public C7664h(String[] strArr, String[] strArr2) {
        l.e(strArr, "oldImages");
        l.e(strArr2, "newImages");
        this.f24045a = strArr;
        this.f24046b = strArr2;
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public boolean areContentsTheSame(int i, int i2) {
        return true;
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public boolean areItemsTheSame(int i, int i2) {
        return l.a(this.f24045a[i], this.f24046b[i2]);
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public int getNewListSize() {
        return this.f24046b.length;
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public int getOldListSize() {
        return this.f24045a.length;
    }
}
