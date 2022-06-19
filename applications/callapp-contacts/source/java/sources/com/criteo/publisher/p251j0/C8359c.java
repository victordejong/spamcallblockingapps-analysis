package com.criteo.publisher.p251j0;

import com.criteo.publisher.AbstractC8334g;
import com.criteo.publisher.AbstractC8336h;
import com.criteo.publisher.AbstractRunnableC8529v;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.model.AbstractC8499o;
import com.criteo.publisher.model.C8498n;
import com.criteo.publisher.model.C8500p;
import com.criteo.publisher.model.C8502r;
import com.criteo.publisher.model.C8503s;
import java.util.List;
import java.util.concurrent.ExecutionException;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.j0.c */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/c.class */
public final class C8359c extends AbstractRunnableC8529v {

    /* renamed from: a */
    private final C8364g f30032a;

    /* renamed from: b */
    private final C8500p f30033b;

    /* renamed from: c */
    private final AbstractC8336h f30034c;

    /* renamed from: d */
    private final List<C8498n> f30035d;

    /* renamed from: e */
    private final ContextData f30036e;

    /* renamed from: f */
    private final AbstractC8334g f30037f;

    public C8359c(C8364g c8364g, C8500p c8500p, AbstractC8336h abstractC8336h, List<C8498n> list, ContextData contextData, AbstractC8334g abstractC8334g) {
        this.f30032a = c8364g;
        this.f30033b = c8500p;
        this.f30034c = abstractC8336h;
        this.f30035d = list;
        this.f30036e = contextData;
        this.f30037f = abstractC8334g;
    }

    @Override // com.criteo.publisher.AbstractRunnableC8529v
    /* renamed from: a */
    public final void mo25368a() throws ExecutionException, InterruptedException {
        AbstractC8499o cdbRequest = this.f30033b.m25569a(this.f30035d, this.f30036e);
        String str = this.f30033b.m25572a().get();
        AbstractC8334g abstractC8334g = this.f30037f;
        C18524p.m3841c(cdbRequest, "cdbRequest");
        abstractC8334g.f29974b.mo25900a(cdbRequest);
        try {
            C8502r m25789a = this.f30032a.m25789a(cdbRequest, str);
            long mo25381a = this.f30034c.mo25381a();
            for (C8503s c8503s : m25789a.m25556b()) {
                c8503s.m25552a(mo25381a);
            }
            this.f30037f.mo25371a(cdbRequest, m25789a);
        } catch (Exception e) {
            this.f30037f.mo25370a(cdbRequest, e);
        }
    }
}
