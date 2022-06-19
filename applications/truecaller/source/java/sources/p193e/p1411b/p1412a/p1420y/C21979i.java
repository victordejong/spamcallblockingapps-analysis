package p193e.p1411b.p1412a.p1420y;

import com.tenor.android.core.constant.StringConstant;
import p1727n3.p1807k.p1820h.C26553c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.y.i */
/* loaded from: classes-dex2jar.jar:e/b/a/y/i.class */
public class C21979i<T> {

    /* renamed from: a */
    public T f61031a;

    /* renamed from: b */
    public T f61032b;

    public boolean equals(Object obj) {
        if (!(obj instanceof C26553c)) {
            return false;
        }
        C26553c c26553c = (C26553c) obj;
        F f = c26553c.f74395a;
        Object obj2 = this.f61031a;
        boolean z = false;
        if (f == obj2 || (f != 0 && f.equals(obj2))) {
            S s = c26553c.f74396b;
            Object obj3 = this.f61032b;
            z = false;
            if (s == obj3 || (s != 0 && s.equals(obj3))) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        T t = this.f61031a;
        int i = 0;
        int hashCode = t == null ? 0 : t.hashCode();
        T t2 = this.f61032b;
        if (t2 != null) {
            i = t2.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Pair{");
        m8728C.append(String.valueOf(this.f61031a));
        m8728C.append(StringConstant.SPACE);
        m8728C.append(String.valueOf(this.f61032b));
        m8728C.append("}");
        return m8728C.toString();
    }
}
