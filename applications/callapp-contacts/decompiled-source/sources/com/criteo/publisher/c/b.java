package com.criteo.publisher.c;

import com.criteo.publisher.model.n;
import com.criteo.publisher.model.o;
import com.criteo.publisher.model.r;
import com.criteo.publisher.model.s;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/c/b.class */
public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final List<a> f17205a = new ArrayList();

    @Override // com.criteo.publisher.c.a
    public final void a() {
        for (a aVar : this.f17205a) {
            aVar.a();
        }
    }

    public final void a(a aVar) {
        this.f17205a.add(aVar);
    }

    @Override // com.criteo.publisher.c.a
    public final void a(n nVar, s sVar) {
        for (a aVar : this.f17205a) {
            aVar.a(nVar, sVar);
        }
    }

    @Override // com.criteo.publisher.c.a
    public final void a(o oVar) {
        for (a aVar : this.f17205a) {
            aVar.a(oVar);
        }
    }

    @Override // com.criteo.publisher.c.a
    public final void a(o oVar, r rVar) {
        for (a aVar : this.f17205a) {
            aVar.a(oVar, rVar);
        }
    }

    @Override // com.criteo.publisher.c.a
    public final void a(o oVar, Exception exc) {
        for (a aVar : this.f17205a) {
            aVar.a(oVar, exc);
        }
    }

    @Override // com.criteo.publisher.c.a
    public final void a(s sVar) {
        for (a aVar : this.f17205a) {
            aVar.a(sVar);
        }
    }
}
