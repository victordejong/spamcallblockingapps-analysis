package com.mopub.common.logging;

import android.text.TextUtils;
import androidx.core.p036e.C0828b;
import com.mopub.common.Preconditions;
import com.mopub.common.util.Strings;
import java.text.MessageFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/logging/MoPubLog.class */
public class MoPubLog {
    public static final String LOGTAG = "MoPub";

    /* renamed from: a */
    private static final MoPubLog f58866a = new MoPubLog();

    /* renamed from: b */
    private LogLevel f58867b = LogLevel.INFO;

    /* renamed from: c */
    private Map<MoPubLogger, LogLevel> f58868c = new HashMap();

    /* renamed from: d */
    private MoPubLogger f58869d = new MoPubDefaultLogger();

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/logging/MoPubLog$AdLogEvent.class */
    public enum AdLogEvent implements MPLogEventType {
        REQUESTED(LogLevel.DEBUG, "Ad requesting from AdServer: {0}\n{1}"),
        RESPONSE_RECEIVED(LogLevel.DEBUG, "Ad server responded with:\n{0}"),
        LOAD_ATTEMPTED(LogLevel.INFO, "Ad attempting to load"),
        LOAD_SUCCESS(LogLevel.INFO, "Ad loaded"),
        LOAD_FAILED(LogLevel.INFO, "Ad failed to load: ({0}) {1}"),
        SHOW_ATTEMPTED(LogLevel.INFO, "Attempting to show ad"),
        SHOW_SUCCESS(LogLevel.INFO, "Ad shown"),
        SHOW_FAILED(LogLevel.INFO, "Ad failed to show: ({0}) {1}"),
        EXPIRED(LogLevel.DEBUG, "Ad expired since it was not shown within {0} seconds of it being loaded"),
        CLICKED(LogLevel.DEBUG, "Ad clicked"),
        WILL_APPEAR(LogLevel.DEBUG, "Ad will appear"),
        DID_APPEAR(LogLevel.DEBUG, "Ad did appear"),
        WILL_DISAPPEAR(LogLevel.DEBUG, "Ad will disappear"),
        DID_DISAPPEAR(LogLevel.DEBUG, "Ad did disappear"),
        SHOULD_REWARD(LogLevel.DEBUG, "Ad should reward user with {0} {1}"),
        WILL_LEAVE_APPLICATION(LogLevel.DEBUG, "Ad will leave application"),
        CUSTOM(LogLevel.DEBUG, "Ad Log - {0}"),
        CUSTOM_WITH_THROWABLE(LogLevel.DEBUG, "Ad Log With Throwable - {0}, {1}");
        
        private LogLevel mLogLevel;
        private String mMessageFormat;

