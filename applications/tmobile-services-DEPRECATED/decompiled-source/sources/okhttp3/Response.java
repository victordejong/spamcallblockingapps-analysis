package okhttp3;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.http.HttpHeaders;
import okio.Buffer;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\u0018��2\u00020\u0001:\u0001XB}\b��\u0012\u0006\u0010>\u001a\u00020;\u0012\u0006\u00107\u001a\u000204\u0012\u0006\u0010(\u001a\u00020\u001c\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010$\u001a\u00020!\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010*\u001a\u0004\u0018\u00010��\u0012\b\u0010\f\u001a\u0004\u0018\u00010��\u0012\b\u00103\u001a\u0004\u0018\u00010��\u0012\u0006\u0010@\u001a\u00020.\u0012\u0006\u0010:\u001a\u00020.\u0012\b\u0010G\u001a\u0004\u0018\u00010F¢\u0006\u0004\bV\u0010WJ\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\f\u001a\u0004\u0018\u00010��H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0017\u001a\u00020\u0014H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u0018H\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ%\u0010\u001f\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001cH\u0007¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010$\u001a\u00020!H\u0007¢\u0006\u0004\b\"\u0010#J\u001b\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001c0\r2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b$\u0010%J\u000f\u0010(\u001a\u00020\u001cH\u0007¢\u0006\u0004\b&\u0010'J\u0011\u0010*\u001a\u0004\u0018\u00010��H\u0007¢\u0006\u0004\b)\u0010\u000bJ\r\u0010,\u001a\u00020+¢\u0006\u0004\b,\u0010-J\u0015\u00100\u001a\u00020\u00022\u0006\u0010/\u001a\u00020.¢\u0006\u0004\b0\u00101J\u0011\u00103\u001a\u0004\u0018\u00010��H\u0007¢\u0006\u0004\b2\u0010\u000bJ\u000f\u00107\u001a\u000204H\u0007¢\u0006\u0004\b5\u00106J\u000f\u0010:\u001a\u00020.H\u0007¢\u0006\u0004\b8\u00109J\u000f\u0010>\u001a\u00020;H\u0007¢\u0006\u0004\b<\u0010=J\u000f\u0010@\u001a\u00020.H\u0007¢\u0006\u0004\b?\u00109J\u000f\u0010A\u001a\u00020\u001cH\u0016¢\u0006\u0004\bA\u0010'J\r\u0010B\u001a\u00020!¢\u0006\u0004\bB\u0010#R\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0007@\u0006¢\u0006\f\n\u0004\b\u0005\u0010C\u001a\u0004\b\u0005\u0010\u0004R\u0013\u0010\t\u001a\u00020\u00068G@\u0006¢\u0006\u0006\u001a\u0004\b\t\u0010\bR\u001b\u0010\f\u001a\u0004\u0018\u00010��8\u0007@\u0006¢\u0006\f\n\u0004\b\f\u0010D\u001a\u0004\b\f\u0010\u000bR\u0019\u0010\u0017\u001a\u00020\u00148\u0007@\u0006¢\u0006\f\n\u0004\b\u0017\u0010E\u001a\u0004\b\u0017\u0010\u0016R\u001e\u0010G\u001a\u0004\u0018\u00010F8\u0001@��X\u0080\u0004¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bG\u0010IR\u001b\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0007@\u0006¢\u0006\f\n\u0004\b\u001b\u0010J\u001a\u0004\b\u001b\u0010\u001aR\u0019\u0010$\u001a\u00020!8\u0007@\u0006¢\u0006\f\n\u0004\b$\u0010K\u001a\u0004\b$\u0010#R\u0013\u0010M\u001a\u00020L8F@\u0006¢\u0006\u0006\u001a\u0004\bM\u0010NR\u0013\u0010O\u001a\u00020L8F@\u0006¢\u0006\u0006\u001a\u0004\bO\u0010NR\u0018\u0010P\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0019\u0010(\u001a\u00020\u001c8\u0007@\u0006¢\u0006\f\n\u0004\b(\u0010R\u001a\u0004\b(\u0010'R\u001b\u0010*\u001a\u0004\u0018\u00010��8\u0007@\u0006¢\u0006\f\n\u0004\b*\u0010D\u001a\u0004\b*\u0010\u000bR\u001b\u00103\u001a\u0004\u0018\u00010��8\u0007@\u0006¢\u0006\f\n\u0004\b3\u0010D\u001a\u0004\b3\u0010\u000bR\u0019\u00107\u001a\u0002048\u0007@\u0006¢\u0006\f\n\u0004\b7\u0010S\u001a\u0004\b7\u00106R\u0019\u0010:\u001a\u00020.8\u0007@\u0006¢\u0006\f\n\u0004\b:\u0010T\u001a\u0004\b:\u00109R\u0019\u0010>\u001a\u00020;8\u0007@\u0006¢\u0006\f\n\u0004\b>\u0010U\u001a\u0004\b>\u0010=R\u0019\u0010@\u001a\u00020.8\u0007@\u0006¢\u0006\f\n\u0004\b@\u0010T\u001a\u0004\b@\u00109¨\u0006Y"}, d2 = {"Lokhttp3/Response;", "Ljava/io/Closeable;", "Lokhttp3/ResponseBody;", "-deprecated_body", "()Lokhttp3/ResponseBody;", "body", "Lokhttp3/CacheControl;", "-deprecated_cacheControl", "()Lokhttp3/CacheControl;", "cacheControl", "-deprecated_cacheResponse", "()Lokhttp3/Response;", "cacheResponse", "", "Lokhttp3/Challenge;", "challenges", "()Ljava/util/List;", "", "close", "()V", "", "-deprecated_code", "()I", "code", "Lokhttp3/Handshake;", "-deprecated_handshake", "()Lokhttp3/Handshake;", "handshake", "", "name", "defaultValue", "header", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "Lokhttp3/Headers;", "-deprecated_headers", "()Lokhttp3/Headers;", "headers", "(Ljava/lang/String;)Ljava/util/List;", "-deprecated_message", "()Ljava/lang/String;", "message", "-deprecated_networkResponse", "networkResponse", "Lokhttp3/Response$Builder;", "newBuilder", "()Lokhttp3/Response$Builder;", "", "byteCount", "peekBody", "(J)Lokhttp3/ResponseBody;", "-deprecated_priorResponse", "priorResponse", "Lokhttp3/Protocol;", "-deprecated_protocol", "()Lokhttp3/Protocol;", "protocol", "-deprecated_receivedResponseAtMillis", "()J", "receivedResponseAtMillis", "Lokhttp3/Request;", "-deprecated_request", "()Lokhttp3/Request;", "request", "-deprecated_sentRequestAtMillis", "sentRequestAtMillis", "toString", "trailers", "Lokhttp3/ResponseBody;", "Lokhttp3/Response;", "I", "Lokhttp3/internal/connection/Exchange;", "exchange", "Lokhttp3/internal/connection/Exchange;", "()Lokhttp3/internal/connection/Exchange;", "Lokhttp3/Handshake;", "Lokhttp3/Headers;", "", "isRedirect", "()Z", "isSuccessful", "lazyCacheControl", "Lokhttp3/CacheControl;", "Ljava/lang/String;", "Lokhttp3/Protocol;", "J", "Lokhttp3/Request;", "<init>", "(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLokhttp3/internal/connection/Exchange;)V", "Builder", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/Response.class */
public final class Response implements Closeable {
    @Nullable
    private final ResponseBody body;
    @Nullable
    private final Response cacheResponse;
    private final int code;
    @Nullable
    private final Exchange exchange;
    @Nullable
    private final Handshake handshake;
    @NotNull
    private final Headers headers;
    private CacheControl lazyCacheControl;
    @NotNull
    private final String message;
    @Nullable
    private final Response networkResponse;
    @Nullable
    private final Response priorResponse;
    @NotNull
    private final Protocol protocol;
    private final long receivedResponseAtMillis;
    @NotNull
    private final Request request;
    private final long sentRequestAtMillis;

    @Metadata(bv = {1, 0, 3}, d1 = {"��d\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\"\b\u0016\u0018��B\t\b\u0016¢\u0006\u0004\bi\u0010jB\u0011\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\bi\u0010\u0011J\u001f\u0010\u0004\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\u0007\u001a\u00020��2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\f\u001a\u00020��2\b\u0010\f\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u00012\b\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020��2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0018\u001a\u00020��2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001a\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u001a\u0010\u0005J\u0017\u0010\u001c\u001a\u00020��2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\"\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u001eH��¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020��2\u0006\u0010#\u001a\u00020\u0001H\u0016¢\u0006\u0004\b#\u0010$J\u0019\u0010%\u001a\u00020��2\b\u0010%\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b%\u0010\rJ\u0019\u0010&\u001a\u00020��2\b\u0010&\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b&\u0010\rJ\u0017\u0010(\u001a\u00020��2\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020��2\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0001H\u0016¢\u0006\u0004\b-\u0010$J\u0017\u0010/\u001a\u00020��2\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100J\u0017\u00101\u001a\u00020��2\u0006\u00101\u001a\u00020*H\u0016¢\u0006\u0004\b1\u0010,R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0007\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R$\u0010\f\u001a\u0004\u0018\u00010\t8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\f\u00107\u001a\u0004\b8\u0010\u000b\"\u0004\b9\u0010\u0011R\"\u0010\u0015\u001a\u00020\u00148��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R$\u0010?\u001a\u0004\u0018\u00010\u001e8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010!R$\u0010\u0018\u001a\u0004\u0018\u00010\u00178��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\"\u0010\u001c\u001a\u00020I8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010J\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR$\u0010#\u001a\u0004\u0018\u00010\u00018��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b#\u0010O\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR$\u0010%\u001a\u0004\u0018\u00010\t8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b%\u00107\u001a\u0004\bT\u0010\u000b\"\u0004\bU\u0010\u0011R$\u0010&\u001a\u0004\u0018\u00010\t8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b&\u00107\u001a\u0004\bV\u0010\u000b\"\u0004\bW\u0010\u0011R$\u0010(\u001a\u0004\u0018\u00010'8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b(\u0010X\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\"\u0010+\u001a\u00020*8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b+\u0010]\u001a\u0004\b^\u0010_\"\u0004\b`\u0010aR$\u0010/\u001a\u0004\u0018\u00010.8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b/\u0010b\u001a\u0004\bc\u0010d\"\u0004\be\u0010fR\"\u00101\u001a\u00020*8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b1\u0010]\u001a\u0004\bg\u0010_\"\u0004\bh\u0010a¨\u0006k"}, d2 = {"Lokhttp3/Response$Builder;", "", "name", FirebaseAnalytics.Param.VALUE, "addHeader", "(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;", "Lokhttp3/ResponseBody;", "body", "(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;", "Lokhttp3/Response;", "build", "()Lokhttp3/Response;", "cacheResponse", "(Lokhttp3/Response;)Lokhttp3/Response$Builder;", "response", "", "checkPriorResponse", "(Lokhttp3/Response;)V", "checkSupportResponse", "(Ljava/lang/String;Lokhttp3/Response;)V", "", "code", "(I)Lokhttp3/Response$Builder;", "Lokhttp3/Handshake;", "handshake", "(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;", "header", "Lokhttp3/Headers;", "headers", "(Lokhttp3/Headers;)Lokhttp3/Response$Builder;", "Lokhttp3/internal/connection/Exchange;", "deferredTrailers", "initExchange$okhttp", "(Lokhttp3/internal/connection/Exchange;)V", "initExchange", "message", "(Ljava/lang/String;)Lokhttp3/Response$Builder;", "networkResponse", "priorResponse", "Lokhttp3/Protocol;", "protocol", "(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;", "", "receivedResponseAtMillis", "(J)Lokhttp3/Response$Builder;", "removeHeader", "Lokhttp3/Request;", "request", "(Lokhttp3/Request;)Lokhttp3/Response$Builder;", "sentRequestAtMillis", "Lokhttp3/ResponseBody;", "getBody$okhttp", "()Lokhttp3/ResponseBody;", "setBody$okhttp", "(Lokhttp3/ResponseBody;)V", "Lokhttp3/Response;", "getCacheResponse$okhttp", "setCacheResponse$okhttp", "I", "getCode$okhttp", "()I", "setCode$okhttp", "(I)V", "exchange", "Lokhttp3/internal/connection/Exchange;", "getExchange$okhttp", "()Lokhttp3/internal/connection/Exchange;", "setExchange$okhttp", "Lokhttp3/Handshake;", "getHandshake$okhttp", "()Lokhttp3/Handshake;", "setHandshake$okhttp", "(Lokhttp3/Handshake;)V", "Lokhttp3/Headers$Builder;", "Lokhttp3/Headers$Builder;", "getHeaders$okhttp", "()Lokhttp3/Headers$Builder;", "setHeaders$okhttp", "(Lokhttp3/Headers$Builder;)V", "Ljava/lang/String;", "getMessage$okhttp", "()Ljava/lang/String;", "setMessage$okhttp", "(Ljava/lang/String;)V", "getNetworkResponse$okhttp", "setNetworkResponse$okhttp", "getPriorResponse$okhttp", "setPriorResponse$okhttp", "Lokhttp3/Protocol;", "getProtocol$okhttp", "()Lokhttp3/Protocol;", "setProtocol$okhttp", "(Lokhttp3/Protocol;)V", "J", "getReceivedResponseAtMillis$okhttp", "()J", "setReceivedResponseAtMillis$okhttp", "(J)V", "Lokhttp3/Request;", "getRequest$okhttp", "()Lokhttp3/Request;", "setRequest$okhttp", "(Lokhttp3/Request;)V", "getSentRequestAtMillis$okhttp", "setSentRequestAtMillis$okhttp", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/Response$Builder.class */
    public static class Builder {
        @Nullable
        private ResponseBody body;
        @Nullable
        private Response cacheResponse;
        private int code;
        @Nullable
        private Exchange exchange;
        @Nullable
        private Handshake handshake;
        @NotNull
        private Headers.Builder headers;
        @Nullable
        private String message;
        @Nullable
        private Response networkResponse;
        @Nullable
        private Response priorResponse;
        @Nullable
        private Protocol protocol;
        private long receivedResponseAtMillis;
        @Nullable
        private Request request;
        private long sentRequestAtMillis;

        public Builder() {
            this.code = -1;
            this.headers = new Headers.Builder();
        }

        public Builder(@NotNull Response response) {
            Intrinsics.m1830e(response, "response");
            this.code = -1;
            this.request = response.request();
            this.protocol = response.protocol();
            this.code = response.code();
            this.message = response.message();
            this.handshake = response.handshake();
            this.headers = response.headers().newBuilder();
            this.body = response.body();
            this.networkResponse = response.networkResponse();
            this.cacheResponse = response.cacheResponse();
            this.priorResponse = response.priorResponse();
            this.sentRequestAtMillis = response.sentRequestAtMillis();
            this.receivedResponseAtMillis = response.receivedResponseAtMillis();
            this.exchange = response.exchange();
        }

        private final void checkPriorResponse(Response response) {
            if (response != null) {
                if (!(response.body() == null)) {
                    throw new IllegalArgumentException("priorResponse.body != null".toString());
                }
            }
        }

        private final void checkSupportResponse(String str, Response response) {
            if (response != null) {
                boolean z = true;
                if (response.body() == null) {
                    if (response.networkResponse() == null) {
                        if (response.cacheResponse() == null) {
                            if (response.priorResponse() != null) {
                                z = false;
                            }
                            if (!z) {
                                throw new IllegalArgumentException((str + ".priorResponse != null").toString());
                            }
                            return;
                        }
                        throw new IllegalArgumentException((str + ".cacheResponse != null").toString());
                    }
                    throw new IllegalArgumentException((str + ".networkResponse != null").toString());
                }
                throw new IllegalArgumentException((str + ".body != null").toString());
            }
        }

        @NotNull
        public Builder addHeader(@NotNull String name, @NotNull String value) {
            Intrinsics.m1830e(name, "name");
            Intrinsics.m1830e(value, "value");
            this.headers.add(name, value);
            return this;
        }

        @NotNull
        public Builder body(@Nullable ResponseBody responseBody) {
            this.body = responseBody;
            return this;
        }

        @NotNull
        public Response build() {
            if (this.code >= 0) {
                Request request = this.request;
                if (request != null) {
                    Protocol protocol = this.protocol;
                    if (protocol != null) {
                        String str = this.message;
                        if (str != null) {
                            return new Response(request, protocol, str, this.code, this.handshake, this.headers.build(), this.body, this.networkResponse, this.cacheResponse, this.priorResponse, this.sentRequestAtMillis, this.receivedResponseAtMillis, this.exchange);
                        }
                        throw new IllegalStateException("message == null".toString());
                    }
                    throw new IllegalStateException("protocol == null".toString());
                }
                throw new IllegalStateException("request == null".toString());
            }
            throw new IllegalStateException(("code < 0: " + this.code).toString());
        }

        @NotNull
        public Builder cacheResponse(@Nullable Response response) {
            checkSupportResponse("cacheResponse", response);
            this.cacheResponse = response;
            return this;
        }

        @NotNull
        public Builder code(int i) {
            this.code = i;
            return this;
        }

        @Nullable
        public final ResponseBody getBody$okhttp() {
            return this.body;
        }

        @Nullable
        public final Response getCacheResponse$okhttp() {
            return this.cacheResponse;
        }

        public final int getCode$okhttp() {
            return this.code;
        }

        @Nullable
        public final Exchange getExchange$okhttp() {
            return this.exchange;
        }

        @Nullable
        public final Handshake getHandshake$okhttp() {
            return this.handshake;
        }

        @NotNull
        public final Headers.Builder getHeaders$okhttp() {
            return this.headers;
        }

        @Nullable
        public final String getMessage$okhttp() {
            return this.message;
        }

        @Nullable
        public final Response getNetworkResponse$okhttp() {
            return this.networkResponse;
        }

        @Nullable
        public final Response getPriorResponse$okhttp() {
            return this.priorResponse;
        }

        @Nullable
        public final Protocol getProtocol$okhttp() {
            return this.protocol;
        }

        public final long getReceivedResponseAtMillis$okhttp() {
            return this.receivedResponseAtMillis;
        }

        @Nullable
        public final Request getRequest$okhttp() {
            return this.request;
        }

        public final long getSentRequestAtMillis$okhttp() {
            return this.sentRequestAtMillis;
        }

        @NotNull
        public Builder handshake(@Nullable Handshake handshake) {
            this.handshake = handshake;
            return this;
        }

        @NotNull
        public Builder header(@NotNull String name, @NotNull String value) {
            Intrinsics.m1830e(name, "name");
            Intrinsics.m1830e(value, "value");
            this.headers.set(name, value);
            return this;
        }

        @NotNull
        public Builder headers(@NotNull Headers headers) {
            Intrinsics.m1830e(headers, "headers");
            this.headers = headers.newBuilder();
            return this;
        }

        public final void initExchange$okhttp(@NotNull Exchange deferredTrailers) {
            Intrinsics.m1830e(deferredTrailers, "deferredTrailers");
            this.exchange = deferredTrailers;
        }

        @NotNull
        public Builder message(@NotNull String message) {
            Intrinsics.m1830e(message, "message");
            this.message = message;
            return this;
        }

        @NotNull
        public Builder networkResponse(@Nullable Response response) {
            checkSupportResponse("networkResponse", response);
            this.networkResponse = response;
            return this;
        }

        @NotNull
        public Builder priorResponse(@Nullable Response response) {
            checkPriorResponse(response);
            this.priorResponse = response;
            return this;
        }

        @NotNull
        public Builder protocol(@NotNull Protocol protocol) {
            Intrinsics.m1830e(protocol, "protocol");
            this.protocol = protocol;
            return this;
        }

        @NotNull
        public Builder receivedResponseAtMillis(long j) {
            this.receivedResponseAtMillis = j;
            return this;
        }

        @NotNull
        public Builder removeHeader(@NotNull String name) {
            Intrinsics.m1830e(name, "name");
            this.headers.removeAll(name);
            return this;
        }

        @NotNull
        public Builder request(@NotNull Request request) {
            Intrinsics.m1830e(request, "request");
            this.request = request;
            return this;
        }

        @NotNull
        public Builder sentRequestAtMillis(long j) {
            this.sentRequestAtMillis = j;
            return this;
        }

        public final void setBody$okhttp(@Nullable ResponseBody responseBody) {
            this.body = responseBody;
        }

        public final void setCacheResponse$okhttp(@Nullable Response response) {
            this.cacheResponse = response;
        }

        public final void setCode$okhttp(int i) {
            this.code = i;
        }

        public final void setExchange$okhttp(@Nullable Exchange exchange) {
            this.exchange = exchange;
        }

        public final void setHandshake$okhttp(@Nullable Handshake handshake) {
            this.handshake = handshake;
        }

        public final void setHeaders$okhttp(@NotNull Headers.Builder builder) {
            Intrinsics.m1830e(builder, "<set-?>");
            this.headers = builder;
        }

        public final void setMessage$okhttp(@Nullable String str) {
            this.message = str;
        }

        public final void setNetworkResponse$okhttp(@Nullable Response response) {
            this.networkResponse = response;
        }

        public final void setPriorResponse$okhttp(@Nullable Response response) {
            this.priorResponse = response;
        }

        public final void setProtocol$okhttp(@Nullable Protocol protocol) {
            this.protocol = protocol;
        }

        public final void setReceivedResponseAtMillis$okhttp(long j) {
            this.receivedResponseAtMillis = j;
        }

        public final void setRequest$okhttp(@Nullable Request request) {
            this.request = request;
        }

        public final void setSentRequestAtMillis$okhttp(long j) {
            this.sentRequestAtMillis = j;
        }
    }

    public Response(@NotNull Request request, @NotNull Protocol protocol, @NotNull String message, int i, @Nullable Handshake handshake, @NotNull Headers headers, @Nullable ResponseBody responseBody, @Nullable Response response, @Nullable Response response2, @Nullable Response response3, long j, long j2, @Nullable Exchange exchange) {
        Intrinsics.m1830e(request, "request");
        Intrinsics.m1830e(protocol, "protocol");
        Intrinsics.m1830e(message, "message");
        Intrinsics.m1830e(headers, "headers");
        this.request = request;
        this.protocol = protocol;
        this.message = message;
        this.code = i;
        this.handshake = handshake;
        this.headers = headers;
        this.body = responseBody;
        this.networkResponse = response;
        this.cacheResponse = response2;
        this.priorResponse = response3;
        this.sentRequestAtMillis = j;
        this.receivedResponseAtMillis = j2;
        this.exchange = exchange;
    }

    public static /* synthetic */ String header$default(Response response, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return response.header(str, str2);
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_body  reason: not valid java name */
    public final ResponseBody m24726deprecated_body() {
        return this.body;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_cacheControl  reason: not valid java name */
    public final CacheControl m24727deprecated_cacheControl() {
        return cacheControl();
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_cacheResponse  reason: not valid java name */
    public final Response m24728deprecated_cacheResponse() {
        return this.cacheResponse;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_code  reason: not valid java name */
    public final int m24729deprecated_code() {
        return this.code;
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_handshake  reason: not valid java name */
    public final Handshake m24730deprecated_handshake() {
        return this.handshake;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_headers  reason: not valid java name */
    public final Headers m24731deprecated_headers() {
        return this.headers;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_message  reason: not valid java name */
    public final String m24732deprecated_message() {
        return this.message;
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_networkResponse  reason: not valid java name */
    public final Response m24733deprecated_networkResponse() {
        return this.networkResponse;
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_priorResponse  reason: not valid java name */
    public final Response m24734deprecated_priorResponse() {
        return this.priorResponse;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_protocol  reason: not valid java name */
    public final Protocol m24735deprecated_protocol() {
        return this.protocol;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_receivedResponseAtMillis  reason: not valid java name */
    public final long m24736deprecated_receivedResponseAtMillis() {
        return this.receivedResponseAtMillis;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_request  reason: not valid java name */
    public final Request m24737deprecated_request() {
        return this.request;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_sentRequestAtMillis  reason: not valid java name */
    public final long m24738deprecated_sentRequestAtMillis() {
        return this.sentRequestAtMillis;
    }

    @JvmName
    @Nullable
    public final ResponseBody body() {
        return this.body;
    }

    @JvmName
    @NotNull
    public final CacheControl cacheControl() {
        CacheControl cacheControl = this.lazyCacheControl;
        CacheControl cacheControl2 = cacheControl;
        if (cacheControl == null) {
            cacheControl2 = CacheControl.Companion.parse(this.headers);
            this.lazyCacheControl = cacheControl2;
        }
        return cacheControl2;
    }

    @JvmName
    @Nullable
    public final Response cacheResponse() {
        return this.cacheResponse;
    }

    @NotNull
    public final List<Challenge> challenges() {
        String str;
        List<Challenge> f;
        Headers headers = this.headers;
        int i = this.code;
        if (i == 401) {
            str = "WWW-Authenticate";
        } else if (i != 407) {
            f = CollectionsKt__CollectionsKt.m2175f();
            return f;
        } else {
            str = "Proxy-Authenticate";
        }
        return HttpHeaders.parseChallenges(headers, str);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ResponseBody responseBody = this.body;
        if (responseBody != null) {
            responseBody.close();
            return;
        }
        throw new IllegalStateException("response is not eligible for a body and must not be closed".toString());
    }

    @JvmName
    public final int code() {
        return this.code;
    }

    @JvmName
    @Nullable
    public final Exchange exchange() {
        return this.exchange;
    }

    @JvmName
    @Nullable
    public final Handshake handshake() {
        return this.handshake;
    }

    @JvmOverloads
    @Nullable
    public final String header(@NotNull String str) {
        return header$default(this, str, null, 2, null);
    }

    @JvmOverloads
    @Nullable
    public final String header(@NotNull String name, @Nullable String str) {
        Intrinsics.m1830e(name, "name");
        String str2 = this.headers.get(name);
        if (str2 != null) {
            str = str2;
        }
        return str;
    }

    @NotNull
    public final List<String> headers(@NotNull String name) {
        Intrinsics.m1830e(name, "name");
        return this.headers.values(name);
    }

    @JvmName
    @NotNull
    public final Headers headers() {
        return this.headers;
    }

    public final boolean isRedirect() {
        boolean z;
        int i = this.code;
        if (!(i == 307 || i == 308)) {
            switch (i) {
                case 300:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    z = false;
                    break;
            }
            return z;
        }
        z = true;
        return z;
    }

    public final boolean isSuccessful() {
        int i = this.code;
        return 200 <= i && 299 >= i;
    }

    @JvmName
    @NotNull
    public final String message() {
        return this.message;
    }

    @JvmName
    @Nullable
    public final Response networkResponse() {
        return this.networkResponse;
    }

    @NotNull
    public final Builder newBuilder() {
        return new Builder(this);
    }

    @NotNull
    public final ResponseBody peekBody(long j) throws IOException {
        ResponseBody responseBody = this.body;
        Intrinsics.m1832c(responseBody);
        BufferedSource peek = responseBody.source().peek();
        Buffer buffer = new Buffer();
        peek.request(j);
        buffer.m225A0(peek, Math.min(j, peek.mo76c().m188v0()));
        return ResponseBody.Companion.create(buffer, this.body.contentType(), buffer.m188v0());
    }

    @JvmName
    @Nullable
    public final Response priorResponse() {
        return this.priorResponse;
    }

    @JvmName
    @NotNull
    public final Protocol protocol() {
        return this.protocol;
    }

    @JvmName
    public final long receivedResponseAtMillis() {
        return this.receivedResponseAtMillis;
    }

    @JvmName
    @NotNull
    public final Request request() {
        return this.request;
    }

    @JvmName
    public final long sentRequestAtMillis() {
        return this.sentRequestAtMillis;
    }

    @NotNull
    public String toString() {
        return "Response{protocol=" + this.protocol + ", code=" + this.code + ", message=" + this.message + ", url=" + this.request.url() + '}';
    }

    @NotNull
    public final Headers trailers() throws IOException {
        Exchange exchange = this.exchange;
        if (exchange != null) {
            return exchange.trailers();
        }
        throw new IllegalStateException("trailers not available".toString());
    }
}
