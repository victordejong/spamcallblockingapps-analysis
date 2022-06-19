package com.criteo.publisher.p251j0;

import com.criteo.publisher.AbstractC8336h;
import com.criteo.publisher.C8528u;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.model.C8498n;
import com.criteo.publisher.model.C8500p;
import com.criteo.publisher.model.C8507t;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
/* renamed from: com.criteo.publisher.j0.e */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/e.class */
public class C8361e {

    /* renamed from: a */
    private final C8364g f30038a;

    /* renamed from: b */
    private final C8500p f30039b;

    /* renamed from: c */
    private final AbstractC8336h f30040c;

    /* renamed from: d */
    private final Executor f30041d;

    /* renamed from: e */
    private final ScheduledExecutorService f30042e;

    /* renamed from: f */
    private final C8507t f30043f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.j0.e$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/e$a.class */
    public static final class RunnableC8362a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ C8528u f30044a;

        RunnableC8362a(C8528u c8528u) {
            this.f30044a = c8528u;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f30044a.m25372a();
        }
    }

    public C8361e(C8364g pubSdkApi, C8500p cdbRequestFactory, AbstractC8336h clock, Executor executor, ScheduledExecutorService scheduledExecutorService, C8507t config) {
        C18524p.m3841c(pubSdkApi, "pubSdkApi");
        C18524p.m3841c(cdbRequestFactory, "cdbRequestFactory");
        C18524p.m3841c(clock, "clock");
        C18524p.m3841c(executor, "executor");
        C18524p.m3841c(scheduledExecutorService, "scheduledExecutorService");
        C18524p.m3841c(config, "config");
        this.f30038a = pubSdkApi;
        this.f30039b = cdbRequestFactory;
        this.f30040c = clock;
        this.f30041d = executor;
        this.f30042e = scheduledExecutorService;
        this.f30043f = config;
    }

    /* renamed from: a */
    public final void m25793a(C8498n cacheAdUnit, ContextData contextData, C8528u liveCdbCallListener) {
        C18524p.m3841c(cacheAdUnit, "cacheAdUnit");
        C18524p.m3841c(contextData, "contextData");
        C18524p.m3841c(liveCdbCallListener, "liveCdbCallListener");
        this.f30042e.schedule(new RunnableC8362a(liveCdbCallListener), this.f30043f.m25526e(), TimeUnit.MILLISECONDS);
        this.f30041d.execute(new C8359c(this.f30038a, this.f30039b, this.f30040c, C18282n.m4176a(cacheAdUnit), contextData, liveCdbCallListener));
    }
}
