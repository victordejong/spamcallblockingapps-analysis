package p1727n3.p1834m0;

import java.util.Collections;
import java.util.List;
import p1727n3.p1834m0.p1835c0.C26688g;
/* renamed from: n3.m0.w */
/* loaded from: classes-dex2jar.jar:n3/m0/w.class */
public abstract class AbstractC26854w {
    /* renamed from: a */
    public abstract AbstractC26844s mo1290a();

    /* renamed from: b */
    public final AbstractC26854w m1289b(C26842r c26842r) {
        List singletonList = Collections.singletonList(c26842r);
        C26688g c26688g = (C26688g) this;
        if (!singletonList.isEmpty()) {
            c26688g = new C26688g(c26688g.f74699a, c26688g.f74700b, EnumC26832h.KEEP, singletonList, Collections.singletonList(c26688g));
        }
        return c26688g;
    }
}