        AdLogEvent(LogLevel logLevel, String str) {
            Preconditions.checkNotNull(logLevel);
            Preconditions.checkNotNull(str);
            this.mLogLevel = logLevel;
            this.mMessageFormat = str;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public final LogLevel getLogLevel() {
            return this.mLogLevel;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public final String getMessage(Object... objArr) {
            return MessageFormat.format(this.mMessageFormat, objArr);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/logging/MoPubLog$AdapterLogEvent.class */
    public enum AdapterLogEvent implements MPLogEventType {
        LOAD_ATTEMPTED(LogLevel.DEBUG, "Adapter {0} attempting to load ad{1}{2}"),
        LOAD_SUCCESS(LogLevel.DEBUG, "Adapter {0} successfully loaded ad"),
        LOAD_FAILED(LogLevel.DEBUG, "Adapter {0} failed to load ad: ({1}) {2}"),
        SHOW_ATTEMPTED(LogLevel.DEBUG, "Adapter {0} attempting to show ad"),
        SHOW_SUCCESS(LogLevel.DEBUG, "Adapter {0} successfully showed ad"),
        SHOW_FAILED(LogLevel.DEBUG, "Adapter {0} failed to show ad: ({1}) {2}"),
        EXPIRED(LogLevel.DEBUG, "Adapter {0} expired since it was not shown within {1} seconds of it being loaded"),
        CLICKED(LogLevel.DEBUG, "Adapter {0} clicked"),
        WILL_APPEAR(LogLevel.DEBUG, "Adapter {0} will appear"),
        DID_APPEAR(LogLevel.DEBUG, "Adapter {0} did appear"),
        WILL_DISAPPEAR(LogLevel.DEBUG, "Adapter {0} will disappear"),
        DID_DISAPPEAR(LogLevel.DEBUG, "Adapter {0} did disappear"),
        SHOULD_REWARD(LogLevel.DEBUG, "Adapter {0} should reward user with {1} {2}"),
        WILL_LEAVE_APPLICATION(LogLevel.DEBUG, "Adapter {0} will leave application"),
        CUSTOM(LogLevel.DEBUG, "Adapter {0} Log - {1}"),
        CUSTOM_WITH_THROWABLE(LogLevel.DEBUG, "Adapter {0} Log With Throwable - {1}, {2}");
        
        private LogLevel mLogLevel;
        private String mMessageFormat;

        AdapterLogEvent(LogLevel logLevel, String str) {
            Preconditions.checkNotNull(logLevel);
            Preconditions.checkNotNull(str);
            this.mLogLevel = logLevel;
            this.mMessageFormat = str;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public final LogLevel getLogLevel() {
            return this.mLogLevel;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public final String getMessage(Object... objArr) {
            MessageFormat messageFormat = new MessageFormat(this.mMessageFormat);
            Object[] copyOf = Arrays.copyOf(objArr, messageFormat.getFormats().length);
            if (this == LOAD_ATTEMPTED) {
                if (objArr.length <= 1 || objArr[1] == null || TextUtils.isEmpty(objArr[1].toString())) {
                    copyOf[1] = "";
                } else {
                    copyOf[1] = MessageFormat.format(" with DSP creative ID {0}", objArr[1].toString());
                }
                if (objArr.length <= 2 || objArr[2] == null || TextUtils.isEmpty(objArr[2].toString())) {
                    copyOf[2] = "";
                } else {
                    copyOf[2] = MessageFormat.format(" with DSP name {0}", objArr[2].toString());
                }
            }
            return messageFormat.format(copyOf);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/logging/MoPubLog$ConsentLogEvent.class */
    public enum ConsentLogEvent implements MPLogEventType {
        SYNC_ATTEMPTED(LogLevel.DEBUG, "Consent attempting to synchronize state"),
        SYNC_COMPLETED(LogLevel.DEBUG, "Consent synchronization completed: {0}"),
        SYNC_FAILED(LogLevel.DEBUG, "Consent synchronization failed: ({0}) {1}"),
        UPDATED(LogLevel.DEBUG, "Consent changed from {0} to {1}: PII {2} be collected. Reason: {3}"),
        SHOULD_SHOW_DIALOG(LogLevel.DEBUG, "Consent dialog should be shown"),
        LOAD_ATTEMPTED(LogLevel.DEBUG, "Consent attempting to load dialog"),
        LOAD_SUCCESS(LogLevel.DEBUG, "Consent dialog loaded"),
        LOAD_FAILED(LogLevel.DEBUG, "Consent dialog failed: ({0}) {1}"),
        SHOW_ATTEMPTED(LogLevel.DEBUG, "Consent dialog attempting to show"),
        SHOW_SUCCESS(LogLevel.DEBUG, "Consent successfully showed dialog"),
        SHOW_FAILED(LogLevel.DEBUG, "Consent dialog failed to show: ({0}) {1}"),
        CUSTOM(LogLevel.DEBUG, "Consent Log - {0}"),
        CUSTOM_WITH_THROWABLE(LogLevel.DEBUG, "Consent Log With Throwable - {0}, {1}");
        
        private LogLevel mLogLevel;
        private String mMessageFormat;

        ConsentLogEvent(LogLevel logLevel, String str) {
            Preconditions.checkNotNull(logLevel);
            Preconditions.checkNotNull(str);
            this.mLogLevel = logLevel;
            this.mMessageFormat = str;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public final LogLevel getLogLevel() {
            return this.mLogLevel;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public final String getMessage(Object... objArr) {
            if (this == UPDATED && objArr != null && objArr.length > 2) {
                objArr[2] = (!(objArr[2] instanceof Boolean) || !((Boolean) objArr[2]).booleanValue()) ? "cannot" : "can";
            }
            return MessageFormat.format(this.mMessageFormat, objArr);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/logging/MoPubLog$LogLevel.class */
    public enum LogLevel implements LogLevelInt {
        DEBUG(20, "DEBUG"),
        INFO(30, "INFO"),
        NONE(70, "NONE");
        
        private int mLevel;
        private String mLevelString;

        LogLevel(int i, String str) {
            this.mLevel = i;
            this.mLevelString = str;
        }

        public static LogLevel valueOf(int i) {
            return i != 20 ? i != 30 ? NONE : INFO : DEBUG;
        }

        public final int intValue() {
            return this.mLevel;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.mLevelString;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/logging/MoPubLog$LogLevelInt.class */
    public interface LogLevelInt {
        public static final int DEBUG_INT = 20;
        public static final int INFO_INT = 30;
        public static final int NONE_INT = 70;
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/logging/MoPubLog$MPLogEventType.class */
    public interface MPLogEventType {
        LogLevel getLogLevel();

        String getMessage(Object... objArr);
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/logging/MoPubLog$SdkLogEvent.class */
    public enum SdkLogEvent implements MPLogEventType {
        INIT_STARTED(LogLevel.DEBUG, "SDK initialization started"),
        INIT_FINISHED(LogLevel.INFO, "SDK initialized and ready to display ads.\nInitialized adapters:\n{0}"),
        INIT_FAILED(LogLevel.INFO, "SDK initialization failed - {0}\n{1}"),
        CUSTOM(LogLevel.DEBUG, "SDK Log - {0}"),
        CUSTOM_WITH_THROWABLE(LogLevel.DEBUG, "SDK Log With Throwable - {0}, {1}"),
        ERROR(LogLevel.DEBUG, "SDK Error Log - {0}"),
        ERROR_WITH_THROWABLE(LogLevel.DEBUG, "SDK Error Log - {0}, {1}");
        
        private LogLevel mLogLevel;
        private String mMessageFormat;

        SdkLogEvent(LogLevel logLevel, String str) {
            Preconditions.checkNotNull(logLevel);
            Preconditions.checkNotNull(str);
            this.mLogLevel = logLevel;
            this.mMessageFormat = str;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public final LogLevel getLogLevel() {
            return this.mLogLevel;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public final String getMessage(Object... objArr) {
            if (this == INIT_FINISHED && objArr.length > 0) {
                String delimitedString = Strings.getDelimitedString(objArr[0], StringUtils.f67179LF);
                if (TextUtils.isEmpty(delimitedString)) {
                    objArr[0] = "No adapters initialized.";
                } else {
                    objArr[0] = delimitedString;
                }
            }
            return MessageFormat.format(this.mMessageFormat, objArr);
        }
    }

    private MoPubLog() {
    }

    /* renamed from: a */
    private static C0828b<String, String> m6676a() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        return new C0828b<>(stackTrace[4].getClassName(), stackTrace[4].getMethodName());
    }

    /* renamed from: a */
    private static void m6675a(C0828b<String, String> c0828b, String str, MPLogEventType mPLogEventType, Object... objArr) {
        Preconditions.checkNotNull(c0828b);
        if (mPLogEventType == null) {
            return;
        }
        for (MoPubLogger moPubLogger : f58866a.f58868c.keySet()) {
            MoPubLog moPubLog = f58866a;
            if (moPubLog.f58868c.get(moPubLogger) != null && moPubLog.f58868c.get(moPubLogger).intValue() <= mPLogEventType.getLogLevel().intValue()) {
                moPubLogger.log(c0828b.f3556a, c0828b.f3557b, str, mPLogEventType.getMessage(objArr));
            }
        }
    }

    /* renamed from: a */
    private static void m6674a(String str, Throwable th) {
        log(SdkLogEvent.CUSTOM_WITH_THROWABLE, str, th != null ? th.getMessage() : "");
    }

    public static void addLogger(MoPubLogger moPubLogger) {
        addLogger(moPubLogger, f58866a.f58867b);
    }

    public static void addLogger(MoPubLogger moPubLogger, LogLevel logLevel) {
        f58866a.f58868c.put(moPubLogger, logLevel);
    }

    @Deprecated
    /* renamed from: c */
    public static void m6673c(String str) {
        m6672c(str, null);
    }

    @Deprecated
    /* renamed from: c */
    public static void m6672c(String str, Throwable th) {
        m6674a(str, th);
    }

    @Deprecated
    /* renamed from: d */
    public static void m6671d(String str) {
        m6670d(str, null);
    }

    @Deprecated
    /* renamed from: d */
    public static void m6670d(String str, Throwable th) {
        m6674a(str, th);
    }

    @Deprecated
    /* renamed from: e */
    public static void m6669e(String str) {
        m6668e(str, null);
    }

    @Deprecated
    /* renamed from: e */
    public static void m6668e(String str, Throwable th) {
        m6674a(str, th);
    }

    public static LogLevel getLogLevel() {
        return f58866a.f58867b;
    }

    @Deprecated
    /* renamed from: i */
    public static void m6667i(String str) {
        m6666i(str, null);
    }

    @Deprecated
    /* renamed from: i */
    public static void m6666i(String str, Throwable th) {
        m6674a(str, th);
    }

    public static void log(MPLogEventType mPLogEventType, Object... objArr) {
        m6675a(m6676a(), null, mPLogEventType, objArr);
    }

    public static void log(String str, MPLogEventType mPLogEventType, Object... objArr) {
        m6675a(m6676a(), str, mPLogEventType, objArr);
    }

    public static void setLogLevel(LogLevel logLevel) {
        Preconditions.checkNotNull(logLevel);
        MoPubLog moPubLog = f58866a;
        moPubLog.f58867b = logLevel;
        addLogger(moPubLog.f58869d, logLevel);
    }

    @Deprecated
    /* renamed from: v */
    public static void m6665v(String str) {
        m6664v(str, null);
    }

    @Deprecated
    /* renamed from: v */
    public static void m6664v(String str, Throwable th) {
        m6674a(str, th);
    }

    @Deprecated
    /* renamed from: w */
    public static void m6663w(String str) {
        m6662w(str, null);
    }

    @Deprecated
    /* renamed from: w */
    public static void m6662w(String str, Throwable th) {
        m6674a(str, th);
    }
}
