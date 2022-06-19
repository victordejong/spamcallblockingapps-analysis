package com.mopub.common.logging;

import com.mopub.common.Preconditions;
import java.util.HashMap;
import java.util.Map;
import p1727n3.p1807k.p1820h.C26553c;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/logging/MoPubLog.class */
public class MoPubLog {
    public static final String LOGTAG = "MoPub";

    /* renamed from: d */
    public static final MoPubLog f8619d = new MoPubLog();

    /* renamed from: a */
    public LogLevel f8620a = LogLevel.INFO;

    /* renamed from: b */
    public Map<MoPubLogger, LogLevel> f8621b = new HashMap();

    /* renamed from: c */
    public MoPubLogger f8622c = new MoPubDefaultLogger();

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/logging/MoPubLog$LogLevelInt.class */
    public interface LogLevelInt {
        public static final int DEBUG_INT = 20;
        public static final int INFO_INT = 30;
        public static final int NONE_INT = 70;
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/logging/MoPubLog$MPLogEventType.class */
    public interface MPLogEventType {
        LogLevel getLogLevel();

        String getMessage(Object... objArr);
    }

    private MoPubLog() {
    }

    /* renamed from: a */
    public static C26553c<String, String> m36287a() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        return new C26553c<>(stackTrace[4].getClassName(), stackTrace[4].getMethodName());
    }

    public static void addLogger(MoPubLogger moPubLogger) {
        addLogger(moPubLogger, f8619d.f8620a);
    }

    public static void addLogger(MoPubLogger moPubLogger, LogLevel logLevel) {
        f8619d.f8621b.put(moPubLogger, logLevel);
    }

    /* renamed from: b */
    public static void m36286b(C26553c<String, String> c26553c, String str, MPLogEventType mPLogEventType, Object... objArr) {
        Preconditions.checkNotNull(c26553c);
        if (mPLogEventType == null) {
            return;
        }
        for (MoPubLogger moPubLogger : f8619d.f8621b.keySet()) {
            MoPubLog moPubLog = f8619d;
            if (moPubLog.f8621b.get(moPubLogger) != null && moPubLog.f8621b.get(moPubLogger).intValue() <= mPLogEventType.getLogLevel().intValue()) {
                moPubLogger.log(c26553c.f74395a, c26553c.f74396b, str, mPLogEventType.getMessage(objArr));
            }
        }
    }

    @Deprecated
    /* renamed from: c */
    public static void m36285c(String str) {
        m36284c(str, null);
    }

    @Deprecated
    /* renamed from: c */
    public static void m36284c(String str, Throwable th) {
        m36279f(str, th);
    }

    @Deprecated
    /* renamed from: d */
    public static void m36283d(String str) {
        m36282d(str, null);
    }

    @Deprecated
    /* renamed from: d */
    public static void m36282d(String str, Throwable th) {
        m36279f(str, th);
    }

    @Deprecated
    /* renamed from: e */
    public static void m36281e(String str) {
        m36280e(str, null);
    }

    @Deprecated
    /* renamed from: e */
    public static void m36280e(String str, Throwable th) {
        m36279f(str, th);
    }

    /* renamed from: f */
    public static void m36279f(String str, Throwable th) {
        log(SdkLogEvent.CUSTOM_WITH_THROWABLE, str, th != null ? th.getMessage() : "");
    }

    public static LogLevel getLogLevel() {
        return f8619d.f8620a;
    }

    @Deprecated
    /* renamed from: i */
    public static void m36278i(String str) {
        m36277i(str, null);
    }

    @Deprecated
    /* renamed from: i */
    public static void m36277i(String str, Throwable th) {
        m36279f(str, th);
    }

    public static void log(MPLogEventType mPLogEventType, Object... objArr) {
        m36286b(m36287a(), null, mPLogEventType, objArr);
    }

    public static void log(String str, MPLogEventType mPLogEventType, Object... objArr) {
        m36286b(m36287a(), str, mPLogEventType, objArr);
    }

    public static void setLogLevel(LogLevel logLevel) {
        Preconditions.checkNotNull(logLevel);
        MoPubLog moPubLog = f8619d;
        moPubLog.f8620a = logLevel;
        addLogger(moPubLog.f8622c, logLevel);
    }

    @Deprecated
    /* renamed from: v */
    public static void m36276v(String str) {
        m36275v(str, null);
    }

    @Deprecated
    /* renamed from: v */
    public static void m36275v(String str, Throwable th) {
        m36279f(str, th);
    }

    @Deprecated
    /* renamed from: w */
    public static void m36274w(String str) {
        m36273w(str, null);
    }

    @Deprecated
    /* renamed from: w */
    public static void m36273w(String str, Throwable th) {
        m36279f(str, th);
    }
}
