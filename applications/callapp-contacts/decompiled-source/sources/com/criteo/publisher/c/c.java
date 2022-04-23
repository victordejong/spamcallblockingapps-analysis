package com.criteo.publisher.c;

import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.logging.n;
import com.criteo.publisher.model.o;
import com.criteo.publisher.model.r;
import com.criteo.publisher.model.s;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/c/c.class */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final g f17206a = h.a(c.class);

    /* renamed from: b  reason: collision with root package name */
    private final n f17207b;

    public c(n nVar) {
        this.f17207b = nVar;
    }

    @Override // com.criteo.publisher.c.a
    public final void a() {
        this.f17206a.a("onSdkInitialized", new Object[0]);
        this.f17207b.a();
    }

    @Override // com.criteo.publisher.c.a
    public final void a(com.criteo.publisher.model.n nVar, s sVar) {
        this.f17206a.a("onBidConsumed: %s", sVar);
    }

    @Override // com.criteo.publisher.c.a
    public final void a(o oVar) {
        this.f17206a.a("onCdbCallStarted: %s", oVar);
    }

    @Override // com.criteo.publisher.c.a
    public final void a(o oVar, r rVar) {
        this.f17206a.a("onCdbCallFinished: %s", rVar);
    }

    @Override // com.criteo.publisher.c.a
    public final void a(o oVar, Exception exc) {
        this.f17206a.a("onCdbCallFailed", exc);
    }

    @Override // com.criteo.publisher.c.a
    public final void a(s sVar) {
        this.f17206a.a("onBidCached: %s", sVar);
    }
}
