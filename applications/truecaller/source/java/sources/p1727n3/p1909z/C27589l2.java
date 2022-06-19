package p1727n3.p1909z;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.List;
import p1727n3.p1909z.AbstractC27583k2;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: n3.z.l2 */
/* loaded from: classes-dex2jar.jar:n3/z/l2.class */
public final class C27589l2<Key, Value> {

    /* renamed from: a */
    public final List<AbstractC27583k2.AbstractC27585b.b<Key, Value>> f77754a;

    /* renamed from: b */
    public final Integer f77755b;

    /* renamed from: c */
    public final C27549a2 f77756c;

    /* renamed from: d */
    public final int f77757d;

    public C27589l2(List<AbstractC27583k2.AbstractC27585b.b<Key, Value>> list, Integer num, C27549a2 c27549a2, int i) {
        l.e(list, "pages");
        l.e(c27549a2, DTBMetricsConfiguration.CONFIG_DIR);
        this.f77754a = list;
        this.f77755b = num;
        this.f77756c = c27549a2;
        this.f77757d = i;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (obj instanceof C27589l2) {
            C27589l2 c27589l2 = (C27589l2) obj;
            if (l.a(this.f77754a, c27589l2.f77754a) && l.a(this.f77755b, c27589l2.f77755b) && l.a(this.f77756c, c27589l2.f77756c) && this.f77757d == c27589l2.f77757d) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        int hashCode = this.f77754a.hashCode();
        Integer num = this.f77755b;
        return this.f77756c.hashCode() + hashCode + (num != null ? num.hashCode() : 0) + this.f77757d;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PagingState(pages=");
        m8728C.append(this.f77754a);
        m8728C.append(", anchorPosition=");
        m8728C.append(this.f77755b);
        m8728C.append(", config=");
        m8728C.append(this.f77756c);
        m8728C.append(", ");
        m8728C.append("leadingPlaceholderCount=");
        return C22128a.m8701I2(m8728C, this.f77757d, ')');
    }
}
