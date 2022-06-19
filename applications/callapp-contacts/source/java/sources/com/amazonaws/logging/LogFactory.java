package com.amazonaws.logging;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/logging/LogFactory.class */
public class LogFactory {

    /* renamed from: a */
    private static final String f12109a = "LogFactory";

    /* renamed from: b */
    private static final Map<String, Log> f12110b = new HashMap();

    /* renamed from: c */
    private static Level f12111c = null;

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

    /* renamed from: a */
    public static Log m38584a(Class<?> cls) {
        Log m38583a;
        synchronized (LogFactory.class) {
            try {
                m38583a = m38583a(m38582b(cls.getSimpleName()));
            } catch (Throwable th) {
                throw th;
            }
        }
        return m38583a;
    }

    /* renamed from: a */
    public static Log m38583a(String str) {
        synchronized (LogFactory.class) {
            try {
                String m38582b = m38582b(str);
                Map<String, Log> map = f12110b;
                Log log = map.get(m38582b);
                if (log != null) {
                    return log;
                }
                Log consoleLog = Environment.m38598a() ? new ConsoleLog(m38582b) : new AndroidLog(m38582b);
                map.put(m38582b, consoleLog);
                return consoleLog;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static Level m38585a() {
        return f12111c;
    }

    /* renamed from: b */
    private static String m38582b(String str) {
        String str2 = str;
        if (str.length() > 23) {
            m38583a(f12109a).mo38587d("Truncating log tag length as it exceed 23, the limit imposed by Android on certain API Levels");
            str2 = str.substring(0, 23);
        }
        return str2;
    }
}
