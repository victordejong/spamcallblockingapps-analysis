package com.bytedance.sdk.openadsdk.i.b;

import com.bytedance.sdk.openadsdk.i.a.a;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/i/b/e.class */
class e implements a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile e f9611a;

    private e() {
    }

    public static e c() {
        if (f9611a == null) {
            synchronized (e.class) {
                try {
                    if (f9611a == null) {
                        f9611a = new e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9611a;
    }

    @Override // com.bytedance.sdk.openadsdk.i.b.a
    public void a() {
    }

    @Override // com.bytedance.sdk.openadsdk.i.b.a
    public void a(a aVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.i.b.a
    public void a(a aVar, boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.i.b.a
    public void b() {
    }
}
