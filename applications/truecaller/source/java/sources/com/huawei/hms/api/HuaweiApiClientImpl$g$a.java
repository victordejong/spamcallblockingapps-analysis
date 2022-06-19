package com.huawei.hms.api;

import com.huawei.hms.api.HuaweiApiClientImpl;
import com.huawei.hms.support.api.ResolveResult;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/HuaweiApiClientImpl$g$a.class */
public class HuaweiApiClientImpl$g$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ResolveResult f7285a;

    /* renamed from: b */
    public final /* synthetic */ HuaweiApiClientImpl.g f7286b;

    public HuaweiApiClientImpl$g$a(HuaweiApiClientImpl.g gVar, ResolveResult resolveResult) {
        this.f7286b = gVar;
        this.f7285a = resolveResult;
    }

    @Override // java.lang.Runnable
    public void run() {
        HuaweiApiClientImpl.a(this.f7286b.a, this.f7285a);
    }
}
