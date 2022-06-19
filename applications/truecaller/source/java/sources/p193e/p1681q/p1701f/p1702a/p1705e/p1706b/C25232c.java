package p193e.p1681q.p1701f.p1702a.p1705e.p1706b;

import java.util.ArrayList;
/* renamed from: e.q.f.a.e.b.c */
/* loaded from: classes16-dex2jar.jar:e/q/f/a/e/b/c.class */
public class C25232c {

    /* renamed from: a */
    public ArrayList<C25229a> f70565a;

    /* renamed from: b */
    public ArrayList<C25229a> f70566b;

    /* renamed from: c */
    public boolean f70567c = false;

    /* renamed from: d */
    public boolean f70568d = false;

    /* renamed from: a */
    public void m3786a(C25229a c25229a) {
        if (!this.f70567c) {
            if (this.f70565a == null) {
                this.f70565a = new ArrayList<>();
            }
            this.f70565a.add(c25229a);
            return;
        }
        if (this.f70566b == null) {
            this.f70566b = new ArrayList<>();
        }
        this.f70566b.add(c25229a);
    }

    /* renamed from: b */
    public ArrayList<C25229a> m3785b() {
        if (!this.f70568d) {
            this.f70567c = true;
            this.f70568d = true;
            return this.f70565a;
        }
        ArrayList<C25229a> arrayList = this.f70566b;
        if (arrayList == null || arrayList.size() == 0) {
            this.f70568d = false;
            this.f70567c = false;
            return null;
        }
        this.f70565a.addAll(this.f70566b);
        ArrayList<C25229a> arrayList2 = new ArrayList<>(this.f70566b);
        this.f70566b = new ArrayList<>();
        return arrayList2;
    }

    /* renamed from: c */
    public C25229a m3784c() {
        return this.f70565a.get(0);
    }
}
