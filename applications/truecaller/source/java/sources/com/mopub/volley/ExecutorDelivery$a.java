package com.mopub.volley;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/ExecutorDelivery$a.class */
public class ExecutorDelivery$a implements Executor {

    /* renamed from: a */
    public final /* synthetic */ Handler f9263a;

    public ExecutorDelivery$a(ExecutorDelivery executorDelivery, Handler handler) {
        this.f9263a = handler;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f9263a.post(runnable);
    }
}
