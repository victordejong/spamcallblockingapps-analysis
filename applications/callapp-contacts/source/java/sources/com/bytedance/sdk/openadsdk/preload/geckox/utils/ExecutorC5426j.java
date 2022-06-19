package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import com.bytedance.sdk.openadsdk.p184l.C5052e;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.utils.j */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/j.class */
public class ExecutorC5426j implements Executor {

    /* renamed from: a */
    private static volatile ExecutorC5426j f18959a;

    /* renamed from: b */
    private ExecutorService f18960b = C5052e.m33163a();

    private ExecutorC5426j() {
    }

    /* renamed from: a */
    public static ExecutorC5426j m32345a() {
        if (f18959a == null) {
            synchronized (ExecutorC5426j.class) {
                try {
                    if (f18959a == null) {
                        f18959a = new ExecutorC5426j();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18959a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f18960b.execute(runnable);
    }
}
