package okhttp3.internal.platform.android;

import android.util.Log;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.jvm.internal.p;
import okhttp3.OkHttpClient;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.Http2;
import org.apache.commons.lang3.StringUtils;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0007\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J/\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H��¢\u0006\u0002\b\u0012J\u0006\u0010\u0013\u001a\u00020\fJ\u0018\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0002J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, d2 = {"Lokhttp3/internal/platform/android/AndroidLog;", "", "()V", "MAX_LOG_LENGTH", "", "configuredLoggers", "Ljava/util/concurrent/CopyOnWriteArraySet;", "Ljava/util/logging/Logger;", "knownLoggers", "", "", "androidLog", "", "loggerName", "logLevel", "message", "t", "", "androidLog$okhttp", "enable", "enableLogging", "logger", "tag", "loggerTag", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/platform/android/AndroidLog.class */
public final class AndroidLog {
    private static final int MAX_LOG_LENGTH = 4000;
    private static final Map<String, String> knownLoggers;
    public static final AndroidLog INSTANCE = new AndroidLog();
    private static final CopyOnWriteArraySet<Logger> configuredLoggers = new CopyOnWriteArraySet<>();

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Package r0 = OkHttpClient.class.getPackage();
        String name = r0 != null ? r0.getName() : null;
        if (name != null) {
            linkedHashMap.put(name, "OkHttp");
        }
        LinkedHashMap toMap = linkedHashMap;
        String name2 = OkHttpClient.class.getName();
        p.b(name2, "OkHttpClient::class.java.name");
        toMap.put(name2, "okhttp.OkHttpClient");
        String name3 = Http2.class.getName();
        p.b(name3, "Http2::class.java.name");
        toMap.put(name3, "okhttp.Http2");
        String name4 = TaskRunner.class.getName();
        p.b(name4, "TaskRunner::class.java.name");
        toMap.put(name4, "okhttp.TaskRunner");
        toMap.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        p.d(toMap, "$this$toMap");
        int size = toMap.size();
        knownLoggers = size != 0 ? size != 1 ? ai.b(toMap) : ai.a(toMap) : ai.a();
    }

    private AndroidLog() {
    }

    private final void enableLogging(String str, String str2) {
        Logger logger = Logger.getLogger(str);
        if (configuredLoggers.add(logger)) {
            p.b(logger, "logger");
            logger.setUseParentHandlers(false);
            logger.setLevel(Log.isLoggable(str2, 3) ? Level.FINE : Log.isLoggable(str2, 4) ? Level.INFO : Level.WARNING);
            logger.addHandler(AndroidLogHandler.INSTANCE);
        }
    }

    private final String loggerTag(String str) {
        String str2 = knownLoggers.get(str);
        String str3 = str2;
        if (str2 == null) {
            str3 = kotlin.h.p.i(str);
        }
        return str3;
    }

    public final void androidLog$okhttp(String loggerName, int i, String message, Throwable th) {
        int min;
        p.d(loggerName, "loggerName");
        p.d(message, "message");
        String loggerTag = loggerTag(loggerName);
        if (Log.isLoggable(loggerTag, i)) {
            String str = message;
            if (th != null) {
                str = message + StringUtils.LF + Log.getStackTraceString(th);
            }
            int length = str.length();
            int i2 = 0;
            while (i2 < length) {
                int a2 = kotlin.h.p.a((CharSequence) str, '\n', i2, false, 4);
                if (a2 == -1) {
                    a2 = length;
                }
                while (true) {
                    min = Math.min(a2, i2 + 4000);
                    Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                    String substring = str.substring(i2, min);
                    p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    Log.println(i, loggerTag, substring);
                    if (min >= a2) {
                        break;
                    }
                    i2 = min;
                }
                i2 = min + 1;
            }
        }
    }

    public final void enable() {
        for (Map.Entry<String, String> entry : knownLoggers.entrySet()) {
            enableLogging(entry.getKey(), entry.getValue());
        }
    }
}
