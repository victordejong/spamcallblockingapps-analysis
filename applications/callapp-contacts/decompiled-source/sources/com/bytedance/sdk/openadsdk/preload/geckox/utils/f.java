package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import com.bytedance.sdk.openadsdk.l.e;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/f.class */
public class f implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private static volatile f f10256a;

    /* renamed from: b  reason: collision with root package name */
    private ExecutorService f10257b = e.a();

    private f() {
    }

    public static f a() {
        if (f10256a == null) {
            synchronized (f.class) {
                try {
                    if (f10256a == null) {
                        f10256a = new f();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f10256a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f10257b.execute(runnable);
    }
}
