package okhttp3.internal.platform.android;

import android.util.Log;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt___StringsKt;
import okhttp3.OkHttpClient;
import okhttp3.internal.SuppressSignatureCheck;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.Http2;
@SuppressSignatureCheck
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0004\bÇ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b\u001d\u0010\rJ1\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H��¢\u0006\u0004\b\t\u0010\nJ\r\u0010\f\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u00020\u00038\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\"\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lokhttp3/internal/platform/android/AndroidLog;", "", "loggerName", "", "logLevel", "message", "", "t", "", "androidLog$okhttp", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V", "androidLog", "enable", "()V", "logger", "tag", "enableLogging", "(Ljava/lang/String;Ljava/lang/String;)V", "loggerTag", "(Ljava/lang/String;)Ljava/lang/String;", "MAX_LOG_LENGTH", "I", "Ljava/util/concurrent/CopyOnWriteArraySet;", "Ljava/util/logging/Logger;", "configuredLoggers", "Ljava/util/concurrent/CopyOnWriteArraySet;", "", "knownLoggers", "Ljava/util/Map;", "<init>", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/platform/android/AndroidLog.class */
public final class AndroidLog {
    private static final int MAX_LOG_LENGTH = 4000;
    private static final Map<String, String> knownLoggers;
    public static final AndroidLog INSTANCE = new AndroidLog();
    private static final CopyOnWriteArraySet<Logger> configuredLoggers = new CopyOnWriteArraySet<>();

    static {
        Map<String, String> n;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Package r0 = OkHttpClient.class.getPackage();
        String name = r0 != null ? r0.getName() : null;
        if (name != null) {
            linkedHashMap.put(name, "OkHttp");
        }
        String name2 = OkHttpClient.class.getName();
        Intrinsics.m1831d(name2, "OkHttpClient::class.java.name");
        linkedHashMap.put(name2, "okhttp.OkHttpClient");
        String name3 = Http2.class.getName();
        Intrinsics.m1831d(name3, "Http2::class.java.name");
        linkedHashMap.put(name3, "okhttp.Http2");
        String name4 = TaskRunner.class.getName();
        Intrinsics.m1831d(name4, "TaskRunner::class.java.name");
        linkedHashMap.put(name4, "okhttp.TaskRunner");
        linkedHashMap.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        n = MapsKt__MapsKt.m2077n(linkedHashMap);
        knownLoggers = n;
    }

    private AndroidLog() {
    }

    private final void enableLogging(String str, String str2) {
        Logger logger = Logger.getLogger(str);
        if (configuredLoggers.add(logger)) {
            Intrinsics.m1831d(logger, "logger");
            logger.setUseParentHandlers(false);
            logger.setLevel(Log.isLoggable(str2, 3) ? Level.FINE : Log.isLoggable(str2, 4) ? Level.INFO : Level.WARNING);
            logger.addHandler(AndroidLogHandler.INSTANCE);
        }
    }

    private final String loggerTag(String str) {
        String str2 = knownLoggers.get(str);
        return str2 != null ? str2 : StringsKt___StringsKt.m1415H0(str, 23);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00a0, code lost:
        r13 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void androidLog$okhttp(@org.jetbrains.annotations.NotNull java.lang.String r8, int r9, @org.jetbrains.annotations.NotNull java.lang.String r10, @org.jetbrains.annotations.Nullable java.lang.Throwable r11) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "loggerName"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r10
            java.lang.String r1 = "message"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r7
            r1 = r8
            java.lang.String r0 = r0.loggerTag(r1)
            r12 = r0
            r0 = r12
            r1 = r9
            boolean r0 = android.util.Log.isLoggable(r0, r1)
            if (r0 == 0) goto L_0x00ba
            r0 = r10
            r8 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0047
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = "\n"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r11
            java.lang.String r1 = android.util.Log.getStackTraceString(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r0 = r0.toString()
            r8 = r0
        L_0x0047:
            r0 = 0
            r13 = r0
            r0 = r8
            int r0 = r0.length()
            r14 = r0
        L_0x0050:
            r0 = r13
            r1 = r14
            if (r0 >= r1) goto L_0x00ba
            r0 = r8
            r1 = 10
            r2 = r13
            r3 = 0
            r4 = 4
            r5 = 0
            int r0 = kotlin.text.StringsKt.m1532T(r0, r1, r2, r3, r4, r5)
            r15 = r0
            r0 = r15
            r1 = -1
            if (r0 == r1) goto L_0x006d
            goto L_0x0071
        L_0x006d:
            r0 = r14
            r15 = r0
        L_0x0071:
            r0 = r15
            r1 = r13
            r2 = 4000(0xfa0, float:5.605E-42)
            int r1 = r1 + r2
            int r0 = java.lang.Math.min(r0, r1)
            r16 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00b0
            r0 = r8
            r1 = r13
            r2 = r16
            java.lang.String r0 = r0.substring(r1, r2)
            r10 = r0
            r0 = r10
            java.lang.String r1 = "(this as java.lang.Strin…ing(startIndex, endIndex)"
            kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
            r0 = r9
            r1 = r12
            r2 = r10
            int r0 = android.util.Log.println(r0, r1, r2)
            r0 = r16
            r1 = r15
            if (r0 < r1) goto L_0x00a9
            r0 = r16
            r1 = 1
            int r0 = r0 + r1
            r13 = r0
            goto L_0x0050
        L_0x00a9:
            r0 = r16
            r13 = r0
            goto L_0x0071
        L_0x00b0:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r1 = r0
            java.lang.String r2 = "null cannot be cast to non-null type java.lang.String"
            r1.<init>(r2)
            throw r0
        L_0x00ba:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.platform.android.AndroidLog.androidLog$okhttp(java.lang.String, int, java.lang.String, java.lang.Throwable):void");
    }

    public final void enable() {
        for (Map.Entry<String, String> entry : knownLoggers.entrySet()) {
            enableLogging(entry.getKey(), entry.getValue());
        }
    }
}
