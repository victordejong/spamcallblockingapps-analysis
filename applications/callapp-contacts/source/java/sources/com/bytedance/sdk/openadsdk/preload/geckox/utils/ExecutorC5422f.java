package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import com.bytedance.sdk.openadsdk.p184l.C5052e;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.utils.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/f.class */
public class ExecutorC5422f implements Executor {

    /* renamed from: a */
    private static volatile ExecutorC5422f f18955a;

    /* renamed from: b */
    private ExecutorService f18956b = C5052e.m33163a();

    private ExecutorC5422f() {
    }

    /* renamed from: a */
    public static ExecutorC5422f m32351a() {
        if (f18955a == null) {
            synchronized (ExecutorC5422f.class) {
                try {
                    if (f18955a == null) {
                        f18955a = new ExecutorC5422f();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18955a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f18956b.execute(runnable);
    }
}
