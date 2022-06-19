package com.bytedance.sdk.adnet.err;

import android.content.Intent;
import com.bytedance.sdk.adnet.core.C4211i;
/* renamed from: com.bytedance.sdk.adnet.err.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/err/a.class */
public class C4239a extends VAdError {

    /* renamed from: b */
    private Intent f15502b;

    public C4239a(C4211i c4211i) {
        super(c4211i);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f15502b != null ? "User needs to (re)enter credentials." : super.getMessage();
    }
}
