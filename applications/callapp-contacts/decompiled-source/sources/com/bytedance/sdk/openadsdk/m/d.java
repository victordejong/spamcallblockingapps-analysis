package com.bytedance.sdk.openadsdk.m;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/m/d.class */
class d implements a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile d f9845a;

    private d() {
    }

    public static d c() {
        if (f9845a == null) {
            synchronized (d.class) {
                try {
                    if (f9845a == null) {
                        f9845a = new d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9845a;
    }

    @Override // com.bytedance.sdk.openadsdk.m.a
    public void a() {
    }

    @Override // com.bytedance.sdk.openadsdk.m.a
    public void a(List<String> list) {
    }

    @Override // com.bytedance.sdk.openadsdk.m.a
    public void b() {
    }
}
