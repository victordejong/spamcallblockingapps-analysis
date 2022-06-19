package com.criteo.publisher.p243c;

import com.criteo.publisher.model.AbstractC8499o;
import com.criteo.publisher.model.C8498n;
import com.criteo.publisher.model.C8502r;
import com.criteo.publisher.model.C8503s;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.criteo.publisher.c.b */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/c/b.class */
public final class C8260b implements AbstractC8259a {

    /* renamed from: a */
    private final List<AbstractC8259a> f29811a = new ArrayList();

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25906a() {
        for (AbstractC8259a abstractC8259a : this.f29811a) {
            abstractC8259a.mo25906a();
        }
    }

    /* renamed from: a */
    public final void m25958a(AbstractC8259a abstractC8259a) {
        this.f29811a.add(abstractC8259a);
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25901a(C8498n c8498n, C8503s c8503s) {
        for (AbstractC8259a abstractC8259a : this.f29811a) {
            abstractC8259a.mo25901a(c8498n, c8503s);
        }
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25900a(AbstractC8499o abstractC8499o) {
        for (AbstractC8259a abstractC8259a : this.f29811a) {
            abstractC8259a.mo25900a(abstractC8499o);
        }
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25898a(AbstractC8499o abstractC8499o, C8502r c8502r) {
        for (AbstractC8259a abstractC8259a : this.f29811a) {
            abstractC8259a.mo25898a(abstractC8499o, c8502r);
        }
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25897a(AbstractC8499o abstractC8499o, Exception exc) {
        for (AbstractC8259a abstractC8259a : this.f29811a) {
            abstractC8259a.mo25897a(abstractC8499o, exc);
        }
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25896a(C8503s c8503s) {
        for (AbstractC8259a abstractC8259a : this.f29811a) {
            abstractC8259a.mo25896a(c8503s);
        }
    }
}
