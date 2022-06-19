package okhttp3.internal.connection;

import java.lang.ref.Reference;
import java.net.Socket;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import okhttp3.ConnectionPool;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.platform.Platform;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��c\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u000e\u0018�� (2\u00020\u0001:\u0001(B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ.\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b2\u0006\u0010\u001d\u001a\u00020\u0015J\u000e\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0007J\u000e\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u0012J\u0006\u0010\"\u001a\u00020\u0005J\u0006\u0010#\u001a\u00020$J\u0006\u0010%\u001a\u00020\u0005J\u0018\u0010&\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u0007H\u0002J\u000e\u0010'\u001a\u00020$2\u0006\u0010!\u001a\u00020\u0012R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006)"}, m4298d2 = {"Lokhttp3/internal/connection/RealConnectionPool;", "", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "maxIdleConnections", "", "keepAliveDuration", "", "timeUnit", "Ljava/util/concurrent/TimeUnit;", "(Lokhttp3/internal/concurrent/TaskRunner;IJLjava/util/concurrent/TimeUnit;)V", "cleanupQueue", "Lokhttp3/internal/concurrent/TaskQueue;", "cleanupTask", "okhttp3/internal/connection/RealConnectionPool$cleanupTask$1", "Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;", "connections", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "Lokhttp3/internal/connection/RealConnection;", "keepAliveDurationNs", "callAcquirePooledConnection", "", "address", "Lokhttp3/Address;", "call", "Lokhttp3/internal/connection/RealCall;", "routes", "", "Lokhttp3/Route;", "requireMultiplexed", "cleanup", "now", "connectionBecameIdle", "connection", "connectionCount", "evictAll", "", "idleConnectionCount", "pruneAndGetAllocationCount", "put", "Companion", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/connection/RealConnectionPool.class */
public final class RealConnectionPool {
    public static final Companion Companion = new Companion(null);
    private final TaskQueue cleanupQueue;
    private final RealConnectionPool$cleanupTask$1 cleanupTask = new Task(Util.okHttpName + " ConnectionPool") { // from class: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1
        @Override // okhttp3.internal.concurrent.Task
        public final long runOnce() {
            return RealConnectionPool.this.cleanup(System.nanoTime());
        }
    };
    private final ConcurrentLinkedQueue<RealConnection> connections = new ConcurrentLinkedQueue<>();
    private final long keepAliveDurationNs;
    private final int maxIdleConnections;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m4298d2 = {"Lokhttp3/internal/connection/RealConnectionPool$Companion;", "", "()V", "get", "Lokhttp3/internal/connection/RealConnectionPool;", "connectionPool", "Lokhttp3/ConnectionPool;", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/connection/RealConnectionPool$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RealConnectionPool get(ConnectionPool connectionPool) {
            C18524p.m3840d(connectionPool, "connectionPool");
            return connectionPool.getDelegate$okhttp();
        }
    }

    /* JADX WARN: Type inference failed for: r1v10, types: [okhttp3.internal.connection.RealConnectionPool$cleanupTask$1] */
    public RealConnectionPool(TaskRunner taskRunner, int i, long j, TimeUnit timeUnit) {
        C18524p.m3840d(taskRunner, "taskRunner");
        C18524p.m3840d(timeUnit, "timeUnit");
        this.maxIdleConnections = i;
        this.keepAliveDurationNs = timeUnit.toNanos(j);
        this.cleanupQueue = taskRunner.newQueue();
        if (j > 0) {
            return;
        }
        throw new IllegalArgumentException("keepAliveDuration <= 0: ".concat(String.valueOf(j)).toString());
    }

    private final int pruneAndGetAllocationCount(RealConnection realConnection, long j) {
        if (Util.assertionsEnabled && !Thread.holdsLock(realConnection)) {
            StringBuilder sb = new StringBuilder("Thread ");
            Thread currentThread = Thread.currentThread();
            C18524p.m3843b(currentThread, "Thread.currentThread()");
            sb.append(currentThread.getName());
            sb.append(" MUST hold lock on ");
            sb.append(realConnection);
            throw new AssertionError(sb.toString());
        }
        List<Reference<RealCall>> calls = realConnection.getCalls();
        int i = 0;
        while (i < calls.size()) {
            Reference<RealCall> reference = calls.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                Objects.requireNonNull(reference, "null cannot be cast to non-null type okhttp3.internal.connection.RealCall.CallReference");
                Platform.Companion.get().logCloseableLeak("A connection to " + realConnection.route().address().url() + " was leaked. Did you forget to close a response body?", ((RealCall.CallReference) reference).getCallStackTrace());
                calls.remove(i);
                realConnection.setNoNewExchanges(true);
                if (calls.isEmpty()) {
                    realConnection.setIdleAtNs$okhttp(j - this.keepAliveDurationNs);
                    return 0;
                }
            }
        }
        return calls.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0042, code lost:
        if (r0.isMultiplexed$okhttp() != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean callAcquirePooledConnection(okhttp3.Address r5, okhttp3.internal.connection.RealCall r6, java.util.List<okhttp3.Route> r7, boolean r8) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "address"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r6
            java.lang.String r1 = "call"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r4
            java.util.concurrent.ConcurrentLinkedQueue<okhttp3.internal.connection.RealConnection> r0 = r0.connections
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L17:
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L6b
            r0 = r9
            java.lang.Object r0 = r0.next()
            okhttp3.internal.connection.RealConnection r0 = (okhttp3.internal.connection.RealConnection) r0
            r10 = r0
            r0 = r10
            java.lang.String r1 = "connection"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r10
            monitor-enter(r0)
            r0 = r8
            if (r0 == 0) goto L45
            r0 = r10
            boolean r0 = r0.isMultiplexed$okhttp()     // Catch: java.lang.Throwable -> L65
            if (r0 == 0) goto L5a
        L45:
            r0 = r10
            r1 = r5
            r2 = r7
            boolean r0 = r0.isEligible$okhttp(r1, r2)     // Catch: java.lang.Throwable -> L65
            if (r0 == 0) goto L5a
            r0 = r6
            r1 = r10
            r0.acquireConnectionNoEvents(r1)     // Catch: java.lang.Throwable -> L65
            r0 = r10
            monitor-exit(r0)
            r0 = 1
            return r0
        L5a:
            kotlin.v r0 = kotlin.C20128v.f66529a     // Catch: java.lang.Throwable -> L65
            r11 = r0
            r0 = r10
            monitor-exit(r0)
            goto L17
        L65:
            r5 = move-exception
            r0 = r10
            monitor-exit(r0)
            r0 = r5
            throw r0
        L6b:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealConnectionPool.callAcquirePooledConnection(okhttp3.Address, okhttp3.internal.connection.RealCall, java.util.List, boolean):boolean");
    }

    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    public final long cleanup(long j) {
        Iterator<RealConnection> it2 = this.connections.iterator();
        int i = 0;
        char c = 0;
        RealConnection realConnection = null;
        int i2 = 0;
        while (it2.hasNext()) {
            RealConnection connection = it2.next();
            C18524p.m3843b(connection, "connection");
            synchronized (connection) {
                if (pruneAndGetAllocationCount(connection, j) > 0) {
                    i2++;
                } else {
                    i++;
                    ?? idleAtNs$okhttp = j - connection.getIdleAtNs$okhttp();
                    if (idleAtNs$okhttp > c) {
                        C20128v c20128v = C20128v.f66529a;
                        realConnection = connection;
                        c = idleAtNs$okhttp;
                    } else {
                        C20128v c20128v2 = C20128v.f66529a;
                    }
                }
            }
        }
        long j2 = this.keepAliveDurationNs;
        if (c < j2 && i <= this.maxIdleConnections) {
            if (i > 0) {
                return j2 - c;
            }
            if (i2 <= 0) {
                return -1L;
            }
            return j2;
        }
        C18524p.m3851a(realConnection);
        synchronized (realConnection) {
            try {
                if (!realConnection.getCalls().isEmpty()) {
                    return 0L;
                }
                if (realConnection.getIdleAtNs$okhttp() + c != j) {
                    return 0L;
                }
                realConnection.setNoNewExchanges(true);
                this.connections.remove(realConnection);
                Util.closeQuietly(realConnection.socket());
                if (!this.connections.isEmpty()) {
                    return 0L;
                }
                this.cleanupQueue.cancelAll();
                return 0L;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean connectionBecameIdle(RealConnection connection) {
        C18524p.m3840d(connection, "connection");
        if (Util.assertionsEnabled && !Thread.holdsLock(connection)) {
            StringBuilder sb = new StringBuilder("Thread ");
            Thread currentThread = Thread.currentThread();
            C18524p.m3843b(currentThread, "Thread.currentThread()");
            sb.append(currentThread.getName());
            sb.append(" MUST hold lock on ");
            sb.append(connection);
            throw new AssertionError(sb.toString());
        } else if (!connection.getNoNewExchanges() && this.maxIdleConnections != 0) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
            return false;
        } else {
            connection.setNoNewExchanges(true);
            this.connections.remove(connection);
            if (!this.connections.isEmpty()) {
                return true;
            }
            this.cleanupQueue.cancelAll();
            return true;
        }
    }

    public final int connectionCount() {
        return this.connections.size();
    }

    public final void evictAll() {
        Socket socket;
        Iterator<RealConnection> it2 = this.connections.iterator();
        C18524p.m3843b(it2, "connections.iterator()");
        while (it2.hasNext()) {
            RealConnection connection = it2.next();
            C18524p.m3843b(connection, "connection");
            synchronized (connection) {
                if (connection.getCalls().isEmpty()) {
                    it2.remove();
                    connection.setNoNewExchanges(true);
                    socket = connection.socket();
                } else {
                    socket = null;
                }
            }
            if (socket != null) {
                Util.closeQuietly(socket);
            }
        }
        if (this.connections.isEmpty()) {
            this.cleanupQueue.cancelAll();
        }
    }

    public final int idleConnectionCount() {
        boolean isEmpty;
        ConcurrentLinkedQueue<RealConnection> concurrentLinkedQueue = this.connections;
        int i = 0;
        if (!(concurrentLinkedQueue instanceof Collection) || !concurrentLinkedQueue.isEmpty()) {
            for (RealConnection it2 : concurrentLinkedQueue) {
                C18524p.m3843b(it2, "it");
                synchronized (it2) {
                    isEmpty = it2.getCalls().isEmpty();
                }
                if (isEmpty) {
                    int i2 = i + 1;
                    i = i2;
                    if (i2 < 0) {
                        C18282n.m4170b();
                        i = i2;
                    }
                }
            }
            return i;
        }
        return 0;
    }

    public final void put(RealConnection connection) {
        C18524p.m3840d(connection, "connection");
        if (!Util.assertionsEnabled || Thread.holdsLock(connection)) {
            this.connections.add(connection);
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
            return;
        }
        StringBuilder sb = new StringBuilder("Thread ");
        Thread currentThread = Thread.currentThread();
        C18524p.m3843b(currentThread, "Thread.currentThread()");
        sb.append(currentThread.getName());
        sb.append(" MUST hold lock on ");
        sb.append(connection);
        throw new AssertionError(sb.toString());
    }
}
