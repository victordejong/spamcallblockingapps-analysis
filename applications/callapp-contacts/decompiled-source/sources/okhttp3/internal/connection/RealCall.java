package okhttp3.internal.connection;

import c.d;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.b;
import kotlin.jvm.internal.p;
import kotlin.v;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.CertificatePinner;
import okhttp3.Dispatcher;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheInterceptor;
import okhttp3.internal.http.BridgeInterceptor;
import okhttp3.internal.http.CallServerInterceptor;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RetryAndFollowUpInterceptor;
import okhttp3.internal.platform.Platform;
@Metadata(bv = {1, 0, 3}, d1 = {"��§\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001.\u0018��2\u00020\u0001:\u0002deB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u00101\u001a\u0002022\u0006\u0010\u0010\u001a\u00020\u000fJ!\u00103\u001a\u0002H4\"\n\b��\u00104*\u0004\u0018\u0001052\u0006\u00106\u001a\u0002H4H\u0002¢\u0006\u0002\u00107J\b\u00108\u001a\u000202H\u0002J\b\u00109\u001a\u000202H\u0016J\b\u0010:\u001a\u00020��H\u0016J\u0010\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0002J\u0010\u0010?\u001a\u0002022\u0006\u0010@\u001a\u00020AH\u0016J\u0016\u0010B\u001a\u0002022\u0006\u0010C\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u0007J\b\u0010E\u001a\u00020FH\u0016J\u0015\u0010G\u001a\u0002022\u0006\u0010H\u001a\u00020\u0007H��¢\u0006\u0002\bIJ\r\u0010J\u001a\u00020FH��¢\u0006\u0002\bKJ\u0015\u0010L\u001a\u00020\u001e2\u0006\u0010M\u001a\u00020NH��¢\u0006\u0002\bOJ\b\u0010P\u001a\u00020\u0007H\u0016J\b\u0010Q\u001a\u00020\u0007H\u0016J;\u0010R\u001a\u0002H4\"\n\b��\u00104*\u0004\u0018\u0001052\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010S\u001a\u00020\u00072\u0006\u0010T\u001a\u00020\u00072\u0006\u00106\u001a\u0002H4H��¢\u0006\u0004\bU\u0010VJ\u0019\u0010W\u001a\u0004\u0018\u0001052\b\u00106\u001a\u0004\u0018\u000105H��¢\u0006\u0002\bXJ\r\u0010Y\u001a\u00020ZH��¢\u0006\u0002\b[J\u000f\u0010\\\u001a\u0004\u0018\u00010]H��¢\u0006\u0002\b^J\b\u0010C\u001a\u00020\u0005H\u0016J\u0006\u0010_\u001a\u00020\u0007J\b\u0010-\u001a\u00020`H\u0016J\u0006\u00100\u001a\u000202J!\u0010a\u001a\u0002H4\"\n\b��\u00104*\u0004\u0018\u0001052\u0006\u0010b\u001a\u0002H4H\u0002¢\u0006\u0002\u00107J\b\u0010c\u001a\u00020ZH\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\"\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001aX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010#\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b$\u0010%R\"\u0010&\u001a\u0004\u0018\u00010\u001e2\b\u0010\u000e\u001a\u0004\u0018\u00010\u001e@BX\u0080\u000e¢\u0006\b\n��\u001a\u0004\b'\u0010(R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b)\u0010*R\u000e\u0010+\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010,\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010-\u001a\u00020.X\u0082\u0004¢\u0006\u0004\n\u0002\u0010/R\u000e\u00100\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��¨\u0006f"}, d2 = {"Lokhttp3/internal/connection/RealCall;", "Lokhttp3/Call;", "client", "Lokhttp3/OkHttpClient;", "originalRequest", "Lokhttp3/Request;", "forWebSocket", "", "(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V", "callStackTrace", "", "canceled", "getClient", "()Lokhttp3/OkHttpClient;", "<set-?>", "Lokhttp3/internal/connection/RealConnection;", "connection", "getConnection", "()Lokhttp3/internal/connection/RealConnection;", "connectionPool", "Lokhttp3/internal/connection/RealConnectionPool;", "connectionToCancel", "getConnectionToCancel", "setConnectionToCancel", "(Lokhttp3/internal/connection/RealConnection;)V", "eventListener", "Lokhttp3/EventListener;", "getEventListener$okhttp", "()Lokhttp3/EventListener;", "exchange", "Lokhttp3/internal/connection/Exchange;", "exchangeFinder", "Lokhttp3/internal/connection/ExchangeFinder;", "executed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "expectMoreExchanges", "getForWebSocket", "()Z", "interceptorScopedExchange", "getInterceptorScopedExchange$okhttp", "()Lokhttp3/internal/connection/Exchange;", "getOriginalRequest", "()Lokhttp3/Request;", "requestBodyOpen", "responseBodyOpen", "timeout", "okhttp3/internal/connection/RealCall$timeout$1", "Lokhttp3/internal/connection/RealCall$timeout$1;", "timeoutEarlyExit", "acquireConnectionNoEvents", "", "callDone", "E", "Ljava/io/IOException;", "e", "(Ljava/io/IOException;)Ljava/io/IOException;", "callStart", "cancel", "clone", "createAddress", "Lokhttp3/Address;", "url", "Lokhttp3/HttpUrl;", "enqueue", "responseCallback", "Lokhttp3/Callback;", "enterNetworkInterceptorExchange", "request", "newExchangeFinder", "execute", "Lokhttp3/Response;", "exitNetworkInterceptorExchange", "closeExchange", "exitNetworkInterceptorExchange$okhttp", "getResponseWithInterceptorChain", "getResponseWithInterceptorChain$okhttp", "initExchange", "chain", "Lokhttp3/internal/http/RealInterceptorChain;", "initExchange$okhttp", "isCanceled", "isExecuted", "messageDone", "requestDone", "responseDone", "messageDone$okhttp", "(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;", "noMoreExchanges", "noMoreExchanges$okhttp", "redactedUrl", "", "redactedUrl$okhttp", "releaseConnectionNoEvents", "Ljava/net/Socket;", "releaseConnectionNoEvents$okhttp", "retryAfterFailure", "Lokio/AsyncTimeout;", "timeoutExit", "cause", "toLoggableString", "AsyncCall", "CallReference", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/connection/RealCall.class */
public final class RealCall implements Call {
    private Object callStackTrace;
    private volatile boolean canceled;
    private final OkHttpClient client;
    private RealConnection connection;
    private final RealConnectionPool connectionPool;
    private volatile RealConnection connectionToCancel;
    private final EventListener eventListener;
    private volatile Exchange exchange;
    private ExchangeFinder exchangeFinder;
    private final AtomicBoolean executed = new AtomicBoolean();
    private boolean expectMoreExchanges = true;
    private final boolean forWebSocket;
    private Exchange interceptorScopedExchange;
    private final Request originalRequest;
    private boolean requestBodyOpen;
    private boolean responseBodyOpen;
    private final RealCall$timeout$1 timeout;
    private boolean timeoutEarlyExit;

    @Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0012\u0010\u001a\u001a\u00020\u00172\n\u0010\u001b\u001a\u00060��R\u00020\u0006J\b\u0010\u001c\u001a\u00020\u0017H\u0016R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001d"}, d2 = {"Lokhttp3/internal/connection/RealCall$AsyncCall;", "Ljava/lang/Runnable;", "responseCallback", "Lokhttp3/Callback;", "(Lokhttp3/internal/connection/RealCall;Lokhttp3/Callback;)V", "call", "Lokhttp3/internal/connection/RealCall;", "getCall", "()Lokhttp3/internal/connection/RealCall;", "<set-?>", "Ljava/util/concurrent/atomic/AtomicInteger;", "callsPerHost", "getCallsPerHost", "()Ljava/util/concurrent/atomic/AtomicInteger;", "host", "", "getHost", "()Ljava/lang/String;", "request", "Lokhttp3/Request;", "getRequest", "()Lokhttp3/Request;", "executeOn", "", "executorService", "Ljava/util/concurrent/ExecutorService;", "reuseCallsPerHostFrom", "other", "run", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/connection/RealCall$AsyncCall.class */
    public final class AsyncCall implements Runnable {
        private volatile AtomicInteger callsPerHost = new AtomicInteger(0);
        private final Callback responseCallback;
        final /* synthetic */ RealCall this$0;

        public AsyncCall(RealCall realCall, Callback responseCallback) {
            p.d(responseCallback, "responseCallback");
            this.this$0 = realCall;
            this.responseCallback = responseCallback;
        }

        public final void executeOn(ExecutorService executorService) {
            p.d(executorService, "executorService");
            Dispatcher dispatcher = this.this$0.getClient().dispatcher();
            if (!Util.assertionsEnabled || !Thread.holdsLock(dispatcher)) {
                try {
                    try {
                        executorService.execute(this);
                    } catch (RejectedExecutionException e) {
                        InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                        interruptedIOException.initCause(e);
                        this.this$0.noMoreExchanges$okhttp(interruptedIOException);
                        this.responseCallback.onFailure(this.this$0, interruptedIOException);
                        this.this$0.getClient().dispatcher().finished$okhttp(this);
                    }
                } catch (Throwable th) {
                    this.this$0.getClient().dispatcher().finished$okhttp(this);
                    throw th;
                }
            } else {
                StringBuilder sb = new StringBuilder("Thread ");
                Thread currentThread = Thread.currentThread();
                p.b(currentThread, "Thread.currentThread()");
                sb.append(currentThread.getName());
                sb.append(" MUST NOT hold lock on ");
                sb.append(dispatcher);
                throw new AssertionError(sb.toString());
            }
        }

        public final RealCall getCall() {
            return this.this$0;
        }

        public final AtomicInteger getCallsPerHost() {
            return this.callsPerHost;
        }

        public final String getHost() {
            return this.this$0.getOriginalRequest().url().host();
        }

        public final Request getRequest() {
            return this.this$0.getOriginalRequest();
        }

        public final void reuseCallsPerHostFrom(AsyncCall other) {
            p.d(other, "other");
            this.callsPerHost = other.callsPerHost;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            IOException e;
            Dispatcher dispatcher;
            boolean z2;
            Throwable th;
            Thread currentThread = Thread.currentThread();
            p.b(currentThread, "currentThread");
            String name = currentThread.getName();
            currentThread.setName("OkHttp " + this.this$0.redactedUrl$okhttp());
            try {
                enter();
                try {
                    z = true;
                    z2 = true;
                } catch (IOException e2) {
                    e = e2;
                    z = false;
                } catch (Throwable th2) {
                    th = th2;
                    z2 = false;
                }
                try {
                    this.responseCallback.onResponse(this.this$0, this.this$0.getResponseWithInterceptorChain$okhttp());
                    dispatcher = this.this$0.getClient().dispatcher();
                } catch (IOException e3) {
                    e = e3;
                    if (z) {
                        Platform.Companion.get().log("Callback failure for " + this.this$0.toLoggableString(), 4, e);
                    } else {
                        this.responseCallback.onFailure(this.this$0, e);
                    }
                    dispatcher = this.this$0.getClient().dispatcher();
                    dispatcher.finished$okhttp(this);
                } catch (Throwable th3) {
                    th = th3;
                    this.this$0.cancel();
                    if (!z2) {
                        IOException iOException = new IOException("canceled due to ".concat(String.valueOf(th)));
                        b.a(iOException, th);
                        this.responseCallback.onFailure(this.this$0, iOException);
                    }
                    throw th;
                }
                dispatcher.finished$okhttp(this);
            } finally {
                currentThread.setName(name);
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0004\b��\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lokhttp3/internal/connection/RealCall$CallReference;", "Ljava/lang/ref/WeakReference;", "Lokhttp3/internal/connection/RealCall;", "referent", "callStackTrace", "", "(Lokhttp3/internal/connection/RealCall;Ljava/lang/Object;)V", "getCallStackTrace", "()Ljava/lang/Object;", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/connection/RealCall$CallReference.class */
    public static final class CallReference extends WeakReference<RealCall> {
        private final Object callStackTrace;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CallReference(RealCall referent, Object obj) {
            super(referent);
            p.d(referent, "referent");
            this.callStackTrace = obj;
        }

        public final Object getCallStackTrace() {
            return this.callStackTrace;
        }
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [okhttp3.internal.connection.RealCall$timeout$1] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RealCall(okhttp3.OkHttpClient r6, okhttp3.Request r7, boolean r8) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "client"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r7
            java.lang.String r1 = "originalRequest"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r5
            r0.<init>()
            r0 = r5
            r1 = r6
            r0.client = r1
            r0 = r5
            r1 = r7
            r0.originalRequest = r1
            r0 = r5
            r1 = r8
            r0.forWebSocket = r1
            r0 = r5
            r1 = r6
            okhttp3.ConnectionPool r1 = r1.connectionPool()
            okhttp3.internal.connection.RealConnectionPool r1 = r1.getDelegate$okhttp()
            r0.connectionPool = r1
            r0 = r5
            r1 = r6
            okhttp3.EventListener$Factory r1 = r1.eventListenerFactory()
            r2 = r5
            okhttp3.Call r2 = (okhttp3.Call) r2
            okhttp3.EventListener r1 = r1.create(r2)
            r0.eventListener = r1
            okhttp3.internal.connection.RealCall$timeout$1 r0 = new okhttp3.internal.connection.RealCall$timeout$1
            r1 = r0
            r2 = r5
            r1.<init>()
            r7 = r0
            r0 = r7
            r1 = r6
            int r1 = r1.callTimeoutMillis()
            long r1 = (long) r1
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.MILLISECONDS
            c.ae r0 = r0.timeout(r1, r2)
            kotlin.v r0 = kotlin.v.f38654a
            r6 = r0
            r0 = r5
            r1 = r7
            r0.timeout = r1
            r0 = r5
            java.util.concurrent.atomic.AtomicBoolean r1 = new java.util.concurrent.atomic.AtomicBoolean
            r2 = r1
            r2.<init>()
            r0.executed = r1
            r0 = r5
            r1 = 1
            r0.expectMoreExchanges = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealCall.<init>(okhttp3.OkHttpClient, okhttp3.Request, boolean):void");
    }

    private final <E extends IOException> E callDone(E e) {
        Socket releaseConnectionNoEvents$okhttp;
        if (!Util.assertionsEnabled || !Thread.holdsLock(this)) {
            RealConnection realConnection = this.connection;
            if (realConnection != null) {
                if (!Util.assertionsEnabled || !Thread.holdsLock(realConnection)) {
                    synchronized (realConnection) {
                        releaseConnectionNoEvents$okhttp = releaseConnectionNoEvents$okhttp();
                    }
                    if (this.connection == null) {
                        if (releaseConnectionNoEvents$okhttp != null) {
                            Util.closeQuietly(releaseConnectionNoEvents$okhttp);
                        }
                        this.eventListener.connectionReleased(this, realConnection);
                    } else {
                        if (!(releaseConnectionNoEvents$okhttp == null)) {
                            throw new IllegalStateException("Check failed.".toString());
                        }
                    }
                } else {
                    StringBuilder sb = new StringBuilder("Thread ");
                    Thread currentThread = Thread.currentThread();
                    p.b(currentThread, "Thread.currentThread()");
                    sb.append(currentThread.getName());
                    sb.append(" MUST NOT hold lock on ");
                    sb.append(realConnection);
                    throw new AssertionError(sb.toString());
                }
            }
            E e2 = (E) timeoutExit(e);
            if (e != null) {
                p.a((Object) e2);
                this.eventListener.callFailed(this, e2);
            } else {
                this.eventListener.callEnd(this);
            }
            return e2;
        }
        StringBuilder sb2 = new StringBuilder("Thread ");
        Thread currentThread2 = Thread.currentThread();
        p.b(currentThread2, "Thread.currentThread()");
        sb2.append(currentThread2.getName());
        sb2.append(" MUST NOT hold lock on ");
        sb2.append(this);
        throw new AssertionError(sb2.toString());
    }

    private final void callStart() {
        this.callStackTrace = Platform.Companion.get().getStackTraceForCloseable("response.body().close()");
        this.eventListener.callStart(this);
    }

    private final Address createAddress(HttpUrl httpUrl) {
        CertificatePinner certificatePinner;
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sSLSocketFactory;
        if (httpUrl.isHttps()) {
            sSLSocketFactory = this.client.sslSocketFactory();
            hostnameVerifier = this.client.hostnameVerifier();
            certificatePinner = this.client.certificatePinner();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            certificatePinner = null;
        }
        return new Address(httpUrl.host(), httpUrl.port(), this.client.dns(), this.client.socketFactory(), sSLSocketFactory, hostnameVerifier, certificatePinner, this.client.proxyAuthenticator(), this.client.proxy(), this.client.protocols(), this.client.connectionSpecs(), this.client.proxySelector());
    }

    private final <E extends IOException> E timeoutExit(E e) {
        if (!this.timeoutEarlyExit && exit()) {
            InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
            if (e != null) {
                interruptedIOException.initCause(e);
            }
            return interruptedIOException;
        }
        return e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String toLoggableString() {
        StringBuilder sb = new StringBuilder();
        sb.append(isCanceled() ? "canceled " : "");
        sb.append(this.forWebSocket ? "web socket" : "call");
        sb.append(" to ");
        sb.append(redactedUrl$okhttp());
        return sb.toString();
    }

    public final void acquireConnectionNoEvents(RealConnection connection) {
        p.d(connection, "connection");
        if (!Util.assertionsEnabled || Thread.holdsLock(connection)) {
            if (this.connection == null) {
                this.connection = connection;
                connection.getCalls().add(new CallReference(this, this.callStackTrace));
                return;
            }
            throw new IllegalStateException("Check failed.".toString());
        }
        StringBuilder sb = new StringBuilder("Thread ");
        Thread currentThread = Thread.currentThread();
        p.b(currentThread, "Thread.currentThread()");
        sb.append(currentThread.getName());
        sb.append(" MUST hold lock on ");
        sb.append(connection);
        throw new AssertionError(sb.toString());
    }

    @Override // okhttp3.Call
    public final void cancel() {
        if (!this.canceled) {
            this.canceled = true;
            Exchange exchange = this.exchange;
            if (exchange != null) {
                exchange.cancel();
            }
            RealConnection realConnection = this.connectionToCancel;
            if (realConnection != null) {
                realConnection.cancel();
            }
            this.eventListener.canceled(this);
        }
    }

    @Override // okhttp3.Call
    public final RealCall clone() {
        return new RealCall(this.client, this.originalRequest, this.forWebSocket);
    }

    @Override // okhttp3.Call
    public final void enqueue(Callback responseCallback) {
        p.d(responseCallback, "responseCallback");
        if (this.executed.compareAndSet(false, true)) {
            callStart();
            this.client.dispatcher().enqueue$okhttp(new AsyncCall(this, responseCallback));
            return;
        }
        throw new IllegalStateException("Already Executed".toString());
    }

    public final void enterNetworkInterceptorExchange(Request request, boolean z) {
        p.d(request, "request");
        if (this.interceptorScopedExchange == null) {
            synchronized (this) {
                if (!(!this.responseBodyOpen)) {
                    throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()".toString());
                } else if (!this.requestBodyOpen) {
                    v vVar = v.f38654a;
                } else {
                    throw new IllegalStateException("Check failed.".toString());
                }
            }
            if (z) {
                this.exchangeFinder = new ExchangeFinder(this.connectionPool, createAddress(request.url()), this, this.eventListener);
                return;
            }
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    @Override // okhttp3.Call
    public final Response execute() {
        if (this.executed.compareAndSet(false, true)) {
            enter();
            callStart();
            try {
                this.client.dispatcher().executed$okhttp(this);
                return getResponseWithInterceptorChain$okhttp();
            } finally {
                this.client.dispatcher().finished$okhttp(this);
            }
        } else {
            throw new IllegalStateException("Already Executed".toString());
        }
    }

    public final void exitNetworkInterceptorExchange$okhttp(boolean z) {
        Exchange exchange;
        synchronized (this) {
            if (this.expectMoreExchanges) {
                v vVar = v.f38654a;
            } else {
                throw new IllegalStateException("released".toString());
            }
        }
        if (z && (exchange = this.exchange) != null) {
            exchange.detachWithViolence();
        }
        this.interceptorScopedExchange = null;
    }

    public final OkHttpClient getClient() {
        return this.client;
    }

    public final RealConnection getConnection() {
        return this.connection;
    }

    public final RealConnection getConnectionToCancel() {
        return this.connectionToCancel;
    }

    public final EventListener getEventListener$okhttp() {
        return this.eventListener;
    }

    public final boolean getForWebSocket() {
        return this.forWebSocket;
    }

    public final Exchange getInterceptorScopedExchange$okhttp() {
        return this.interceptorScopedExchange;
    }

    public final Request getOriginalRequest() {
        return this.originalRequest;
    }

    public final Response getResponseWithInterceptorChain$okhttp() throws IOException {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        n.a((Collection) arrayList2, (Iterable) this.client.interceptors());
        arrayList2.add(new RetryAndFollowUpInterceptor(this.client));
        arrayList2.add(new BridgeInterceptor(this.client.cookieJar()));
        arrayList2.add(new CacheInterceptor(this.client.cache()));
        arrayList2.add(ConnectInterceptor.INSTANCE);
        if (!this.forWebSocket) {
            n.a((Collection) arrayList2, (Iterable) this.client.networkInterceptors());
        }
        arrayList2.add(new CallServerInterceptor(this.forWebSocket));
        boolean z = false;
        try {
            try {
                Response proceed = new RealInterceptorChain(this, arrayList, 0, null, this.originalRequest, this.client.connectTimeoutMillis(), this.client.readTimeoutMillis(), this.client.writeTimeoutMillis()).proceed(this.originalRequest);
                if (!isCanceled()) {
                    noMoreExchanges$okhttp(null);
                    return proceed;
                }
                Util.closeQuietly(proceed);
                z = false;
                throw new IOException("Canceled");
            } catch (IOException e) {
                IOException noMoreExchanges$okhttp = noMoreExchanges$okhttp(e);
                if (noMoreExchanges$okhttp == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
                }
                throw noMoreExchanges$okhttp;
            }
        } catch (Throwable th) {
            if (!z) {
                noMoreExchanges$okhttp(null);
            }
            throw th;
        }
    }

    public final Exchange initExchange$okhttp(RealInterceptorChain chain) {
        p.d(chain, "chain");
        synchronized (this) {
            if (!this.expectMoreExchanges) {
                throw new IllegalStateException("released".toString());
            } else if (!(!this.responseBodyOpen)) {
                throw new IllegalStateException("Check failed.".toString());
            } else if (!this.requestBodyOpen) {
                v vVar = v.f38654a;
            } else {
                throw new IllegalStateException("Check failed.".toString());
            }
        }
        ExchangeFinder exchangeFinder = this.exchangeFinder;
        p.a(exchangeFinder);
        Exchange exchange = new Exchange(this, this.eventListener, exchangeFinder, exchangeFinder.find(this.client, chain));
        this.interceptorScopedExchange = exchange;
        this.exchange = exchange;
        synchronized (this) {
            this.requestBodyOpen = true;
            this.responseBodyOpen = true;
            v vVar2 = v.f38654a;
        }
        if (!this.canceled) {
            return exchange;
        }
        throw new IOException("Canceled");
    }

    @Override // okhttp3.Call
    public final boolean isCanceled() {
        return this.canceled;
    }

    @Override // okhttp3.Call
    public final boolean isExecuted() {
        return this.executed.get();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0044 A[Catch: all -> 0x0031, TRY_ENTER, TryCatch #0 {, blocks: (B:10:0x0027, B:16:0x0039, B:20:0x0044, B:23:0x004d, B:25:0x0053, B:27:0x005b, B:34:0x006f, B:36:0x0076, B:41:0x0089), top: B:57:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004d A[Catch: all -> 0x0031, TRY_ENTER, TryCatch #0 {, blocks: (B:10:0x0027, B:16:0x0039, B:20:0x0044, B:23:0x004d, B:25:0x0053, B:27:0x005b, B:34:0x006f, B:36:0x0076, B:41:0x0089), top: B:57:0x0027 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <E extends java.io.IOException> E messageDone$okhttp(okhttp3.internal.connection.Exchange r4, boolean r5, boolean r6, E r7) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "exchange"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r4
            r1 = r3
            okhttp3.internal.connection.Exchange r1 = r1.exchange
            boolean r0 = kotlin.jvm.internal.p.a(r0, r1)
            r8 = r0
            r0 = 1
            r9 = r0
            r0 = r8
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x001e
            r0 = r7
            return r0
        L_0x001e:
            r0 = r3
            monitor-enter(r0)
            r0 = 0
            r10 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0035
            r0 = r3
            boolean r0 = r0.requestBodyOpen     // Catch: all -> 0x0031
            if (r0 != 0) goto L_0x0040
            goto L_0x0035
        L_0x0031:
            r4 = move-exception
            goto L_0x00b5
        L_0x0035:
            r0 = r6
            if (r0 == 0) goto L_0x0086
            r0 = r3
            boolean r0 = r0.responseBodyOpen     // Catch: all -> 0x0031
            if (r0 == 0) goto L_0x0086
        L_0x0040:
            r0 = r5
            if (r0 == 0) goto L_0x0049
            r0 = r3
            r1 = 0
            r0.requestBodyOpen = r1     // Catch: all -> 0x0031
        L_0x0049:
            r0 = r6
            if (r0 == 0) goto L_0x0052
            r0 = r3
            r1 = 0
            r0.responseBodyOpen = r1     // Catch: all -> 0x0031
        L_0x0052:
            r0 = r3
            boolean r0 = r0.requestBodyOpen     // Catch: all -> 0x0031
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0068
            r0 = r3
            boolean r0 = r0.responseBodyOpen     // Catch: all -> 0x0031
            if (r0 != 0) goto L_0x0068
            r0 = 1
            r10 = r0
            goto L_0x006b
        L_0x0068:
            r0 = 0
            r10 = r0
        L_0x006b:
            r0 = r5
            if (r0 != 0) goto L_0x0080
            r0 = r3
            boolean r0 = r0.responseBodyOpen     // Catch: all -> 0x0031
            if (r0 != 0) goto L_0x0080
            r0 = r3
            boolean r0 = r0.expectMoreExchanges     // Catch: all -> 0x0031
            if (r0 != 0) goto L_0x0080
            goto L_0x0083
        L_0x0080:
            r0 = 0
            r9 = r0
        L_0x0083:
            goto L_0x0089
        L_0x0086:
            r0 = 0
            r9 = r0
        L_0x0089:
            kotlin.v r0 = kotlin.v.f38654a     // Catch: all -> 0x0031
            r4 = r0
            r0 = r3
            monitor-exit(r0)
            r0 = r10
            if (r0 == 0) goto L_0x00a6
            r0 = r3
            r1 = 0
            r0.exchange = r1
            r0 = r3
            okhttp3.internal.connection.RealConnection r0 = r0.connection
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x00a6
            r0 = r4
            r0.incrementSuccessCount$okhttp()
        L_0x00a6:
            r0 = r9
            if (r0 == 0) goto L_0x00b2
            r0 = r3
            r1 = r7
            java.io.IOException r0 = r0.callDone(r1)
            return r0
        L_0x00b2:
            r0 = r7
            return r0
        L_0x00b5:
            r0 = r3
            monitor-exit(r0)
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealCall.messageDone$okhttp(okhttp3.internal.connection.Exchange, boolean, boolean, java.io.IOException):java.io.IOException");
    }

    public final IOException noMoreExchanges$okhttp(IOException iOException) {
        boolean z;
        synchronized (this) {
            z = false;
            if (this.expectMoreExchanges) {
                this.expectMoreExchanges = false;
                z = false;
                if (!this.requestBodyOpen) {
                    z = false;
                    if (!this.responseBodyOpen) {
                        z = true;
                    }
                }
            }
            v vVar = v.f38654a;
        }
        IOException iOException2 = iOException;
        if (z) {
            iOException2 = callDone(iOException);
        }
        return iOException2;
    }

    public final String redactedUrl$okhttp() {
        return this.originalRequest.url().redact();
    }

    public final Socket releaseConnectionNoEvents$okhttp() {
        RealConnection realConnection = this.connection;
        p.a(realConnection);
        if (!Util.assertionsEnabled || Thread.holdsLock(realConnection)) {
            List<Reference<RealCall>> calls = realConnection.getCalls();
            Iterator<Reference<RealCall>> it2 = calls.iterator();
            boolean z = false;
            int i = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i = -1;
                    break;
                } else if (p.a(it2.next().get(), this)) {
                    break;
                } else {
                    i++;
                }
            }
            if (i != -1) {
                z = true;
            }
            if (z) {
                calls.remove(i);
                this.connection = null;
                if (!calls.isEmpty()) {
                    return null;
                }
                realConnection.setIdleAtNs$okhttp(System.nanoTime());
                if (this.connectionPool.connectionBecameIdle(realConnection)) {
                    return realConnection.socket();
                }
                return null;
            }
            throw new IllegalStateException("Check failed.".toString());
        }
        StringBuilder sb = new StringBuilder("Thread ");
        Thread currentThread = Thread.currentThread();
        p.b(currentThread, "Thread.currentThread()");
        sb.append(currentThread.getName());
        sb.append(" MUST hold lock on ");
        sb.append(realConnection);
        throw new AssertionError(sb.toString());
    }

    @Override // okhttp3.Call
    public final Request request() {
        return this.originalRequest;
    }

    public final boolean retryAfterFailure() {
        ExchangeFinder exchangeFinder = this.exchangeFinder;
        p.a(exchangeFinder);
        return exchangeFinder.retryAfterFailure();
    }

    public final void setConnectionToCancel(RealConnection realConnection) {
        this.connectionToCancel = realConnection;
    }

    @Override // okhttp3.Call
    public final d timeout() {
        return this.timeout;
    }

    public final void timeoutEarlyExit() {
        if (!this.timeoutEarlyExit) {
            this.timeoutEarlyExit = true;
            exit();
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }
}
