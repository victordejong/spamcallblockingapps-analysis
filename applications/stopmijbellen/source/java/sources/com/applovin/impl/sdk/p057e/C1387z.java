package com.applovin.impl.sdk.p057e;

import com.applovin.impl.sdk.C1408l;
/* renamed from: com.applovin.impl.sdk.e.z */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/z.class */
public class C1387z extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final Runnable f5228a;

    public C1387z(C1408l c1408l, Runnable runnable) {
        this(c1408l, false, runnable);
    }

    public C1387z(C1408l c1408l, boolean z, Runnable runnable) {
        super("TaskRunnable", c1408l, z);
        this.f5228a = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f5228a.run();
    }
}
