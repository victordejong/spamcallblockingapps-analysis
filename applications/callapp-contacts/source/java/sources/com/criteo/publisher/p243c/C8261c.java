package com.criteo.publisher.p243c;

import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.logging.C8416n;
import com.criteo.publisher.model.AbstractC8499o;
import com.criteo.publisher.model.C8498n;
import com.criteo.publisher.model.C8502r;
import com.criteo.publisher.model.C8503s;
/* renamed from: com.criteo.publisher.c.c */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/c/c.class */
public class C8261c implements AbstractC8259a {

    /* renamed from: a */
    private final C8402g f29812a = C8404h.m25741a(C8261c.class);

    /* renamed from: b */
    private final C8416n f29813b;

    public C8261c(C8416n c8416n) {
        this.f29813b = c8416n;
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25906a() {
        this.f29812a.m25742a("onSdkInitialized", new Object[0]);
        this.f29813b.m25715a();
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25901a(C8498n c8498n, C8503s c8503s) {
        this.f29812a.m25742a("onBidConsumed: %s", c8503s);
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25900a(AbstractC8499o abstractC8499o) {
        this.f29812a.m25742a("onCdbCallStarted: %s", abstractC8499o);
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25898a(AbstractC8499o abstractC8499o, C8502r c8502r) {
        this.f29812a.m25742a("onCdbCallFinished: %s", c8502r);
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25897a(AbstractC8499o abstractC8499o, Exception exc) {
        this.f29812a.m25743a("onCdbCallFailed", exc);
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25896a(C8503s c8503s) {
        this.f29812a.m25742a("onBidCached: %s", c8503s);
    }
}
