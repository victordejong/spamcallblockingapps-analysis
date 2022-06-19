package p193e.p1545k.p1546a.p1556c.p1573m0;

import com.amazon.device.ads.DtbConstants;
import java.util.ArrayList;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.k.a.c.m0.c */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/c.class */
public final class C23873c {

    /* renamed from: a */
    public final C23873c f66024a;

    /* renamed from: b */
    public final Class<?> f66025b;

    /* renamed from: c */
    public ArrayList<C23881k> f66026c;

    public C23873c(C23873c c23873c, Class<?> cls) {
        this.f66024a = c23873c;
        this.f66025b = cls;
    }

    public C23873c(Class<?> cls) {
        this.f66024a = null;
        this.f66025b = cls;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[ClassStack (self-refs: ");
        ArrayList<C23881k> arrayList = this.f66026c;
        m8728C.append(arrayList == null ? DtbConstants.NETWORK_TYPE_UNKNOWN : String.valueOf(arrayList.size()));
        m8728C.append(')');
        C23873c c23873c = this;
        while (true) {
            C23873c c23873c2 = c23873c;
            if (c23873c2 == null) {
                m8728C.append(']');
                return m8728C.toString();
            }
            m8728C.append(' ');
            m8728C.append(c23873c2.f66025b.getName());
            c23873c = c23873c2.f66024a;
        }
    }
}
