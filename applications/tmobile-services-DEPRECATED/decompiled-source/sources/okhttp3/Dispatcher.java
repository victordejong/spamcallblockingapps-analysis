package okhttp3;

import com.google.android.gms.common.api.Api;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealCall;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��B\u0011\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b>\u0010?B\u0007¢\u0006\u0004\b>\u0010\u0003J\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\t\u001a\u00020\u00012\n\u0010\u0006\u001a\u00060\u0004R\u00020\u0005H��¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0005H��¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u0010\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0013\u001a\b\u0018\u00010\u0004R\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J+\u0010\u0018\u001a\u00020\u0001\"\u0004\b��\u0010\u00152\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0\u00162\u0006\u0010\u0006\u001a\u00028��H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0005H��¢\u0006\u0004\b\u001a\u0010\u000bJ\u001b\u0010\u0018\u001a\u00020\u00012\n\u0010\u0006\u001a\u00060\u0004R\u00020\u0005H��¢\u0006\u0004\b\u001a\u0010\bJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0013\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e¢\u0006\u0004\b \u0010!J\r\u0010#\u001a\u00020\"¢\u0006\u0004\b#\u0010$J\u0013\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e¢\u0006\u0004\b%\u0010!J\r\u0010&\u001a\u00020\"¢\u0006\u0004\b&\u0010$R\u0013\u0010\u0010\u001a\u00020\r8G@\u0006¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000fR\u0018\u0010'\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R.\u0010+\u001a\u0004\u0018\u00010)2\b\u0010*\u001a\u0004\u0018\u00010)8F@FX\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R*\u00101\u001a\u00020\"2\u0006\u00101\u001a\u00020\"8F@FX\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u0010$\"\u0004\b4\u00105R*\u00106\u001a\u00020\"2\u0006\u00106\u001a\u00020\"8F@FX\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00102\u001a\u0004\b7\u0010$\"\u0004\b8\u00105R \u0010:\u001a\f\u0012\b\u0012\u00060\u0004R\u00020\u0005098\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R \u0010<\u001a\f\u0012\b\u0012\u00060\u0004R\u00020\u0005098\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010;R\u001c\u0010=\u001a\b\u0012\u0004\u0012\u00020\u0005098\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010;¨\u0006@"}, d2 = {"Lokhttp3/Dispatcher;", "", "cancelAll", "()V", "Lokhttp3/internal/connection/RealCall$AsyncCall;", "Lokhttp3/internal/connection/RealCall;", "call", "enqueue$okhttp", "(Lokhttp3/internal/connection/RealCall$AsyncCall;)V", "enqueue", "executed$okhttp", "(Lokhttp3/internal/connection/RealCall;)V", "executed", "Ljava/util/concurrent/ExecutorService;", "-deprecated_executorService", "()Ljava/util/concurrent/ExecutorService;", "executorService", "", "host", "findExistingCallWithHost", "(Ljava/lang/String;)Lokhttp3/internal/connection/RealCall$AsyncCall;", "T", "Ljava/util/Deque;", "calls", "finished", "(Ljava/util/Deque;Ljava/lang/Object;)V", "finished$okhttp", "", "promoteAndExecute", "()Z", "", "Lokhttp3/Call;", "queuedCalls", "()Ljava/util/List;", "", "queuedCallsCount", "()I", "runningCalls", "runningCallsCount", "executorServiceOrNull", "Ljava/util/concurrent/ExecutorService;", "Ljava/lang/Runnable;", "<set-?>", "idleCallback", "Ljava/lang/Runnable;", "getIdleCallback", "()Ljava/lang/Runnable;", "setIdleCallback", "(Ljava/lang/Runnable;)V", "maxRequests", "I", "getMaxRequests", "setMaxRequests", "(I)V", "maxRequestsPerHost", "getMaxRequestsPerHost", "setMaxRequestsPerHost", "Ljava/util/ArrayDeque;", "readyAsyncCalls", "Ljava/util/ArrayDeque;", "runningAsyncCalls", "runningSyncCalls", "<init>", "(Ljava/util/concurrent/ExecutorService;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/Dispatcher.class */
public final class Dispatcher {
    private ExecutorService executorServiceOrNull;
    @Nullable
    private Runnable idleCallback;
    private int maxRequests;
    private int maxRequestsPerHost;
    private final ArrayDeque<RealCall.AsyncCall> readyAsyncCalls;
    private final ArrayDeque<RealCall.AsyncCall> runningAsyncCalls;
    private final ArrayDeque<RealCall> runningSyncCalls;

    public Dispatcher() {
        this.maxRequests = 64;
        this.maxRequestsPerHost = 5;
        this.readyAsyncCalls = new ArrayDeque<>();
        this.runningAsyncCalls = new ArrayDeque<>();
        this.runningSyncCalls = new ArrayDeque<>();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Dispatcher(@NotNull ExecutorService executorService) {
        this();
        Intrinsics.m1830e(executorService, "executorService");
        this.executorServiceOrNull = executorService;
    }

    private final RealCall.AsyncCall findExistingCallWithHost(String str) {
        Iterator<RealCall.AsyncCall> it = this.runningAsyncCalls.iterator();
        while (it.hasNext()) {
            RealCall.AsyncCall next = it.next();
            if (Intrinsics.m1834a(next.getHost(), str)) {
                return next;
            }
        }
        Iterator<RealCall.AsyncCall> it2 = this.readyAsyncCalls.iterator();
        while (it2.hasNext()) {
            RealCall.AsyncCall next2 = it2.next();
            if (Intrinsics.m1834a(next2.getHost(), str)) {
                return next2;
            }
        }
        return null;
    }

    private final <T> void finished(Deque<T> deque, T t) {
        Runnable runnable;
        synchronized (this) {
            if (deque.remove(t)) {
                runnable = this.idleCallback;
                Unit unit = Unit.f20447a;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        if (!promoteAndExecute() && runnable != null) {
            runnable.run();
        }
    }

    private final boolean promoteAndExecute() {
        int i;
        boolean z;
        if (!Util.assertionsEnabled || !Thread.holdsLock(this)) {
            ArrayList arrayList = new ArrayList();
            synchronized (this) {
                Iterator<RealCall.AsyncCall> it = this.readyAsyncCalls.iterator();
                Intrinsics.m1831d(it, "readyAsyncCalls.iterator()");
                while (it.hasNext()) {
                    RealCall.AsyncCall asyncCall = it.next();
                    if (this.runningAsyncCalls.size() >= this.maxRequests) {
                        break;
                    } else if (asyncCall.getCallsPerHost().get() < this.maxRequestsPerHost) {
                        it.remove();
                        asyncCall.getCallsPerHost().incrementAndGet();
                        Intrinsics.m1831d(asyncCall, "asyncCall");
                        arrayList.add(asyncCall);
                        this.runningAsyncCalls.add(asyncCall);
                    }
                }
                z = runningCallsCount() > 0;
                Unit unit = Unit.f20447a;
            }
            int size = arrayList.size();
            for (i = 0; i < size; i++) {
                ((RealCall.AsyncCall) arrayList.get(i)).executeOn(executorService());
            }
            return z;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Thread ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.m1831d(currentThread, "Thread.currentThread()");
        sb.append(currentThread.getName());
        sb.append(" MUST NOT hold lock on ");
        sb.append(this);
        throw new AssertionError(sb.toString());
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_executorService  reason: not valid java name */
    public final ExecutorService m24631deprecated_executorService() {
        return executorService();
    }

    public final void cancelAll() {
        synchronized (this) {
            Iterator<RealCall.AsyncCall> it = this.readyAsyncCalls.iterator();
            while (it.hasNext()) {
                it.next().getCall().cancel();
            }
            Iterator<RealCall.AsyncCall> it2 = this.runningAsyncCalls.iterator();
            while (it2.hasNext()) {
                it2.next().getCall().cancel();
            }
            Iterator<RealCall> it3 = this.runningSyncCalls.iterator();
            while (it3.hasNext()) {
                it3.next().cancel();
            }
        }
    }

    public final void enqueue$okhttp(@NotNull RealCall.AsyncCall call) {
        RealCall.AsyncCall findExistingCallWithHost;
        Intrinsics.m1830e(call, "call");
        synchronized (this) {
            this.readyAsyncCalls.add(call);
            if (!call.getCall().getForWebSocket() && (findExistingCallWithHost = findExistingCallWithHost(call.getHost())) != null) {
                call.reuseCallsPerHostFrom(findExistingCallWithHost);
            }
            Unit unit = Unit.f20447a;
        }
        promoteAndExecute();
    }

    public final void executed$okhttp(@NotNull RealCall call) {
        synchronized (this) {
            Intrinsics.m1830e(call, "call");
            this.runningSyncCalls.add(call);
        }
    }

    @JvmName
    @NotNull
    public final ExecutorService executorService() {
        ExecutorService executorService;
        synchronized (this) {
            if (this.executorServiceOrNull == null) {
                TimeUnit timeUnit = TimeUnit.SECONDS;
                SynchronousQueue synchronousQueue = new SynchronousQueue();
                this.executorServiceOrNull = new ThreadPoolExecutor(0, (int) Api.BaseClientBuilder.API_PRIORITY_OTHER, 60L, timeUnit, synchronousQueue, Util.threadFactory(Util.okHttpName + " Dispatcher", false));
            }
            executorService = this.executorServiceOrNull;
            Intrinsics.m1832c(executorService);
        }
        return executorService;
    }

    public final void finished$okhttp(@NotNull RealCall.AsyncCall call) {
        Intrinsics.m1830e(call, "call");
        call.getCallsPerHost().decrementAndGet();
        finished(this.runningAsyncCalls, call);
    }

    public final void finished$okhttp(@NotNull RealCall call) {
        Intrinsics.m1830e(call, "call");
        finished(this.runningSyncCalls, call);
    }

    @Nullable
    public final Runnable getIdleCallback() {
        Runnable runnable;
        synchronized (this) {
            runnable = this.idleCallback;
        }
        return runnable;
    }

    public final int getMaxRequests() {
        int i;
        synchronized (this) {
            i = this.maxRequests;
        }
        return i;
    }

    public final int getMaxRequestsPerHost() {
        int i;
        synchronized (this) {
            i = this.maxRequestsPerHost;
        }
        return i;
    }

    @NotNull
    public final List<Call> queuedCalls() {
        int p;
        List<Call> unmodifiableList;
        synchronized (this) {
            ArrayDeque<RealCall.AsyncCall> arrayDeque = this.readyAsyncCalls;
            p = CollectionsKt__IterablesKt.m2164p(arrayDeque, 10);
            ArrayList arrayList = new ArrayList(p);
            for (RealCall.AsyncCall asyncCall : arrayDeque) {
                arrayList.add(asyncCall.getCall());
            }
            unmodifiableList = Collections.unmodifiableList(arrayList);
            Intrinsics.m1831d(unmodifiableList, "Collections.unmodifiable…yncCalls.map { it.call })");
        }
        return unmodifiableList;
    }

    public final int queuedCallsCount() {
        int size;
        synchronized (this) {
            size = this.readyAsyncCalls.size();
        }
        return size;
    }

    @NotNull
    public final List<Call> runningCalls() {
        int p;
        List M;
        List<Call> unmodifiableList;
        synchronized (this) {
            ArrayDeque<RealCall> arrayDeque = this.runningSyncCalls;
            ArrayDeque<RealCall.AsyncCall> arrayDeque2 = this.runningAsyncCalls;
            p = CollectionsKt__IterablesKt.m2164p(arrayDeque2, 10);
            ArrayList arrayList = new ArrayList(p);
            for (RealCall.AsyncCall asyncCall : arrayDeque2) {
                arrayList.add(asyncCall.getCall());
            }
            M = CollectionsKt___CollectionsKt.m2141M(arrayDeque, arrayList);
            unmodifiableList = Collections.unmodifiableList(M);
            Intrinsics.m1831d(unmodifiableList, "Collections.unmodifiable…yncCalls.map { it.call })");
        }
        return unmodifiableList;
    }

    public final int runningCallsCount() {
        int size;
        int size2;
        synchronized (this) {
            size = this.runningAsyncCalls.size();
            size2 = this.runningSyncCalls.size();
        }
        return size + size2;
    }

    public final void setIdleCallback(@Nullable Runnable runnable) {
        synchronized (this) {
            this.idleCallback = runnable;
        }
    }

    public final void setMaxRequests(int i) {
        boolean z = true;
        if (i < 1) {
            z = false;
        }
        if (z) {
            synchronized (this) {
                this.maxRequests = i;
                Unit unit = Unit.f20447a;
            }
            promoteAndExecute();
            return;
        }
        throw new IllegalArgumentException(("max < 1: " + i).toString());
    }

    public final void setMaxRequestsPerHost(int i) {
        boolean z = true;
        if (i < 1) {
            z = false;
        }
        if (z) {
            synchronized (this) {
                this.maxRequestsPerHost = i;
                Unit unit = Unit.f20447a;
            }
            promoteAndExecute();
            return;
        }
        throw new IllegalArgumentException(("max < 1: " + i).toString());
    }
}
