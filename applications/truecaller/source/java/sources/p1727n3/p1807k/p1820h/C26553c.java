package p1727n3.p1807k.p1820h;

import com.tenor.android.core.constant.StringConstant;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.k.h.c */
/* loaded from: classes-dex2jar.jar:n3/k/h/c.class */
public class C26553c<F, S> {

    /* renamed from: a */
    public final F f74395a;

    /* renamed from: b */
    public final S f74396b;

    public C26553c(F f, S s) {
        this.f74395a = f;
        this.f74396b = s;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C26553c)) {
            return false;
        }
        C26553c c26553c = (C26553c) obj;
        boolean z = false;
        if (Objects.equals(c26553c.f74395a, this.f74395a)) {
            z = false;
            if (Objects.equals(c26553c.f74396b, this.f74396b)) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        F f = this.f74395a;
        int i = 0;
        int hashCode = f == null ? 0 : f.hashCode();
        S s = this.f74396b;
        if (s != null) {
            i = s.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Pair{");
        m8728C.append(this.f74395a);
        m8728C.append(StringConstant.SPACE);
        return C22128a.m8634d(m8728C, this.f74396b, "}");
    }
}
