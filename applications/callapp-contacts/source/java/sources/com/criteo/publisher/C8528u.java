package com.criteo.publisher;

import com.criteo.publisher.model.AbstractC8499o;
import com.criteo.publisher.model.C8498n;
import com.criteo.publisher.model.C8502r;
import com.criteo.publisher.model.C8503s;
import com.criteo.publisher.p243c.AbstractC8259a;
import com.criteo.publisher.p252k.C8368a;
import com.criteo.publisher.p256m0.C8444o;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.criteo.publisher.u */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/u.class */
public final class C8528u extends AbstractC8334g {

    /* renamed from: a */
    private AbstractC8270d f30386a;

    /* renamed from: c */
    private final C8272e f30387c;

    /* renamed from: d */
    private final C8498n f30388d;

    /* renamed from: e */
    private final AbstractC8259a f30389e;

    /* renamed from: f */
    private final AtomicBoolean f30390f = new AtomicBoolean(false);

    public C8528u(AbstractC8270d abstractC8270d, AbstractC8259a abstractC8259a, C8272e c8272e, C8498n c8498n, C8368a c8368a) {
        super(abstractC8259a, c8272e, c8368a);
        this.f30386a = abstractC8270d;
        this.f30389e = abstractC8259a;
        this.f30387c = c8272e;
        this.f30388d = c8498n;
    }

    /* renamed from: a */
    private void m25369a(C8503s c8503s) {
        if (this.f30387c.m25936a(c8503s)) {
            this.f30387c.m25935a(Collections.singletonList(c8503s));
        } else if (c8503s.m25537n()) {
            this.f30386a.mo25711a(c8503s);
            this.f30389e.mo25901a(this.f30388d, c8503s);
            return;
        }
        this.f30386a.mo25712a();
    }

    /* renamed from: a */
    public final void m25372a() {
        if (this.f30390f.compareAndSet(false, true)) {
            this.f30387c.m25937a(this.f30388d, this.f30386a);
            this.f30386a = null;
        }
    }

    @Override // com.criteo.publisher.AbstractC8334g
    /* renamed from: a */
    public final void mo25371a(AbstractC8499o abstractC8499o, C8502r c8502r) {
        super.mo25371a(abstractC8499o, c8502r);
        if (c8502r.m25556b().size() > 1) {
            C8444o.m25675a((Throwable) new IllegalStateException("During a live request, only one bid will be fetched at a time."));
        }
        if (!this.f30390f.compareAndSet(false, true)) {
            this.f30387c.m25935a(c8502r.m25556b());
            return;
        }
        if (c8502r.m25556b().size() == 1) {
            m25369a(c8502r.m25556b().get(0));
        } else {
            this.f30386a.mo25712a();
        }
        this.f30386a = null;
    }

    @Override // com.criteo.publisher.AbstractC8334g
    /* renamed from: a */
    public final void mo25370a(AbstractC8499o abstractC8499o, Exception exc) {
        super.mo25370a(abstractC8499o, exc);
        m25372a();
    }
}
