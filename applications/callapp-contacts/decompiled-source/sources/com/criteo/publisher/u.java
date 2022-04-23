package com.criteo.publisher;

import com.criteo.publisher.c.a;
import com.criteo.publisher.model.n;
import com.criteo.publisher.model.o;
import com.criteo.publisher.model.r;
import com.criteo.publisher.model.s;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/u.class */
public final class u extends g {

    /* renamed from: a  reason: collision with root package name */
    private d f17658a;

    /* renamed from: c  reason: collision with root package name */
    private final e f17659c;

    /* renamed from: d  reason: collision with root package name */
    private final n f17660d;
    private final a e;
    private final AtomicBoolean f = new AtomicBoolean(false);

    public u(d dVar, a aVar, e eVar, n nVar, com.criteo.publisher.k.a aVar2) {
        super(aVar, eVar, aVar2);
        this.f17658a = dVar;
        this.e = aVar;
        this.f17659c = eVar;
        this.f17660d = nVar;
    }

    private void a(s sVar) {
        if (this.f17659c.a(sVar)) {
            this.f17659c.a(Collections.singletonList(sVar));
        } else if (sVar.n()) {
            this.f17658a.a(sVar);
            this.e.a(this.f17660d, sVar);
            return;
        }
        this.f17658a.a();
    }

    public final void a() {
        if (this.f.compareAndSet(false, true)) {
            this.f17659c.a(this.f17660d, this.f17658a);
            this.f17658a = null;
        }
    }

    @Override // com.criteo.publisher.g
    public final void a(o oVar, r rVar) {
        super.a(oVar, rVar);
        if (rVar.b().size() > 1) {
            com.criteo.publisher.m0.o.a((Throwable) new IllegalStateException("During a live request, only one bid will be fetched at a time."));
        }
        if (this.f.compareAndSet(false, true)) {
            if (rVar.b().size() == 1) {
                a(rVar.b().get(0));
            } else {
                this.f17658a.a();
            }
            this.f17658a = null;
            return;
        }
        this.f17659c.a(rVar.b());
    }

    @Override // com.criteo.publisher.g
    public final void a(o oVar, Exception exc) {
        super.a(oVar, exc);
        a();
    }
}
