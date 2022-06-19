package p1727n3.p1909z;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.z.m2$b */
/* loaded from: classes-dex2jar.jar:n3/z/m2$b.class */
public class m2$b {

    /* renamed from: a */
    public final int f77758a;

    /* renamed from: b */
    public final int f77759b;

    /* renamed from: c */
    public final int f77760c;

    /* renamed from: d */
    public final boolean f77761d;

    public m2$b(int i, int i2, int i3, boolean z) {
        this.f77758a = i;
        this.f77759b = i2;
        this.f77760c = i3;
        this.f77761d = z;
        if (i >= 0) {
            if (!(i2 >= 0)) {
                throw new IllegalStateException(C22128a.m8611i2("invalid load size: ", i2).toString());
            }
            if (!(i3 >= 0)) {
                throw new IllegalStateException(C22128a.m8611i2("invalid page size: ", i3).toString());
            }
            return;
        }
        throw new IllegalStateException(C22128a.m8611i2("invalid start position: ", i).toString());
    }
}
