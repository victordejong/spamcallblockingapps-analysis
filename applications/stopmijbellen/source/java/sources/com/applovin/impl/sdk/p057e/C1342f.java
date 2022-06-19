package com.applovin.impl.sdk.p057e;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1420n;
/* renamed from: com.applovin.impl.sdk.e.f */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/f.class */
public class C1342f extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final AbstractC1343a f5135a;

    /* renamed from: com.applovin.impl.sdk.e.f$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/f$a.class */
    public interface AbstractC1343a {
        /* renamed from: a */
        void mo5375a(C1420n.C1426a c1426a);
    }

    public C1342f(C1408l c1408l, AbstractC1343a abstractC1343a) {
        super("TaskCollectAdvertisingId", c1408l, true);
        this.f5135a = abstractC1343a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f5135a.mo5375a(this.f5113b.m5522U().m5392k());
    }
}
