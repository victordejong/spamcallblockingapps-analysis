package com.facebook.appevents;

import android.content.Context;
import com.facebook.g;
import com.facebook.internal.b;
import java.util.HashMap;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<a, o> f19516a = new HashMap<>();

    private o b(a aVar) {
        o oVar;
        synchronized (this) {
            o oVar2 = this.f19516a.get(aVar);
            oVar = oVar2;
            if (oVar2 == null) {
                Context i = g.i();
                oVar = new o(b.b(i), g.b(i));
            }
            this.f19516a.put(aVar, oVar);
        }
        return oVar;
    }

    public final o a(a aVar) {
        o oVar;
        synchronized (this) {
            oVar = this.f19516a.get(aVar);
        }
        return oVar;
    }

    public final Set<a> a() {
        Set<a> keySet;
        synchronized (this) {
            keySet = this.f19516a.keySet();
        }
        return keySet;
    }

    public final void a(a aVar, c cVar) {
        synchronized (this) {
            b(aVar).a(cVar);
        }
    }

    public final void a(n nVar) {
        synchronized (this) {
            if (nVar != null) {
                for (a aVar : nVar.a()) {
                    o b2 = b(aVar);
                    for (c cVar : nVar.a(aVar)) {
                        b2.a(cVar);
                    }
                }
            }
        }
    }

    public final int b() {
        int i;
        synchronized (this) {
            i = 0;
            for (o oVar : this.f19516a.values()) {
                i += oVar.a();
            }
        }
        return i;
    }
}
