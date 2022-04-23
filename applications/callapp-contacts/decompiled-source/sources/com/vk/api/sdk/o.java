package com.vk.api.sdk;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u0017H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0018"}, d2 = {"Lcom/vk/api/sdk/VKScheduler;", "", "()V", "NETWORK_THREADS_COUNT", "", "counter", "Ljava/util/concurrent/atomic/AtomicInteger;", "handler", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "handler$delegate", "Lkotlin/Lazy;", "networkExecutor", "Ljava/util/concurrent/ExecutorService;", "getNetworkExecutor", "()Ljava/util/concurrent/ExecutorService;", "networkExecutor$delegate", "runOnMainThread", "", "runnable", "Ljava/lang/Runnable;", "delay", "", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public static final o f36108a = new o();

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicInteger f36109b = new AtomicInteger();

    /* renamed from: c  reason: collision with root package name */
    private static final Lazy f36110c = h.a(a.f36112a);

    /* renamed from: d  reason: collision with root package name */
    private static final Lazy f36111d = h.a(b.f36113a);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Landroid/os/Handler;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/o$a.class */
    static final class a extends r implements Function0<Handler> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f36112a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Handler invoke() {
            return new Handler(Looper.getMainLooper());
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/o$b.class */
    static final class b extends r implements Function0<ExecutorService> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f36113a = new b();

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Ljava/lang/Thread;", "kotlin.jvm.PlatformType", "runnable", "Ljava/lang/Runnable;", "newThread"}, k = 3, mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.o$b$1  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/o$b$1.class */
        static final class AnonymousClass1 implements ThreadFactory {

            /* renamed from: a  reason: collision with root package name */
            public static final AnonymousClass1 f36114a = new AnonymousClass1();

            AnonymousClass1() {
            }

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                StringBuilder sb = new StringBuilder("vk-api-network-thread-");
                o oVar = o.f36108a;
                sb.append(o.f36109b.getAndIncrement());
                return new Thread(runnable, sb.toString());
            }
        }

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ ExecutorService invoke() {
            return Executors.newFixedThreadPool(32, AnonymousClass1.f36114a);
        }
    }

    private o() {
    }

    public static ExecutorService a() {
        return (ExecutorService) f36111d.a();
    }

    public static /* synthetic */ void a(Runnable runnable) {
        p.d(runnable, "runnable");
        if (p.a(Looper.myLooper(), Looper.getMainLooper())) {
            runnable.run();
        } else {
            ((Handler) f36110c.a()).postDelayed(runnable, 0L);
        }
    }
}
