package com.bytedance.sdk.openadsdk.p176k.p181e;

import com.bytedance.sdk.adnet.core.C4203e;
import com.bytedance.sdk.adnet.core.C4212j;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.IHttpStack;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import java.io.IOException;
/* renamed from: com.bytedance.sdk.openadsdk.k.e.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/e/d.class */
public class C5007d implements AbstractC5004b {

    /* renamed from: a */
    private IHttpStack f18152a;

    public C5007d() {
        IHttpStack m33441a = C4959e.m33441a();
        this.f18152a = m33441a;
        if (m33441a == null) {
            this.f18152a = new C4212j();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p176k.p181e.AbstractC5004b
    /* renamed from: a */
    public AbstractC5003a mo33325a(C5009f c5009f) throws IOException, VAdError {
        C5008e c5008e = new C5008e(c5009f.f18153a, c5009f.f18154b);
        if (c5009f.f18155c != -1) {
            c5008e.setRetryPolicy(new C4203e().m36171a((int) c5009f.f18155c));
        }
        return new C5010g(this.f18152a.performRequest(c5008e, c5009f.f18157e), c5009f);
    }
}
