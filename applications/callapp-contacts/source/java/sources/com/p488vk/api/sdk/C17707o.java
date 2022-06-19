package com.p488vk.api.sdk;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u0017H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0018"}, m4298d2 = {"Lcom/vk/api/sdk/VKScheduler;", "", "()V", "NETWORK_THREADS_COUNT", "", "counter", "Ljava/util/concurrent/atomic/AtomicInteger;", "handler", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "handler$delegate", "Lkotlin/Lazy;", "networkExecutor", "Ljava/util/concurrent/ExecutorService;", "getNetworkExecutor", "()Ljava/util/concurrent/ExecutorService;", "networkExecutor$delegate", "runOnMainThread", "", "runnable", "Ljava/lang/Runnable;", "delay", "", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.o */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/o.class */
public final class C17707o {

    /* renamed from: a */
    public static final C17707o f62545a = new C17707o();

    /* renamed from: b */
    private static final AtomicInteger f62546b = new AtomicInteger();

    /* renamed from: c */
    private static final Lazy f62547c = C18399h.m3897a(C17708a.f62549a);

    /* renamed from: d */
    private static final Lazy f62548d = C18399h.m3897a(C17709b.f62550a);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Landroid/os/Handler;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.o$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/o$a.class */
    static final class C17708a extends AbstractC18526r implements Function0<Handler> {

        /* renamed from: a */
        public static final C17708a f62549a = new C17708a();

        C17708a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Handler invoke() {
            return new Handler(Looper.getMainLooper());
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.o$b */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/o$b.class */
    static final class C17709b extends AbstractC18526r implements Function0<ExecutorService> {

        /* renamed from: a */
        public static final C17709b f62550a = new C17709b();

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "Ljava/lang/Thread;", "kotlin.jvm.PlatformType", "runnable", "Ljava/lang/Runnable;", "newThread"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.o$b$1 */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/o$b$1.class */
        static final class ThreadFactoryC177101 implements ThreadFactory {

            /* renamed from: a */
            public static final ThreadFactoryC177101 f62551a = new ThreadFactoryC177101();

            ThreadFactoryC177101() {
            }

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                StringBuilder sb = new StringBuilder("vk-api-network-thread-");
                C17707o c17707o = C17707o.f62545a;
                sb.append(C17707o.f62546b.getAndIncrement());
                return new Thread(runnable, sb.toString());
            }
        }

        C17709b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ ExecutorService invoke() {
            return Executors.newFixedThreadPool(32, ThreadFactoryC177101.f62551a);
        }
    }

    private C17707o() {
    }

    /* renamed from: a */
    public static ExecutorService m4798a() {
        return (ExecutorService) f62548d.mo1102a();
    }

    /* renamed from: a */
    public static /* synthetic */ void m4797a(Runnable runnable) {
        C18524p.m3840d(runnable, "runnable");
        if (C18524p.m3850a(Looper.myLooper(), Looper.getMainLooper())) {
            runnable.run();
        } else {
            ((Handler) f62547c.mo1102a()).postDelayed(runnable, 0L);
        }
    }
}
