package okhttp3.internal.http2;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.iid.MessengerIpcClient;
import com.google.firebase.messaging.Constants;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskQueue$execute$1;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.simpleframework.xml.strategy.Name;
@Metadata(bv = {1, 0, 3}, d1 = {"��¸\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010#\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� º\u00012\u00020\u0001:\b»\u0001º\u0001¼\u0001½\u0001B\u0015\b��\u0012\b\u0010·\u0001\u001a\u00030¶\u0001¢\u0006\u0006\b¸\u0001\u0010¹\u0001J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J)\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH��¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000e\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u0017\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ-\u0010 \u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u00112\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001f\u001a\u00020\u0018H\u0002¢\u0006\u0004\b \u0010!J#\u0010 \u001a\u00020\u00132\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001f\u001a\u00020\u0018¢\u0006\u0004\b \u0010\"J\r\u0010#\u001a\u00020\u0011¢\u0006\u0004\b#\u0010$J/\u0010,\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00112\u0006\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u00112\u0006\u0010)\u001a\u00020\u0018H��¢\u0006\u0004\b*\u0010+J-\u0010/\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00112\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010)\u001a\u00020\u0018H��¢\u0006\u0004\b-\u0010.J%\u00102\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00112\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH��¢\u0006\u0004\b0\u00101J\u001f\u00106\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00112\u0006\u00103\u001a\u00020\u0006H��¢\u0006\u0004\b4\u00105J+\u00107\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u00112\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001f\u001a\u00020\u0018¢\u0006\u0004\b7\u0010!J\u0017\u0010:\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u0011H��¢\u0006\u0004\b8\u00109J\u0019\u0010<\u001a\u0004\u0018\u00010\u00132\u0006\u0010%\u001a\u00020\u0011H��¢\u0006\u0004\b;\u0010\u0015J\u000f\u0010>\u001a\u00020\u0002H��¢\u0006\u0004\b=\u0010\u0004J\u0015\u0010A\u001a\u00020\u00022\u0006\u0010@\u001a\u00020?¢\u0006\u0004\bA\u0010BJ\u0015\u0010D\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\u0006¢\u0006\u0004\bD\u0010EJ#\u0010I\u001a\u00020\u00022\b\b\u0002\u0010F\u001a\u00020\u00182\b\b\u0002\u0010H\u001a\u00020GH\u0007¢\u0006\u0004\bI\u0010JJ\u0017\u0010N\u001a\u00020\u00022\u0006\u0010K\u001a\u00020\u0016H��¢\u0006\u0004\bL\u0010MJ/\u0010R\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00112\u0006\u0010O\u001a\u00020\u00182\b\u0010Q\u001a\u0004\u0018\u00010P2\u0006\u0010(\u001a\u00020\u0016¢\u0006\u0004\bR\u0010SJ-\u0010W\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00112\u0006\u0010O\u001a\u00020\u00182\f\u0010T\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH��¢\u0006\u0004\bU\u0010VJ\r\u0010X\u001a\u00020\u0002¢\u0006\u0004\bX\u0010\u0004J%\u0010X\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020\u00182\u0006\u0010Z\u001a\u00020\u00112\u0006\u0010[\u001a\u00020\u0011¢\u0006\u0004\bX\u0010\\J\r\u0010]\u001a\u00020\u0002¢\u0006\u0004\b]\u0010\u0004J\u001f\u0010_\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00112\u0006\u0010C\u001a\u00020\u0006H��¢\u0006\u0004\b^\u00105J\u001f\u0010a\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00112\u0006\u00103\u001a\u00020\u0006H��¢\u0006\u0004\b`\u00105J\u001f\u0010e\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00112\u0006\u0010b\u001a\u00020\u0016H��¢\u0006\u0004\bc\u0010dR\u0016\u0010f\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0016\u0010h\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010gR\u001c\u0010i\u001a\u00020\u00188��@��X\u0080\u0004¢\u0006\f\n\u0004\bi\u0010j\u001a\u0004\bk\u0010lR\u001c\u0010n\u001a\u00020m8��@��X\u0080\u0004¢\u0006\f\n\u0004\bn\u0010o\u001a\u0004\bp\u0010qR\u001c\u0010s\u001a\b\u0012\u0004\u0012\u00020\u00110r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010tR\u0016\u0010u\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010gR\u0016\u0010v\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010gR\u0016\u0010w\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010gR\u0016\u0010x\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010gR\u0016\u0010y\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010gR\u0016\u0010z\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010jR\"\u0010{\u001a\u00020\u00118��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b{\u0010|\u001a\u0004\b}\u0010$\"\u0004\b~\u0010\u007fR\"\u0010\u0081\u0001\u001a\u00030\u0080\u00018��@��X\u0080\u0004¢\u0006\u0010\n\u0006\b\u0081\u0001\u0010\u0082\u0001\u001a\u0006\b\u0083\u0001\u0010\u0084\u0001R&\u0010\u0085\u0001\u001a\u00020\u00118��@��X\u0080\u000e¢\u0006\u0015\n\u0005\b\u0085\u0001\u0010|\u001a\u0005\b\u0086\u0001\u0010$\"\u0005\b\u0087\u0001\u0010\u007fR\u001e\u0010\u0088\u0001\u001a\u00020?8\u0006@\u0006¢\u0006\u0010\n\u0006\b\u0088\u0001\u0010\u0089\u0001\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001R(\u0010\u008c\u0001\u001a\u00020?8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u008c\u0001\u0010\u0089\u0001\u001a\u0006\b\u008d\u0001\u0010\u008b\u0001\"\u0005\b\u008e\u0001\u0010BR\u001a\u0010\u0090\u0001\u001a\u00030\u008f\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0091\u0001R\u001a\u0010\u0093\u0001\u001a\u00030\u0092\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R)\u0010\u0096\u0001\u001a\u00020\u00162\u0007\u0010\u0095\u0001\u001a\u00020\u00168\u0006@BX\u0086\u000e¢\u0006\u000f\n\u0005\b\u0096\u0001\u0010g\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001R)\u0010\u0099\u0001\u001a\u00020\u00162\u0007\u0010\u0095\u0001\u001a\u00020\u00168\u0006@BX\u0086\u000e¢\u0006\u000f\n\u0005\b\u0099\u0001\u0010g\u001a\u0006\b\u009a\u0001\u0010\u0098\u0001R#\u0010\u009c\u0001\u001a\u00070\u009b\u0001R\u00020��8\u0006@\u0006¢\u0006\u0010\n\u0006\b\u009c\u0001\u0010\u009d\u0001\u001a\u0006\b\u009e\u0001\u0010\u009f\u0001R\u001a\u0010 \u0001\u001a\u00030\u0092\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b \u0001\u0010\u0094\u0001R\"\u0010¢\u0001\u001a\u00030¡\u00018��@��X\u0080\u0004¢\u0006\u0010\n\u0006\b¢\u0001\u0010£\u0001\u001a\u0006\b¤\u0001\u0010¥\u0001R.\u0010§\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00130¦\u00018��@��X\u0080\u0004¢\u0006\u0010\n\u0006\b§\u0001\u0010¨\u0001\u001a\u0006\b©\u0001\u0010ª\u0001R\u0017\u0010H\u001a\u00020G8\u0002@\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bH\u0010«\u0001R)\u0010¬\u0001\u001a\u00020\u00162\u0007\u0010\u0095\u0001\u001a\u00020\u00168\u0006@BX\u0086\u000e¢\u0006\u000f\n\u0005\b¬\u0001\u0010g\u001a\u0006\b\u00ad\u0001\u0010\u0098\u0001R)\u0010®\u0001\u001a\u00020\u00162\u0007\u0010\u0095\u0001\u001a\u00020\u00168\u0006@BX\u0086\u000e¢\u0006\u000f\n\u0005\b®\u0001\u0010g\u001a\u0006\b¯\u0001\u0010\u0098\u0001R\u001f\u0010±\u0001\u001a\u00030°\u00018\u0006@\u0006¢\u0006\u0010\n\u0006\b±\u0001\u0010²\u0001\u001a\u0006\b³\u0001\u0010´\u0001R\u001a\u0010µ\u0001\u001a\u00030\u0092\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bµ\u0001\u0010\u0094\u0001¨\u0006¾\u0001"}, d2 = {"Lokhttp3/internal/http2/Http2Connection;", "Ljava/io/Closeable;", "", "awaitPong", "()V", "close", "Lokhttp3/internal/http2/ErrorCode;", "connectionCode", "streamCode", "Ljava/io/IOException;", "cause", "close$okhttp", "(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V", "e", "failConnection", "(Ljava/io/IOException;)V", "flush", "", Name.MARK, "Lokhttp3/internal/http2/Http2Stream;", "getStream", "(I)Lokhttp3/internal/http2/Http2Stream;", "", "nowNs", "", "isHealthy", "(J)Z", "associatedStreamId", "", "Lokhttp3/internal/http2/Header;", "requestHeaders", "out", "newStream", "(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;", "(Ljava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;", "openStreamCount", "()I", "streamId", "Lokio/BufferedSource;", "source", "byteCount", "inFinished", "pushDataLater$okhttp", "(ILokio/BufferedSource;IZ)V", "pushDataLater", "pushHeadersLater$okhttp", "(ILjava/util/List;Z)V", "pushHeadersLater", "pushRequestLater$okhttp", "(ILjava/util/List;)V", "pushRequestLater", "errorCode", "pushResetLater$okhttp", "(ILokhttp3/internal/http2/ErrorCode;)V", "pushResetLater", "pushStream", "pushedStream$okhttp", "(I)Z", "pushedStream", "removeStream$okhttp", "removeStream", "sendDegradedPingLater$okhttp", "sendDegradedPingLater", "Lokhttp3/internal/http2/Settings;", "settings", "setSettings", "(Lokhttp3/internal/http2/Settings;)V", "statusCode", "shutdown", "(Lokhttp3/internal/http2/ErrorCode;)V", "sendConnectionPreface", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "start", "(ZLokhttp3/internal/concurrent/TaskRunner;)V", "read", "updateConnectionFlowControl$okhttp", "(J)V", "updateConnectionFlowControl", "outFinished", "Lokio/Buffer;", "buffer", "writeData", "(IZLokio/Buffer;J)V", "alternating", "writeHeaders$okhttp", "(IZLjava/util/List;)V", "writeHeaders", "writePing", "reply", "payload1", "payload2", "(ZII)V", "writePingAndAwaitPong", "writeSynReset$okhttp", "writeSynReset", "writeSynResetLater$okhttp", "writeSynResetLater", "unacknowledgedBytesRead", "writeWindowUpdateLater$okhttp", "(IJ)V", "writeWindowUpdateLater", "awaitPingsSent", "J", "awaitPongsReceived", "client", "Z", "getClient$okhttp", "()Z", "", "connectionName", "Ljava/lang/String;", "getConnectionName$okhttp", "()Ljava/lang/String;", "", "currentPushRequests", "Ljava/util/Set;", "degradedPingsSent", "degradedPongDeadlineNs", "degradedPongsReceived", "intervalPingsSent", "intervalPongsReceived", "isShutdown", "lastGoodStreamId", "I", "getLastGoodStreamId$okhttp", "setLastGoodStreamId$okhttp", "(I)V", "Lokhttp3/internal/http2/Http2Connection$Listener;", "listener", "Lokhttp3/internal/http2/Http2Connection$Listener;", "getListener$okhttp", "()Lokhttp3/internal/http2/Http2Connection$Listener;", "nextStreamId", "getNextStreamId$okhttp", "setNextStreamId$okhttp", "okHttpSettings", "Lokhttp3/internal/http2/Settings;", "getOkHttpSettings", "()Lokhttp3/internal/http2/Settings;", "peerSettings", "getPeerSettings", "setPeerSettings", "Lokhttp3/internal/http2/PushObserver;", "pushObserver", "Lokhttp3/internal/http2/PushObserver;", "Lokhttp3/internal/concurrent/TaskQueue;", "pushQueue", "Lokhttp3/internal/concurrent/TaskQueue;", "<set-?>", "readBytesAcknowledged", "getReadBytesAcknowledged", "()J", "readBytesTotal", "getReadBytesTotal", "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "readerRunnable", "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "getReaderRunnable", "()Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "settingsListenerQueue", "Ljava/net/Socket;", "socket", "Ljava/net/Socket;", "getSocket$okhttp", "()Ljava/net/Socket;", "", "streams", "Ljava/util/Map;", "getStreams$okhttp", "()Ljava/util/Map;", "Lokhttp3/internal/concurrent/TaskRunner;", "writeBytesMaximum", "getWriteBytesMaximum", "writeBytesTotal", "getWriteBytesTotal", "Lokhttp3/internal/http2/Http2Writer;", "writer", "Lokhttp3/internal/http2/Http2Writer;", "getWriter", "()Lokhttp3/internal/http2/Http2Writer;", "writerQueue", "Lokhttp3/internal/http2/Http2Connection$Builder;", "builder", "<init>", "(Lokhttp3/internal/http2/Http2Connection$Builder;)V", "Companion", "Builder", "Listener", "ReaderRunnable", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Connection.class */
public final class Http2Connection implements Closeable {
    public static final int AWAIT_PING = 3;
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final C2445Settings DEFAULT_SETTINGS;
    public static final int DEGRADED_PING = 2;
    public static final int DEGRADED_PONG_TIMEOUT_NS = 1000000000;
    public static final int INTERVAL_PING = 1;
    public static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
    private long awaitPingsSent;
    private long awaitPongsReceived;
    private final boolean client;
    @NotNull
    private final String connectionName;
    private final Set<Integer> currentPushRequests;
    private long degradedPingsSent;
    private long degradedPongDeadlineNs;
    private long degradedPongsReceived;
    private long intervalPingsSent;
    private long intervalPongsReceived;
    private boolean isShutdown;
    private int lastGoodStreamId;
    @NotNull
    private final Listener listener;
    private int nextStreamId;
    @NotNull
    private final C2445Settings okHttpSettings;
    @NotNull
    private C2445Settings peerSettings;
    private final PushObserver pushObserver;
    private final TaskQueue pushQueue;
    private long readBytesAcknowledged;
    private long readBytesTotal;
    @NotNull
    private final ReaderRunnable readerRunnable;
    private final TaskQueue settingsListenerQueue;
    @NotNull
    private final Socket socket;
    @NotNull
    private final Map<Integer, Http2Stream> streams = new LinkedHashMap();
    private final TaskRunner taskRunner;
    private long writeBytesMaximum;
    private long writeBytesTotal;
    @NotNull
    private final Http2Writer writer;
    private final TaskQueue writerQueue;

    @Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b*\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010B\u001a\u00020A¢\u0006\u0004\bF\u0010GJ\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0005\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\b\u001a\u00020��2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\u000b\u001a\u00020��2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ5\u0010\u000e\u001a\u00020��2\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u0013H\u0007¢\u0006\u0004\b\u000e\u0010\u0015R\"\u0010\u0017\u001a\u00020\u00168��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010\u001d\u001a\u00020\u000f8��@��X\u0080.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010\u0005\u001a\u00020\u00048��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010\b\u001a\u00020\u00078��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\b\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u0010\u000b\u001a\u00020\n8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u0010\u0014\u001a\u00020\u00138��@��X\u0080.¢\u0006\u0012\n\u0004\b\u0014\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u0010\u000e\u001a\u00020\r8��@��X\u0080.¢\u0006\u0012\n\u0004\b\u000e\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\"\u0010\u0012\u001a\u00020\u00118��@��X\u0080.¢\u0006\u0012\n\u0004\b\u0012\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001c\u0010B\u001a\u00020A8��@��X\u0080\u0004¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E¨\u0006H"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Builder;", "Lokhttp3/internal/http2/Http2Connection;", "build", "()Lokhttp3/internal/http2/Http2Connection;", "Lokhttp3/internal/http2/Http2Connection$Listener;", "listener", "(Lokhttp3/internal/http2/Http2Connection$Listener;)Lokhttp3/internal/http2/Http2Connection$Builder;", "", "pingIntervalMillis", "(I)Lokhttp3/internal/http2/Http2Connection$Builder;", "Lokhttp3/internal/http2/PushObserver;", "pushObserver", "(Lokhttp3/internal/http2/PushObserver;)Lokhttp3/internal/http2/Http2Connection$Builder;", "Ljava/net/Socket;", "socket", "", "peerName", "Lokio/BufferedSource;", "source", "Lokio/BufferedSink;", "sink", "(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/http2/Http2Connection$Builder;", "", "client", "Z", "getClient$okhttp", "()Z", "setClient$okhttp", "(Z)V", "connectionName", "Ljava/lang/String;", "getConnectionName$okhttp", "()Ljava/lang/String;", "setConnectionName$okhttp", "(Ljava/lang/String;)V", "Lokhttp3/internal/http2/Http2Connection$Listener;", "getListener$okhttp", "()Lokhttp3/internal/http2/Http2Connection$Listener;", "setListener$okhttp", "(Lokhttp3/internal/http2/Http2Connection$Listener;)V", "I", "getPingIntervalMillis$okhttp", "()I", "setPingIntervalMillis$okhttp", "(I)V", "Lokhttp3/internal/http2/PushObserver;", "getPushObserver$okhttp", "()Lokhttp3/internal/http2/PushObserver;", "setPushObserver$okhttp", "(Lokhttp3/internal/http2/PushObserver;)V", "Lokio/BufferedSink;", "getSink$okhttp", "()Lokio/BufferedSink;", "setSink$okhttp", "(Lokio/BufferedSink;)V", "Ljava/net/Socket;", "getSocket$okhttp", "()Ljava/net/Socket;", "setSocket$okhttp", "(Ljava/net/Socket;)V", "Lokio/BufferedSource;", "getSource$okhttp", "()Lokio/BufferedSource;", "setSource$okhttp", "(Lokio/BufferedSource;)V", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "getTaskRunner$okhttp", "()Lokhttp3/internal/concurrent/TaskRunner;", "<init>", "(ZLokhttp3/internal/concurrent/TaskRunner;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Connection$Builder.class */
    public static final class Builder {
        private boolean client;
        @NotNull
        public String connectionName;
        private int pingIntervalMillis;
        @NotNull
        public BufferedSink sink;
        @NotNull
        public Socket socket;
        @NotNull
        public BufferedSource source;
        @NotNull
        private final TaskRunner taskRunner;
        @NotNull
        private Listener listener = Listener.REFUSE_INCOMING_STREAMS;
        @NotNull
        private PushObserver pushObserver = PushObserver.CANCEL;

        public Builder(boolean z, @NotNull TaskRunner taskRunner) {
            Intrinsics.m1830e(taskRunner, "taskRunner");
            this.client = z;
            this.taskRunner = taskRunner;
        }

        public static /* synthetic */ Builder socket$default(Builder builder, Socket socket, String str, BufferedSource bufferedSource, BufferedSink bufferedSink, int i, Object obj) throws IOException {
            if ((i & 2) != 0) {
                str = Util.peerName(socket);
            }
            if ((i & 4) != 0) {
                bufferedSource = Okio.m143d(Okio.m135l(socket));
            }
            if ((i & 8) != 0) {
                bufferedSink = Okio.m144c(Okio.m139h(socket));
            }
            return builder.socket(socket, str, bufferedSource, bufferedSink);
        }

        @NotNull
        public final Http2Connection build() {
            return new Http2Connection(this);
        }

        public final boolean getClient$okhttp() {
            return this.client;
        }

        @NotNull
        public final String getConnectionName$okhttp() {
            String str = this.connectionName;
            if (str != null) {
                return str;
            }
            Intrinsics.m1814u("connectionName");
            throw null;
        }

        @NotNull
        public final Listener getListener$okhttp() {
            return this.listener;
        }

        public final int getPingIntervalMillis$okhttp() {
            return this.pingIntervalMillis;
        }

        @NotNull
        public final PushObserver getPushObserver$okhttp() {
            return this.pushObserver;
        }

        @NotNull
        public final BufferedSink getSink$okhttp() {
            BufferedSink bufferedSink = this.sink;
            if (bufferedSink != null) {
                return bufferedSink;
            }
            Intrinsics.m1814u("sink");
            throw null;
        }

        @NotNull
        public final Socket getSocket$okhttp() {
            Socket socket = this.socket;
            if (socket != null) {
                return socket;
            }
            Intrinsics.m1814u("socket");
            throw null;
        }

        @NotNull
        public final BufferedSource getSource$okhttp() {
            BufferedSource bufferedSource = this.source;
            if (bufferedSource != null) {
                return bufferedSource;
            }
            Intrinsics.m1814u("source");
            throw null;
        }

        @NotNull
        public final TaskRunner getTaskRunner$okhttp() {
            return this.taskRunner;
        }

        @NotNull
        public final Builder listener(@NotNull Listener listener) {
            Intrinsics.m1830e(listener, "listener");
            this.listener = listener;
            return this;
        }

        @NotNull
        public final Builder pingIntervalMillis(int i) {
            this.pingIntervalMillis = i;
            return this;
        }

        @NotNull
        public final Builder pushObserver(@NotNull PushObserver pushObserver) {
            Intrinsics.m1830e(pushObserver, "pushObserver");
            this.pushObserver = pushObserver;
            return this;
        }

        public final void setClient$okhttp(boolean z) {
            this.client = z;
        }

        public final void setConnectionName$okhttp(@NotNull String str) {
            Intrinsics.m1830e(str, "<set-?>");
            this.connectionName = str;
        }

        public final void setListener$okhttp(@NotNull Listener listener) {
            Intrinsics.m1830e(listener, "<set-?>");
            this.listener = listener;
        }

        public final void setPingIntervalMillis$okhttp(int i) {
            this.pingIntervalMillis = i;
        }

        public final void setPushObserver$okhttp(@NotNull PushObserver pushObserver) {
            Intrinsics.m1830e(pushObserver, "<set-?>");
            this.pushObserver = pushObserver;
        }

        public final void setSink$okhttp(@NotNull BufferedSink bufferedSink) {
            Intrinsics.m1830e(bufferedSink, "<set-?>");
            this.sink = bufferedSink;
        }

        public final void setSocket$okhttp(@NotNull Socket socket) {
            Intrinsics.m1830e(socket, "<set-?>");
            this.socket = socket;
        }

        public final void setSource$okhttp(@NotNull BufferedSource bufferedSource) {
            Intrinsics.m1830e(bufferedSource, "<set-?>");
            this.source = bufferedSource;
        }

        @JvmOverloads
        @NotNull
        public final Builder socket(@NotNull Socket socket) throws IOException {
            return socket$default(this, socket, null, null, null, 14, null);
        }

        @JvmOverloads
        @NotNull
        public final Builder socket(@NotNull Socket socket, @NotNull String str) throws IOException {
            return socket$default(this, socket, str, null, null, 12, null);
        }

        @JvmOverloads
        @NotNull
        public final Builder socket(@NotNull Socket socket, @NotNull String str, @NotNull BufferedSource bufferedSource) throws IOException {
            return socket$default(this, socket, str, bufferedSource, null, 8, null);
        }

        @JvmOverloads
        @NotNull
        public final Builder socket(@NotNull Socket socket, @NotNull String peerName, @NotNull BufferedSource source, @NotNull BufferedSink sink) throws IOException {
            String str;
            Intrinsics.m1830e(socket, "socket");
            Intrinsics.m1830e(peerName, "peerName");
            Intrinsics.m1830e(source, "source");
            Intrinsics.m1830e(sink, "sink");
            this.socket = socket;
            if (this.client) {
                str = Util.okHttpName + ' ' + peerName;
            } else {
                str = "MockWebServer " + peerName;
            }
            this.connectionName = str;
            this.source = source;
            this.sink = sink;
            return this;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u0019\u0010\u0005\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0003R\u0016\u0010\n\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0003R\u0016\u0010\u000b\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0003R\u0016\u0010\f\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0003¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Companion;", "", "AWAIT_PING", "I", "Lokhttp3/internal/http2/Settings;", "DEFAULT_SETTINGS", "Lokhttp3/internal/http2/Settings;", "getDEFAULT_SETTINGS", "()Lokhttp3/internal/http2/Settings;", "DEGRADED_PING", "DEGRADED_PONG_TIMEOUT_NS", "INTERVAL_PING", "OKHTTP_CLIENT_WINDOW_SIZE", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Connection$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final C2445Settings getDEFAULT_SETTINGS() {
            return Http2Connection.DEFAULT_SETTINGS;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018�� \u000e:\u0001\u000eB\u0007¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Listener;", "Lokhttp3/internal/http2/Http2Connection;", "connection", "Lokhttp3/internal/http2/Settings;", "settings", "", "onSettings", "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V", "Lokhttp3/internal/http2/Http2Stream;", "stream", "onStream", "(Lokhttp3/internal/http2/Http2Stream;)V", "<init>", "()V", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Connection$Listener.class */
    public static abstract class Listener {
        public static final Companion Companion = new Companion(null);
        @JvmField
        @NotNull
        public static final Listener REFUSE_INCOMING_STREAMS = new Listener() { // from class: okhttp3.internal.http2.Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1
            @Override // okhttp3.internal.http2.Http2Connection.Listener
            public void onStream(@NotNull Http2Stream stream) throws IOException {
                Intrinsics.m1830e(stream, "stream");
                stream.close(ErrorCode.REFUSED_STREAM, null);
            }
        };

        @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Listener$Companion;", "Lokhttp3/internal/http2/Http2Connection$Listener;", "REFUSE_INCOMING_STREAMS", "Lokhttp3/internal/http2/Http2Connection$Listener;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Connection$Listener$Companion.class */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public void onSettings(@NotNull Http2Connection connection, @NotNull C2445Settings settings) {
            Intrinsics.m1830e(connection, "connection");
            Intrinsics.m1830e(settings, "settings");
        }

        public abstract void onStream(@NotNull Http2Stream http2Stream) throws IOException;
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��`\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018��2\u00020\u00012\u00020\u0002B\u0011\b��\u0012\u0006\u0010?\u001a\u00020>¢\u0006\u0004\bC\u0010DJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J?\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J/\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ'\u0010\"\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\nH\u0016¢\u0006\u0004\b\"\u0010#J5\u0010(\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\f\u0010'\u001a\b\u0012\u0004\u0012\u00020&0%H\u0016¢\u0006\u0004\b(\u0010)J\u0010\u0010*\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b*\u0010\u0005J'\u0010.\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0006H\u0016¢\u0006\u0004\b.\u0010/J/\u00103\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u00062\u0006\u00102\u001a\u00020\u0012H\u0016¢\u0006\u0004\b3\u00104J-\u00107\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\f\u00106\u001a\b\u0012\u0004\u0012\u00020&0%H\u0016¢\u0006\u0004\b7\u00108J\u001f\u00109\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b9\u0010:J\u001f\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0017J\u001f\u0010<\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010;\u001a\u00020\u000eH\u0016¢\u0006\u0004\b<\u0010=R\u001c\u0010?\u001a\u00020>8��@��X\u0080\u0004¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B¨\u0006E"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "okhttp3/internal/http2/Http2Reader$Handler", "Lkotlin/jvm/functions/Function0;", "", "ackSettings", "()V", "", "streamId", "", FirebaseAnalytics.Param.ORIGIN, "Lokio/ByteString;", "protocol", "host", "port", "", "maxAge", "alternateService", "(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V", "", "clearPrevious", "Lokhttp3/internal/http2/Settings;", "settings", "applyAndAckSettings", "(ZLokhttp3/internal/http2/Settings;)V", "inFinished", "Lokio/BufferedSource;", "source", Name.LENGTH, "data", "(ZILokio/BufferedSource;I)V", "lastGoodStreamId", "Lokhttp3/internal/http2/ErrorCode;", "errorCode", "debugData", "goAway", "(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V", "associatedStreamId", "", "Lokhttp3/internal/http2/Header;", "headerBlock", "headers", "(ZIILjava/util/List;)V", "invoke", MessengerIpcClient.KEY_ACK, "payload1", "payload2", "ping", "(ZII)V", "streamDependency", "weight", "exclusive", Constants.FirelogAnalytics.PARAM_PRIORITY, "(IIIZ)V", "promisedStreamId", "requestHeaders", "pushPromise", "(IILjava/util/List;)V", "rstStream", "(ILokhttp3/internal/http2/ErrorCode;)V", "windowSizeIncrement", "windowUpdate", "(IJ)V", "Lokhttp3/internal/http2/Http2Reader;", "reader", "Lokhttp3/internal/http2/Http2Reader;", "getReader$okhttp", "()Lokhttp3/internal/http2/Http2Reader;", "<init>", "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Connection$ReaderRunnable.class */
    public final class ReaderRunnable implements Http2Reader.Handler, Function0<Unit> {
        @NotNull
        private final Http2Reader reader;
        final /* synthetic */ Http2Connection this$0;

        public ReaderRunnable(@NotNull Http2Connection http2Connection, Http2Reader reader) {
            Intrinsics.m1830e(reader, "reader");
            this.this$0 = http2Connection;
            this.reader = reader;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ackSettings() {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void alternateService(int i, @NotNull String origin, @NotNull ByteString protocol, @NotNull String host, int i2, long j) {
            Intrinsics.m1830e(origin, "origin");
            Intrinsics.m1830e(protocol, "protocol");
            Intrinsics.m1830e(host, "host");
        }

        /* JADX WARN: Can't wrap try/catch for region: R(11:(2:18|(13:20|25|26|68|27|28|29|30|66|31|34|35|36)(2:21|22))|68|27|28|29|30|66|31|34|35|36) */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0152, code lost:
            r14 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0153, code lost:
            r12.this$0.failConnection(r14);
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void applyAndAckSettings(final boolean r13, @org.jetbrains.annotations.NotNull final okhttp3.internal.http2.C2445Settings r14) {
            /*
                Method dump skipped, instructions count: 446
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.ReaderRunnable.applyAndAckSettings(boolean, okhttp3.internal.http2.Settings):void");
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void data(boolean z, int i, @NotNull BufferedSource source, int i2) throws IOException {
            Intrinsics.m1830e(source, "source");
            if (this.this$0.pushedStream$okhttp(i)) {
                this.this$0.pushDataLater$okhttp(i, source, i2, z);
                return;
            }
            Http2Stream stream = this.this$0.getStream(i);
            if (stream == null) {
                this.this$0.writeSynResetLater$okhttp(i, ErrorCode.PROTOCOL_ERROR);
                long j = i2;
                this.this$0.updateConnectionFlowControl$okhttp(j);
                source.skip(j);
                return;
            }
            stream.receiveData(source, i2);
            if (z) {
                stream.receiveHeaders(Util.EMPTY_HEADERS, true);
            }
        }

        @NotNull
        public final Http2Reader getReader$okhttp() {
            return this.reader;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void goAway(int i, @NotNull ErrorCode errorCode, @NotNull ByteString debugData) {
            int i2;
            Http2Stream[] http2StreamArr;
            Intrinsics.m1830e(errorCode, "errorCode");
            Intrinsics.m1830e(debugData, "debugData");
            debugData.m178C();
            synchronized (this.this$0) {
                Object[] array = this.this$0.getStreams$okhttp().values().toArray(new Http2Stream[0]);
                if (array != null) {
                    http2StreamArr = (Http2Stream[]) array;
                    this.this$0.isShutdown = true;
                    Unit unit = Unit.f20447a;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
            for (Http2Stream http2Stream : http2StreamArr) {
                if (http2Stream.getId() > i && http2Stream.isLocallyInitiated()) {
                    http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                    this.this$0.removeStream$okhttp(http2Stream.getId());
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void headers(final boolean z, final int i, int i2, @NotNull final List<Header> headerBlock) {
            Intrinsics.m1830e(headerBlock, "headerBlock");
            if (this.this$0.pushedStream$okhttp(i)) {
                this.this$0.pushHeadersLater$okhttp(i, headerBlock, z);
                return;
            }
            synchronized (this.this$0) {
                final Http2Stream stream = this.this$0.getStream(i);
                if (stream != null) {
                    Unit unit = Unit.f20447a;
                    stream.receiveHeaders(Util.toHeaders(headerBlock), z);
                } else if (!this.this$0.isShutdown) {
                    if (i > this.this$0.getLastGoodStreamId$okhttp()) {
                        if (i % 2 != this.this$0.getNextStreamId$okhttp() % 2) {
                            final Http2Stream http2Stream = new Http2Stream(i, this.this$0, false, z, Util.toHeaders(headerBlock));
                            this.this$0.setLastGoodStreamId$okhttp(i);
                            this.this$0.getStreams$okhttp().put(Integer.valueOf(i), http2Stream);
                            final String str = this.this$0.getConnectionName$okhttp() + '[' + i + "] onStream";
                            this.this$0.taskRunner.newQueue().schedule(new Task(str, true) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$$inlined$synchronized$lambda$1
                                @Override // okhttp3.internal.concurrent.Task
                                public long runOnce() {
                                    try {
                                        this.this$0.getListener$okhttp().onStream(http2Stream);
                                        return -1L;
                                    } catch (IOException e) {
                                        Platform platform = Platform.Companion.get();
                                        platform.log("Http2Connection.Listener failure for " + this.this$0.getConnectionName$okhttp(), 4, e);
                                        try {
                                            http2Stream.close(ErrorCode.PROTOCOL_ERROR, e);
                                            return -1L;
                                        } catch (IOException e2) {
                                            return -1L;
                                        }
                                    }
                                }
                            }, 0L);
                        }
                    }
                }
            }
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public void invoke2() {
            Throwable th;
            ErrorCode errorCode;
            ErrorCode errorCode2;
            ErrorCode errorCode3;
            ErrorCode errorCode4 = ErrorCode.INTERNAL_ERROR;
            r8 = null;
            IOException iOException = null;
            IOException e = null;
            try {
                this.reader.readConnectionPreface(this);
                while (this.reader.nextFrame(false, this)) {
                }
                errorCode2 = ErrorCode.NO_ERROR;
                errorCode = errorCode2;
                try {
                    try {
                        errorCode3 = ErrorCode.CANCEL;
                    } catch (IOException e2) {
                        e = e2;
                        errorCode2 = ErrorCode.PROTOCOL_ERROR;
                        iOException = e;
                        errorCode = errorCode2;
                        errorCode3 = ErrorCode.PROTOCOL_ERROR;
                        this.this$0.close$okhttp(errorCode2, errorCode3, e);
                        Util.closeQuietly(this.reader);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    this.this$0.close$okhttp(errorCode, errorCode4, iOException);
                    Util.closeQuietly(this.reader);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
            } catch (Throwable th3) {
                th = th3;
                errorCode = errorCode4;
                this.this$0.close$okhttp(errorCode, errorCode4, iOException);
                Util.closeQuietly(this.reader);
                throw th;
            }
            this.this$0.close$okhttp(errorCode2, errorCode3, e);
            Util.closeQuietly(this.reader);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ping(boolean z, final int i, final int i2) {
            if (z) {
                synchronized (this.this$0) {
                    if (i == 1) {
                        this.this$0.intervalPongsReceived++;
                    } else if (i != 2) {
                        if (i == 3) {
                            this.this$0.awaitPongsReceived++;
                            Http2Connection http2Connection = this.this$0;
                            if (http2Connection != null) {
                                http2Connection.notifyAll();
                            } else {
                                throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                            }
                        }
                        Unit unit = Unit.f20447a;
                    } else {
                        this.this$0.degradedPongsReceived++;
                    }
                }
                return;
            }
            final String str = this.this$0.getConnectionName$okhttp() + " ping";
            this.this$0.writerQueue.schedule(new Task(str, true) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$1
                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    this.this$0.writePing(true, i, i2);
                    return -1L;
                }
            }, 0L);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void priority(int i, int i2, int i3, boolean z) {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void pushPromise(int i, int i2, @NotNull List<Header> requestHeaders) {
            Intrinsics.m1830e(requestHeaders, "requestHeaders");
            this.this$0.pushRequestLater$okhttp(i2, requestHeaders);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void rstStream(int i, @NotNull ErrorCode errorCode) {
            Intrinsics.m1830e(errorCode, "errorCode");
            if (this.this$0.pushedStream$okhttp(i)) {
                this.this$0.pushResetLater$okhttp(i, errorCode);
                return;
            }
            Http2Stream removeStream$okhttp = this.this$0.removeStream$okhttp(i);
            if (removeStream$okhttp != null) {
                removeStream$okhttp.receiveRstStream(errorCode);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void settings(final boolean z, @NotNull final C2445Settings settings) {
            Intrinsics.m1830e(settings, "settings");
            final String str = this.this$0.getConnectionName$okhttp() + " applyAndAckSettings";
            this.this$0.writerQueue.schedule(new Task(str, true) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$1
                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    this.applyAndAckSettings(z, settings);
                    return -1L;
                }
            }, 0L);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void windowUpdate(int i, long j) {
            if (i == 0) {
                synchronized (this.this$0) {
                    Http2Connection http2Connection = this.this$0;
                    http2Connection.writeBytesMaximum = http2Connection.getWriteBytesMaximum() + j;
                    Http2Connection http2Connection2 = this.this$0;
                    if (http2Connection2 != null) {
                        http2Connection2.notifyAll();
                        Unit unit = Unit.f20447a;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                    }
                }
                return;
            }
            Http2Stream stream = this.this$0.getStream(i);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(j);
                    Unit unit2 = Unit.f20447a;
                }
            }
        }
    }

    static {
        C2445Settings settings = new C2445Settings();
        settings.set(7, C2445Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        settings.set(5, Http2.INITIAL_MAX_FRAME_SIZE);
        DEFAULT_SETTINGS = settings;
    }

    public Http2Connection(@NotNull Builder builder) {
        C2445Settings settings;
        Intrinsics.m1830e(builder, "builder");
        this.client = builder.getClient$okhttp();
        this.listener = builder.getListener$okhttp();
        this.connectionName = builder.getConnectionName$okhttp();
        this.nextStreamId = builder.getClient$okhttp() ? 3 : 2;
        TaskRunner taskRunner$okhttp = builder.getTaskRunner$okhttp();
        this.taskRunner = taskRunner$okhttp;
        this.writerQueue = taskRunner$okhttp.newQueue();
        this.pushQueue = this.taskRunner.newQueue();
        this.settingsListenerQueue = this.taskRunner.newQueue();
        this.pushObserver = builder.getPushObserver$okhttp();
        C2445Settings settings2 = new C2445Settings();
        if (builder.getClient$okhttp()) {
            settings2.set(7, OKHTTP_CLIENT_WINDOW_SIZE);
        }
        Unit unit = Unit.f20447a;
        this.okHttpSettings = settings2;
        this.peerSettings = DEFAULT_SETTINGS;
        this.writeBytesMaximum = settings.getInitialWindowSize();
        this.socket = builder.getSocket$okhttp();
        this.writer = new Http2Writer(builder.getSink$okhttp(), this.client);
        this.readerRunnable = new ReaderRunnable(this, new Http2Reader(builder.getSource$okhttp(), this.client));
        this.currentPushRequests = new LinkedHashSet();
        if (builder.getPingIntervalMillis$okhttp() != 0) {
            final long nanos = TimeUnit.MILLISECONDS.toNanos(builder.getPingIntervalMillis$okhttp());
            final String str = this.connectionName + " ping";
            this.writerQueue.schedule(new Task(str) { // from class: okhttp3.internal.http2.Http2Connection$$special$$inlined$schedule$1
                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    long j;
                    boolean z;
                    long j2;
                    long j3;
                    synchronized (this) {
                        long j4 = this.intervalPongsReceived;
                        j = this.intervalPingsSent;
                        if (j4 < j) {
                            z = true;
                        } else {
                            Http2Connection http2Connection = this;
                            j3 = http2Connection.intervalPingsSent;
                            http2Connection.intervalPingsSent = j3 + 1;
                            z = false;
                        }
                    }
                    if (z) {
                        this.failConnection(null);
                        j2 = -1;
                    } else {
                        this.writePing(false, 1, 0);
                        j2 = nanos;
                    }
                    return j2;
                }
            }, nanos);
        }
    }

    public final void failConnection(IOException iOException) {
        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
        close$okhttp(errorCode, errorCode, iOException);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007b A[Catch: all -> 0x00ea, TryCatch #1 {, blocks: (B:5:0x000f, B:28:0x0092, B:31:0x0097, B:32:0x00a6, B:34:0x00af, B:35:0x00ba, B:43:0x00d0, B:44:0x00df, B:45:0x00e0, B:7:0x0011, B:9:0x001a, B:11:0x0022, B:13:0x0028, B:15:0x004d, B:17:0x0059, B:22:0x0073, B:24:0x007b, B:25:0x008c, B:46:0x00e3, B:47:0x00e9), top: B:52:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final okhttp3.internal.http2.Http2Stream newStream(int r8, java.util.List<okhttp3.internal.http2.Header> r9, boolean r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.newStream(int, java.util.List, boolean):okhttp3.internal.http2.Http2Stream");
    }

    public static /* synthetic */ void start$default(Http2Connection http2Connection, boolean z, TaskRunner taskRunner, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            taskRunner = TaskRunner.INSTANCE;
        }
        http2Connection.start(z, taskRunner);
    }

    public final void awaitPong() throws InterruptedException {
        synchronized (this) {
            while (this.awaitPongsReceived < this.awaitPingsSent) {
                wait();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        close$okhttp(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x0105 -> B:30:0x00d2). Please submit an issue!!! */
    public final void close$okhttp(@NotNull ErrorCode connectionCode, @NotNull ErrorCode streamCode, @Nullable IOException iOException) {
        int i;
        Intrinsics.m1830e(connectionCode, "connectionCode");
        Intrinsics.m1830e(streamCode, "streamCode");
        if (!Util.assertionsEnabled || !Thread.holdsLock(this)) {
            try {
                shutdown(connectionCode);
            } catch (IOException e) {
            }
            Http2Stream[] http2StreamArr = null;
            synchronized (this) {
                if (!this.streams.isEmpty()) {
                    Object[] array = this.streams.values().toArray(new Http2Stream[0]);
                    if (array != null) {
                        http2StreamArr = (Http2Stream[]) array;
                        this.streams.clear();
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                }
                Unit unit = Unit.f20447a;
            }
            if (http2StreamArr != null) {
                for (Http2Stream http2Stream : http2StreamArr) {
                    try {
                        http2Stream.close(streamCode, iOException);
                    } catch (IOException e2) {
                    }
                }
            }
            try {
                this.writer.close();
            } catch (IOException e3) {
            }
            try {
                this.socket.close();
            } catch (IOException e4) {
            }
            this.writerQueue.shutdown();
            this.pushQueue.shutdown();
            this.settingsListenerQueue.shutdown();
            return;
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

    public final void flush() throws IOException {
        this.writer.flush();
    }

    public final boolean getClient$okhttp() {
        return this.client;
    }

    @NotNull
    public final String getConnectionName$okhttp() {
        return this.connectionName;
    }

    public final int getLastGoodStreamId$okhttp() {
        return this.lastGoodStreamId;
    }

    @NotNull
    public final Listener getListener$okhttp() {
        return this.listener;
    }

    public final int getNextStreamId$okhttp() {
        return this.nextStreamId;
    }

    @NotNull
    public final C2445Settings getOkHttpSettings() {
        return this.okHttpSettings;
    }

    @NotNull
    public final C2445Settings getPeerSettings() {
        return this.peerSettings;
    }

    public final long getReadBytesAcknowledged() {
        return this.readBytesAcknowledged;
    }

    public final long getReadBytesTotal() {
        return this.readBytesTotal;
    }

    @NotNull
    public final ReaderRunnable getReaderRunnable() {
        return this.readerRunnable;
    }

    @NotNull
    public final Socket getSocket$okhttp() {
        return this.socket;
    }

    @Nullable
    public final Http2Stream getStream(int i) {
        Http2Stream http2Stream;
        synchronized (this) {
            http2Stream = this.streams.get(Integer.valueOf(i));
        }
        return http2Stream;
    }

    @NotNull
    public final Map<Integer, Http2Stream> getStreams$okhttp() {
        return this.streams;
    }

    public final long getWriteBytesMaximum() {
        return this.writeBytesMaximum;
    }

    public final long getWriteBytesTotal() {
        return this.writeBytesTotal;
    }

    @NotNull
    public final Http2Writer getWriter() {
        return this.writer;
    }

    public final boolean isHealthy(long j) {
        synchronized (this) {
            if (this.isShutdown) {
                return false;
            }
            if (this.degradedPongsReceived < this.degradedPingsSent) {
                if (j >= this.degradedPongDeadlineNs) {
                    return false;
                }
            }
            return true;
        }
    }

    @NotNull
    public final Http2Stream newStream(@NotNull List<Header> requestHeaders, boolean z) throws IOException {
        Intrinsics.m1830e(requestHeaders, "requestHeaders");
        return newStream(0, requestHeaders, z);
    }

    public final int openStreamCount() {
        int size;
        synchronized (this) {
            size = this.streams.size();
        }
        return size;
    }

    public final void pushDataLater$okhttp(final int i, @NotNull BufferedSource source, final int i2, final boolean z) throws IOException {
        Intrinsics.m1830e(source, "source");
        final Buffer buffer = new Buffer();
        long j = i2;
        source.mo66p0(j);
        source.read(buffer, j);
        final String str = this.connectionName + '[' + i + "] onData";
        this.pushQueue.schedule(new Task(str, true) { // from class: okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                PushObserver pushObserver;
                Set set;
                try {
                    pushObserver = this.pushObserver;
                    boolean onData = pushObserver.onData(i, buffer, i2, z);
                    if (onData) {
                        this.getWriter().rstStream(i, ErrorCode.CANCEL);
                    }
                    if (!onData && !z) {
                        return -1L;
                    }
                    synchronized (this) {
                        set = this.currentPushRequests;
                        set.remove(Integer.valueOf(i));
                    }
                    return -1L;
                } catch (IOException e) {
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void pushHeadersLater$okhttp(final int i, @NotNull final List<Header> requestHeaders, final boolean z) {
        Intrinsics.m1830e(requestHeaders, "requestHeaders");
        final String str = this.connectionName + '[' + i + "] onHeaders";
        this.pushQueue.schedule(new Task(str, true) { // from class: okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                PushObserver pushObserver;
                Set set;
                pushObserver = this.pushObserver;
                boolean onHeaders = pushObserver.onHeaders(i, requestHeaders, z);
                if (onHeaders) {
                    try {
                        this.getWriter().rstStream(i, ErrorCode.CANCEL);
                    } catch (IOException e) {
                        return -1L;
                    }
                }
                if (!onHeaders && !z) {
                    return -1L;
                }
                synchronized (this) {
                    set = this.currentPushRequests;
                    set.remove(Integer.valueOf(i));
                }
                return -1L;
            }
        }, 0L);
    }

    public final void pushRequestLater$okhttp(final int i, @NotNull final List<Header> requestHeaders) {
        Intrinsics.m1830e(requestHeaders, "requestHeaders");
        synchronized (this) {
            if (this.currentPushRequests.contains(Integer.valueOf(i))) {
                writeSynResetLater$okhttp(i, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.currentPushRequests.add(Integer.valueOf(i));
            final String str = this.connectionName + '[' + i + "] onRequest";
            this.pushQueue.schedule(new Task(str, true) { // from class: okhttp3.internal.http2.Http2Connection$pushRequestLater$$inlined$execute$1
                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    PushObserver pushObserver;
                    Set set;
                    pushObserver = this.pushObserver;
                    if (!pushObserver.onRequest(i, requestHeaders)) {
                        return -1L;
                    }
                    try {
                        this.getWriter().rstStream(i, ErrorCode.CANCEL);
                        synchronized (this) {
                            set = this.currentPushRequests;
                            set.remove(Integer.valueOf(i));
                        }
                        return -1L;
                    } catch (IOException e) {
                        return -1L;
                    }
                }
            }, 0L);
        }
    }

    public final void pushResetLater$okhttp(final int i, @NotNull final ErrorCode errorCode) {
        Intrinsics.m1830e(errorCode, "errorCode");
        final String str = this.connectionName + '[' + i + "] onReset";
        this.pushQueue.schedule(new Task(str, true) { // from class: okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                PushObserver pushObserver;
                Set set;
                pushObserver = this.pushObserver;
                pushObserver.onReset(i, errorCode);
                synchronized (this) {
                    set = this.currentPushRequests;
                    set.remove(Integer.valueOf(i));
                    Unit unit = Unit.f20447a;
                }
                return -1L;
            }
        }, 0L);
    }

    @NotNull
    public final Http2Stream pushStream(int i, @NotNull List<Header> requestHeaders, boolean z) throws IOException {
        Intrinsics.m1830e(requestHeaders, "requestHeaders");
        if (!this.client) {
            return newStream(i, requestHeaders, z);
        }
        throw new IllegalStateException("Client cannot push requests.".toString());
    }

    public final boolean pushedStream$okhttp(int i) {
        boolean z = true;
        if (i == 0 || (i & 1) != 0) {
            z = false;
        }
        return z;
    }

    @Nullable
    public final Http2Stream removeStream$okhttp(int i) {
        Http2Stream remove;
        synchronized (this) {
            remove = this.streams.remove(Integer.valueOf(i));
            notifyAll();
        }
        return remove;
    }

    public final void sendDegradedPingLater$okhttp() {
        synchronized (this) {
            if (this.degradedPongsReceived >= this.degradedPingsSent) {
                this.degradedPingsSent++;
                this.degradedPongDeadlineNs = System.nanoTime() + ((long) DEGRADED_PONG_TIMEOUT_NS);
                Unit unit = Unit.f20447a;
                final String str = this.connectionName + " ping";
                this.writerQueue.schedule(new Task(str, true) { // from class: okhttp3.internal.http2.Http2Connection$sendDegradedPingLater$$inlined$execute$1
                    @Override // okhttp3.internal.concurrent.Task
                    public long runOnce() {
                        this.writePing(false, 2, 0);
                        return -1L;
                    }
                }, 0L);
            }
        }
    }

    public final void setLastGoodStreamId$okhttp(int i) {
        this.lastGoodStreamId = i;
    }

    public final void setNextStreamId$okhttp(int i) {
        this.nextStreamId = i;
    }

    public final void setPeerSettings(@NotNull C2445Settings settings) {
        Intrinsics.m1830e(settings, "<set-?>");
        this.peerSettings = settings;
    }

    public final void setSettings(@NotNull C2445Settings settings) throws IOException {
        Intrinsics.m1830e(settings, "settings");
        synchronized (this.writer) {
            synchronized (this) {
                if (!this.isShutdown) {
                    this.okHttpSettings.merge(settings);
                    Unit unit = Unit.f20447a;
                } else {
                    throw new ConnectionShutdownException();
                }
            }
            this.writer.settings(settings);
            Unit unit2 = Unit.f20447a;
        }
    }

    public final void shutdown(@NotNull ErrorCode statusCode) throws IOException {
        Intrinsics.m1830e(statusCode, "statusCode");
        synchronized (this.writer) {
            synchronized (this) {
                if (!this.isShutdown) {
                    this.isShutdown = true;
                    int i = this.lastGoodStreamId;
                    Unit unit = Unit.f20447a;
                    this.writer.goAway(i, statusCode, Util.EMPTY_BYTE_ARRAY);
                    Unit unit2 = Unit.f20447a;
                }
            }
        }
    }

    @JvmOverloads
    public final void start() throws IOException {
        start$default(this, false, null, 3, null);
    }

    @JvmOverloads
    public final void start(boolean z) throws IOException {
        start$default(this, z, null, 2, null);
    }

    @JvmOverloads
    public final void start(boolean z, @NotNull TaskRunner taskRunner) throws IOException {
        Intrinsics.m1830e(taskRunner, "taskRunner");
        if (z) {
            this.writer.connectionPreface();
            this.writer.settings(this.okHttpSettings);
            int initialWindowSize = this.okHttpSettings.getInitialWindowSize();
            if (initialWindowSize != 65535) {
                this.writer.windowUpdate(0, initialWindowSize - C2445Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            }
        }
        TaskQueue newQueue = taskRunner.newQueue();
        String str = this.connectionName;
        newQueue.schedule(new TaskQueue$execute$1(this.readerRunnable, str, true, str, true), 0L);
    }

    public final void updateConnectionFlowControl$okhttp(long j) {
        synchronized (this) {
            long j2 = this.readBytesTotal + j;
            this.readBytesTotal = j2;
            long j3 = j2 - this.readBytesAcknowledged;
            if (j3 >= this.okHttpSettings.getInitialWindowSize() / 2) {
                writeWindowUpdateLater$okhttp(0, j3);
                this.readBytesAcknowledged += j3;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void writeData(int r8, boolean r9, @org.jetbrains.annotations.Nullable okio.Buffer r10, long r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.writeData(int, boolean, okio.Buffer, long):void");
    }

    public final void writeHeaders$okhttp(int i, boolean z, @NotNull List<Header> alternating) throws IOException {
        Intrinsics.m1830e(alternating, "alternating");
        this.writer.headers(z, i, alternating);
    }

    public final void writePing() throws InterruptedException {
        synchronized (this) {
            this.awaitPingsSent++;
        }
        writePing(false, 3, 1330343787);
    }

    public final void writePing(boolean z, int i, int i2) {
        try {
            this.writer.ping(z, i, i2);
        } catch (IOException e) {
            failConnection(e);
        }
    }

    public final void writePingAndAwaitPong() throws InterruptedException {
        writePing();
        awaitPong();
    }

    public final void writeSynReset$okhttp(int i, @NotNull ErrorCode statusCode) throws IOException {
        Intrinsics.m1830e(statusCode, "statusCode");
        this.writer.rstStream(i, statusCode);
    }

    public final void writeSynResetLater$okhttp(final int i, @NotNull final ErrorCode errorCode) {
        Intrinsics.m1830e(errorCode, "errorCode");
        final String str = this.connectionName + '[' + i + "] writeSynReset";
        this.writerQueue.schedule(new Task(str, true) { // from class: okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                try {
                    this.writeSynReset$okhttp(i, errorCode);
                    return -1L;
                } catch (IOException e) {
                    this.failConnection(e);
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void writeWindowUpdateLater$okhttp(final int i, final long j) {
        final String str = this.connectionName + '[' + i + "] windowUpdate";
        this.writerQueue.schedule(new Task(str, true) { // from class: okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                try {
                    this.getWriter().windowUpdate(i, j);
                    return -1L;
                } catch (IOException e) {
                    this.failConnection(e);
                    return -1L;
                }
            }
        }, 0L);
    }
}
