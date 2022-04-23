package okhttp3.internal.connection;

import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.ConnectionPool;
import okhttp3.EventListener;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Route;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RouteSelector;
import okhttp3.internal.http.HttpCodec;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/connection/StreamAllocation.class */
public final class StreamAllocation {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public final Address address;
    public final Call call;
    private final Object callStackTrace;
    private boolean canceled;
    private HttpCodec codec;
    private RealConnection connection;
    private final ConnectionPool connectionPool;
    public final EventListener eventListener;
    private int refusedStreamCount;
    private boolean released;
    private boolean reportedAcquired;
    private Route route;
    private RouteSelector.Selection routeSelection;
    private final RouteSelector routeSelector;

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/connection/StreamAllocation$StreamAllocationReference.class */
    public static final class StreamAllocationReference extends WeakReference<StreamAllocation> {
        public final Object callStackTrace;

        StreamAllocationReference(StreamAllocation streamAllocation, Object obj) {
            super(streamAllocation);
            this.callStackTrace = obj;
        }
    }

    public StreamAllocation(ConnectionPool connectionPool, Address address, Call call, EventListener eventListener, Object obj) {
        this.connectionPool = connectionPool;
        this.address = address;
        this.call = call;
        this.eventListener = eventListener;
        this.routeSelector = new RouteSelector(address, routeDatabase(), call, eventListener);
        this.callStackTrace = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
        if (r0.noNewStreams != false) goto L_0x004c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.net.Socket deallocate(boolean r5, boolean r6, boolean r7) {
        /*
            r4 = this;
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x000c
            r0 = r4
            r1 = 0
            r0.codec = r1
        L_0x000c:
            r0 = r6
            if (r0 == 0) goto L_0x0015
            r0 = r4
            r1 = 1
            r0.released = r1
        L_0x0015:
            r0 = r4
            okhttp3.internal.connection.RealConnection r0 = r0.connection
            r9 = r0
            r0 = r8
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0090
            r0 = r5
            if (r0 == 0) goto L_0x002e
            r0 = r9
            r1 = 1
            r0.noNewStreams = r1
        L_0x002e:
            r0 = r8
            r10 = r0
            r0 = r4
            okhttp3.internal.http.HttpCodec r0 = r0.codec
            if (r0 != 0) goto L_0x0090
            r0 = r4
            boolean r0 = r0.released
            if (r0 != 0) goto L_0x004c
            r0 = r8
            r10 = r0
            r0 = r9
            boolean r0 = r0.noNewStreams
            if (r0 == 0) goto L_0x0090
        L_0x004c:
            r0 = r4
            r1 = r9
            r0.release(r1)
            r0 = r4
            okhttp3.internal.connection.RealConnection r0 = r0.connection
            java.util.List r0 = r0.allocations
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0088
            r0 = r4
            okhttp3.internal.connection.RealConnection r0 = r0.connection
            long r1 = java.lang.System.nanoTime()
            r0.idleAtNanos = r1
            okhttp3.internal.Internal r0 = okhttp3.internal.Internal.instance
            r1 = r4
            okhttp3.ConnectionPool r1 = r1.connectionPool
            r2 = r4
            okhttp3.internal.connection.RealConnection r2 = r2.connection
            boolean r0 = r0.connectionBecameIdle(r1, r2)
            if (r0 == 0) goto L_0x0088
            r0 = r4
            okhttp3.internal.connection.RealConnection r0 = r0.connection
            java.net.Socket r0 = r0.socket()
            r10 = r0
            goto L_0x008b
        L_0x0088:
            r0 = 0
            r10 = r0
        L_0x008b:
            r0 = r4
            r1 = 0
            r0.connection = r1
        L_0x0090:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.StreamAllocation.deallocate(boolean, boolean, boolean):java.net.Socket");
    }

    private RealConnection findConnection(int i, int i2, int i3, int i4, boolean z) {
        Connection connection;
        Socket releaseIfNoNewStreams;
        Connection connection2;
        boolean z2;
        Route route;
        boolean z3;
        Connection connection3;
        boolean z4;
        Socket socket;
        RouteSelector.Selection selection;
        synchronized (this.connectionPool) {
            try {
                if (this.released) {
                    throw new IllegalStateException("released");
                } else if (this.codec != null) {
                    throw new IllegalStateException("codec != null");
                } else if (!this.canceled) {
                    connection = this.connection;
                    releaseIfNoNewStreams = releaseIfNoNewStreams();
                    connection2 = this.connection;
                    socket = null;
                    if (connection2 != null) {
                        connection = null;
                    } else {
                        connection2 = null;
                    }
                    if (!this.reportedAcquired) {
                        connection = null;
                    }
                    if (connection2 == null) {
                        Internal.instance.get(this.connectionPool, this.address, this, (Route) null);
                        Connection connection4 = this.connection;
                        if (connection4 != null) {
                            connection2 = connection4;
                            z2 = true;
                            route = null;
                        } else {
                            route = this.route;
                        }
                    } else {
                        route = null;
                    }
                    z2 = false;
                } else {
                    throw new IOException("Canceled");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Util.closeQuietly(releaseIfNoNewStreams);
        if (connection != null) {
            this.eventListener.connectionReleased(this.call, connection);
        }
        if (z2) {
            this.eventListener.connectionAcquired(this.call, connection2);
        }
        if (connection2 != null) {
            return connection2;
        }
        if (route != null || ((selection = this.routeSelection) != null && selection.hasNext())) {
            z3 = false;
        } else {
            this.routeSelection = this.routeSelector.next();
            z3 = true;
        }
        synchronized (this.connectionPool) {
            if (!this.canceled) {
                connection3 = connection2;
                z4 = z2;
                if (z3) {
                    List<Route> all = this.routeSelection.getAll();
                    int size = all.size();
                    int i5 = 0;
                    while (true) {
                        connection3 = connection2;
                        z4 = z2;
                        if (i5 >= size) {
                            break;
                        }
                        Route route2 = all.get(i5);
                        Internal.instance.get(this.connectionPool, this.address, this, route2);
                        connection3 = this.connection;
                        if (connection3 != null) {
                            this.route = route2;
                            z4 = true;
                            break;
                        }
                        i5++;
                    }
                }
                if (!z4) {
                    Route route3 = route;
                    if (route == null) {
                        route3 = this.routeSelection.next();
                    }
                    this.route = route3;
                    this.refusedStreamCount = 0;
                    Connection realConnection = new RealConnection(this.connectionPool, route3);
                    acquire(realConnection, false);
                    connection3 = realConnection;
                }
            } else {
                throw new IOException("Canceled");
            }
        }
        if (!z4) {
            connection3.connect(i, i2, i3, i4, z, this.call, this.eventListener);
            routeDatabase().connected(connection3.route());
            synchronized (this.connectionPool) {
                this.reportedAcquired = true;
                Internal.instance.put(this.connectionPool, connection3);
                connection3 = connection3;
                if (connection3.isMultiplexed()) {
                    socket = Internal.instance.deduplicate(this.connectionPool, this.address, this);
                    connection3 = this.connection;
                }
            }
            Util.closeQuietly(socket);
        }
        this.eventListener.connectionAcquired(this.call, connection3);
        return connection3;
    }

    private RealConnection findHealthyConnection(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        while (true) {
            RealConnection findConnection = findConnection(i, i2, i3, i4, z);
            synchronized (this.connectionPool) {
                try {
                    if (findConnection.successCount == 0) {
                        return findConnection;
                    }
                    if (findConnection.isHealthy(z2)) {
                        return findConnection;
                    }
                    noNewStreams();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private void release(RealConnection realConnection) {
        int size = realConnection.allocations.size();
        for (int i = 0; i < size; i++) {
            if (((Reference) realConnection.allocations.get(i)).get() == this) {
                realConnection.allocations.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private Socket releaseIfNoNewStreams() {
        RealConnection realConnection = this.connection;
        if (realConnection == null || !realConnection.noNewStreams) {
            return null;
        }
        return deallocate(false, false, true);
    }

    private RouteDatabase routeDatabase() {
        return Internal.instance.routeDatabase(this.connectionPool);
    }

    public void acquire(RealConnection realConnection, boolean z) {
        if (this.connection == null) {
            this.connection = realConnection;
            this.reportedAcquired = z;
            realConnection.allocations.add(new StreamAllocationReference(this, this.callStackTrace));
            return;
        }
        throw new IllegalStateException();
    }

    public void cancel() {
        HttpCodec httpCodec;
        RealConnection realConnection;
        synchronized (this.connectionPool) {
            this.canceled = true;
            httpCodec = this.codec;
            realConnection = this.connection;
        }
        if (httpCodec != null) {
            httpCodec.cancel();
        } else if (realConnection != null) {
            realConnection.cancel();
        }
    }

    public HttpCodec codec() {
        HttpCodec httpCodec;
        synchronized (this.connectionPool) {
            httpCodec = this.codec;
        }
        return httpCodec;
    }

    public RealConnection connection() {
        RealConnection realConnection;
        synchronized (this) {
            realConnection = this.connection;
        }
        return realConnection;
    }

    public boolean hasMoreRoutes() {
        RouteSelector.Selection selection;
        return this.route != null || ((selection = this.routeSelection) != null && selection.hasNext()) || this.routeSelector.hasNext();
    }

    public HttpCodec newStream(OkHttpClient okHttpClient, Interceptor.Chain chain, boolean z) {
        try {
            HttpCodec newCodec = findHealthyConnection(chain.connectTimeoutMillis(), chain.readTimeoutMillis(), chain.writeTimeoutMillis(), okHttpClient.pingIntervalMillis(), okHttpClient.retryOnConnectionFailure(), z).newCodec(okHttpClient, chain, this);
            synchronized (this.connectionPool) {
                this.codec = newCodec;
            }
            return newCodec;
        } catch (IOException e) {
            throw new RouteException(e);
        }
    }

    public void noNewStreams() {
        Connection connection;
        Socket deallocate;
        synchronized (this.connectionPool) {
            connection = this.connection;
            deallocate = deallocate(true, false, false);
            if (this.connection != null) {
                connection = null;
            }
        }
        Util.closeQuietly(deallocate);
        if (connection != null) {
            this.eventListener.connectionReleased(this.call, connection);
        }
    }

    public void release() {
        Connection connection;
        Socket deallocate;
        synchronized (this.connectionPool) {
            connection = this.connection;
            deallocate = deallocate(false, true, false);
            if (this.connection != null) {
                connection = null;
            }
        }
        Util.closeQuietly(deallocate);
        if (connection != null) {
            Internal.instance.timeoutExit(this.call, (IOException) null);
            this.eventListener.connectionReleased(this.call, connection);
            this.eventListener.callEnd(this.call);
        }
    }

    public Socket releaseAndAcquire(RealConnection realConnection) {
        if (this.codec == null && this.connection.allocations.size() == 1) {
            Reference reference = (Reference) this.connection.allocations.get(0);
            Socket deallocate = deallocate(true, false, false);
            this.connection = realConnection;
            realConnection.allocations.add(reference);
            return deallocate;
        }
        throw new IllegalStateException();
    }

    public Route route() {
        return this.route;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        if (r0 > 1) goto L_0x0040;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r0 != okhttp3.internal.http2.ErrorCode.CANCEL) goto L_0x0040;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void streamFailed(java.io.IOException r6) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.StreamAllocation.streamFailed(java.io.IOException):void");
    }

    public void streamFinished(boolean z, HttpCodec httpCodec, long j, IOException iOException) {
        Connection connection;
        Socket deallocate;
        boolean z2;
        this.eventListener.responseBodyEnd(this.call, j);
        synchronized (this.connectionPool) {
            if (httpCodec != null) {
                if (httpCodec == this.codec) {
                    if (!z) {
                        this.connection.successCount++;
                    }
                    connection = this.connection;
                    deallocate = deallocate(z, false, true);
                    if (this.connection != null) {
                        connection = null;
                    }
                    z2 = this.released;
                }
            }
            throw new IllegalStateException("expected " + this.codec + " but was " + httpCodec);
        }
        Util.closeQuietly(deallocate);
        if (connection != null) {
            this.eventListener.connectionReleased(this.call, connection);
        }
        if (iOException != null) {
            this.eventListener.callFailed(this.call, Internal.instance.timeoutExit(this.call, iOException));
        } else if (z2) {
            Internal.instance.timeoutExit(this.call, (IOException) null);
            this.eventListener.callEnd(this.call);
        }
    }

    public String toString() {
        RealConnection connection = connection();
        return connection != null ? connection.toString() : this.address.toString();
    }
}
