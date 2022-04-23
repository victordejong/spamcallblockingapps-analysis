package com.criteo.publisher;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.f.ab;
import com.criteo.publisher.j0.b;
import com.criteo.publisher.j0.c;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.logging.n;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.g;
import com.criteo.publisher.model.o;
import com.criteo.publisher.model.r;
import com.criteo.publisher.model.s;
import com.criteo.publisher.model.t;
import com.explorestack.iab.vast.VastError;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    final t f17224a;

    /* renamed from: b  reason: collision with root package name */
    final g f17225b;

    /* renamed from: c  reason: collision with root package name */
    public final b f17226c;
    private final com.criteo.publisher.d.a e;
    private final h h;
    private final com.criteo.publisher.j0.e i;
    private final com.criteo.publisher.c.a j;
    private final ab k;
    private final n l;
    private final com.criteo.publisher.k.a m;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f17227d = h.a(getClass());
    private final Object f = new Object();
    private final AtomicLong g = new AtomicLong(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/e$a.class */
    public final class a extends g {
        public a() {
            super(e.this.j, e.this, e.this.m);
        }

        @Override // com.criteo.publisher.g
        public final void a(o oVar, r rVar) {
            e.this.a(rVar.b());
            super.a(oVar, rVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(com.criteo.publisher.d.a aVar, t tVar, h hVar, g gVar, b bVar, com.criteo.publisher.j0.e eVar, com.criteo.publisher.c.a aVar2, ab abVar, n nVar, com.criteo.publisher.k.a aVar3) {
        this.e = aVar;
        this.f17224a = tVar;
        this.h = hVar;
        this.f17225b = gVar;
        this.f17226c = bVar;
        this.i = eVar;
        this.j = aVar2;
        this.k = abVar;
        this.l = nVar;
        this.m = aVar3;
    }

    private com.criteo.publisher.model.n a(AdUnit adUnit) {
        return this.f17225b.b(adUnit);
    }

    private s a(AdUnit adUnit, ContextData contextData) {
        com.criteo.publisher.model.n a2;
        s c2;
        if (this.f17224a.h() || (a2 = a(adUnit)) == null) {
            return null;
        }
        synchronized (this.f) {
            if (!a(a2)) {
                a(Collections.singletonList(a2), contextData);
            }
            c2 = c(a2);
        }
        return c2;
    }

    private boolean a(com.criteo.publisher.model.n nVar) {
        boolean a2;
        if (this.g.get() > this.h.a()) {
            return true;
        }
        synchronized (this.f) {
            a2 = a(this.e.a(nVar));
        }
        return a2;
    }

    private void b(AdUnit adUnit, ContextData contextData, d dVar) {
        if (this.f17224a.h()) {
            dVar.a();
            return;
        }
        com.criteo.publisher.model.n a2 = a(adUnit);
        if (a2 == null) {
            dVar.a();
            return;
        }
        synchronized (this.f) {
            b(a2);
            if (a(a2)) {
                a(a2, dVar);
            } else {
                this.i.a(a2, contextData, new u(dVar, this.j, this, a2, this.m));
            }
            this.k.a();
            this.l.a();
        }
    }

    private void b(com.criteo.publisher.model.n nVar) {
        synchronized (this.f) {
            s a2 = this.e.a(nVar);
            if (a2 != null && b(a2)) {
                this.e.b(nVar);
                this.j.a(nVar, a2);
            }
        }
    }

    private boolean b(s sVar) {
        return sVar.a(this.h);
    }

    private static double c(s sVar) {
        return sVar.b() == null ? 0.0d : sVar.b().doubleValue();
    }

    private s c(com.criteo.publisher.model.n nVar) {
        synchronized (this.f) {
            s a2 = this.e.a(nVar);
            if (a2 != null) {
                boolean a3 = a(a2);
                boolean b2 = b(a2);
                if (!a3) {
                    this.e.b(nVar);
                    this.j.a(nVar, a2);
                }
                if (!a3 && !b2) {
                    return a2;
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        if (i > 0) {
            this.f17227d.a(f.a(i));
            this.g.set(this.h.a() + (i * 1000));
        }
    }

    public final void a(AdUnit adUnit, ContextData contextData, d dVar) {
        if (adUnit == null) {
            dVar.a();
        } else if (this.f17224a.i()) {
            b(adUnit, contextData, dVar);
        } else {
            s a2 = a(adUnit, contextData);
            if (a2 != null) {
                dVar.a(a2);
            } else {
                dVar.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(com.criteo.publisher.model.n nVar, d dVar) {
        s c2 = c(nVar);
        if (c2 != null) {
            dVar.a(c2);
        } else {
            dVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(List<s> list) {
        synchronized (this.f) {
            for (s sVar : list) {
                com.criteo.publisher.d.a aVar = this.e;
                if (!a(aVar.a(aVar.a(sVar))) && sVar.n()) {
                    if (c(sVar) > 0.0d && sVar.j() == 0) {
                        sVar.a(VastError.ERROR_CODE_UNKNOWN);
                    }
                    com.criteo.publisher.d.a aVar2 = this.e;
                    com.criteo.publisher.model.n a2 = aVar2.a(sVar);
                    if (a2 != null) {
                        aVar2.f17222a.put(a2, sVar);
                    }
                    this.j.a(sVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(List<com.criteo.publisher.model.n> list, ContextData contextData) {
        if (!this.f17224a.h()) {
            b bVar = this.f17226c;
            a aVar = new a();
            ArrayList<com.criteo.publisher.model.n> arrayList = new ArrayList(list);
            synchronized (bVar.f) {
                arrayList.removeAll(bVar.e.keySet());
                if (!arrayList.isEmpty()) {
                    FutureTask futureTask = new FutureTask(new b.a(new c(bVar.f17368c, bVar.f17366a, bVar.f17367b, arrayList, contextData, aVar), arrayList), null);
                    for (com.criteo.publisher.model.n nVar : arrayList) {
                        bVar.e.put(nVar, futureTask);
                    }
                    try {
                        bVar.f17369d.execute(futureTask);
                    } catch (Throwable th) {
                        bVar.a(arrayList);
                        throw th;
                    }
                }
            }
            this.k.a();
            this.l.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(s sVar) {
        if (sVar == null) {
            return false;
        }
        boolean z = false;
        if (sVar.j() > 0 && c(sVar) == 0.0d) {
            z = false;
            if (!b(sVar)) {
                z = true;
            }
        }
        return z;
    }
}
