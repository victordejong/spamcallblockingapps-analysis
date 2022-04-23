package com.bytedance.sdk.openadsdk.k.e;

import com.bytedance.sdk.adnet.core.j;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.IHttpStack;
import com.bytedance.sdk.openadsdk.j.e;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/e/d.class */
public class d implements b {

    /* renamed from: a  reason: collision with root package name */
    private IHttpStack f9728a;

    public d() {
        IHttpStack a2 = e.a();
        this.f9728a = a2;
        if (a2 == null) {
            this.f9728a = new j();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.k.e.b
    public a a(f fVar) throws IOException, VAdError {
        e eVar = new e(fVar.f9729a, fVar.f9730b);
        if (fVar.f9731c != -1) {
            eVar.setRetryPolicy(new com.bytedance.sdk.adnet.core.e().a((int) fVar.f9731c));
        }
        return new g(this.f9728a.performRequest(eVar, fVar.e), fVar);
    }
}
