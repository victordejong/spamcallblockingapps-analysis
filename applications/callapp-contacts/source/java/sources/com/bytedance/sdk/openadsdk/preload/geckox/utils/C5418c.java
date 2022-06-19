package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.utils.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/c.class */
public class C5418c {
    /* renamed from: a */
    public static void m32359a(Throwable th) {
        if (!C5421e.m32352a()) {
            C5381b.m32430a("gecko-debug-tag", "throwIfDebug:", th);
        } else {
            C5381b.m32428b("gecko-debug-tag", "throwIfDebug:", th);
            throw new RuntimeException(th);
        }
    }
}
