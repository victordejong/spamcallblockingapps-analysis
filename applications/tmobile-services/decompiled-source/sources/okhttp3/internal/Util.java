package okhttp3.internal;

import android.support.p001v4.media.session.PlaybackStateCompat;
import com.facebook.stetho.server.http.HttpHeaders;
import com.google.android.gms.common.api.Api;
import com.google.firebase.analytics.FirebaseAnalytics;
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
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.p009io.CloseableKt;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
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
import okhttp3.internal.p011io.FileSystem;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��Æ\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0004\n\u0002\u0010\n\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\f\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010$\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a'\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\b\u001a%\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000e\u001a)\u0010\u000f\u001a\u00020��2\u0006\u0010\u000f\u001a\u00020��2\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\u0010\"\u00020\u0011¢\u0006\u0004\b\u000f\u0010\u0013\u001a!\u0010\u0016\u001a\u00020\f2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\u0014H\u0086\bø\u0001��¢\u0006\u0004\b\u0016\u0010\u0017\u001a/\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028��0\u001a\"\u0004\b��\u0010\u00182\u0012\u0010\u0019\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0010\"\u00028��H\u0007¢\u0006\u0004\b\u001b\u0010\u001c\u001a3\u0010!\u001a\u0004\u0018\u00018��\"\u0004\b��\u0010\u00182\u0006\u0010\u001d\u001a\u00020\u00112\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028��0\u001e2\u0006\u0010 \u001a\u00020��¢\u0006\u0004\b!\u0010\"\u001a\u001d\u0010&\u001a\u00020%2\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b&\u0010'\u001a)\u0010(\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020��2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\u0014H\u0086\bø\u0001��¢\u0006\u0004\b(\u0010)\u001a'\u0010-\u001a\u00020\f\"\u0004\b��\u0010**\b\u0012\u0004\u0012\u00028��0+2\u0006\u0010,\u001a\u00028��H��¢\u0006\u0004\b-\u0010.\u001a\u001c\u00101\u001a\u00020\u0006*\u00020/2\u0006\u00100\u001a\u00020\u0006H\u0086\u0004¢\u0006\u0004\b1\u00102\u001a\u001c\u00101\u001a\u00020\u0002*\u00020\u00062\u0006\u00100\u001a\u00020\u0002H\u0086\u0004¢\u0006\u0004\b1\u00103\u001a\u001c\u00101\u001a\u00020\u0006*\u0002042\u0006\u00100\u001a\u00020\u0006H\u0086\u0004¢\u0006\u0004\b1\u00105\u001a\u0011\u00108\u001a\u000207*\u000206¢\u0006\u0004\b8\u00109\u001a\u0014\u0010:\u001a\u00020\f*\u00020\u0011H\u0080\b¢\u0006\u0004\b:\u0010;\u001a\u0014\u0010<\u001a\u00020\f*\u00020\u0011H\u0080\b¢\u0006\u0004\b<\u0010;\u001a\u0011\u0010=\u001a\u00020#*\u00020��¢\u0006\u0004\b=\u0010>\u001a\u0019\u0010A\u001a\u00020#*\u00020?2\u0006\u0010@\u001a\u00020?¢\u0006\u0004\bA\u0010B\u001a\u0011\u0010D\u001a\u00020\f*\u00020C¢\u0006\u0004\bD\u0010E\u001a\u0011\u0010D\u001a\u00020\f*\u00020F¢\u0006\u0004\bD\u0010G\u001a\u0011\u0010D\u001a\u00020\f*\u00020H¢\u0006\u0004\bD\u0010I\u001a%\u0010K\u001a\b\u0012\u0004\u0012\u00020��0\u0010*\b\u0012\u0004\u0012\u00020��0\u00102\u0006\u0010J\u001a\u00020��¢\u0006\u0004\bK\u0010L\u001a-\u0010Q\u001a\u00020\u0006*\u00020��2\u0006\u0010N\u001a\u00020M2\b\b\u0002\u0010O\u001a\u00020\u00062\b\b\u0002\u0010P\u001a\u00020\u0006¢\u0006\u0004\bQ\u0010R\u001a-\u0010Q\u001a\u00020\u0006*\u00020��2\u0006\u0010S\u001a\u00020��2\b\b\u0002\u0010O\u001a\u00020\u00062\b\b\u0002\u0010P\u001a\u00020\u0006¢\u0006\u0004\bQ\u0010T\u001a!\u0010X\u001a\u00020#*\u00020U2\u0006\u0010V\u001a\u00020\u00062\u0006\u0010W\u001a\u00020\u0004¢\u0006\u0004\bX\u0010Y\u001aB\u0010^\u001a\b\u0012\u0004\u0012\u00028��0\u001a\"\u0004\b��\u0010\u0018*\b\u0012\u0004\u0012\u00028��0Z2\u0017\u0010]\u001a\u0013\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020#0[¢\u0006\u0002\b\\H\u0086\bø\u0001��¢\u0006\u0004\b^\u0010_\u001a7\u0010b\u001a\u00020#*\b\u0012\u0004\u0012\u00020��0\u00102\u000e\u0010@\u001a\n\u0012\u0004\u0012\u00020��\u0018\u00010\u00102\u000e\u0010a\u001a\n\u0012\u0006\b��\u0012\u00020��0`¢\u0006\u0004\bb\u0010c\u001a\u0011\u0010e\u001a\u00020\u0002*\u00020d¢\u0006\u0004\be\u0010f\u001a-\u0010g\u001a\u00020\u0006*\b\u0012\u0004\u0012\u00020��0\u00102\u0006\u0010J\u001a\u00020��2\f\u0010a\u001a\b\u0012\u0004\u0012\u00020��0`¢\u0006\u0004\bg\u0010h\u001a\u0011\u0010i\u001a\u00020\u0006*\u00020��¢\u0006\u0004\bi\u0010j\u001a%\u0010k\u001a\u00020\u0006*\u00020��2\b\b\u0002\u0010O\u001a\u00020\u00062\b\b\u0002\u0010P\u001a\u00020\u0006¢\u0006\u0004\bk\u0010l\u001a%\u0010m\u001a\u00020\u0006*\u00020��2\b\b\u0002\u0010O\u001a\u00020\u00062\b\b\u0002\u0010P\u001a\u00020\u0006¢\u0006\u0004\bm\u0010l\u001a\u001b\u0010n\u001a\u00020\u0006*\u00020��2\b\b\u0002\u0010O\u001a\u00020\u0006¢\u0006\u0004\bn\u0010o\u001a;\u0010p\u001a\b\u0012\u0004\u0012\u00020��0\u0010*\b\u0012\u0004\u0012\u00020��0\u00102\f\u0010@\u001a\b\u0012\u0004\u0012\u00020��0\u00102\u000e\u0010a\u001a\n\u0012\u0006\b��\u0012\u00020��0`¢\u0006\u0004\bp\u0010q\u001a\u0019\u0010u\u001a\u00020#*\u00020r2\u0006\u0010t\u001a\u00020s¢\u0006\u0004\bu\u0010v\u001a\u0019\u0010y\u001a\u00020#*\u00020H2\u0006\u0010x\u001a\u00020w¢\u0006\u0004\by\u0010z\u001a\u0014\u0010{\u001a\u00020\f*\u00020\u0011H\u0086\b¢\u0006\u0004\b{\u0010;\u001a\u0014\u0010|\u001a\u00020\f*\u00020\u0011H\u0086\b¢\u0006\u0004\b|\u0010;\u001a\u0011\u0010}\u001a\u00020\u0006*\u00020M¢\u0006\u0004\b}\u0010~\u001a\u0012\u0010\u007f\u001a\u00020��*\u00020H¢\u0006\u0005\b\u007f\u0010\u0080\u0001\u001a\u001f\u0010\u0083\u0001\u001a\u00030\u0081\u0001*\u00020w2\b\u0010\u0082\u0001\u001a\u00030\u0081\u0001¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001\u001a\u0014\u0010\u0085\u0001\u001a\u00020\u0006*\u00020w¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001\u001a\u001e\u0010\u0089\u0001\u001a\u00020\u0006*\u00030\u0087\u00012\u0007\u0010\u0088\u0001\u001a\u00020/¢\u0006\u0006\b\u0089\u0001\u0010\u008a\u0001\u001a#\u0010\u0089\u0001\u001a\u00020#*\u00020U2\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010W\u001a\u00020\u0004¢\u0006\u0005\b\u0089\u0001\u0010Y\u001a\u001c\u0010\u008d\u0001\u001a\t\u0012\u0005\u0012\u00030\u008c\u00010\u001a*\u00030\u008b\u0001¢\u0006\u0006\b\u008d\u0001\u0010\u008e\u0001\u001a\u001c\u0010\u008f\u0001\u001a\u00030\u008b\u0001*\t\u0012\u0005\u0012\u00030\u008c\u00010\u001a¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001\u001a\u0014\u0010\u0091\u0001\u001a\u00020��*\u00020\u0006¢\u0006\u0006\b\u0091\u0001\u0010\u0092\u0001\u001a\u0014\u0010\u0091\u0001\u001a\u00020��*\u00020\u0002¢\u0006\u0006\b\u0091\u0001\u0010\u0093\u0001\u001a\u001f\u0010\u0095\u0001\u001a\u00020��*\u00020?2\t\b\u0002\u0010\u0094\u0001\u001a\u00020#¢\u0006\u0006\b\u0095\u0001\u0010\u0096\u0001\u001a&\u0010\u0097\u0001\u001a\b\u0012\u0004\u0012\u00028��0\u001a\"\u0004\b��\u0010\u0018*\b\u0012\u0004\u0012\u00028��0\u001a¢\u0006\u0006\b\u0097\u0001\u0010\u0098\u0001\u001a<\u0010\u009c\u0001\u001a\u000f\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u009b\u0001\"\u0005\b��\u0010\u0099\u0001\"\u0005\b\u0001\u0010\u009a\u0001*\u000f\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u009b\u0001¢\u0006\u0006\b\u009c\u0001\u0010\u009d\u0001\u001a\u001d\u0010\u009f\u0001\u001a\u00020\u0002*\u00020��2\u0007\u0010\u009e\u0001\u001a\u00020\u0002¢\u0006\u0006\b\u009f\u0001\u0010 \u0001\u001a\u001e\u0010¡\u0001\u001a\u00020\u0006*\u0004\u0018\u00010��2\u0007\u0010\u009e\u0001\u001a\u00020\u0006¢\u0006\u0005\b¡\u0001\u0010o\u001a(\u0010¢\u0001\u001a\u00020��*\u00020��2\b\b\u0002\u0010O\u001a\u00020\u00062\b\b\u0002\u0010P\u001a\u00020\u0006¢\u0006\u0006\b¢\u0001\u0010£\u0001\u001a\u0016\u0010¤\u0001\u001a\u00020\f*\u00020\u0011H\u0086\b¢\u0006\u0005\b¤\u0001\u0010;\u001a0\u0010©\u0001\u001a\u00030¨\u0001*\b0¥\u0001j\u0003`¦\u00012\u0013\u0010§\u0001\u001a\u000e\u0012\n\u0012\b0¥\u0001j\u0003`¦\u00010\u001a¢\u0006\u0006\b©\u0001\u0010ª\u0001\u001a\u001e\u0010\u00ad\u0001\u001a\u00020\f*\u00030«\u00012\u0007\u0010¬\u0001\u001a\u00020\u0006¢\u0006\u0006\b\u00ad\u0001\u0010®\u0001\"\u001a\u0010°\u0001\u001a\u00030¯\u00018\u0006@\u0007X\u0087\u0004¢\u0006\b\n\u0006\b°\u0001\u0010±\u0001\"\u001a\u0010²\u0001\u001a\u00030\u008b\u00018\u0006@\u0007X\u0087\u0004¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001\"\u001a\u0010µ\u0001\u001a\u00030´\u00018\u0006@\u0007X\u0087\u0004¢\u0006\b\n\u0006\bµ\u0001\u0010¶\u0001\"\u001a\u0010¸\u0001\u001a\u00030·\u00018\u0006@\u0007X\u0087\u0004¢\u0006\b\n\u0006\b¸\u0001\u0010¹\u0001\"\u001a\u0010»\u0001\u001a\u00030º\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b»\u0001\u0010¼\u0001\"\u001a\u0010¾\u0001\u001a\u00030½\u00018\u0006@\u0007X\u0087\u0004¢\u0006\b\n\u0006\b¾\u0001\u0010¿\u0001\"\u001a\u0010Á\u0001\u001a\u00030À\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÁ\u0001\u0010Â\u0001\"\u0019\u0010Ã\u0001\u001a\u00020#8��@\u0001X\u0081\u0004¢\u0006\b\n\u0006\bÃ\u0001\u0010Ä\u0001\"\u0019\u0010Å\u0001\u001a\u00020��8��@\u0001X\u0081\u0004¢\u0006\b\n\u0006\bÅ\u0001\u0010Æ\u0001\"\u0019\u0010Ç\u0001\u001a\u00020��8\u0006@\u0006X\u0086T¢\u0006\b\n\u0006\bÇ\u0001\u0010Æ\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006È\u0001"}, d2 = {"", "name", "", "duration", "Ljava/util/concurrent/TimeUnit;", "unit", "", "checkDuration", "(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I", "arrayLength", "offset", "count", "", "checkOffsetAndCount", "(JJJ)V", "format", "", "", "args", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "Lkotlin/Function0;", "block", "ignoreIoExceptions", "(Lkotlin/Function0;)V", "T", "elements", "", "immutableListOf", "([Ljava/lang/Object;)Ljava/util/List;", "instance", "Ljava/lang/Class;", "fieldType", "fieldName", "readFieldOrNull", "(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;", "", "daemon", "Ljava/util/concurrent/ThreadFactory;", "threadFactory", "(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;", "threadName", "(Ljava/lang/String;Lkotlin/Function0;)V", "E", "", "element", "addIfAbsent", "(Ljava/util/List;Ljava/lang/Object;)V", "", "mask", "and", "(BI)I", "(IJ)J", "", "(SI)I", "Lokhttp3/EventListener;", "Lokhttp3/EventListener$Factory;", "asFactory", "(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;", "assertThreadDoesntHoldLock", "(Ljava/lang/Object;)V", "assertThreadHoldsLock", "canParseAsIpAddress", "(Ljava/lang/String;)Z", "Lokhttp3/HttpUrl;", "other", "canReuseConnectionFor", "(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z", "Ljava/io/Closeable;", "closeQuietly", "(Ljava/io/Closeable;)V", "Ljava/net/ServerSocket;", "(Ljava/net/ServerSocket;)V", "Ljava/net/Socket;", "(Ljava/net/Socket;)V", FirebaseAnalytics.Param.VALUE, "concat", "([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;", "", "delimiter", "startIndex", "endIndex", "delimiterOffset", "(Ljava/lang/String;CII)I", "delimiters", "(Ljava/lang/String;Ljava/lang/String;II)I", "Lokio/Source;", "timeout", "timeUnit", "discard", "(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z", "", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "predicate", "filterList", "(Ljava/lang/Iterable;Lkotlin/Function1;)Ljava/util/List;", "Ljava/util/Comparator;", "comparator", "hasIntersection", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z", "Lokhttp3/Response;", "headersContentLength", "(Lokhttp3/Response;)J", "indexOf", "([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I", "indexOfControlOrNonAscii", "(Ljava/lang/String;)I", "indexOfFirstNonAsciiWhitespace", "(Ljava/lang/String;II)I", "indexOfLastNonAsciiWhitespace", "indexOfNonWhitespace", "(Ljava/lang/String;I)I", "intersect", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;", "Lokhttp3/internal/io/FileSystem;", "Ljava/io/File;", "file", "isCivilized", "(Lokhttp3/internal/io/FileSystem;Ljava/io/File;)Z", "Lokio/BufferedSource;", "source", "isHealthy", "(Ljava/net/Socket;Lokio/BufferedSource;)Z", "notify", "notifyAll", "parseHexDigit", "(C)I", "peerName", "(Ljava/net/Socket;)Ljava/lang/String;", "Ljava/nio/charset/Charset;", "default", "readBomAsCharset", "(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;", "readMedium", "(Lokio/BufferedSource;)I", "Lokio/Buffer;", "b", "skipAll", "(Lokio/Buffer;B)I", "Lokhttp3/Headers;", "Lokhttp3/internal/http2/Header;", "toHeaderList", "(Lokhttp3/Headers;)Ljava/util/List;", "toHeaders", "(Ljava/util/List;)Lokhttp3/Headers;", "toHexString", "(I)Ljava/lang/String;", "(J)Ljava/lang/String;", "includeDefaultPort", "toHostHeader", "(Lokhttp3/HttpUrl;Z)Ljava/lang/String;", "toImmutableList", "(Ljava/util/List;)Ljava/util/List;", "K", "V", "", "toImmutableMap", "(Ljava/util/Map;)Ljava/util/Map;", "defaultValue", "toLongOrDefault", "(Ljava/lang/String;J)J", "toNonNegativeInt", "trimSubstring", "(Ljava/lang/String;II)Ljava/lang/String;", "wait", "Ljava/lang/Exception;", "Lkotlin/Exception;", "suppressed", "", "withSuppressed", "(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;", "Lokio/BufferedSink;", "medium", "writeMedium", "(Lokio/BufferedSink;I)V", "", "EMPTY_BYTE_ARRAY", "[B", "EMPTY_HEADERS", "Lokhttp3/Headers;", "Lokhttp3/RequestBody;", "EMPTY_REQUEST", "Lokhttp3/RequestBody;", "Lokhttp3/ResponseBody;", "EMPTY_RESPONSE", "Lokhttp3/ResponseBody;", "Lokio/Options;", "UNICODE_BOMS", "Lokio/Options;", "Ljava/util/TimeZone;", "UTC", "Ljava/util/TimeZone;", "Lkotlin/text/Regex;", "VERIFY_AS_IP_ADDRESS", "Lkotlin/text/Regex;", "assertionsEnabled", "Z", "okHttpName", "Ljava/lang/String;", "userAgent", "okhttp"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@JvmName
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/Util.class */
public final class Util {
    @JvmField
    @NotNull
    public static final TimeZone UTC;
    @JvmField
    @NotNull
    public static final String okHttpName;
    @NotNull
    public static final String userAgent = "okhttp/4.9.0";
    @JvmField
    @NotNull
    public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    @JvmField
    @NotNull
    public static final Headers EMPTY_HEADERS = Headers.Companion.m233of(new String[0]);
    @JvmField
    @NotNull
    public static final ResponseBody EMPTY_RESPONSE = ResponseBody.Companion.create$default(ResponseBody.Companion, EMPTY_BYTE_ARRAY, (MediaType) null, 1, (Object) null);
    @JvmField
    @NotNull
    public static final RequestBody EMPTY_REQUEST = RequestBody.Companion.create$default(RequestBody.Companion, EMPTY_BYTE_ARRAY, (MediaType) null, 0, 0, 7, (Object) null);
    private static final Options UNICODE_BOMS = Options.f24166i.m110d(ByteString.f24137j.m165b("efbbbf"), ByteString.f24137j.m165b("feff"), ByteString.f24137j.m165b("fffe"), ByteString.f24137j.m165b("0000ffff"), ByteString.f24137j.m165b("ffff0000"));
    private static final Regex VERIFY_AS_IP_ADDRESS = new Regex("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    @JvmField
    public static final boolean assertionsEnabled = OkHttpClient.class.desiredAssertionStatus();

    static {
        String j0;
        String k0;
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        Intrinsics.m1832c(timeZone);
        UTC = timeZone;
        String name = OkHttpClient.class.getName();
        Intrinsics.m1831d(name, "OkHttpClient::class.java.name");
        j0 = StringsKt__StringsKt.m1438j0(name, "okhttp3.");
        k0 = StringsKt__StringsKt.m1437k0(j0, "Client");
        okHttpName = k0;
    }

    public static final <E> void addIfAbsent(@NotNull List<E> addIfAbsent, E e) {
        Intrinsics.m1830e(addIfAbsent, "$this$addIfAbsent");
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

    @NotNull
    public static final EventListener.Factory asFactory(@NotNull final EventListener asFactory) {
        Intrinsics.m1830e(asFactory, "$this$asFactory");
        return new EventListener.Factory() { // from class: okhttp3.internal.Util$asFactory$1
            @Override // okhttp3.EventListener.Factory
            @NotNull
            public final EventListener create(@NotNull Call it) {
                Intrinsics.m1830e(it, "it");
                return EventListener.this;
            }
        };
    }

    public static final void assertThreadDoesntHoldLock(@NotNull Object assertThreadDoesntHoldLock) {
        Intrinsics.m1830e(assertThreadDoesntHoldLock, "$this$assertThreadDoesntHoldLock");
        if (assertionsEnabled && Thread.holdsLock(assertThreadDoesntHoldLock)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Thread ");
            Thread currentThread = Thread.currentThread();
            Intrinsics.m1831d(currentThread, "Thread.currentThread()");
            sb.append(currentThread.getName());
            sb.append(" MUST NOT hold lock on ");
            sb.append(assertThreadDoesntHoldLock);
            throw new AssertionError(sb.toString());
        }
    }

    public static final void assertThreadHoldsLock(@NotNull Object assertThreadHoldsLock) {
        Intrinsics.m1830e(assertThreadHoldsLock, "$this$assertThreadHoldsLock");
        if (assertionsEnabled && !Thread.holdsLock(assertThreadHoldsLock)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Thread ");
            Thread currentThread = Thread.currentThread();
            Intrinsics.m1831d(currentThread, "Thread.currentThread()");
            sb.append(currentThread.getName());
            sb.append(" MUST hold lock on ");
            sb.append(assertThreadHoldsLock);
            throw new AssertionError(sb.toString());
        }
    }

    public static final boolean canParseAsIpAddress(@NotNull String canParseAsIpAddress) {
        Intrinsics.m1830e(canParseAsIpAddress, "$this$canParseAsIpAddress");
        return VERIFY_AS_IP_ADDRESS.m1553b(canParseAsIpAddress);
    }

    public static final boolean canReuseConnectionFor(@NotNull HttpUrl canReuseConnectionFor, @NotNull HttpUrl other) {
        Intrinsics.m1830e(canReuseConnectionFor, "$this$canReuseConnectionFor");
        Intrinsics.m1830e(other, "other");
        return Intrinsics.m1834a(canReuseConnectionFor.host(), other.host()) && canReuseConnectionFor.port() == other.port() && Intrinsics.m1834a(canReuseConnectionFor.scheme(), other.scheme());
    }

    public static final int checkDuration(@NotNull String name, long j, @Nullable TimeUnit timeUnit) {
        Intrinsics.m1830e(name, "name");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (timeUnit != null) {
                long millis = timeUnit.toMillis(j);
                if (millis <= ((long) Api.BaseClientBuilder.API_PRIORITY_OTHER)) {
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

    public static final void closeQuietly(@NotNull Closeable closeQuietly) {
        Intrinsics.m1830e(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
        }
    }

    public static final void closeQuietly(@NotNull ServerSocket closeQuietly) {
        Intrinsics.m1830e(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
        }
    }

    public static final void closeQuietly(@NotNull Socket closeQuietly) {
        Intrinsics.m1830e(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (AssertionError e) {
            throw e;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
        }
    }

    @NotNull
    public static final String[] concat(@NotNull String[] concat, @NotNull String value) {
        int x;
        Intrinsics.m1830e(concat, "$this$concat");
        Intrinsics.m1830e(value, "value");
        Object[] copyOf = Arrays.copyOf(concat, concat.length + 1);
        Intrinsics.m1831d(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        String[] strArr = (String[]) copyOf;
        x = ArraysKt___ArraysKt.m2229x(strArr);
        strArr[x] = value;
        if (strArr != null) {
            return strArr;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
    }

    public static final int delimiterOffset(@NotNull String delimiterOffset, char c, int i, int i2) {
        Intrinsics.m1830e(delimiterOffset, "$this$delimiterOffset");
        while (i < i2) {
            if (delimiterOffset.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static final int delimiterOffset(@NotNull String delimiterOffset, @NotNull String delimiters, int i, int i2) {
        boolean G;
        Intrinsics.m1830e(delimiterOffset, "$this$delimiterOffset");
        Intrinsics.m1830e(delimiters, "delimiters");
        while (i < i2) {
            G = StringsKt__StringsKt.m1467G(delimiters, delimiterOffset.charAt(i), false, 2, null);
            if (G) {
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

    public static final boolean discard(@NotNull Source discard, int i, @NotNull TimeUnit timeUnit) {
        boolean z;
        Intrinsics.m1830e(discard, "$this$discard");
        Intrinsics.m1830e(timeUnit, "timeUnit");
        try {
            z = skipAll(discard, i, timeUnit);
        } catch (IOException e) {
            z = false;
        }
        return z;
    }

    @NotNull
    public static final <T> List<T> filterList(@NotNull Iterable<? extends T> filterList, @NotNull Function1<? super T, Boolean> predicate) {
        List<T> f;
        Intrinsics.m1830e(filterList, "$this$filterList");
        Intrinsics.m1830e(predicate, "predicate");
        f = CollectionsKt__CollectionsKt.m2175f();
        Iterator<? extends T> it = filterList.iterator();
        while (it.hasNext()) {
            Object obj = (Object) it.next();
            if (predicate.invoke(obj).booleanValue()) {
                List<T> list = f;
                if (f.isEmpty()) {
                    list = new ArrayList<>();
                }
                if (list != null) {
                    TypeIntrinsics.m1786a(list).add(obj);
                    f = list;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.MutableList<T>");
                }
            }
        }
        return f;
    }

    @NotNull
    public static final String format(@NotNull String format, @NotNull Object... args) {
        Intrinsics.m1830e(format, "format");
        Intrinsics.m1830e(args, "args");
        StringCompanionObject stringCompanionObject = StringCompanionObject.f20754a;
        Locale locale = Locale.US;
        Object[] copyOf = Arrays.copyOf(args, args.length);
        String format2 = String.format(locale, format, Arrays.copyOf(copyOf, copyOf.length));
        Intrinsics.m1831d(format2, "java.lang.String.format(locale, format, *args)");
        return format2;
    }

    public static final boolean hasIntersection(@NotNull String[] hasIntersection, @Nullable String[] strArr, @NotNull Comparator<? super String> comparator) {
        Intrinsics.m1830e(hasIntersection, "$this$hasIntersection");
        Intrinsics.m1830e(comparator, "comparator");
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

    public static final long headersContentLength(@NotNull Response headersContentLength) {
        Intrinsics.m1830e(headersContentLength, "$this$headersContentLength");
        String str = headersContentLength.headers().get(HttpHeaders.CONTENT_LENGTH);
        long j = -1;
        if (str != null) {
            j = toLongOrDefault(str, -1L);
        }
        return j;
    }

    public static final void ignoreIoExceptions(@NotNull Function0<Unit> block) {
        Intrinsics.m1830e(block, "block");
        try {
            block.invoke();
        } catch (IOException e) {
        }
    }

    @SafeVarargs
    @NotNull
    public static final <T> List<T> immutableListOf(@NotNull T... elements) {
        List i;
        Intrinsics.m1830e(elements, "elements");
        Object[] objArr = (Object[]) elements.clone();
        i = CollectionsKt__CollectionsKt.m2172i(Arrays.copyOf(objArr, objArr.length));
        List<T> unmodifiableList = Collections.unmodifiableList(i);
        Intrinsics.m1831d(unmodifiableList, "Collections.unmodifiable…istOf(*elements.clone()))");
        return unmodifiableList;
    }

    public static final int indexOf(@NotNull String[] indexOf, @NotNull String value, @NotNull Comparator<String> comparator) {
        Intrinsics.m1830e(indexOf, "$this$indexOf");
        Intrinsics.m1830e(value, "value");
        Intrinsics.m1830e(comparator, "comparator");
        int length = indexOf.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            }
            if (comparator.compare(indexOf[i], value) == 0) {
                break;
            }
            i++;
        }
        return i;
    }

    public static final int indexOfControlOrNonAscii(@NotNull String indexOfControlOrNonAscii) {
        Intrinsics.m1830e(indexOfControlOrNonAscii, "$this$indexOfControlOrNonAscii");
        int length = indexOfControlOrNonAscii.length();
        for (int i = 0; i < length; i++) {
            char charAt = indexOfControlOrNonAscii.charAt(i);
            if (Intrinsics.m1828g(charAt, 31) <= 0 || Intrinsics.m1828g(charAt, 127) >= 0) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOfFirstNonAsciiWhitespace(@NotNull String indexOfFirstNonAsciiWhitespace, int i, int i2) {
        Intrinsics.m1830e(indexOfFirstNonAsciiWhitespace, "$this$indexOfFirstNonAsciiWhitespace");
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

    public static final int indexOfLastNonAsciiWhitespace(@NotNull String indexOfLastNonAsciiWhitespace, int i, int i2) {
        Intrinsics.m1830e(indexOfLastNonAsciiWhitespace, "$this$indexOfLastNonAsciiWhitespace");
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

    public static final int indexOfNonWhitespace(@NotNull String indexOfNonWhitespace, int i) {
        Intrinsics.m1830e(indexOfNonWhitespace, "$this$indexOfNonWhitespace");
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

    @NotNull
    public static final String[] intersect(@NotNull String[] intersect, @NotNull String[] other, @NotNull Comparator<? super String> comparator) {
        Intrinsics.m1830e(intersect, "$this$intersect");
        Intrinsics.m1830e(other, "other");
        Intrinsics.m1830e(comparator, "comparator");
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
        if (array != null) {
            return (String[]) array;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    /* JADX WARN: Finally extract failed */
    public static final boolean isCivilized(@NotNull FileSystem isCivilized, @NotNull File file) {
        Intrinsics.m1830e(isCivilized, "$this$isCivilized");
        Intrinsics.m1830e(file, "file");
        Sink sink = isCivilized.sink(file);
        try {
            try {
                isCivilized.delete(file);
                CloseableKt.m1887a(sink, null);
                return true;
            } catch (IOException e) {
                Unit unit = Unit.f20447a;
                CloseableKt.m1887a(sink, null);
                isCivilized.delete(file);
                return false;
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.m1887a(sink, th);
                throw th2;
            }
        }
    }

    public static final boolean isHealthy(@NotNull Socket isHealthy, @NotNull BufferedSource source) {
        Intrinsics.m1830e(isHealthy, "$this$isHealthy");
        Intrinsics.m1830e(source, "source");
        boolean z = true;
        try {
            int soTimeout = isHealthy.getSoTimeout();
            try {
                isHealthy.setSoTimeout(1);
                z = !source.mo60z();
            } finally {
                isHealthy.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException e) {
        } catch (IOException e2) {
            z = false;
        }
        return z;
    }

    public static final void notify(@NotNull Object notify) {
        Intrinsics.m1830e(notify, "$this$notify");
        notify.notify();
    }

    public static final void notifyAll(@NotNull Object notifyAll) {
        Intrinsics.m1830e(notifyAll, "$this$notifyAll");
        notifyAll.notifyAll();
    }

    public static final int parseHexDigit(char c) {
        int i;
        if ('0' <= c && '9' >= c) {
            i = c - '0';
        } else {
            char c2 = 'a';
            if ('a' > c || 'f' < c) {
                c2 = 'A';
                if ('A' > c || 'F' < c) {
                    i = -1;
                }
            }
            i = (c - c2) + 10;
        }
        return i;
    }

    @NotNull
    public static final String peerName(@NotNull Socket peerName) {
        String str;
        Intrinsics.m1830e(peerName, "$this$peerName");
        SocketAddress remoteSocketAddress = peerName.getRemoteSocketAddress();
        if (remoteSocketAddress instanceof InetSocketAddress) {
            str = ((InetSocketAddress) remoteSocketAddress).getHostName();
            Intrinsics.m1831d(str, "address.hostName");
        } else {
            str = remoteSocketAddress.toString();
        }
        return str;
    }

    @NotNull
    public static final Charset readBomAsCharset(@NotNull BufferedSource readBomAsCharset, @NotNull Charset UTF_8) throws IOException {
        Intrinsics.m1830e(readBomAsCharset, "$this$readBomAsCharset");
        Intrinsics.m1830e(UTF_8, "default");
        int t0 = readBomAsCharset.mo63t0(UNICODE_BOMS);
        if (t0 != -1) {
            if (t0 == 0) {
                UTF_8 = StandardCharsets.UTF_8;
                Intrinsics.m1831d(UTF_8, "UTF_8");
            } else if (t0 == 1) {
                UTF_8 = StandardCharsets.UTF_16BE;
                Intrinsics.m1831d(UTF_8, "UTF_16BE");
            } else if (t0 == 2) {
                UTF_8 = StandardCharsets.UTF_16LE;
                Intrinsics.m1831d(UTF_8, "UTF_16LE");
            } else if (t0 == 3) {
                UTF_8 = Charsets.f21021d.m1571a();
            } else if (t0 == 4) {
                UTF_8 = Charsets.f21021d.m1570b();
            } else {
                throw new AssertionError();
            }
        }
        return UTF_8;
    }

    @Nullable
    public static final <T> T readFieldOrNull(@NotNull Object instance, @NotNull Class<T> fieldType, @NotNull String fieldName) {
        Object readFieldOrNull;
        T t;
        Intrinsics.m1830e(instance, "instance");
        Intrinsics.m1830e(fieldType, "fieldType");
        Intrinsics.m1830e(fieldName, "fieldName");
        Class<?> cls = instance.getClass();
        while (true) {
            t = null;
            if (!Intrinsics.m1834a(cls, Object.class)) {
                try {
                    Field field = cls.getDeclaredField(fieldName);
                    Intrinsics.m1831d(field, "field");
                    field.setAccessible(true);
                    Object obj = field.get(instance);
                    if (fieldType.isInstance(obj)) {
                        t = fieldType.cast(obj);
                        break;
                    }
                    break;
                } catch (NoSuchFieldException e) {
                    cls = cls.getSuperclass();
                    Intrinsics.m1831d(cls, "c.superclass");
                }
            } else if (!(!Intrinsics.m1834a(fieldName, "delegate")) || (readFieldOrNull = readFieldOrNull(instance, Object.class, "delegate")) == null) {
                return null;
            } else {
                return (T) readFieldOrNull(readFieldOrNull, fieldType, fieldName);
            }
        }
        return t;
    }

    public static final int readMedium(@NotNull BufferedSource readMedium) throws IOException {
        Intrinsics.m1830e(readMedium, "$this$readMedium");
        return and(readMedium.readByte(), 255) | (and(readMedium.readByte(), 255) << 16) | (and(readMedium.readByte(), 255) << 8);
    }

    public static final int skipAll(@NotNull Buffer skipAll, byte b) {
        Intrinsics.m1830e(skipAll, "$this$skipAll");
        int i = 0;
        while (!skipAll.mo60z() && skipAll.m192p(0L) == b) {
            i++;
            skipAll.readByte();
        }
        return i;
    }

    public static final boolean skipAll(@NotNull Source skipAll, int i, @NotNull TimeUnit timeUnit) throws IOException {
        boolean z;
        Intrinsics.m1830e(skipAll, "$this$skipAll");
        Intrinsics.m1830e(timeUnit, "timeUnit");
        long nanoTime = System.nanoTime();
        long deadlineNanoTime = skipAll.timeout().hasDeadline() ? skipAll.timeout().deadlineNanoTime() - nanoTime : Long.MAX_VALUE;
        skipAll.timeout().deadlineNanoTime(Math.min(deadlineNanoTime, timeUnit.toNanos(i)) + nanoTime);
        try {
            Buffer buffer = new Buffer();
            while (skipAll.read(buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                buffer.m203a();
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

    @NotNull
    public static final ThreadFactory threadFactory(@NotNull final String name, final boolean z) {
        Intrinsics.m1830e(name, "name");
        return new ThreadFactory() { // from class: okhttp3.internal.Util$threadFactory$1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, name);
                thread.setDaemon(z);
                return thread;
            }
        };
    }

    public static final void threadName(@NotNull String name, @NotNull Function0<Unit> block) {
        Intrinsics.m1830e(name, "name");
        Intrinsics.m1830e(block, "block");
        Thread currentThread = Thread.currentThread();
        Intrinsics.m1831d(currentThread, "currentThread");
        String name2 = currentThread.getName();
        currentThread.setName(name);
        try {
            block.invoke();
            InlineMarker.m1836b(1);
            currentThread.setName(name2);
            InlineMarker.m1837a(1);
        } catch (Throwable th) {
            InlineMarker.m1836b(1);
            currentThread.setName(name2);
            InlineMarker.m1837a(1);
            throw th;
        }
    }

    @NotNull
    public static final List<Header> toHeaderList(@NotNull Headers toHeaderList) {
        IntRange i;
        int p;
        Intrinsics.m1830e(toHeaderList, "$this$toHeaderList");
        i = RangesKt___RangesKt.m1706i(0, toHeaderList.size());
        p = CollectionsKt__IterablesKt.m2164p(i, 10);
        ArrayList arrayList = new ArrayList(p);
        Iterator<Integer> it = i.iterator();
        while (it.hasNext()) {
            int b = ((IntIterator) it).mo1733b();
            arrayList.add(new Header(toHeaderList.name(b), toHeaderList.value(b)));
        }
        return arrayList;
    }

    @NotNull
    public static final Headers toHeaders(@NotNull List<Header> toHeaders) {
        Intrinsics.m1830e(toHeaders, "$this$toHeaders");
        Headers.Builder builder = new Headers.Builder();
        for (Header header : toHeaders) {
            builder.addLenient$okhttp(header.component1().m176F(), header.component2().m176F());
        }
        return builder.build();
    }

    @NotNull
    public static final String toHexString(int i) {
        String hexString = Integer.toHexString(i);
        Intrinsics.m1831d(hexString, "Integer.toHexString(this)");
        return hexString;
    }

    @NotNull
    public static final String toHexString(long j) {
        String hexString = Long.toHexString(j);
        Intrinsics.m1831d(hexString, "java.lang.Long.toHexString(this)");
        return hexString;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0057, code lost:
        if (r6.port() != okhttp3.HttpUrl.Companion.defaultPort(r6.scheme())) goto L_0x005a;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String toHostHeader(@org.jetbrains.annotations.NotNull okhttp3.HttpUrl r6, boolean r7) {
        /*
            r0 = r6
            java.lang.String r1 = "$this$toHostHeader"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r6
            java.lang.String r0 = r0.host()
            java.lang.String r1 = ":"
            r2 = 0
            r3 = 2
            r4 = 0
            boolean r0 = kotlin.text.StringsKt.m1535H(r0, r1, r2, r3, r4)
            if (r0 == 0) goto L_0x003e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            r1 = 91
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.host()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = 93
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r0 = r0.toString()
            r8 = r0
            goto L_0x0043
        L_0x003e:
            r0 = r6
            java.lang.String r0 = r0.host()
            r8 = r0
        L_0x0043:
            r0 = r7
            if (r0 != 0) goto L_0x005a
            r0 = r8
            r9 = r0
            r0 = r6
            int r0 = r0.port()
            okhttp3.HttpUrl$Companion r1 = okhttp3.HttpUrl.Companion
            r2 = r6
            java.lang.String r2 = r2.scheme()
            int r1 = r1.defaultPort(r2)
            if (r0 == r1) goto L_0x007d
        L_0x005a:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = 58
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r6
            int r1 = r1.port()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            java.lang.String r0 = r0.toString()
            r9 = r0
        L_0x007d:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.Util.toHostHeader(okhttp3.HttpUrl, boolean):java.lang.String");
    }

    public static /* synthetic */ String toHostHeader$default(HttpUrl httpUrl, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return toHostHeader(httpUrl, z);
    }

    @NotNull
    public static final <T> List<T> toImmutableList(@NotNull List<? extends T> toImmutableList) {
        List W;
        Intrinsics.m1830e(toImmutableList, "$this$toImmutableList");
        W = CollectionsKt___CollectionsKt.m2131W(toImmutableList);
        List<T> unmodifiableList = Collections.unmodifiableList(W);
        Intrinsics.m1831d(unmodifiableList, "Collections.unmodifiableList(toMutableList())");
        return unmodifiableList;
    }

    @NotNull
    public static final <K, V> Map<K, V> toImmutableMap(@NotNull Map<K, ? extends V> toImmutableMap) {
        Map<K, V> map;
        Intrinsics.m1830e(toImmutableMap, "$this$toImmutableMap");
        if (toImmutableMap.isEmpty()) {
            map = MapsKt__MapsKt.m2085f();
        } else {
            map = Collections.unmodifiableMap(new LinkedHashMap(toImmutableMap));
            Intrinsics.m1831d(map, "Collections.unmodifiableMap(LinkedHashMap(this))");
        }
        return map;
    }

    public static final long toLongOrDefault(@NotNull String toLongOrDefault, long j) {
        Intrinsics.m1830e(toLongOrDefault, "$this$toLongOrDefault");
        try {
            j = Long.parseLong(toLongOrDefault);
        } catch (NumberFormatException e) {
        }
        return j;
    }

    public static final int toNonNegativeInt(@Nullable String str, int i) {
        if (str != null) {
            try {
                long parseLong = Long.parseLong(str);
                int i2 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                if (parseLong <= ((long) Api.BaseClientBuilder.API_PRIORITY_OTHER)) {
                    i2 = parseLong < 0 ? 0 : (int) parseLong;
                }
                return i2;
            } catch (NumberFormatException e) {
            }
        }
        return i;
    }

    @NotNull
    public static final String trimSubstring(@NotNull String trimSubstring, int i, int i2) {
        Intrinsics.m1830e(trimSubstring, "$this$trimSubstring");
        int indexOfFirstNonAsciiWhitespace = indexOfFirstNonAsciiWhitespace(trimSubstring, i, i2);
        String substring = trimSubstring.substring(indexOfFirstNonAsciiWhitespace, indexOfLastNonAsciiWhitespace(trimSubstring, indexOfFirstNonAsciiWhitespace, i2));
        Intrinsics.m1831d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
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

    public static final void wait(@NotNull Object wait) {
        Intrinsics.m1830e(wait, "$this$wait");
        wait.wait();
    }

    @NotNull
    public static final Throwable withSuppressed(@NotNull Exception withSuppressed, @NotNull List<? extends Exception> suppressed) {
        Intrinsics.m1830e(withSuppressed, "$this$withSuppressed");
        Intrinsics.m1830e(suppressed, "suppressed");
        if (suppressed.size() > 1) {
            System.out.println(suppressed);
        }
        for (Exception exc : suppressed) {
            ExceptionsKt__ExceptionsKt.m2491a(withSuppressed, exc);
        }
        return withSuppressed;
    }

    public static final void writeMedium(@NotNull BufferedSink writeMedium, int i) throws IOException {
        Intrinsics.m1830e(writeMedium, "$this$writeMedium");
        writeMedium.mo100A((i >>> 16) & 255);
        writeMedium.mo100A((i >>> 8) & 255);
        writeMedium.mo100A(i & 255);
    }
}
