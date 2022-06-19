package com.freshchat.consumer.sdk.p057j;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* renamed from: com.freshchat.consumer.sdk.j.be */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/be.class */
public class C1646be {

    /* renamed from: lH */
    private static C1646be f4395lH;

    /* renamed from: lI */
    private final Executor f4396lI;

    /* renamed from: lJ */
    private final Executor f4397lJ;

    /* renamed from: lK */
    private final Executor f4398lK;

    /* renamed from: com.freshchat.consumer.sdk.j.be$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/be$a.class */
    public static class ExecutorC1647a implements Executor {

        /* renamed from: lL */
        private Handler f4399lL;

        private ExecutorC1647a() {
            this.f4399lL = new Handler(Looper.getMainLooper());
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f4399lL.post(runnable);
        }
    }

    private C1646be() {
        this(Executors.newSingleThreadExecutor(), Executors.newFixedThreadPool(10), new ExecutorC1647a());
    }

    private C1646be(Executor executor, Executor executor2, Executor executor3) {
        this.f4396lI = executor;
        this.f4397lJ = executor2;
        this.f4398lK = executor3;
    }

    /* renamed from: eC */
    public static C1646be m40116eC() {
        if (f4395lH == null) {
            synchronized (C1646be.class) {
                try {
                    if (f4395lH == null) {
                        f4395lH = new C1646be();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4395lH;
    }

    /* renamed from: gF */
    public Executor m40115gF() {
        return this.f4398lK;
    }

    /* renamed from: gZ */
    public Executor m40114gZ() {
        return this.f4397lJ;
    }

    /* renamed from: gx */
    public Executor m40113gx() {
        return this.f4396lI;
    }
}
