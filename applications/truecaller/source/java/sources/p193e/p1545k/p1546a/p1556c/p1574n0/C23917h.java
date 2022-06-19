package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.io.Serializable;
/* renamed from: e.k.a.c.n0.h */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/h.class */
public final class C23917h implements Serializable {

    /* renamed from: d */
    public static final C23917h f66166d = new C23917h(1, 0, new Object[4]);

    /* renamed from: a */
    public final int f66167a;

    /* renamed from: b */
    public final int f66168b;

    /* renamed from: c */
    public final Object[] f66169c;

    public C23917h(int i, int i2, Object[] objArr) {
        this.f66167a = i;
        this.f66168b = i2;
        this.f66169c = objArr;
    }

    /* renamed from: a */
    public Object m5738a(String str) {
        Object obj;
        int hashCode = str.hashCode() & this.f66167a;
        int i = hashCode << 1;
        Object obj2 = this.f66169c[i];
        if (obj2 == str || str.equals(obj2)) {
            return this.f66169c[i + 1];
        }
        if (obj2 == null) {
            obj = null;
        } else {
            int i2 = this.f66167a + 1;
            int i3 = ((hashCode >> 1) + i2) << 1;
            Object obj3 = this.f66169c[i3];
            if (str.equals(obj3)) {
                obj = this.f66169c[i3 + 1];
            } else {
                obj = null;
                if (obj3 != null) {
                    int i4 = (i2 + (i2 >> 1)) << 1;
                    int i5 = this.f66168b;
                    int i6 = i4;
                    while (true) {
                        obj = null;
                        if (i6 >= i5 + i4) {
                            break;
                        }
                        Object obj4 = this.f66169c[i6];
                        if (obj4 == str || str.equals(obj4)) {
                            break;
                        }
                        i6 += 2;
                    }
                    obj = this.f66169c[i6 + 1];
                }
            }
        }
        return obj;
    }
}
