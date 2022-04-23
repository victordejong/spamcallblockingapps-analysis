package com.aotter.net.trek.common.util;

import android.os.AsyncTask;
import java.util.concurrent.Executor;
/* renamed from: com.aotter.net.trek.common.util.a */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/util/a.class */
public final class RunnableC1750a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AsyncTask f1545a;

    /* renamed from: b */
    public final /* synthetic */ Object[] f1546b;

    public RunnableC1750a(AsyncTask asyncTask, Object[] objArr) {
        this.f1545a = asyncTask;
        this.f1546b = objArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        Executor executor;
        AsyncTask asyncTask = this.f1545a;
        executor = AsyncTasks.f1528a;
        asyncTask.executeOnExecutor(executor, this.f1546b);
    }
}
