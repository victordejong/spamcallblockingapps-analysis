package okhttp3.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import c.ab;
import c.ad;
import c.f;
import c.g;
import c.h;
import c.i;
import c.s;
import com.appsflyer.internal.referrer.Payload;
import com.google.api.client.googleapis.notifications.b;
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
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.f.c;
import kotlin.h.d;
import kotlin.h.l;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.ah;
import kotlin.jvm.internal.p;
import kotlin.v;
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
import okhttp3.internal.io.FileSystem;
@Metadata(bv = {1, 0, 3}, d1 = {"��¸\u0002\n��\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u0005\n��\n\u0002\u0010\n\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\f\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001c\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u001a\u001e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u0017\u001a'\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u00112\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020\"0!\"\u00020\"¢\u0006\u0002\u0010#\u001a\u001a\u0010$\u001a\u00020\u001b2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001b0&H\u0086\bø\u0001��\u001a-\u0010'\u001a\b\u0012\u0004\u0012\u0002H)0(\"\u0004\b��\u0010)2\u0012\u0010*\u001a\n\u0012\u0006\b\u0001\u0012\u0002H)0!\"\u0002H)H\u0007¢\u0006\u0002\u0010+\u001a1\u0010,\u001a\u0004\u0018\u0001H)\"\u0004\b��\u0010)2\u0006\u0010-\u001a\u00020\"2\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H)0/2\u0006\u00100\u001a\u00020\u0011¢\u0006\u0002\u00101\u001a\u0016\u00102\u001a\u0002032\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u00104\u001a\u00020\u000f\u001a\"\u00105\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u00112\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001b0&H\u0086\bø\u0001��\u001a%\u00106\u001a\u00020\u001b\"\u0004\b��\u00107*\b\u0012\u0004\u0012\u0002H7082\u0006\u00109\u001a\u0002H7H��¢\u0006\u0002\u0010:\u001a\u0015\u0010;\u001a\u00020\u0014*\u00020<2\u0006\u0010=\u001a\u00020\u0014H\u0086\u0004\u001a\u0015\u0010;\u001a\u00020\u0017*\u00020\u00142\u0006\u0010=\u001a\u00020\u0017H\u0086\u0004\u001a\u0015\u0010;\u001a\u00020\u0014*\u00020>2\u0006\u0010=\u001a\u00020\u0014H\u0086\u0004\u001a\n\u0010?\u001a\u00020@*\u00020A\u001a\r\u0010B\u001a\u00020\u001b*\u00020\"H\u0080\b\u001a\r\u0010C\u001a\u00020\u001b*\u00020\"H\u0080\b\u001a\n\u0010D\u001a\u00020\u000f*\u00020\u0011\u001a\u0012\u0010E\u001a\u00020\u000f*\u00020F2\u0006\u0010G\u001a\u00020F\u001a\n\u0010H\u001a\u00020\u001b*\u00020I\u001a\n\u0010H\u001a\u00020\u001b*\u00020J\u001a\n\u0010H\u001a\u00020\u001b*\u00020K\u001a#\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00110!*\b\u0012\u0004\u0012\u00020\u00110!2\u0006\u0010M\u001a\u00020\u0011¢\u0006\u0002\u0010N\u001a&\u0010O\u001a\u00020\u0014*\u00020\u00112\u0006\u0010P\u001a\u00020Q2\b\b\u0002\u0010R\u001a\u00020\u00142\b\b\u0002\u0010S\u001a\u00020\u0014\u001a&\u0010O\u001a\u00020\u0014*\u00020\u00112\u0006\u0010T\u001a\u00020\u00112\b\b\u0002\u0010R\u001a\u00020\u00142\b\b\u0002\u0010S\u001a\u00020\u0014\u001a\u001a\u0010U\u001a\u00020\u000f*\u00020V2\u0006\u0010W\u001a\u00020\u00142\u0006\u0010X\u001a\u00020\u0019\u001a;\u0010Y\u001a\b\u0012\u0004\u0012\u0002H)0(\"\u0004\b��\u0010)*\b\u0012\u0004\u0012\u0002H)0Z2\u0017\u0010[\u001a\u0013\u0012\u0004\u0012\u0002H)\u0012\u0004\u0012\u00020\u000f0\\¢\u0006\u0002\b]H\u0086\bø\u0001��\u001a5\u0010^\u001a\u00020\u000f*\b\u0012\u0004\u0012\u00020\u00110!2\u000e\u0010G\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010!2\u000e\u0010_\u001a\n\u0012\u0006\b��\u0012\u00020\u00110`¢\u0006\u0002\u0010a\u001a\n\u0010b\u001a\u00020\u0017*\u00020c\u001a+\u0010d\u001a\u00020\u0014*\b\u0012\u0004\u0012\u00020\u00110!2\u0006\u0010M\u001a\u00020\u00112\f\u0010_\u001a\b\u0012\u0004\u0012\u00020\u00110`¢\u0006\u0002\u0010e\u001a\n\u0010f\u001a\u00020\u0014*\u00020\u0011\u001a\u001e\u0010g\u001a\u00020\u0014*\u00020\u00112\b\b\u0002\u0010R\u001a\u00020\u00142\b\b\u0002\u0010S\u001a\u00020\u0014\u001a\u001e\u0010h\u001a\u00020\u0014*\u00020\u00112\b\b\u0002\u0010R\u001a\u00020\u00142\b\b\u0002\u0010S\u001a\u00020\u0014\u001a\u0014\u0010i\u001a\u00020\u0014*\u00020\u00112\b\b\u0002\u0010R\u001a\u00020\u0014\u001a9\u0010j\u001a\b\u0012\u0004\u0012\u00020\u00110!*\b\u0012\u0004\u0012\u00020\u00110!2\f\u0010G\u001a\b\u0012\u0004\u0012\u00020\u00110!2\u000e\u0010_\u001a\n\u0012\u0006\b��\u0012\u00020\u00110`¢\u0006\u0002\u0010k\u001a\u0012\u0010l\u001a\u00020\u000f*\u00020m2\u0006\u0010n\u001a\u00020o\u001a\u0012\u0010p\u001a\u00020\u000f*\u00020K2\u0006\u0010q\u001a\u00020r\u001a\r\u0010s\u001a\u00020\u001b*\u00020\"H\u0086\b\u001a\r\u0010t\u001a\u00020\u001b*\u00020\"H\u0086\b\u001a\n\u0010u\u001a\u00020\u0014*\u00020Q\u001a\n\u0010v\u001a\u00020\u0011*\u00020K\u001a\u0012\u0010w\u001a\u00020x*\u00020r2\u0006\u0010y\u001a\u00020x\u001a\n\u0010z\u001a\u00020\u0014*\u00020r\u001a\u0012\u0010{\u001a\u00020\u0014*\u00020|2\u0006\u0010}\u001a\u00020<\u001a\u001a\u0010{\u001a\u00020\u000f*\u00020V2\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010X\u001a\u00020\u0019\u001a\u0010\u0010~\u001a\b\u0012\u0004\u0012\u00020\u007f0(*\u00020\u0003\u001a\u0011\u0010\u0080\u0001\u001a\u00020\u0003*\b\u0012\u0004\u0012\u00020\u007f0(\u001a\u000b\u0010\u0081\u0001\u001a\u00020\u0011*\u00020\u0014\u001a\u000b\u0010\u0081\u0001\u001a\u00020\u0011*\u00020\u0017\u001a\u0016\u0010\u0082\u0001\u001a\u00020\u0011*\u00020F2\t\b\u0002\u0010\u0083\u0001\u001a\u00020\u000f\u001a\u001d\u0010\u0084\u0001\u001a\b\u0012\u0004\u0012\u0002H)0(\"\u0004\b��\u0010)*\b\u0012\u0004\u0012\u0002H)0(\u001a7\u0010\u0085\u0001\u001a\u0011\u0012\u0005\u0012\u0003H\u0087\u0001\u0012\u0005\u0012\u0003H\u0088\u00010\u0086\u0001\"\u0005\b��\u0010\u0087\u0001\"\u0005\b\u0001\u0010\u0088\u0001*\u0011\u0012\u0005\u0012\u0003H\u0087\u0001\u0012\u0005\u0012\u0003H\u0088\u00010\u0086\u0001\u001a\u0014\u0010\u0089\u0001\u001a\u00020\u0017*\u00020\u00112\u0007\u0010\u008a\u0001\u001a\u00020\u0017\u001a\u0016\u0010\u008b\u0001\u001a\u00020\u0014*\u0004\u0018\u00010\u00112\u0007\u0010\u008a\u0001\u001a\u00020\u0014\u001a\u001f\u0010\u008c\u0001\u001a\u00020\u0011*\u00020\u00112\b\b\u0002\u0010R\u001a\u00020\u00142\b\b\u0002\u0010S\u001a\u00020\u0014\u001a\u000e\u0010\u008d\u0001\u001a\u00020\u001b*\u00020\"H\u0086\b\u001a'\u0010\u008e\u0001\u001a\u00030\u008f\u0001*\b0\u0090\u0001j\u0003`\u0091\u00012\u0013\u0010\u0092\u0001\u001a\u000e\u0012\n\u0012\b0\u0090\u0001j\u0003`\u0091\u00010(\u001a\u0015\u0010\u0093\u0001\u001a\u00020\u001b*\u00030\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u00020\u0014\"\u0010\u0010��\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u0002\n��\"\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��\"\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n��\"\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n��\"\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��\"\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n��\"\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��\"\u0010\u0010\u000e\u001a\u00020\u000f8��X\u0081\u0004¢\u0006\u0002\n��\"\u0010\u0010\u0010\u001a\u00020\u00118��X\u0081\u0004¢\u0006\u0002\n��\"\u000e\u0010\u0012\u001a\u00020\u0011X\u0086T¢\u0006\u0002\n��\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0096\u0001"}, d2 = {"EMPTY_BYTE_ARRAY", "", "EMPTY_HEADERS", "Lokhttp3/Headers;", "EMPTY_REQUEST", "Lokhttp3/RequestBody;", "EMPTY_RESPONSE", "Lokhttp3/ResponseBody;", "UNICODE_BOMS", "Lokio/Options;", "UTC", "Ljava/util/TimeZone;", "VERIFY_AS_IP_ADDRESS", "Lkotlin/text/Regex;", "assertionsEnabled", "", "okHttpName", "", "userAgent", "checkDuration", "", "name", VastIconXmlManager.DURATION, "", "unit", "Ljava/util/concurrent/TimeUnit;", "checkOffsetAndCount", "", "arrayLength", VastIconXmlManager.OFFSET, "count", "format", "args", "", "", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "ignoreIoExceptions", "block", "Lkotlin/Function0;", "immutableListOf", "", "T", "elements", "([Ljava/lang/Object;)Ljava/util/List;", "readFieldOrNull", "instance", "fieldType", "Ljava/lang/Class;", "fieldName", "(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;", "threadFactory", "Ljava/util/concurrent/ThreadFactory;", "daemon", "threadName", "addIfAbsent", "E", "", "element", "(Ljava/util/List;Ljava/lang/Object;)V", "and", "", "mask", "", "asFactory", "Lokhttp3/EventListener$Factory;", "Lokhttp3/EventListener;", "assertThreadDoesntHoldLock", "assertThreadHoldsLock", "canParseAsIpAddress", "canReuseConnectionFor", "Lokhttp3/HttpUrl;", "other", "closeQuietly", "Ljava/io/Closeable;", "Ljava/net/ServerSocket;", "Ljava/net/Socket;", "concat", "value", "([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;", "delimiterOffset", "delimiter", "", "startIndex", "endIndex", "delimiters", "discard", "Lokio/Source;", "timeout", "timeUnit", "filterList", "", "predicate", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "hasIntersection", "comparator", "Ljava/util/Comparator;", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z", "headersContentLength", "Lokhttp3/Response;", "indexOf", "([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I", "indexOfControlOrNonAscii", "indexOfFirstNonAsciiWhitespace", "indexOfLastNonAsciiWhitespace", "indexOfNonWhitespace", "intersect", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;", "isCivilized", "Lokhttp3/internal/io/FileSystem;", "file", "Ljava/io/File;", "isHealthy", Payload.SOURCE, "Lokio/BufferedSource;", "notify", "notifyAll", "parseHexDigit", "peerName", "readBomAsCharset", "Ljava/nio/charset/Charset;", "default", "readMedium", "skipAll", "Lokio/Buffer;", b.f31754a, "toHeaderList", "Lokhttp3/internal/http2/Header;", "toHeaders", "toHexString", "toHostHeader", "includeDefaultPort", "toImmutableList", "toImmutableMap", "", "K", "V", "toLongOrDefault", "defaultValue", "toNonNegativeInt", "trimSubstring", "wait", "withSuppressed", "", "Ljava/lang/Exception;", "Lkotlin/Exception;", "suppressed", "writeMedium", "Lokio/BufferedSink;", "medium", "okhttp"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/Util.class */
public final class Util {
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final RequestBody EMPTY_REQUEST;
    public static final ResponseBody EMPTY_RESPONSE;
    private static final s UNICODE_BOMS;
    public static final TimeZone UTC;
    public static final String okHttpName;
    public static final String userAgent = "okhttp/4.9.1";
    public static final Headers EMPTY_HEADERS = Headers.Companion.of(new String[0]);
    private static final l VERIFY_AS_IP_ADDRESS = new l("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    public static final boolean assertionsEnabled = false;

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        EMPTY_RESPONSE = ResponseBody.Companion.create$default(ResponseBody.Companion, bArr, (MediaType) null, 1, (Object) null);
        EMPTY_REQUEST = RequestBody.Companion.create$default(RequestBody.Companion, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        s.a aVar = s.f6315d;
        i.a aVar2 = i.f6297d;
        i c2 = i.a.c("efbbbf");
        i.a aVar3 = i.f6297d;
        i c3 = i.a.c("feff");
        i.a aVar4 = i.f6297d;
        i c4 = i.a.c("fffe");
        i.a aVar5 = i.f6297d;
        i c5 = i.a.c("0000ffff");
        i.a aVar6 = i.f6297d;
        UNICODE_BOMS = aVar.a(c2, c3, c4, c5, i.a.c("ffff0000"));
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        p.a(timeZone);
        UTC = timeZone;
        String name = OkHttpClient.class.getName();
        p.b(name, "OkHttpClient::class.java.name");
        String removeSuffix = kotlin.h.p.a(name, (CharSequence) "okhttp3.");
        p.d(removeSuffix, "$this$removeSuffix");
        p.d(suffix, "suffix");
        String str = removeSuffix;
        if (kotlin.h.p.b((CharSequence) removeSuffix, (CharSequence) suffix, false)) {
            str = removeSuffix.substring(0, removeSuffix.length() - suffix.length());
            p.b(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        okHttpName = str;
    }

    public static final <E> void addIfAbsent(List<E> addIfAbsent, E e) {
        p.d(addIfAbsent, "$this$addIfAbsent");
        if (!addIfAbsent.contains(e)) {
            addIfAbsent.add(e);
        }
    }

    public static final int and(byte b2, int i) {
        return b2 & i;
    }

    public static final int and(short s, int i) {
        return s & i;
    }

    public static final long and(int i, long j) {
        return i & j;
    }

    public static final EventListener.Factory asFactory(final EventListener asFactory) {
        p.d(asFactory, "$this$asFactory");
        return new EventListener.Factory() { // from class: okhttp3.internal.Util$asFactory$1
            @Override // okhttp3.EventListener.Factory
            public final EventListener create(Call it2) {
                p.d(it2, "it");
                return EventListener.this;
            }
        };
    }

    public static final void assertThreadDoesntHoldLock(Object assertThreadDoesntHoldLock) {
        p.d(assertThreadDoesntHoldLock, "$this$assertThreadDoesntHoldLock");
        if (assertionsEnabled && Thread.holdsLock(assertThreadDoesntHoldLock)) {
            StringBuilder sb = new StringBuilder("Thread ");
            Thread currentThread = Thread.currentThread();
            p.b(currentThread, "Thread.currentThread()");
            sb.append(currentThread.getName());
            sb.append(" MUST NOT hold lock on ");
            sb.append(assertThreadDoesntHoldLock);
            throw new AssertionError(sb.toString());
        }
    }

    public static final void assertThreadHoldsLock(Object assertThreadHoldsLock) {
        p.d(assertThreadHoldsLock, "$this$assertThreadHoldsLock");
        if (assertionsEnabled && !Thread.holdsLock(assertThreadHoldsLock)) {
            StringBuilder sb = new StringBuilder("Thread ");
            Thread currentThread = Thread.currentThread();
            p.b(currentThread, "Thread.currentThread()");
            sb.append(currentThread.getName());
            sb.append(" MUST hold lock on ");
            sb.append(assertThreadHoldsLock);
            throw new AssertionError(sb.toString());
        }
    }

    public static final boolean canParseAsIpAddress(String canParseAsIpAddress) {
        p.d(canParseAsIpAddress, "$this$canParseAsIpAddress");
        return VERIFY_AS_IP_ADDRESS.a(canParseAsIpAddress);
    }

    public static final boolean canReuseConnectionFor(HttpUrl canReuseConnectionFor, HttpUrl other) {
        p.d(canReuseConnectionFor, "$this$canReuseConnectionFor");
        p.d(other, "other");
        return p.a((Object) canReuseConnectionFor.host(), (Object) other.host()) && canReuseConnectionFor.port() == other.port() && p.a((Object) canReuseConnectionFor.scheme(), (Object) other.scheme());
    }

    public static final int checkDuration(String name, long j, TimeUnit timeUnit) {
        p.d(name, "name");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (timeUnit != null) {
                long millis = timeUnit.toMillis(j);
                if (millis <= 2147483647L) {
                    boolean z = true;
                    if (millis == 0) {
                        z = i <= 0;
                    }
                    if (z) {
                        return (int) millis;
                    }
                    throw new IllegalArgumentException((name + " too small.").toString());
                }
                throw new IllegalArgumentException((name + " too large.").toString());
            }
            throw new IllegalStateException("unit == null".toString());
        }
        throw new IllegalStateException((name + " < 0").toString());
    }

    public static final void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static final void closeQuietly(Closeable closeQuietly) {
        p.d(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
        }
    }

    public static final void closeQuietly(ServerSocket closeQuietly) {
        p.d(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
        }
    }

    public static final void closeQuietly(Socket closeQuietly) {
        p.d(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (AssertionError e) {
            throw e;
        } catch (RuntimeException e2) {
            if (!p.a((Object) e2.getMessage(), (Object) "bio == null")) {
                throw e2;
            }
        } catch (Exception e3) {
        }
    }

    public static final String[] concat(String[] concat, String value) {
        p.d(concat, "$this$concat");
        p.d(value, "value");
        Object[] copyOf = Arrays.copyOf(concat, concat.length + 1);
        p.b(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        String[] strArr = (String[]) copyOf;
        strArr[kotlin.a.i.h(strArr)] = value;
        Objects.requireNonNull(strArr, "null cannot be cast to non-null type kotlin.Array<kotlin.String>");
        return strArr;
    }

    public static final int delimiterOffset(String delimiterOffset, char c2, int i, int i2) {
        p.d(delimiterOffset, "$this$delimiterOffset");
        while (i < i2) {
            if (delimiterOffset.charAt(i) == c2) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static final int delimiterOffset(String delimiterOffset, String delimiters, int i, int i2) {
        p.d(delimiterOffset, "$this$delimiterOffset");
        p.d(delimiters, "delimiters");
        while (i < i2) {
            if (kotlin.h.p.b((CharSequence) delimiters, delimiterOffset.charAt(i), false)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, char c2, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = str.length();
        }
        return delimiterOffset(str, c2, i, i2);
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

    public static final boolean discard(ad discard, int i, TimeUnit timeUnit) {
        boolean z;
        p.d(discard, "$this$discard");
        p.d(timeUnit, "timeUnit");
        try {
            z = skipAll(discard, i, timeUnit);
        } catch (IOException e) {
            z = false;
        }
        return z;
    }

    public static final <T> List<T> filterList(Iterable<? extends T> filterList, Function1<? super T, Boolean> predicate) {
        p.d(filterList, "$this$filterList");
        p.d(predicate, "predicate");
        List list = z.f36608a;
        Iterator<? extends T> it2 = filterList.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            if (predicate.invoke(obj).booleanValue()) {
                List list2 = list;
                if (list.isEmpty()) {
                    list2 = new ArrayList();
                }
                Objects.requireNonNull(list2, "null cannot be cast to non-null type kotlin.collections.MutableList<T>");
                ah.c(list2).add(obj);
                list = list2;
            }
        }
        return list;
    }

    public static final String format(String format, Object... args) {
        p.d(format, "format");
        p.d(args, "args");
        ag agVar = ag.f36785a;
        Locale locale = Locale.US;
        Object[] copyOf = Arrays.copyOf(args, args.length);
        String format2 = String.format(locale, format, Arrays.copyOf(copyOf, copyOf.length));
        p.b(format2, "java.lang.String.format(locale, format, *args)");
        return format2;
    }

    public static final boolean hasIntersection(String[] hasIntersection, String[] strArr, Comparator<? super String> comparator) {
        p.d(hasIntersection, "$this$hasIntersection");
        p.d(comparator, "comparator");
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

    public static final long headersContentLength(Response headersContentLength) {
        p.d(headersContentLength, "$this$headersContentLength");
        String str = headersContentLength.headers().get("Content-Length");
        long j = -1;
        if (str != null) {
            j = toLongOrDefault(str, -1L);
        }
        return j;
    }

    public static final void ignoreIoExceptions(Function0<v> block) {
        p.d(block, "block");
        try {
            block.invoke();
        } catch (IOException e) {
        }
    }

    @SafeVarargs
    public static final <T> List<T> immutableListOf(T... elements) {
        p.d(elements, "elements");
        Object[] objArr = (Object[]) elements.clone();
        List<T> unmodifiableList = Collections.unmodifiableList(n.b(Arrays.copyOf(objArr, objArr.length)));
        p.b(unmodifiableList, "Collections.unmodifiable…istOf(*elements.clone()))");
        return unmodifiableList;
    }

    public static final int indexOf(String[] indexOf, String value, Comparator<String> comparator) {
        p.d(indexOf, "$this$indexOf");
        p.d(value, "value");
        p.d(comparator, "comparator");
        int length = indexOf.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(indexOf[i], value) == 0) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOfControlOrNonAscii(String indexOfControlOrNonAscii) {
        p.d(indexOfControlOrNonAscii, "$this$indexOfControlOrNonAscii");
        int length = indexOfControlOrNonAscii.length();
        for (int i = 0; i < length; i++) {
            char charAt = indexOfControlOrNonAscii.charAt(i);
            if (p.a(charAt, 31) <= 0 || p.a(charAt, 127) >= 0) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOfFirstNonAsciiWhitespace(String indexOfFirstNonAsciiWhitespace, int i, int i2) {
        p.d(indexOfFirstNonAsciiWhitespace, "$this$indexOfFirstNonAsciiWhitespace");
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
        p.d(indexOfLastNonAsciiWhitespace, "$this$indexOfLastNonAsciiWhitespace");
        int i3 = i2 - 1;
        if (i3 >= i) {
            while (true) {
                char charAt = indexOfLastNonAsciiWhitespace.charAt(i3);
                if (charAt == '\t' || charAt == '\n' || charAt == '\f' || charAt == '\r' || charAt == ' ') {
                    if (i3 == i) {
                        break;
                    }
                    i3--;
                } else {
                    return i3 + 1;
                }
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
        p.d(indexOfNonWhitespace, "$this$indexOfNonWhitespace");
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
        p.d(intersect, "$this$intersect");
        p.d(other, "other");
        p.d(comparator, "comparator");
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
        p.d(isCivilized, "$this$isCivilized");
        p.d(file, "file");
        ab sink = isCivilized.sink(file);
        try {
            try {
                isCivilized.delete(file);
                kotlin.io.b.a(sink, null);
                return true;
            } catch (IOException e) {
                v vVar = v.f38654a;
                kotlin.io.b.a(sink, null);
                isCivilized.delete(file);
                return false;
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                kotlin.io.b.a(sink, th);
                throw th2;
            }
        }
    }

    public static final boolean isHealthy(Socket isHealthy, h source) {
        p.d(isHealthy, "$this$isHealthy");
        p.d(source, "source");
        boolean z = true;
        try {
            int soTimeout = isHealthy.getSoTimeout();
            try {
                isHealthy.setSoTimeout(1);
                z = !source.e();
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
        p.d(notify, "$this$notify");
        notify.notify();
    }

    public static final void notifyAll(Object notifyAll) {
        p.d(notifyAll, "$this$notifyAll");
        notifyAll.notifyAll();
    }

    public static final int parseHexDigit(char c2) {
        if ('0' <= c2 && '9' >= c2) {
            return c2 - '0';
        }
        char c3 = 'a';
        if ('a' > c2 || 'f' < c2) {
            c3 = 'A';
            if ('A' > c2 || 'F' < c2) {
                return -1;
            }
        }
        return (c2 - c3) + 10;
    }

    public static final String peerName(Socket peerName) {
        p.d(peerName, "$this$peerName");
        SocketAddress remoteSocketAddress = peerName.getRemoteSocketAddress();
        if (!(remoteSocketAddress instanceof InetSocketAddress)) {
            return remoteSocketAddress.toString();
        }
        String hostName = ((InetSocketAddress) remoteSocketAddress).getHostName();
        p.b(hostName, "address.hostName");
        return hostName;
    }

    public static final Charset readBomAsCharset(h readBomAsCharset, Charset charset) throws IOException {
        p.d(readBomAsCharset, "$this$readBomAsCharset");
        p.d(charset, "default");
        int a2 = readBomAsCharset.a(UNICODE_BOMS);
        if (a2 == -1) {
            return charset;
        }
        if (a2 == 0) {
            Charset UTF_8 = StandardCharsets.UTF_8;
            p.b(UTF_8, "UTF_8");
            return UTF_8;
        } else if (a2 == 1) {
            Charset UTF_16BE = StandardCharsets.UTF_16BE;
            p.b(UTF_16BE, "UTF_16BE");
            return UTF_16BE;
        } else if (a2 == 2) {
            Charset UTF_16LE = StandardCharsets.UTF_16LE;
            p.b(UTF_16LE, "UTF_16LE");
            return UTF_16LE;
        } else if (a2 == 3) {
            d dVar = d.i;
            Charset charset2 = d.h;
            Charset charset3 = charset2;
            if (charset2 == null) {
                charset3 = Charset.forName("UTF-32BE");
                p.b(charset3, "Charset.forName(\"UTF-32BE\")");
                d.h = charset3;
            }
            return charset3;
        } else if (a2 == 4) {
            d dVar2 = d.i;
            Charset charset4 = d.g;
            Charset charset5 = charset4;
            if (charset4 == null) {
                charset5 = Charset.forName("UTF-32LE");
                p.b(charset5, "Charset.forName(\"UTF-32LE\")");
                d.g = charset5;
            }
            return charset5;
        } else {
            throw new AssertionError();
        }
    }

    public static final <T> T readFieldOrNull(Object instance, Class<T> fieldType, String fieldName) {
        do {
            p.d(instance, "instance");
            p.d(fieldType, "fieldType");
            p.d(fieldName, "fieldName");
            Class<?> cls = instance.getClass();
            while (!p.a(cls, Object.class)) {
                try {
                    Field field = cls.getDeclaredField(fieldName);
                    p.b(field, "field");
                    field.setAccessible(true);
                    Object obj = field.get(instance);
                    if (!fieldType.isInstance(obj)) {
                        return null;
                    }
                    return fieldType.cast(obj);
                } catch (NoSuchFieldException e) {
                    cls = cls.getSuperclass();
                    p.b(cls, "c.superclass");
                }
            }
            if (!(!p.a((Object) fieldName, (Object) "delegate"))) {
                return null;
            }
            instance = readFieldOrNull(instance, Object.class, "delegate");
        } while (instance != null);
        return null;
    }

    public static final int readMedium(h readMedium) throws IOException {
        p.d(readMedium, "$this$readMedium");
        return and(readMedium.i(), 255) | (and(readMedium.i(), 255) << 16) | (and(readMedium.i(), 255) << 8);
    }

    public static final int skipAll(f skipAll, byte b2) {
        p.d(skipAll, "$this$skipAll");
        int i = 0;
        while (!skipAll.e() && skipAll.c(0L) == b2) {
            i++;
            skipAll.i();
        }
        return i;
    }

    public static final boolean skipAll(ad skipAll, int i, TimeUnit timeUnit) throws IOException {
        boolean z;
        p.d(skipAll, "$this$skipAll");
        p.d(timeUnit, "timeUnit");
        long nanoTime = System.nanoTime();
        long deadlineNanoTime = skipAll.timeout().hasDeadline() ? skipAll.timeout().deadlineNanoTime() - nanoTime : Long.MAX_VALUE;
        skipAll.timeout().deadlineNanoTime(Math.min(deadlineNanoTime, timeUnit.toNanos(i)) + nanoTime);
        try {
            f fVar = new f();
            while (skipAll.read(fVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                fVar.u();
            }
            z = true;
            z = true;
        } catch (InterruptedIOException e) {
            z = false;
            z = false;
            if (deadlineNanoTime == Long.MAX_VALUE) {
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
            skipAll.timeout().clearDeadline();
            return z;
        }
        skipAll.timeout().deadlineNanoTime(nanoTime + deadlineNanoTime);
        return z;
    }

    public static final ThreadFactory threadFactory(final String name, final boolean z) {
        p.d(name, "name");
        return new ThreadFactory() { // from class: okhttp3.internal.Util$threadFactory$1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, name);
                thread.setDaemon(z);
                return thread;
            }
        };
    }

    public static final void threadName(String name, Function0<v> block) {
        p.d(name, "name");
        p.d(block, "block");
        Thread currentThread = Thread.currentThread();
        p.b(currentThread, "currentThread");
        String name2 = currentThread.getName();
        currentThread.setName(name);
        try {
            block.invoke();
        } finally {
            currentThread.setName(name2);
        }
    }

    public static final List<Header> toHeaderList(Headers toHeaderList) {
        p.d(toHeaderList, "$this$toHeaderList");
        c b2 = kotlin.f.d.b(0, toHeaderList.size());
        ArrayList arrayList = new ArrayList(n.a(b2, 10));
        Iterator<Integer> it2 = b2.iterator();
        while (it2.hasNext()) {
            int a2 = ((kotlin.a.ag) it2).a();
            arrayList.add(new Header(toHeaderList.name(a2), toHeaderList.value(a2)));
        }
        return arrayList;
    }

    public static final Headers toHeaders(List<Header> toHeaders) {
        p.d(toHeaders, "$this$toHeaders");
        Headers.Builder builder = new Headers.Builder();
        for (Header header : toHeaders) {
            builder.addLenient$okhttp(header.component1().b(), header.component2().b());
        }
        return builder.build();
    }

    public static final String toHexString(int i) {
        String hexString = Integer.toHexString(i);
        p.b(hexString, "Integer.toHexString(this)");
        return hexString;
    }

    public static final String toHexString(long j) {
        String hexString = Long.toHexString(j);
        p.b(hexString, "java.lang.Long.toHexString(this)");
        return hexString;
    }

    public static final String toHostHeader(HttpUrl toHostHeader, boolean z) {
        String str;
        p.d(toHostHeader, "$this$toHostHeader");
        if (kotlin.h.p.c((CharSequence) toHostHeader.host(), (CharSequence) ":", false)) {
            str = "[" + toHostHeader.host() + ']';
        } else {
            str = toHostHeader.host();
        }
        if (!z && toHostHeader.port() == HttpUrl.Companion.defaultPort(toHostHeader.scheme())) {
            return str;
        }
        return str + ':' + toHostHeader.port();
    }

    public static /* synthetic */ String toHostHeader$default(HttpUrl httpUrl, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return toHostHeader(httpUrl, z);
    }

    public static final <T> List<T> toImmutableList(List<? extends T> toImmutableList) {
        p.d(toImmutableList, "$this$toImmutableList");
        List<T> unmodifiableList = Collections.unmodifiableList(n.d((Collection) toImmutableList));
        p.b(unmodifiableList, "Collections.unmodifiableList(toMutableList())");
        return unmodifiableList;
    }

    public static final <K, V> Map<K, V> toImmutableMap(Map<K, ? extends V> toImmutableMap) {
        p.d(toImmutableMap, "$this$toImmutableMap");
        if (toImmutableMap.isEmpty()) {
            return ai.a();
        }
        Map<K, V> unmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(toImmutableMap));
        p.b(unmodifiableMap, "Collections.unmodifiableMap(LinkedHashMap(this))");
        return unmodifiableMap;
    }

    public static final long toLongOrDefault(String toLongOrDefault, long j) {
        p.d(toLongOrDefault, "$this$toLongOrDefault");
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
        p.d(trimSubstring, "$this$trimSubstring");
        int indexOfFirstNonAsciiWhitespace = indexOfFirstNonAsciiWhitespace(trimSubstring, i, i2);
        String substring = trimSubstring.substring(indexOfFirstNonAsciiWhitespace, indexOfLastNonAsciiWhitespace(trimSubstring, indexOfFirstNonAsciiWhitespace, i2));
        p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
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
        p.d(wait, "$this$wait");
        wait.wait();
    }

    public static final Throwable withSuppressed(Exception withSuppressed, List<? extends Exception> suppressed) {
        p.d(withSuppressed, "$this$withSuppressed");
        p.d(suppressed, "suppressed");
        if (suppressed.size() > 1) {
            System.out.println(suppressed);
        }
        for (Exception exc : suppressed) {
            kotlin.b.a(withSuppressed, exc);
        }
        return withSuppressed;
    }

    public static final void writeMedium(g writeMedium, int i) throws IOException {
        p.d(writeMedium, "$this$writeMedium");
        writeMedium.c((i >>> 16) & 255);
        writeMedium.c((i >>> 8) & 255);
        writeMedium.c(i & 255);
    }
}
