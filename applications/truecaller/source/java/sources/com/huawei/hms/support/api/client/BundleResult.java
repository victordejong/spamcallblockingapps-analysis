package com.huawei.hms.support.api.client;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/client/BundleResult.class */
public class BundleResult {

    /* renamed from: a */
    private int f7791a;

    /* renamed from: b */
    private Bundle f7792b;

    public BundleResult(int i, Bundle bundle) {
        this.f7791a = i;
        this.f7792b = bundle;
    }

    public int getResultCode() {
        return this.f7791a;
    }

    public Bundle getRspBody() {
        return this.f7792b;
    }

    public void setResultCode(int i) {
        this.f7791a = i;
    }

    public void setRspBody(Bundle bundle) {
        this.f7792b = bundle;
    }
}
