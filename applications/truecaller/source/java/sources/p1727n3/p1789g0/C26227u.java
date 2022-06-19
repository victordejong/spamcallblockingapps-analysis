package p1727n3.p1789g0;

import android.view.View;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.g0.u */
/* loaded from: classes-dex2jar.jar:n3/g0/u.class */
public class C26227u {

    /* renamed from: b */
    public View f73124b;

    /* renamed from: a */
    public final Map<String, Object> f73123a = new HashMap();

    /* renamed from: c */
    public final ArrayList<AbstractC26214m> f73125c = new ArrayList<>();

    @Deprecated
    public C26227u() {
    }

    public C26227u(View view) {
        this.f73124b = view;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C26227u) {
            C26227u c26227u = (C26227u) obj;
            return this.f73124b == c26227u.f73124b && this.f73123a.equals(c26227u.f73123a);
        }
        return false;
    }

    public int hashCode() {
        return this.f73123a.hashCode() + (this.f73124b.hashCode() * 31);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TransitionValues@");
        m8728C.append(Integer.toHexString(hashCode()));
        m8728C.append(":\n");
        StringBuilder m8696K = C22128a.m8696K(m8728C.toString(), "    view = ");
        m8696K.append(this.f73124b);
        m8696K.append(StringConstant.NEW_LINE);
        String m8543z2 = C22128a.m8543z2(m8696K.toString(), "    values:");
        for (String str : this.f73123a.keySet()) {
            m8543z2 = m8543z2 + "    " + str + ": " + this.f73123a.get(str) + StringConstant.NEW_LINE;
        }
        return m8543z2;
    }
}
