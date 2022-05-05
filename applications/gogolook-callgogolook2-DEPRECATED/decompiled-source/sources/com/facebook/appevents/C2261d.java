package com.facebook.appevents;

import android.content.Context;
import com.facebook.internal.C2381b;
import java.util.HashMap;
import java.util.Set;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.appevents.d */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/d.class */
public class C2261d {

    /* renamed from: a */
    public final HashMap<C2252a, C2287o> f2662a = new HashMap<>();

    /* renamed from: a */
    public int m35362a() {
        int i;
        synchronized (this) {
            i = 0;
            for (C2287o oVar : this.f2662a.values()) {
                i += oVar.m35286a();
            }
        }
        return i;
    }

    /* renamed from: a */
    public C2287o m35361a(C2252a aVar) {
        C2287o oVar;
        synchronized (this) {
            oVar = this.f2662a.get(aVar);
        }
        return oVar;
    }

    /* renamed from: a */
    public void m35360a(C2252a aVar, C2257c cVar) {
        synchronized (this) {
            m35357b(aVar).m35283a(cVar);
        }
    }

    /* renamed from: a */
    public void m35359a(C2284n nVar) {
        synchronized (this) {
            if (nVar != null) {
                for (C2252a aVar : nVar.m35290a()) {
                    C2287o b = m35357b(aVar);
                    for (C2257c cVar : nVar.m35287b(aVar)) {
                        b.m35283a(cVar);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final C2287o m35357b(C2252a aVar) {
        C2287o oVar;
        synchronized (this) {
            C2287o oVar2 = this.f2662a.get(aVar);
            oVar = oVar2;
            if (oVar2 == null) {
                Context e = C6135n.m23746e();
                oVar = new C2287o(C2381b.m34923d(e), C2271g.m35335a(e));
            }
            this.f2662a.put(aVar, oVar);
        }
        return oVar;
    }

    /* renamed from: b */
    public Set<C2252a> m35358b() {
        Set<C2252a> keySet;
        synchronized (this) {
            keySet = this.f2662a.keySet();
        }
        return keySet;
    }
}
