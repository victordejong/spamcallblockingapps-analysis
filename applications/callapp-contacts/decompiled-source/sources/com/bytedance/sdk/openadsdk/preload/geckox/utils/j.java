package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import com.bytedance.sdk.openadsdk.l.e;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/j.class */
public class j implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private static volatile j f10260a;

    /* renamed from: b  reason: collision with root package name */
    private ExecutorService f10261b = e.a();

    private j() {
    }

    public static j a() {
        if (f10260a == null) {
            synchronized (j.class) {
                try {
                    if (f10260a == null) {
                        f10260a = new j();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f10260a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f10261b.execute(runnable);
    }
}
