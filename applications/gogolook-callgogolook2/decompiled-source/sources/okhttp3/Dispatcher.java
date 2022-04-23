package okhttp3;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.RealCall;
import okhttp3.internal.Util;
/* loaded from: classes3-dex2jar.jar:okhttp3/Dispatcher.class */
public final class Dispatcher {
    @Nullable
    public ExecutorService executorService;
    @Nullable
    public Runnable idleCallback;
    public int maxRequests = 64;
    public int maxRequestsPerHost = 5;
    public final Deque<RealCall.AsyncCall> readyAsyncCalls = new ArrayDeque();
    public final Deque<RealCall.AsyncCall> runningAsyncCalls = new ArrayDeque();
    public final Deque<RealCall> runningSyncCalls = new ArrayDeque();

    public Dispatcher() {
    }

    public Dispatcher(ExecutorService executorService) {
        this.executorService = executorService;
    }

    public void enqueue(RealCall.AsyncCall asyncCall) {
        synchronized (this) {
            this.readyAsyncCalls.add(asyncCall);
        }
        promoteAndExecute();
    }

    public void executed(RealCall realCall) {
        synchronized (this) {
            this.runningSyncCalls.add(realCall);
        }
    }

    public ExecutorService executorService() {
        ExecutorService executorService;
        synchronized (this) {
            if (this.executorService == null) {
                this.executorService = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp Dispatcher", false));
            }
            executorService = this.executorService;
        }
        return executorService;
    }

    public final <T> void finished(Deque<T> deque, T t) {
        Runnable runnable;
        synchronized (this) {
            if (deque.remove(t)) {
                runnable = this.idleCallback;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        if (!promoteAndExecute() && runnable != null) {
            runnable.run();
        }
    }

    public void finished(RealCall.AsyncCall asyncCall) {
        finished(this.runningAsyncCalls, asyncCall);
    }

    public void finished(RealCall realCall) {
        finished(this.runningSyncCalls, realCall);
    }

    public final boolean promoteAndExecute() {
        int i;
        boolean z;
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<RealCall.AsyncCall> it = this.readyAsyncCalls.iterator();
            while (it.hasNext()) {
                RealCall.AsyncCall next = it.next();
                if (this.runningAsyncCalls.size() >= this.maxRequests) {
                    break;
                } else if (runningCallsForHost(next) < this.maxRequestsPerHost) {
                    it.remove();
                    arrayList.add(next);
                    this.runningAsyncCalls.add(next);
                }
            }
            z = runningCallsCount() > 0;
        }
        int size = arrayList.size();
        for (i = 0; i < size; i++) {
            ((RealCall.AsyncCall) arrayList.get(i)).executeOn(executorService());
        }
        return z;
    }

    public int runningCallsCount() {
        int size;
        int size2;
        synchronized (this) {
            size = this.runningAsyncCalls.size();
            size2 = this.runningSyncCalls.size();
        }
        return size + size2;
    }

    public final int runningCallsForHost(RealCall.AsyncCall asyncCall) {
        int i = 0;
        for (RealCall.AsyncCall asyncCall2 : this.runningAsyncCalls) {
            if (!asyncCall2.get().forWebSocket && asyncCall2.host().equals(asyncCall.host())) {
                i++;
            }
        }
        return i;
    }
}
