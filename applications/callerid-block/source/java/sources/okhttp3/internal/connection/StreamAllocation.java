package okhttp3.internal.connection;

import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;
import okhttp3.Address;
import okhttp3.Call;
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
        if (r0.noNewStreams != false) goto L19;
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
            if (r0 == 0) goto Lc
            r0 = r4
            r1 = 0
            r0.codec = r1
        Lc:
            r0 = r6
            if (r0 == 0) goto L15
            r0 = r4
            r1 = 1
            r0.released = r1
        L15:
            r0 = r4
            okhttp3.internal.connection.RealConnection r0 = r0.connection
            r9 = r0
            r0 = r8
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L90
            r0 = r5
            if (r0 == 0) goto L2e
            r0 = r9
            r1 = 1
            r0.noNewStreams = r1
        L2e:
            r0 = r8
            r10 = r0
            r0 = r4
            okhttp3.internal.http.HttpCodec r0 = r0.codec
            if (r0 != 0) goto L90
            r0 = r4
            boolean r0 = r0.released
            if (r0 != 0) goto L4c
            r0 = r8
            r10 = r0
            r0 = r9
            boolean r0 = r0.noNewStreams
            if (r0 == 0) goto L90
        L4c:
            r0 = r4
            r1 = r9
            r0.release(r1)
            r0 = r4
            okhttp3.internal.connection.RealConnection r0 = r0.connection
            java.util.List r0 = r0.allocations
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L88
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
            if (r0 == 0) goto L88
            r0 = r4
            okhttp3.internal.connection.RealConnection r0 = r0.connection
            java.net.Socket r0 = r0.socket()
            r10 = r0
            goto L8b
        L88:
            r0 = 0
            r10 = r0
        L8b:
            r0 = r4
            r1 = 0
            r0.connection = r1
        L90:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.StreamAllocation.deallocate(boolean, boolean, boolean):java.net.Socket");
    }

    private RealConnection findConnection(int i, int i2, int i3, int i4, boolean z) {
        Socket releaseIfNoNewStreams;
        RealConnection realConnection;
        RealConnection realConnection2;
        boolean z2;
        Route route;
        boolean z3;
        boolean z4;
        RealConnection realConnection3;
        RealConnection realConnection4;
        Socket socket;
        RouteSelector.Selection selection;
        synchronized (this.connectionPool) {
            try {
                if (this.released) {
                    throw new IllegalStateException("released");
                }
                if (this.codec != null) {
                    throw new IllegalStateException("codec != null");
                }
                if (this.canceled) {
                    throw new IOException("Canceled");
                }
                RealConnection realConnection5 = this.connection;
                releaseIfNoNewStreams = releaseIfNoNewStreams();
                realConnection = this.connection;
                if (realConnection != null) {
                    realConnection5 = null;
                } else {
                    realConnection = null;
                }
                realConnection2 = realConnection5;
                if (!this.reportedAcquired) {
                    realConnection2 = null;
                }
                if (realConnection == null) {
                    Internal.instance.get(this.connectionPool, this.address, this, (Route) null);
                    RealConnection realConnection6 = this.connection;
                    if (realConnection6 != null) {
                        realConnection = realConnection6;
                        z2 = true;
                        route = null;
                    } else {
                        route = this.route;
                    }
                } else {
                    route = null;
                }
                z2 = false;
            } catch (Throwable th) {
                throw th;
            }
        }
        Util.closeQuietly(releaseIfNoNewStreams);
        if (realConnection2 != null) {
            this.eventListener.connectionReleased(this.call, realConnection2);
        }
        if (z2) {
            this.eventListener.connectionAcquired(this.call, realConnection);
        }
        if (realConnection != null) {
            return realConnection;
        }
        if (route != null || ((selection = this.routeSelection) != null && selection.hasNext())) {
            z3 = false;
        } else {
            this.routeSelection = this.routeSelector.next();
            z3 = true;
        }
        synchronized (this.connectionPool) {
            if (this.canceled) {
                throw new IOException("Canceled");
            }
            RealConnection realConnection7 = realConnection;
            z4 = z2;
            if (z3) {
                List<Route> all = this.routeSelection.getAll();
                int size = all.size();
                int i5 = 0;
                while (true) {
                    realConnection7 = realConnection;
                    z4 = z2;
                    if (i5 >= size) {
                        break;
                    }
                    Route route2 = all.get(i5);
                    Internal.instance.get(this.connectionPool, this.address, this, route2);
                    realConnection7 = this.connection;
                    if (realConnection7 != null) {
                        this.route = route2;
                        z4 = true;
                        break;
                    }
                    i5++;
                }
            }
            realConnection3 = realConnection7;
            if (!z4) {
                Route route3 = route;
                if (route == null) {
                    route3 = this.routeSelection.next();
                }
                this.route = route3;
                this.refusedStreamCount = 0;
                RealConnection realConnection8 = new RealConnection(this.connectionPool, route3);
                acquire(realConnection8, false);
                realConnection3 = realConnection8;
            }
        }
        if (!z4) {
            realConnection3.connect(i, i2, i3, i4, z, this.call, this.eventListener);
            routeDatabase().connected(realConnection3.route());
            synchronized (this.connectionPool) {
                this.reportedAcquired = true;
                Internal.instance.put(this.connectionPool, realConnection3);
                realConnection4 = realConnection3;
                socket = null;
                if (realConnection3.isMultiplexed()) {
                    socket = Internal.instance.deduplicate(this.connectionPool, this.address, this);
                    realConnection4 = this.connection;
                }
            }
            Util.closeQuietly(socket);
            realConnection3 = realConnection4;
        }
        this.eventListener.connectionAcquired(this.call, realConnection3);
        return realConnection3;
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
        } else if (realConnection == null) {
        } else {
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
        RealConnection realConnection;
        Socket deallocate;
        synchronized (this.connectionPool) {
            realConnection = this.connection;
            deallocate = deallocate(true, false, false);
            if (this.connection != null) {
                realConnection = null;
            }
        }
        Util.closeQuietly(deallocate);
        if (realConnection != null) {
            this.eventListener.connectionReleased(this.call, realConnection);
        }
    }

    public void release() {
        RealConnection realConnection;
        Socket deallocate;
        synchronized (this.connectionPool) {
            realConnection = this.connection;
            deallocate = deallocate(false, true, false);
            if (this.connection != null) {
                realConnection = null;
            }
        }
        Util.closeQuietly(deallocate);
        if (realConnection != null) {
            Internal.instance.timeoutExit(this.call, (IOException) null);
            this.eventListener.connectionReleased(this.call, realConnection);
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
        if (r0 > 1) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r0 != okhttp3.internal.http2.ErrorCode.CANCEL) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a8 A[Catch: all -> 0x00d0, TryCatch #0 {all -> 0x00d0, blocks: (B:4:0x0007, B:7:0x0013, B:9:0x0022, B:12:0x0039, B:15:0x0041, B:16:0x0048, B:18:0x0053, B:20:0x005b, B:23:0x0063, B:25:0x006c, B:29:0x007b, B:32:0x008f, B:34:0x00a1, B:36:0x00a8, B:42:0x00b9), top: B:54:0x0007 }] */
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
        RealConnection realConnection;
        Socket deallocate;
        boolean z2;
        this.eventListener.responseBodyEnd(this.call, j);
        synchronized (this.connectionPool) {
            if (httpCodec != null) {
                if (httpCodec == this.codec) {
                    if (!z) {
                        this.connection.successCount++;
                    }
                    realConnection = this.connection;
                    deallocate = deallocate(z, false, true);
                    if (this.connection != null) {
                        realConnection = null;
                    }
                    z2 = this.released;
                }
            }
            throw new IllegalStateException("expected " + this.codec + " but was " + httpCodec);
        }
        Util.closeQuietly(deallocate);
        if (realConnection != null) {
            this.eventListener.connectionReleased(this.call, realConnection);
        }
        if (iOException != null) {
            this.eventListener.callFailed(this.call, Internal.instance.timeoutExit(this.call, iOException));
        } else if (!z2) {
        } else {
            Internal.instance.timeoutExit(this.call, (IOException) null);
            this.eventListener.callEnd(this.call);
        }
    }

    public String toString() {
        RealConnection connection = connection();
        return connection != null ? connection.toString() : this.address.toString();
    }
}
