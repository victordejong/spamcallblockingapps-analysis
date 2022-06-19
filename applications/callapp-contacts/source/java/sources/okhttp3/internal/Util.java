package okhttp3.internal;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.appsflyer.internal.referrer.Payload;
import com.google.api.client.googleapis.notifications.C15291b;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Field;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlin.C18298b;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18501ah;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.AbstractC18245ag;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p530f.C18361c;
import kotlin.p530f.C18363d;
import kotlin.p532h.C18405d;
import kotlin.p532h.C18418l;
import kotlin.p532h.C18425p;
import kotlin.p533io.C18442b;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http2.Header;
import okhttp3.internal.p577io.FileSystem;
import p092c.AbstractC3188ab;
import p092c.AbstractC3190ad;
import p092c.AbstractC3206g;
import p092c.AbstractC3207h;
import p092c.C3202f;
import p092c.C3208i;
import p092c.C3219s;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��¸\u0002\n��\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u0005\n��\n\u0002\u0010\n\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\f\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001c\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u001a\u001e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u0017\u001a'\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u00112\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020\"0!\"\u00020\"¢\u0006\u0002\u0010#\u001a\u001a\u0010$\u001a\u00020\u001b2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001b0&H\u0086\bø\u0001��\u001a-\u0010'\u001a\b\u0012\u0004\u0012\u0002H)0(\"\u0004\b��\u0010)2\u0012\u0010*\u001a\n\u0012\u0006\b\u0001\u0012\u0002H)0!\"\u0002H)H\u0007¢\u0006\u0002\u0010+\u001a1\u0010,\u001a\u0004\u0018\u0001H)\"\u0004\b��\u0010)2\u0006\u0010-\u001a\u00020\"2\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H)0/2\u0006\u00100\u001a\u00020\u0011¢\u0006\u0002\u00101\u001a\u0016\u00102\u001a\u0002032\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u00104\u001a\u00020\u000f\u001a\"\u00105\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u00112\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001b0&H\u0086\bø\u0001��\u001a%\u00106\u001a\u00020\u001b\"\u0004\b��\u00107*\b\u0012\u0004\u0012\u0002H7082\u0006\u00109\u001a\u0002H7H��¢\u0006\u0002\u0010:\u001a\u0015\u0010;\u001a\u00020\u0014*\u00020<2\u0006\u0010=\u001a\u00020\u0014H\u0086\u0004\u001a\u0015\u0010;\u001a\u00020\u0017*\u00020\u00142\u0006\u0010=\u001a\u00020\u0017H\u0086\u0004\u001a\u0015\u0010;\u001a\u00020\u0014*\u00020>2\u0006\u0010=\u001a\u00020\u0014H\u0086\u0004\u001a\n\u0010?\u001a\u00020@*\u00020A\u001a\r\u0010B\u001a\u00020\u001b*\u00020\"H\u0080\b\u001a\r\u0010C\u001a\u00020\u001b*\u00020\"H\u0080\b\u001a\n\u0010D\u001a\u00020\u000f*\u00020\u0011\u001a\u0012\u0010E\u001a\u00020\u000f*\u00020F2\u0006\u0010G\u001a\u00020F\u001a\n\u0010H\u001a\u00020\u001b*\u00020I\u001a\n\u0010H\u001a\u00020\u001b*\u00020J\u001a\n\u0010H\u001a\u00020\u001b*\u00020K\u001a#\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00110!*\b\u0012\u0004\u0012\u00020\u00110!2\u0006\u0010M\u001a\u00020\u0011¢\u0006\u0002\u0010N\u001a&\u0010O\u001a\u00020\u0014*\u00020\u00112\u0006\u0010P\u001a\u00020Q2\b\b\u0002\u0010R\u001a\u00020\u00142\b\b\u0002\u0010S\u001a\u00020\u0014\u001a&\u0010O\u001a\u00020\u0014*\u00020\u00112\u0006\u0010T\u001a\u00020\u00112\b\b\u0002\u0010R\u001a\u00020\u00142\b\b\u0002\u0010S\u001a\u00020\u0014\u001a\u001a\u0010U\u001a\u00020\u000f*\u00020V2\u0006\u0010W\u001a\u00020\u00142\u0006\u0010X\u001a\u00020\u0019\u001a;\u0010Y\u001a\b\u0012\u0004\u0012\u0002H)0(\"\u0004\b��\u0010)*\b\u0012\u0004\u0012\u0002H)0Z2\u0017\u0010[\u001a\u0013\u0012\u0004\u0012\u0002H)\u0012\u0004\u0012\u00020\u000f0\\¢\u0006\u0002\b]H\u0086\bø\u0001��\u001a5\u0010^\u001a\u00020\u000f*\b\u0012\u0004\u0012\u00020\u00110!2\u000e\u0010G\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010!2\u000e\u0010_\u001a\n\u0012\u0006\b��\u0012\u00020\u00110`¢\u0006\u0002\u0010a\u001a\n\u0010b\u001a\u00020\u0017*\u00020c\u001a+\u0010d\u001a\u00020\u0014*\b\u0012\u0004\u0012\u00020\u00110!2\u0006\u0010M\u001a\u00020\u00112\f\u0010_\u001a\b\u0012\u0004\u0012\u00020\u00110`¢\u0006\u0002\u0010e\u001a\n\u0010f\u001a\u00020\u0014*\u00020\u0011\u001a\u001e\u0010g\u001a\u00020\u0014*\u00020\u00112\b\b\u0002\u0010R\u001a\u00020\u00142\b\b\u0002\u0010S\u001a\u00020\u0014\u001a\u001e\u0010h\u001a\u00020\u0014*\u00020\u00112\b\b\u0002\u0010R\u001a\u00020\u00142\b\b\u0002\u0010S\u001a\u00020\u0014\u001a\u0014\u0010i\u001a\u00020\u0014*\u00020\u00112\b\b\u0002\u0010R\u001a\u00020\u0014\u001a9\u0010j\u001a\b\u0012\u0004\u0012\u00020\u00110!*\b\u0012\u0004\u0012\u00020\u00110!2\f\u0010G\u001a\b\u0012\u0004\u0012\u00020\u00110!2\u000e\u0010_\u001a\n\u0012\u0006\b��\u0012\u00020\u00110`¢\u0006\u0002\u0010k\u001a\u0012\u0010l\u001a\u00020\u000f*\u00020m2\u0006\u0010n\u001a\u00020o\u001a\u0012\u0010p\u001a\u00020\u000f*\u00020K2\u0006\u0010q\u001a\u00020r\u001a\r\u0010s\u001a\u00020\u001b*\u00020\"H\u0086\b\u001a\r\u0010t\u001a\u00020\u001b*\u00020\"H\u0086\b\u001a\n\u0010u\u001a\u00020\u0014*\u00020Q\u001a\n\u0010v\u001a\u00020\u0011*\u00020K\u001a\u0012\u0010w\u001a\u00020x*\u00020r2\u0006\u0010y\u001a\u00020x\u001a\n\u0010z\u001a\u00020\u0014*\u00020r\u001a\u0012\u0010{\u001a\u00020\u0014*\u00020|2\u0006\u0010}\u001a\u00020<\u001a\u001a\u0010{\u001a\u00020\u000f*\u00020V2\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010X\u001a\u00020\u0019\u001a\u0010\u0010~\u001a\b\u0012\u0004\u0012\u00020\u007f0(*\u00020\u0003\u001a\u0011\u0010\u0080\u0001\u001a\u00020\u0003*\b\u0012\u0004\u0012\u00020\u007f0(\u001a\u000b\u0010\u0081\u0001\u001a\u00020\u0011*\u00020\u0014\u001a\u000b\u0010\u0081\u0001\u001a\u00020\u0011*\u00020\u0017\u001a\u0016\u0010\u0082\u0001\u001a\u00020\u0011*\u00020F2\t\b\u0002\u0010\u0083\u0001\u001a\u00020\u000f\u001a\u001d\u0010\u0084\u0001\u001a\b\u0012\u0004\u0012\u0002H)0(\"\u0004\b��\u0010)*\b\u0012\u0004\u0012\u0002H)0(\u001a7\u0010\u0085\u0001\u001a\u0011\u0012\u0005\u0012\u0003H\u0087\u0001\u0012\u0005\u0012\u0003H\u0088\u00010\u0086\u0001\"\u0005\b��\u0010\u0087\u0001\"\u0005\b\u0001\u0010\u0088\u0001*\u0011\u0012\u0005\u0012\u0003H\u0087\u0001\u0012\u0005\u0012\u0003H\u0088\u00010\u0086\u0001\u001a\u0014\u0010\u0089\u0001\u001a\u00020\u0017*\u00020\u00112\u0007\u0010\u008a\u0001\u001a\u00020\u0017\u001a\u0016\u0010\u008b\u0001\u001a\u00020\u0014*\u0004\u0018\u00010\u00112\u0007\u0010\u008a\u0001\u001a\u00020\u0014\u001a\u001f\u0010\u008c\u0001\u001a\u00020\u0011*\u00020\u00112\b\b\u0002\u0010R\u001a\u00020\u00142\b\b\u0002\u0010S\u001a\u00020\u0014\u001a\u000e\u0010\u008d\u0001\u001a\u00020\u001b*\u00020\"H\u0086\b\u001a'\u0010\u008e\u0001\u001a\u00030\u008f\u0001*\b0\u0090\u0001j\u0003`\u0091\u00012\u0013\u0010\u0092\u0001\u001a\u000e\u0012\n\u0012\b0\u0090\u0001j\u0003`\u0091\u00010(\u001a\u0015\u0010\u0093\u0001\u001a\u00020\u001b*\u00030\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u00020\u0014\"\u0010\u0010��\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u0002\n��\"\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��\"\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n��\"\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n��\"\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��\"\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n��\"\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��\"\u0010\u0010\u000e\u001a\u00020\u000f8��X\u0081\u0004¢\u0006\u0002\n��\"\u0010\u0010\u0010\u001a\u00020\u00118��X\u0081\u0004¢\u0006\u0002\n��\"\u000e\u0010\u0012\u001a\u00020\u0011X\u0086T¢\u0006\u0002\n��\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0096\u0001"}, m4298d2 = {"EMPTY_BYTE_ARRAY", "", "EMPTY_HEADERS", "Lokhttp3/Headers;", "EMPTY_REQUEST", "Lokhttp3/RequestBody;", "EMPTY_RESPONSE", "Lokhttp3/ResponseBody;", "UNICODE_BOMS", "Lokio/Options;", "UTC", "Ljava/util/TimeZone;", "VERIFY_AS_IP_ADDRESS", "Lkotlin/text/Regex;", "assertionsEnabled", "", "okHttpName", "", "userAgent", "checkDuration", "", "name", VastIconXmlManager.DURATION, "", "unit", "Ljava/util/concurrent/TimeUnit;", "checkOffsetAndCount", "", "arrayLength", VastIconXmlManager.OFFSET, "count", "format", "args", "", "", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "ignoreIoExceptions", "block", "Lkotlin/Function0;", "immutableListOf", "", "T", "elements", "([Ljava/lang/Object;)Ljava/util/List;", "readFieldOrNull", "instance", "fieldType", "Ljava/lang/Class;", "fieldName", "(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;", "threadFactory", "Ljava/util/concurrent/ThreadFactory;", "daemon", "threadName", "addIfAbsent", "E", "", "element", "(Ljava/util/List;Ljava/lang/Object;)V", "and", "", "mask", "", "asFactory", "Lokhttp3/EventListener$Factory;", "Lokhttp3/EventListener;", "assertThreadDoesntHoldLock", "assertThreadHoldsLock", "canParseAsIpAddress", "canReuseConnectionFor", "Lokhttp3/HttpUrl;", "other", "closeQuietly", "Ljava/io/Closeable;", "Ljava/net/ServerSocket;", "Ljava/net/Socket;", "concat", "value", "([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;", "delimiterOffset", "delimiter", "", "startIndex", "endIndex", "delimiters", "discard", "Lokio/Source;", "timeout", "timeUnit", "filterList", "", "predicate", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "hasIntersection", "comparator", "Ljava/util/Comparator;", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z", "headersContentLength", "Lokhttp3/Response;", "indexOf", "([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I", "indexOfControlOrNonAscii", "indexOfFirstNonAsciiWhitespace", "indexOfLastNonAsciiWhitespace", "indexOfNonWhitespace", "intersect", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;", "isCivilized", "Lokhttp3/internal/io/FileSystem;", "file", "Ljava/io/File;", "isHealthy", Payload.SOURCE, "Lokio/BufferedSource;", "notify", "notifyAll", "parseHexDigit", "peerName", "readBomAsCharset", "Ljava/nio/charset/Charset;", "default", "readMedium", "skipAll", "Lokio/Buffer;", C15291b.f55271a, "toHeaderList", "Lokhttp3/internal/http2/Header;", "toHeaders", "toHexString", "toHostHeader", "includeDefaultPort", "toImmutableList", "toImmutableMap", "", "K", "V", "toLongOrDefault", "defaultValue", "toNonNegativeInt", "trimSubstring", "wait", "withSuppressed", "", "Ljava/lang/Exception;", "Lkotlin/Exception;", "suppressed", "writeMedium", "Lokio/BufferedSink;", "medium", "okhttp"}, m4297k = 2, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/Util.class */
public final class Util {
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final RequestBody EMPTY_REQUEST;
    public static final ResponseBody EMPTY_RESPONSE;
    private static final C3219s UNICODE_BOMS;
    public static final TimeZone UTC;
    public static final String okHttpName;
    public static final String userAgent = "okhttp/4.9.1";
    public static final Headers EMPTY_HEADERS = Headers.Companion.m615of(new String[0]);
    private static final C18418l VERIFY_AS_IP_ADDRESS = new C18418l("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    public static final boolean assertionsEnabled = false;

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        EMPTY_RESPONSE = ResponseBody.Companion.create$default(ResponseBody.Companion, bArr, (MediaType) null, 1, (Object) null);
        EMPTY_REQUEST = RequestBody.Companion.create$default(RequestBody.Companion, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        C3219s.C3220a c3220a = C3219s.f11603d;
        C3208i.C3209a c3209a = C3208i.f11583d;
        C3208i m39166c = C3208i.C3209a.m39166c("efbbbf");
        C3208i.C3209a c3209a2 = C3208i.f11583d;
        C3208i m39166c2 = C3208i.C3209a.m39166c("feff");
        C3208i.C3209a c3209a3 = C3208i.f11583d;
        C3208i m39166c3 = C3208i.C3209a.m39166c("fffe");
        C3208i.C3209a c3209a4 = C3208i.f11583d;
        C3208i m39166c4 = C3208i.C3209a.m39166c("0000ffff");
        C3208i.C3209a c3209a5 = C3208i.f11583d;
        UNICODE_BOMS = c3220a.m39146a(m39166c, m39166c2, m39166c3, m39166c4, C3208i.C3209a.m39166c("ffff0000"));
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        C18524p.m3851a(timeZone);
        UTC = timeZone;
        String name = OkHttpClient.class.getName();
        C18524p.m3843b(name, "OkHttpClient::class.java.name");
        String removeSuffix = C18425p.m3931a(name, (CharSequence) "okhttp3.");
        C18524p.m3840d(removeSuffix, "$this$removeSuffix");
        C18524p.m3840d(suffix, "suffix");
        String str = removeSuffix;
        if (C18425p.m3927b((CharSequence) removeSuffix, (CharSequence) suffix, false)) {
            str = removeSuffix.substring(0, removeSuffix.length() - suffix.length());
            C18524p.m3843b(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        okHttpName = str;
    }

    public static final <E> void addIfAbsent(List<E> addIfAbsent, E e) {
        C18524p.m3840d(addIfAbsent, "$this$addIfAbsent");
        if (!addIfAbsent.contains(e)) {
            addIfAbsent.add(e);
        }
    }

    public static final int and(byte b, int i) {
        return b & i;
    }

    public static final int and(short s, int i) {
        return s & i;
    }

    public static final long and(int i, long j) {
        return i & j;
    }

    public static final EventListener.Factory asFactory(final EventListener asFactory) {
        C18524p.m3840d(asFactory, "$this$asFactory");
        return new EventListener.Factory() { // from class: okhttp3.internal.Util$asFactory$1
            @Override // okhttp3.EventListener.Factory
            public final EventListener create(Call it2) {
                C18524p.m3840d(it2, "it");
                return EventListener.this;
            }
        };
    }

    public static final void assertThreadDoesntHoldLock(Object assertThreadDoesntHoldLock) {
        C18524p.m3840d(assertThreadDoesntHoldLock, "$this$assertThreadDoesntHoldLock");
        if (!assertionsEnabled || !Thread.holdsLock(assertThreadDoesntHoldLock)) {
            return;
        }
        StringBuilder sb = new StringBuilder("Thread ");
        Thread currentThread = Thread.currentThread();
        C18524p.m3843b(currentThread, "Thread.currentThread()");
        sb.append(currentThread.getName());
        sb.append(" MUST NOT hold lock on ");
        sb.append(assertThreadDoesntHoldLock);
        throw new AssertionError(sb.toString());
    }

    public static final void assertThreadHoldsLock(Object assertThreadHoldsLock) {
        C18524p.m3840d(assertThreadHoldsLock, "$this$assertThreadHoldsLock");
        if (!assertionsEnabled || Thread.holdsLock(assertThreadHoldsLock)) {
            return;
        }
        StringBuilder sb = new StringBuilder("Thread ");
        Thread currentThread = Thread.currentThread();
        C18524p.m3843b(currentThread, "Thread.currentThread()");
        sb.append(currentThread.getName());
        sb.append(" MUST hold lock on ");
        sb.append(assertThreadHoldsLock);
        throw new AssertionError(sb.toString());
    }

    public static final boolean canParseAsIpAddress(String canParseAsIpAddress) {
        C18524p.m3840d(canParseAsIpAddress, "$this$canParseAsIpAddress");
        return VERIFY_AS_IP_ADDRESS.m3986a(canParseAsIpAddress);
    }

    public static final boolean canReuseConnectionFor(HttpUrl canReuseConnectionFor, HttpUrl other) {
        C18524p.m3840d(canReuseConnectionFor, "$this$canReuseConnectionFor");
        C18524p.m3840d(other, "other");
        return C18524p.m3850a((Object) canReuseConnectionFor.host(), (Object) other.host()) && canReuseConnectionFor.port() == other.port() && C18524p.m3850a((Object) canReuseConnectionFor.scheme(), (Object) other.scheme());
    }

    public static final int checkDuration(String name, long j, TimeUnit timeUnit) {
        C18524p.m3840d(name, "name");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (!(i >= 0)) {
            throw new IllegalStateException((name + " < 0").toString());
        }
        if (!(timeUnit != null)) {
            throw new IllegalStateException("unit == null".toString());
        }
        long millis = timeUnit.toMillis(j);
        if (!(millis <= 2147483647L)) {
            throw new IllegalArgumentException((name + " too large.").toString());
        }
        boolean z = true;
        if (millis == 0) {
            z = i <= 0;
        }
        if (z) {
            return (int) millis;
        }
        throw new IllegalArgumentException((name + " too small.").toString());
    }

    public static final void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static final void closeQuietly(Closeable closeQuietly) {
        C18524p.m3840d(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
        }
    }

    public static final void closeQuietly(ServerSocket closeQuietly) {
        C18524p.m3840d(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
        }
    }

    public static final void closeQuietly(Socket closeQuietly) {
        C18524p.m3840d(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (AssertionError e) {
            throw e;
        } catch (RuntimeException e2) {
            if (!C18524p.m3850a((Object) e2.getMessage(), (Object) "bio == null")) {
                throw e2;
            }
        } catch (Exception e3) {
        }
    }

    public static final String[] concat(String[] concat, String value) {
        C18524p.m3840d(concat, "$this$concat");
        C18524p.m3840d(value, "value");
        Object[] copyOf = Arrays.copyOf(concat, concat.length + 1);
        C18524p.m3843b(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        String[] strArr = (String[]) copyOf;
        strArr[C18273i.m4184h(strArr)] = value;
        Objects.requireNonNull(strArr, "null cannot be cast to non-null type kotlin.Array<kotlin.String>");
        return strArr;
    }

    public static final int delimiterOffset(String delimiterOffset, char c, int i, int i2) {
        C18524p.m3840d(delimiterOffset, "$this$delimiterOffset");
        while (i < i2) {
            if (delimiterOffset.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static final int delimiterOffset(String delimiterOffset, String delimiters, int i, int i2) {
        C18524p.m3840d(delimiterOffset, "$this$delimiterOffset");
        C18524p.m3840d(delimiters, "delimiters");
        while (i < i2) {
            if (C18425p.m3928b((CharSequence) delimiters, delimiterOffset.charAt(i), false)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, char c, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = str.length();
        }
        return delimiterOffset(str, c, i, i2);
    }

    public static /* synthetic */ int delimiterOffset$default(String str, String str2, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = str.length();
        }
        return delimiterOffset(str, str2, i, i2);
    }

    public static final boolean discard(AbstractC3190ad discard, int i, TimeUnit timeUnit) {
        boolean z;
        C18524p.m3840d(discard, "$this$discard");
        C18524p.m3840d(timeUnit, "timeUnit");
        try {
            z = skipAll(discard, i, timeUnit);
        } catch (IOException e) {
            z = false;
        }
        return z;
    }

    public static final <T> List<T> filterList(Iterable<? extends T> filterList, Function1<? super T, Boolean> predicate) {
        C18524p.m3840d(filterList, "$this$filterList");
        C18524p.m3840d(predicate, "predicate");
        List list = C18297z.f63400a;
        Iterator<? extends T> it2 = filterList.iterator();
        while (it2.hasNext()) {
            Object obj = (T) it2.next();
            if (predicate.invoke(obj).booleanValue()) {
                List list2 = list;
                if (list.isEmpty()) {
                    list2 = new ArrayList();
                }
                Objects.requireNonNull(list2, "null cannot be cast to non-null type kotlin.collections.MutableList<T>");
                C18501ah.m3872c(list2).add(obj);
                list = list2;
            }
        }
        return list;
    }

    public static final String format(String format, Object... args) {
        C18524p.m3840d(format, "format");
        C18524p.m3840d(args, "args");
        C18500ag c18500ag = C18500ag.f63594a;
        Locale locale = Locale.US;
        Object[] copyOf = Arrays.copyOf(args, args.length);
        String format2 = String.format(locale, format, Arrays.copyOf(copyOf, copyOf.length));
        C18524p.m3843b(format2, "java.lang.String.format(locale, format, *args)");
        return format2;
    }

    public static final boolean hasIntersection(String[] hasIntersection, String[] strArr, Comparator<? super String> comparator) {
        C18524p.m3840d(hasIntersection, "$this$hasIntersection");
        C18524p.m3840d(comparator, "comparator");
        if ((hasIntersection.length == 0) || strArr == null) {
            return false;
        }
        if (strArr.length == 0) {
            return false;
        }
        for (String str : hasIntersection) {
            for (String str2 : strArr) {
                if (comparator.compare(str, str2) == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public static final long headersContentLength(Response headersContentLength) {
        C18524p.m3840d(headersContentLength, "$this$headersContentLength");
        String str = headersContentLength.headers().get("Content-Length");
        char c = 65535;
        if (str != null) {
            c = toLongOrDefault(str, -1L);
        }
        return c;
    }

    public static final void ignoreIoExceptions(Function0<C20128v> block) {
        C18524p.m3840d(block, "block");
        try {
            block.invoke();
        } catch (IOException e) {
        }
    }

    @SafeVarargs
    public static final <T> List<T> immutableListOf(T... elements) {
        C18524p.m3840d(elements, "elements");
        Object[] objArr = (Object[]) elements.clone();
        List<T> unmodifiableList = Collections.unmodifiableList(C18282n.m4167b(Arrays.copyOf(objArr, objArr.length)));
        C18524p.m3843b(unmodifiableList, "Collections.unmodifiable…istOf(*elements.clone()))");
        return unmodifiableList;
    }

    public static final int indexOf(String[] indexOf, String value, Comparator<String> comparator) {
        C18524p.m3840d(indexOf, "$this$indexOf");
        C18524p.m3840d(value, "value");
        C18524p.m3840d(comparator, "comparator");
        int length = indexOf.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(indexOf[i], value) == 0) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOfControlOrNonAscii(String indexOfControlOrNonAscii) {
        C18524p.m3840d(indexOfControlOrNonAscii, "$this$indexOfControlOrNonAscii");
        int length = indexOfControlOrNonAscii.length();
        for (int i = 0; i < length; i++) {
            char charAt = indexOfControlOrNonAscii.charAt(i);
            if (C18524p.m3854a(charAt, 31) <= 0 || C18524p.m3854a(charAt, 127) >= 0) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOfFirstNonAsciiWhitespace(String indexOfFirstNonAsciiWhitespace, int i, int i2) {
        C18524p.m3840d(indexOfFirstNonAsciiWhitespace, "$this$indexOfFirstNonAsciiWhitespace");
        while (i < i2) {
            char charAt = indexOfFirstNonAsciiWhitespace.charAt(i);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static /* synthetic */ int indexOfFirstNonAsciiWhitespace$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return indexOfFirstNonAsciiWhitespace(str, i, i2);
    }

    public static final int indexOfLastNonAsciiWhitespace(String indexOfLastNonAsciiWhitespace, int i, int i2) {
        C18524p.m3840d(indexOfLastNonAsciiWhitespace, "$this$indexOfLastNonAsciiWhitespace");
        int i3 = i2 - 1;
        if (i3 >= i) {
            while (true) {
                char charAt = indexOfLastNonAsciiWhitespace.charAt(i3);
                if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                    return i3 + 1;
                }
                if (i3 == i) {
                    break;
                }
                i3--;
            }
        }
        return i;
    }

    public static /* synthetic */ int indexOfLastNonAsciiWhitespace$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return indexOfLastNonAsciiWhitespace(str, i, i2);
    }

    public static final int indexOfNonWhitespace(String indexOfNonWhitespace, int i) {
        C18524p.m3840d(indexOfNonWhitespace, "$this$indexOfNonWhitespace");
        int length = indexOfNonWhitespace.length();
        while (i < length) {
            char charAt = indexOfNonWhitespace.charAt(i);
            if (charAt != ' ' && charAt != '\t') {
                return i;
            }
            i++;
        }
        return indexOfNonWhitespace.length();
    }

    public static /* synthetic */ int indexOfNonWhitespace$default(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return indexOfNonWhitespace(str, i);
    }

    public static final String[] intersect(String[] intersect, String[] other, Comparator<? super String> comparator) {
        C18524p.m3840d(intersect, "$this$intersect");
        C18524p.m3840d(other, "other");
        C18524p.m3840d(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        for (String str : intersect) {
            int length = other.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (comparator.compare(str, other[i]) == 0) {
                    arrayList.add(str);
                    break;
                } else {
                    i++;
                }
            }
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return (String[]) array;
    }

    /* JADX WARN: Finally extract failed */
    public static final boolean isCivilized(FileSystem isCivilized, File file) {
        C18524p.m3840d(isCivilized, "$this$isCivilized");
        C18524p.m3840d(file, "file");
        AbstractC3188ab sink = isCivilized.sink(file);
        try {
            try {
                isCivilized.delete(file);
                C18442b.m3909a(sink, null);
                return true;
            } catch (IOException e) {
                C20128v c20128v = C20128v.f66529a;
                C18442b.m3909a(sink, null);
                isCivilized.delete(file);
                return false;
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                C18442b.m3909a(sink, th);
                throw th2;
            }
        }
    }

    public static final boolean isHealthy(Socket isHealthy, AbstractC3207h source) {
        C18524p.m3840d(isHealthy, "$this$isHealthy");
        C18524p.m3840d(source, "source");
        boolean z = true;
        try {
            int soTimeout = isHealthy.getSoTimeout();
            try {
                isHealthy.setSoTimeout(1);
                z = !source.mo39119e();
            } finally {
                isHealthy.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException e) {
        } catch (IOException e2) {
            z = false;
        }
        return z;
    }

    public static final void notify(Object notify) {
        C18524p.m3840d(notify, "$this$notify");
        notify.notify();
    }

    public static final void notifyAll(Object notifyAll) {
        C18524p.m3840d(notifyAll, "$this$notifyAll");
        notifyAll.notifyAll();
    }

    public static final int parseHexDigit(char c) {
        if ('0' <= c && '9' >= c) {
            return c - '0';
        }
        char c2 = 'a';
        if ('a' > c || 'f' < c) {
            c2 = 'A';
            if ('A' > c || 'F' < c) {
                return -1;
            }
        }
        return (c - c2) + 10;
    }

    public static final String peerName(Socket peerName) {
        C18524p.m3840d(peerName, "$this$peerName");
        SocketAddress remoteSocketAddress = peerName.getRemoteSocketAddress();
        if (remoteSocketAddress instanceof InetSocketAddress) {
            String hostName = ((InetSocketAddress) remoteSocketAddress).getHostName();
            C18524p.m3843b(hostName, "address.hostName");
            return hostName;
        }
        return remoteSocketAddress.toString();
    }

    public static final Charset readBomAsCharset(AbstractC3207h readBomAsCharset, Charset charset) throws IOException {
        C18524p.m3840d(readBomAsCharset, "$this$readBomAsCharset");
        C18524p.m3840d(charset, "default");
        int mo39127a = readBomAsCharset.mo39127a(UNICODE_BOMS);
        if (mo39127a != -1) {
            if (mo39127a == 0) {
                Charset UTF_8 = StandardCharsets.UTF_8;
                C18524p.m3843b(UTF_8, "UTF_8");
                return UTF_8;
            } else if (mo39127a == 1) {
                Charset UTF_16BE = StandardCharsets.UTF_16BE;
                C18524p.m3843b(UTF_16BE, "UTF_16BE");
                return UTF_16BE;
            } else if (mo39127a == 2) {
                Charset UTF_16LE = StandardCharsets.UTF_16LE;
                C18524p.m3843b(UTF_16LE, "UTF_16LE");
                return UTF_16LE;
            } else if (mo39127a == 3) {
                C18405d c18405d = C18405d.f63524i;
                Charset charset2 = C18405d.f63523h;
                Charset charset3 = charset2;
                if (charset2 == null) {
                    charset3 = Charset.forName("UTF-32BE");
                    C18524p.m3843b(charset3, "Charset.forName(\"UTF-32BE\")");
                    C18405d.f63523h = charset3;
                }
                return charset3;
            } else if (mo39127a != 4) {
                throw new AssertionError();
            } else {
                C18405d c18405d2 = C18405d.f63524i;
                Charset charset4 = C18405d.f63522g;
                Charset charset5 = charset4;
                if (charset4 == null) {
                    charset5 = Charset.forName("UTF-32LE");
                    C18524p.m3843b(charset5, "Charset.forName(\"UTF-32LE\")");
                    C18405d.f63522g = charset5;
                }
                return charset5;
            }
        }
        return charset;
    }

    public static final <T> T readFieldOrNull(Object obj, Class<T> fieldType, String fieldName) {
        do {
            Object instance = obj;
            C18524p.m3840d(instance, "instance");
            C18524p.m3840d(fieldType, "fieldType");
            C18524p.m3840d(fieldName, "fieldName");
            Class<? super Object> cls = obj.getClass();
            while (!C18524p.m3850a(cls, Object.class)) {
                try {
                    Field field = cls.getDeclaredField(fieldName);
                    C18524p.m3843b(field, "field");
                    field.setAccessible(true);
                    Object obj2 = field.get(obj);
                    if (fieldType.isInstance(obj2)) {
                        return fieldType.cast(obj2);
                    }
                    return null;
                } catch (NoSuchFieldException e) {
                    cls = cls.getSuperclass();
                    C18524p.m3843b(cls, "c.superclass");
                }
            }
            if (!(!C18524p.m3850a((Object) fieldName, (Object) "delegate"))) {
                return null;
            }
            obj = readFieldOrNull(obj, Object.class, "delegate");
        } while (obj != null);
        return null;
    }

    public static final int readMedium(AbstractC3207h readMedium) throws IOException {
        C18524p.m3840d(readMedium, "$this$readMedium");
        return and(readMedium.mo39113i(), 255) | (and(readMedium.mo39113i(), 255) << 16) | (and(readMedium.mo39113i(), 255) << 8);
    }

    public static final int skipAll(C3202f skipAll, byte b) {
        C18524p.m3840d(skipAll, "$this$skipAll");
        int i = 0;
        while (!skipAll.mo39119e() && skipAll.m39207c(0L) == b) {
            i++;
            skipAll.mo39113i();
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    public static final boolean skipAll(AbstractC3190ad skipAll, int i, TimeUnit timeUnit) throws IOException {
        boolean z;
        C18524p.m3840d(skipAll, "$this$skipAll");
        C18524p.m3840d(timeUnit, "timeUnit");
        long nanoTime = System.nanoTime();
        char deadlineNanoTime = skipAll.timeout().hasDeadline() ? skipAll.timeout().deadlineNanoTime() - nanoTime : (char) 65535;
        skipAll.timeout().deadlineNanoTime(Math.min((long) deadlineNanoTime, timeUnit.toNanos(i)) + nanoTime);
        try {
            C3202f c3202f = new C3202f();
            while (skipAll.read(c3202f, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                c3202f.m39192u();
            }
            z = true;
        } catch (InterruptedIOException e) {
            z = false;
            if (deadlineNanoTime == Long.MAX_VALUE) {
                z = false;
            }
        } catch (Throwable th) {
            if (deadlineNanoTime == Long.MAX_VALUE) {
                skipAll.timeout().clearDeadline();
            } else {
                skipAll.timeout().deadlineNanoTime(nanoTime + deadlineNanoTime);
            }
            throw th;
        }
        if (deadlineNanoTime == Long.MAX_VALUE) {
            z = true;
            skipAll.timeout().clearDeadline();
            return z;
        }
        skipAll.timeout().deadlineNanoTime(nanoTime + deadlineNanoTime);
        return z;
    }

    public static final ThreadFactory threadFactory(final String name, final boolean z) {
        C18524p.m3840d(name, "name");
        return new ThreadFactory() { // from class: okhttp3.internal.Util$threadFactory$1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, name);
                thread.setDaemon(z);
                return thread;
            }
        };
    }

    public static final void threadName(String name, Function0<C20128v> block) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(block, "block");
        Thread currentThread = Thread.currentThread();
        C18524p.m3843b(currentThread, "currentThread");
        String name2 = currentThread.getName();
        currentThread.setName(name);
        try {
            block.invoke();
        } finally {
            currentThread.setName(name2);
        }
    }

    public static final List<Header> toHeaderList(Headers toHeaderList) {
        C18524p.m3840d(toHeaderList, "$this$toHeaderList");
        C18361c b = C18363d.m4052b(0, toHeaderList.size());
        ArrayList arrayList = new ArrayList(C18282n.m4163a(b, 10));
        Iterator<Integer> it2 = b.iterator();
        while (it2.hasNext()) {
            int mo4059a = ((AbstractC18245ag) it2).mo4059a();
            arrayList.add(new Header(toHeaderList.name(mo4059a), toHeaderList.value(mo4059a)));
        }
        return arrayList;
    }

    public static final Headers toHeaders(List<Header> toHeaders) {
        C18524p.m3840d(toHeaders, "$this$toHeaders");
        Headers.Builder builder = new Headers.Builder();
        for (Header header : toHeaders) {
            builder.addLenient$okhttp(header.component1().m39179b(), header.component2().m39179b());
        }
        return builder.build();
    }

    public static final String toHexString(int i) {
        String hexString = Integer.toHexString(i);
        C18524p.m3843b(hexString, "Integer.toHexString(this)");
        return hexString;
    }

    public static final String toHexString(long j) {
        String hexString = Long.toHexString(j);
        C18524p.m3843b(hexString, "java.lang.Long.toHexString(this)");
        return hexString;
    }

    public static final String toHostHeader(HttpUrl toHostHeader, boolean z) {
        String str;
        C18524p.m3840d(toHostHeader, "$this$toHostHeader");
        if (C18425p.m3919c((CharSequence) toHostHeader.host(), (CharSequence) ":", false)) {
            str = "[" + toHostHeader.host() + ']';
        } else {
            str = toHostHeader.host();
        }
        if (z || toHostHeader.port() != HttpUrl.Companion.defaultPort(toHostHeader.scheme())) {
            return str + ':' + toHostHeader.port();
        }
        return str;
    }

    public static /* synthetic */ String toHostHeader$default(HttpUrl httpUrl, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return toHostHeader(httpUrl, z);
    }

    public static final <T> List<T> toImmutableList(List<? extends T> toImmutableList) {
        C18524p.m3840d(toImmutableList, "$this$toImmutableList");
        List<T> unmodifiableList = Collections.unmodifiableList(C18282n.m4125d((Collection) toImmutableList));
        C18524p.m3843b(unmodifiableList, "Collections.unmodifiableList(toMutableList())");
        return unmodifiableList;
    }

    public static final <K, V> Map<K, V> toImmutableMap(Map<K, ? extends V> toImmutableMap) {
        C18524p.m3840d(toImmutableMap, "$this$toImmutableMap");
        if (toImmutableMap.isEmpty()) {
            return C18247ai.m4257a();
        }
        Map<K, V> unmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(toImmutableMap));
        C18524p.m3843b(unmodifiableMap, "Collections.unmodifiableMap(LinkedHashMap(this))");
        return unmodifiableMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r4v0, types: [long] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    public static final long toLongOrDefault(String toLongOrDefault, long j) {
        C18524p.m3840d(toLongOrDefault, "$this$toLongOrDefault");
        try {
            j = Long.parseLong(toLongOrDefault);
        } catch (NumberFormatException e) {
        }
        return j;
    }

    public static final int toNonNegativeInt(String str, int i) {
        int i2 = i;
        if (str != null) {
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong > 2147483647L) {
                    return Integer.MAX_VALUE;
                }
                if (parseLong < 0) {
                    return 0;
                }
                i2 = (int) parseLong;
            } catch (NumberFormatException e) {
                i2 = i;
            }
        }
        return i2;
    }

    public static final String trimSubstring(String trimSubstring, int i, int i2) {
        C18524p.m3840d(trimSubstring, "$this$trimSubstring");
        int indexOfFirstNonAsciiWhitespace = indexOfFirstNonAsciiWhitespace(trimSubstring, i, i2);
        String substring = trimSubstring.substring(indexOfFirstNonAsciiWhitespace, indexOfLastNonAsciiWhitespace(trimSubstring, indexOfFirstNonAsciiWhitespace, i2));
        C18524p.m3843b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String trimSubstring$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return trimSubstring(str, i, i2);
    }

    public static final void wait(Object wait) {
        C18524p.m3840d(wait, "$this$wait");
        wait.wait();
    }

    public static final Throwable withSuppressed(Exception withSuppressed, List<? extends Exception> suppressed) {
        C18524p.m3840d(withSuppressed, "$this$withSuppressed");
        C18524p.m3840d(suppressed, "suppressed");
        if (suppressed.size() > 1) {
            System.out.println(suppressed);
        }
        for (Exception exc : suppressed) {
            C18298b.m4101a(withSuppressed, exc);
        }
        return withSuppressed;
    }

    public static final void writeMedium(AbstractC3206g writeMedium, int i) throws IOException {
        C18524p.m3840d(writeMedium, "$this$writeMedium");
        writeMedium.mo39141c((i >>> 16) & 255);
        writeMedium.mo39141c((i >>> 8) & 255);
        writeMedium.mo39141c(i & 255);
    }
}
