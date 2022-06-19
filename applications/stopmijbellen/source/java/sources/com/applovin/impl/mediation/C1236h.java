package com.applovin.impl.mediation;

import com.applovin.impl.mediation.p038a.AbstractC1044a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.applovin.impl.mediation.h */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/h.class */
public class C1236h {

    /* renamed from: a */
    private final List<AbstractC1237a> f4444a = Collections.synchronizedList(new ArrayList());

    /* renamed from: com.applovin.impl.mediation.h$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/h$a.class */
    public interface AbstractC1237a {
        /* renamed from: a */
        void mo5642a(AbstractC1044a abstractC1044a);
    }

    /* renamed from: a */
    public void m6108a(AbstractC1044a abstractC1044a) {
        Iterator it2 = new ArrayList(this.f4444a).iterator();
        while (it2.hasNext()) {
            ((AbstractC1237a) it2.next()).mo5642a(abstractC1044a);
        }
    }

    /* renamed from: a */
    public void m6107a(AbstractC1237a abstractC1237a) {
        this.f4444a.add(abstractC1237a);
    }

    /* renamed from: b */
    public void m6106b(AbstractC1237a abstractC1237a) {
        this.f4444a.remove(abstractC1237a);
    }
}
