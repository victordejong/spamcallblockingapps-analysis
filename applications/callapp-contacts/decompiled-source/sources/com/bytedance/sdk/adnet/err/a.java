package com.bytedance.sdk.adnet.err;

import android.content.Intent;
import com.bytedance.sdk.adnet.core.i;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/err/a.class */
public class a extends VAdError {

    /* renamed from: b  reason: collision with root package name */
    private Intent f8361b;

    public a(i iVar) {
        super(iVar);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f8361b != null ? "User needs to (re)enter credentials." : super.getMessage();
    }
}
