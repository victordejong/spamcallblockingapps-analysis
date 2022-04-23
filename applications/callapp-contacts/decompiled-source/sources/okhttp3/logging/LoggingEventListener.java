package okhttp3.logging;

import com.appsflyer.internal.referrer.Payload;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.logging.HttpLoggingInterceptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001:\u0001CB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0018\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\fH\u0016J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u0011\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u0015\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J*\u0010\u0016\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J2\u0010\u001d\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J \u0010\u001e\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0018\u0010\u001f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010 \u001a\u00020!H\u0016J\u0018\u0010\"\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010 \u001a\u00020!H\u0016J&\u0010#\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010$\u001a\u00020%2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'H\u0016J\u0018\u0010)\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010*\u001a\u00020\b2\u0006\u0010+\u001a\u00020%H\u0002J&\u0010,\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010-\u001a\u00020.2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u001a0'H\u0016J\u0018\u00100\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010-\u001a\u00020.H\u0016J\u0018\u00101\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u00102\u001a\u00020\u0006H\u0016J\u0010\u00103\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u00104\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u00105\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u00106\u001a\u000207H\u0016J\u0010\u00108\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u00109\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u00102\u001a\u00020\u0006H\u0016J\u0010\u0010:\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010;\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010<\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\fH\u0016J\u0010\u0010=\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010>\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\fH\u0016J\u001a\u0010?\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010@\u001a\u0004\u0018\u00010AH\u0016J\u0010\u0010B\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006D"}, d2 = {"Lokhttp3/logging/LoggingEventListener;", "Lokhttp3/EventListener;", "logger", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V", "startNs", "", "cacheConditionalHit", "", "call", "Lokhttp3/Call;", "cachedResponse", "Lokhttp3/Response;", "cacheHit", Payload.RESPONSE, "cacheMiss", "callEnd", "callFailed", "ioe", "Ljava/io/IOException;", "callStart", "canceled", "connectEnd", "inetSocketAddress", "Ljava/net/InetSocketAddress;", "proxy", "Ljava/net/Proxy;", "protocol", "Lokhttp3/Protocol;", "connectFailed", "connectStart", "connectionAcquired", "connection", "Lokhttp3/Connection;", "connectionReleased", "dnsEnd", "domainName", "", "inetAddressList", "", "Ljava/net/InetAddress;", "dnsStart", "logWithTime", "message", "proxySelectEnd", "url", "Lokhttp3/HttpUrl;", "proxies", "proxySelectStart", "requestBodyEnd", "byteCount", "requestBodyStart", "requestFailed", "requestHeadersEnd", "request", "Lokhttp3/Request;", "requestHeadersStart", "responseBodyEnd", "responseBodyStart", "responseFailed", "responseHeadersEnd", "responseHeadersStart", "satisfactionFailure", "secureConnectEnd", "handshake", "Lokhttp3/Handshake;", "secureConnectStart", "Factory", "okhttp-logging-interceptor"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/logging/LoggingEventListener.class */
public final class LoggingEventListener extends EventListener {
    private final HttpLoggingInterceptor.Logger logger;
    private long startNs;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0016\u0018��2\u00020\u0001B\u0011\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lokhttp3/logging/LoggingEventListener$Factory;", "Lokhttp3/EventListener$Factory;", "logger", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V", "create", "Lokhttp3/EventListener;", "call", "Lokhttp3/Call;", "okhttp-logging-interceptor"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/logging/LoggingEventListener$Factory.class */
    public static class Factory implements EventListener.Factory {
        private final HttpLoggingInterceptor.Logger logger;

        public Factory() {
            this(null, 1, null);
        }

        public Factory(HttpLoggingInterceptor.Logger logger) {
            p.d(logger, "logger");
            this.logger = logger;
        }

        public /* synthetic */ Factory(HttpLoggingInterceptor.Logger logger, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? HttpLoggingInterceptor.Logger.DEFAULT : logger);
        }

        @Override // okhttp3.EventListener.Factory
        public EventListener create(Call call) {
            p.d(call, "call");
            return new LoggingEventListener(this.logger, null);
        }
    }

    private LoggingEventListener(HttpLoggingInterceptor.Logger logger) {
        this.logger = logger;
    }

    public /* synthetic */ LoggingEventListener(HttpLoggingInterceptor.Logger logger, DefaultConstructorMarker defaultConstructorMarker) {
        this(logger);
    }

    private final void logWithTime(String str) {
        long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - this.startNs);
        HttpLoggingInterceptor.Logger logger = this.logger;
        logger.log("[" + millis + " ms] " + str);
    }

    @Override // okhttp3.EventListener
    public final void cacheConditionalHit(Call call, Response cachedResponse) {
        p.d(call, "call");
        p.d(cachedResponse, "cachedResponse");
        logWithTime("cacheConditionalHit: ".concat(String.valueOf(cachedResponse)));
    }

    @Override // okhttp3.EventListener
    public final void cacheHit(Call call, Response response) {
        p.d(call, "call");
        p.d(response, "response");
        logWithTime("cacheHit: ".concat(String.valueOf(response)));
    }

    @Override // okhttp3.EventListener
    public final void cacheMiss(Call call) {
        p.d(call, "call");
        logWithTime("cacheMiss");
    }

    @Override // okhttp3.EventListener
    public final void callEnd(Call call) {
        p.d(call, "call");
        logWithTime("callEnd");
    }

    @Override // okhttp3.EventListener
    public final void callFailed(Call call, IOException ioe) {
        p.d(call, "call");
        p.d(ioe, "ioe");
        logWithTime("callFailed: ".concat(String.valueOf(ioe)));
    }

    @Override // okhttp3.EventListener
    public final void callStart(Call call) {
        p.d(call, "call");
        this.startNs = System.nanoTime();
        logWithTime("callStart: " + call.request());
    }

    @Override // okhttp3.EventListener
    public final void canceled(Call call) {
        p.d(call, "call");
        logWithTime("canceled");
    }

    @Override // okhttp3.EventListener
    public final void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        p.d(call, "call");
        p.d(inetSocketAddress, "inetSocketAddress");
        p.d(proxy, "proxy");
        logWithTime("connectEnd: ".concat(String.valueOf(protocol)));
    }

    @Override // okhttp3.EventListener
    public final void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException ioe) {
        p.d(call, "call");
        p.d(inetSocketAddress, "inetSocketAddress");
        p.d(proxy, "proxy");
        p.d(ioe, "ioe");
        logWithTime("connectFailed: " + protocol + ' ' + ioe);
    }

    @Override // okhttp3.EventListener
    public final void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        p.d(call, "call");
        p.d(inetSocketAddress, "inetSocketAddress");
        p.d(proxy, "proxy");
        logWithTime("connectStart: " + inetSocketAddress + ' ' + proxy);
    }

    @Override // okhttp3.EventListener
    public final void connectionAcquired(Call call, Connection connection) {
        p.d(call, "call");
        p.d(connection, "connection");
        logWithTime("connectionAcquired: ".concat(String.valueOf(connection)));
    }

    @Override // okhttp3.EventListener
    public final void connectionReleased(Call call, Connection connection) {
        p.d(call, "call");
        p.d(connection, "connection");
        logWithTime("connectionReleased");
    }

    @Override // okhttp3.EventListener
    public final void dnsEnd(Call call, String domainName, List<? extends InetAddress> inetAddressList) {
        p.d(call, "call");
        p.d(domainName, "domainName");
        p.d(inetAddressList, "inetAddressList");
        logWithTime("dnsEnd: ".concat(String.valueOf(inetAddressList)));
    }

    @Override // okhttp3.EventListener
    public final void dnsStart(Call call, String domainName) {
        p.d(call, "call");
        p.d(domainName, "domainName");
        logWithTime("dnsStart: ".concat(String.valueOf(domainName)));
    }

    @Override // okhttp3.EventListener
    public final void proxySelectEnd(Call call, HttpUrl url, List<? extends Proxy> proxies) {
        p.d(call, "call");
        p.d(url, "url");
        p.d(proxies, "proxies");
        logWithTime("proxySelectEnd: ".concat(String.valueOf(proxies)));
    }

    @Override // okhttp3.EventListener
    public final void proxySelectStart(Call call, HttpUrl url) {
        p.d(call, "call");
        p.d(url, "url");
        logWithTime("proxySelectStart: ".concat(String.valueOf(url)));
    }

    @Override // okhttp3.EventListener
    public final void requestBodyEnd(Call call, long j) {
        p.d(call, "call");
        logWithTime("requestBodyEnd: byteCount=".concat(String.valueOf(j)));
    }

    @Override // okhttp3.EventListener
    public final void requestBodyStart(Call call) {
        p.d(call, "call");
        logWithTime("requestBodyStart");
    }

    @Override // okhttp3.EventListener
    public final void requestFailed(Call call, IOException ioe) {
        p.d(call, "call");
        p.d(ioe, "ioe");
        logWithTime("requestFailed: ".concat(String.valueOf(ioe)));
    }

    @Override // okhttp3.EventListener
    public final void requestHeadersEnd(Call call, Request request) {
        p.d(call, "call");
        p.d(request, "request");
        logWithTime("requestHeadersEnd");
    }

    @Override // okhttp3.EventListener
    public final void requestHeadersStart(Call call) {
        p.d(call, "call");
        logWithTime("requestHeadersStart");
    }

    @Override // okhttp3.EventListener
    public final void responseBodyEnd(Call call, long j) {
        p.d(call, "call");
        logWithTime("responseBodyEnd: byteCount=".concat(String.valueOf(j)));
    }

    @Override // okhttp3.EventListener
    public final void responseBodyStart(Call call) {
        p.d(call, "call");
        logWithTime("responseBodyStart");
    }

    @Override // okhttp3.EventListener
    public final void responseFailed(Call call, IOException ioe) {
        p.d(call, "call");
        p.d(ioe, "ioe");
        logWithTime("responseFailed: ".concat(String.valueOf(ioe)));
    }

    @Override // okhttp3.EventListener
    public final void responseHeadersEnd(Call call, Response response) {
        p.d(call, "call");
        p.d(response, "response");
        logWithTime("responseHeadersEnd: ".concat(String.valueOf(response)));
    }

    @Override // okhttp3.EventListener
    public final void responseHeadersStart(Call call) {
        p.d(call, "call");
        logWithTime("responseHeadersStart");
    }

    @Override // okhttp3.EventListener
    public final void satisfactionFailure(Call call, Response response) {
        p.d(call, "call");
        p.d(response, "response");
        logWithTime("satisfactionFailure: ".concat(String.valueOf(response)));
    }

    @Override // okhttp3.EventListener
    public final void secureConnectEnd(Call call, Handshake handshake) {
        p.d(call, "call");
        logWithTime("secureConnectEnd: ".concat(String.valueOf(handshake)));
    }

    @Override // okhttp3.EventListener
    public final void secureConnectStart(Call call) {
        p.d(call, "call");
        logWithTime("secureConnectStart");
    }
}
