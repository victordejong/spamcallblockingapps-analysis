package com.amazonaws.logging;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/logging/LogFactory.class */
public class LogFactory {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6655a = "LogFactory";

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, Log> f6656b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private static Level f6657c = null;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/logging/LogFactory$Level.class */
    public enum Level {
        ALL(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW),
        TRACE(0),
        DEBUG(1),
        INFO(2),
        WARN(3),
        ERROR(4),
        OFF(Integer.MAX_VALUE);
        
        private final int value;

        Level(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }
    }

    public static Log a(Class<?> cls) {
        Log a2;
        synchronized (LogFactory.class) {
            try {
                a2 = a(b(cls.getSimpleName()));
            } catch (Throwable th) {
                throw th;
            }
        }
        return a2;
    }

    public static Log a(String str) {
        synchronized (LogFactory.class) {
            try {
                String b2 = b(str);
                Map<String, Log> map = f6656b;
                Log log = map.get(b2);
                if (log != null) {
                    return log;
                }
                Log consoleLog = Environment.a() ? new ConsoleLog(b2) : new AndroidLog(b2);
                map.put(b2, consoleLog);
                return consoleLog;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Level a() {
        return f6657c;
    }

    private static String b(String str) {
        String str2 = str;
        if (str.length() > 23) {
            a(f6655a).d("Truncating log tag length as it exceed 23, the limit imposed by Android on certain API Levels");
            str2 = str.substring(0, 23);
        }
        return str2;
    }
}
