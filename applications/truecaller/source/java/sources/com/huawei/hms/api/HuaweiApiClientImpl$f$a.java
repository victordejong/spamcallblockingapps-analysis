package com.huawei.hms.api;

import com.huawei.hms.api.HuaweiApiClientImpl;
import com.huawei.hms.support.api.ResolveResult;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/HuaweiApiClientImpl$f$a.class */
public class HuaweiApiClientImpl$f$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ResolveResult f7283a;

    /* renamed from: b */
    public final /* synthetic */ HuaweiApiClientImpl.f f7284b;

    public HuaweiApiClientImpl$f$a(HuaweiApiClientImpl.f fVar, ResolveResult resolveResult) {
        this.f7284b = fVar;
        this.f7283a = resolveResult;
    }

    @Override // java.lang.Runnable
    public void run() {
        HuaweiApiClientImpl.b(this.f7284b.a, this.f7283a);
    }
}
