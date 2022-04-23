package com.criteo.publisher.j0;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.h;
import com.criteo.publisher.model.n;
import com.criteo.publisher.model.p;
import com.criteo.publisher.model.t;
import com.criteo.publisher.u;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final g f17379a;

    /* renamed from: b  reason: collision with root package name */
    private final p f17380b;

    /* renamed from: c  reason: collision with root package name */
    private final h f17381c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f17382d;
    private final ScheduledExecutorService e;
    private final t f;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/e$a.class */
    static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u f17383a;

        a(u uVar) {
            this.f17383a = uVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f17383a.a();
        }
    }

    public e(g pubSdkApi, p cdbRequestFactory, h clock, Executor executor, ScheduledExecutorService scheduledExecutorService, t config) {
        kotlin.jvm.internal.p.c(pubSdkApi, "pubSdkApi");
        kotlin.jvm.internal.p.c(cdbRequestFactory, "cdbRequestFactory");
        kotlin.jvm.internal.p.c(clock, "clock");
        kotlin.jvm.internal.p.c(executor, "executor");
        kotlin.jvm.internal.p.c(scheduledExecutorService, "scheduledExecutorService");
        kotlin.jvm.internal.p.c(config, "config");
        this.f17379a = pubSdkApi;
        this.f17380b = cdbRequestFactory;
        this.f17381c = clock;
        this.f17382d = executor;
        this.e = scheduledExecutorService;
        this.f = config;
    }

    public final void a(n cacheAdUnit, ContextData contextData, u liveCdbCallListener) {
        kotlin.jvm.internal.p.c(cacheAdUnit, "cacheAdUnit");
        kotlin.jvm.internal.p.c(contextData, "contextData");
        kotlin.jvm.internal.p.c(liveCdbCallListener, "liveCdbCallListener");
        this.e.schedule(new a(liveCdbCallListener), this.f.e(), TimeUnit.MILLISECONDS);
        this.f17382d.execute(new c(this.f17379a, this.f17380b, this.f17381c, kotlin.a.n.a(cacheAdUnit), contextData, liveCdbCallListener));
    }
}
