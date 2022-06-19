package io.bidmachine.core;

import java.util.Collection;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/core/Logger.class */
public class Logger {
    private static String TAG = "Logger";
    private static boolean isLoggingEnabled = false;
    private static LoggerMessageBuilder messageBuilder = new C17830a();

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/Logger$LoggerMessageBuilder.class */
    public interface LoggerMessageBuilder {
        String buildMessage(String str);
    }

    /* renamed from: io.bidmachine.core.Logger$a */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/Logger$a.class */
    static final class C17830a implements LoggerMessageBuilder {
        private C17830a() {
        }

        @Override // io.bidmachine.core.Logger.LoggerMessageBuilder
        public final String buildMessage(String str) {
            return str;
        }
    }

    public static boolean isLoggingEnabled() {
        return isLoggingEnabled;
    }

    public static void log(String str) {
        if (isLoggingEnabled) {
            if (str.length() <= 1000) {
                sendLog(str);
                return;
            }
            int length = ((str.length() + 1000) - 1) / 1000;
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i >= length) {
                    return;
                }
                int i4 = i3 + 1000;
                sendLog(str.substring(i3, Math.min(str.length(), i4)));
                i++;
                i2 = i4;
            }
        }
    }

    public static void log(String str, Map<?, ?> map) {
        if (isLoggingEnabled) {
            StringBuilder sb = new StringBuilder();
            if (map == null || map.isEmpty()) {
                sb.append("Empty");
            } else {
                for (Map.Entry<?, ?> entry : map.entrySet()) {
                    if (sb.length() > 0) {
                        sb.append(StringUtils.f67179LF);
                    }
                    String str2 = null;
                    if (entry.getValue() instanceof Collection) {
                        Collection collection = (Collection) entry.getValue();
                        StringBuilder sb2 = new StringBuilder();
                        for (Object obj : collection) {
                            if (obj != null) {
                                if (sb2.length() > 0) {
                                    sb2.append(",");
                                }
                                sb2.append(obj.toString());
                            }
                        }
                        if (sb2.length() == 0) {
                            sb2.append("Empty");
                        }
                        str2 = sb2.toString();
                    } else if (entry.getValue() != null) {
                        str2 = entry.getValue().toString();
                    }
                    sb.append(entry.getKey());
                    sb.append(": ");
                    sb.append(str2);
                }
            }
            sb.insert(0, StringUtils.f67179LF).insert(0, str);
            sendLog(sb.toString());
        }
    }

    public static void log(Throwable th) {
        if (isLoggingEnabled) {
            th.printStackTrace();
        }
    }

    private static void sendLog(String str) {
        messageBuilder.buildMessage(str);
    }

    public static void setLoggingEnabled(boolean z) {
        isLoggingEnabled = z;
    }

    public static void setMessageBuilder(LoggerMessageBuilder loggerMessageBuilder) {
        messageBuilder = loggerMessageBuilder;
    }

    public static void setTag(String str) {
        TAG = str;
    }
}
