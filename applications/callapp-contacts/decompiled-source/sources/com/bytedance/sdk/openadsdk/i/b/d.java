package com.bytedance.sdk.openadsdk.i.b;

import com.bytedance.sdk.openadsdk.i.b.c;
import com.bytedance.sdk.openadsdk.multipro.c.a;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/i/b/d.class */
public class d implements a {
    @Override // com.bytedance.sdk.openadsdk.i.b.a
    public void a() {
        a.e();
    }

    @Override // com.bytedance.sdk.openadsdk.i.b.a
    public void a(com.bytedance.sdk.openadsdk.i.a.a aVar) {
        try {
            a.b(aVar.a().toString());
        } catch (Throwable th) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.i.b.a
    public void a(com.bytedance.sdk.openadsdk.i.a.a aVar, boolean z) {
        try {
            a.a(new c.a(UUID.randomUUID().toString(), aVar.a()).a(), z);
        } catch (Throwable th) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.i.b.a
    public void b() {
    }
}
