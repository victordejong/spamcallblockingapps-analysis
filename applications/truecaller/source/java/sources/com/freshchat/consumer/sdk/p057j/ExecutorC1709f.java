package com.freshchat.consumer.sdk.p057j;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* renamed from: com.freshchat.consumer.sdk.j.f */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/f.class */
public final class ExecutorC1709f implements Executor {
    private final Handler handler = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.handler.post(runnable);
    }
}
