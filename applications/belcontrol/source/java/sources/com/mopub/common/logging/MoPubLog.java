package com.mopub.common.logging;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.common.util.Strings;
import java.text.MessageFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/logging/MoPubLog.class */
public class MoPubLog {
    public static final String LOGTAG = "MoPub";

    /* renamed from: d */
    public static final MoPubLog f4374d = new MoPubLog();

    /* renamed from: a */
    public LogLevel f4375a = LogLevel.INFO;

    /* renamed from: b */
    public Map<MoPubLogger, LogLevel> f4376b = new HashMap();

    /* renamed from: c */
    public MoPubLogger f4377c = new MoPubDefaultLogger();

    /* JADX WARN: Init of enum CLICKED can be incorrect */
    /* JADX WARN: Init of enum CUSTOM can be incorrect */
    /* JADX WARN: Init of enum CUSTOM_WITH_THROWABLE can be incorrect */
    /* JADX WARN: Init of enum DID_APPEAR can be incorrect */
    /* JADX WARN: Init of enum DID_DISAPPEAR can be incorrect */
    /* JADX WARN: Init of enum EXPIRED can be incorrect */
    /* JADX WARN: Init of enum LOAD_ATTEMPTED can be incorrect */
    /* JADX WARN: Init of enum LOAD_FAILED can be incorrect */
    /* JADX WARN: Init of enum LOAD_SUCCESS can be incorrect */
    /* JADX WARN: Init of enum REQUESTED can be incorrect */
    /* JADX WARN: Init of enum RESPONSE_RECEIVED can be incorrect */
    /* JADX WARN: Init of enum SHOULD_REWARD can be incorrect */
    /* JADX WARN: Init of enum SHOW_ATTEMPTED can be incorrect */
    /* JADX WARN: Init of enum SHOW_FAILED can be incorrect */
    /* JADX WARN: Init of enum SHOW_SUCCESS can be incorrect */
    /* JADX WARN: Init of enum WILL_APPEAR can be incorrect */
    /* JADX WARN: Init of enum WILL_DISAPPEAR can be incorrect */
    /* JADX WARN: Init of enum WILL_LEAVE_APPLICATION can be incorrect */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/logging/MoPubLog$AdLogEvent.class */
    public enum AdLogEvent implements MPLogEventType {
        REQUESTED(r0, "Ad requesting from AdServer: {0}\n{1}"),
        RESPONSE_RECEIVED(r0, "Ad server responded with:\n{0}"),
        LOAD_ATTEMPTED(r0, "Ad attempting to load"),
        LOAD_SUCCESS(r0, "Ad loaded"),
        LOAD_FAILED(r0, "Ad failed to load: ({0}) {1}"),
        SHOW_ATTEMPTED(r0, "Attempting to show ad"),
        SHOW_SUCCESS(r0, "Ad shown"),
        SHOW_FAILED(r0, "Ad failed to show: ({0}) {1}"),
        EXPIRED(r0, "Ad expired since it was not shown within {0} seconds of it being loaded"),
        CLICKED(r0, "Ad clicked"),
        WILL_APPEAR(r0, "Ad will appear"),
        DID_APPEAR(r0, "Ad did appear"),
        WILL_DISAPPEAR(r0, "Ad will disappear"),
        DID_DISAPPEAR(r0, "Ad did disappear"),
        SHOULD_REWARD(r0, "Ad should reward user with {0} {1}"),
        WILL_LEAVE_APPLICATION(r0, "Ad will leave application"),
        CUSTOM(r0, "Ad Log - {0}"),
        CUSTOM_WITH_THROWABLE(r0, "Ad Log With Throwable - {0}, {1}");
        

        /* renamed from: a */
        public LogLevel f4379a;

        /* renamed from: b */
        public String f4380b;

        static {
            LogLevel logLevel = LogLevel.DEBUG;
            LogLevel logLevel2 = LogLevel.INFO;
        }

        AdLogEvent(LogLevel logLevel, String str) {
            Preconditions.checkNotNull(logLevel);
            Preconditions.checkNotNull(str);
            this.f4379a = logLevel;
            this.f4380b = str;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public LogLevel getLogLevel() {
            return this.f4379a;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public String getMessage(Object... objArr) {
            return MessageFormat.format(this.f4380b, objArr);
        }
    }

    /* JADX WARN: Init of enum CLICKED can be incorrect */
    /* JADX WARN: Init of enum CUSTOM can be incorrect */
    /* JADX WARN: Init of enum CUSTOM_WITH_THROWABLE can be incorrect */
    /* JADX WARN: Init of enum DID_APPEAR can be incorrect */
    /* JADX WARN: Init of enum DID_DISAPPEAR can be incorrect */
    /* JADX WARN: Init of enum EXPIRED can be incorrect */
    /* JADX WARN: Init of enum LOAD_ATTEMPTED can be incorrect */
    /* JADX WARN: Init of enum LOAD_FAILED can be incorrect */
    /* JADX WARN: Init of enum LOAD_SUCCESS can be incorrect */
    /* JADX WARN: Init of enum SHOULD_REWARD can be incorrect */
    /* JADX WARN: Init of enum SHOW_ATTEMPTED can be incorrect */
    /* JADX WARN: Init of enum SHOW_FAILED can be incorrect */
    /* JADX WARN: Init of enum SHOW_SUCCESS can be incorrect */
    /* JADX WARN: Init of enum WILL_APPEAR can be incorrect */
    /* JADX WARN: Init of enum WILL_DISAPPEAR can be incorrect */
    /* JADX WARN: Init of enum WILL_LEAVE_APPLICATION can be incorrect */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/logging/MoPubLog$AdapterLogEvent.class */
    public enum AdapterLogEvent implements MPLogEventType {
        LOAD_ATTEMPTED(r0, "Adapter {0} attempting to load ad{1}{2}"),
        LOAD_SUCCESS(r0, "Adapter {0} successfully loaded ad"),
        LOAD_FAILED(r0, "Adapter {0} failed to load ad: ({1}) {2}"),
        SHOW_ATTEMPTED(r0, "Adapter {0} attempting to show ad"),
        SHOW_SUCCESS(r0, "Adapter {0} successfully showed ad"),
        SHOW_FAILED(r0, "Adapter {0} failed to show ad: ({1}) {2}"),
        EXPIRED(r0, "Adapter {0} expired since it was not shown within {1} seconds of it being loaded"),
        CLICKED(r0, "Adapter {0} clicked"),
        WILL_APPEAR(r0, "Adapter {0} will appear"),
        DID_APPEAR(r0, "Adapter {0} did appear"),
        WILL_DISAPPEAR(r0, "Adapter {0} will disappear"),
        DID_DISAPPEAR(r0, "Adapter {0} did disappear"),
        SHOULD_REWARD(r0, "Adapter {0} should reward user with {1} {2}"),
        WILL_LEAVE_APPLICATION(r0, "Adapter {0} will leave application"),
        CUSTOM(r0, "Adapter {0} Log - {1}"),
        CUSTOM_WITH_THROWABLE(r0, "Adapter {0} Log With Throwable - {1}, {2}");
        

        /* renamed from: a */
        public LogLevel f4382a;

        /* renamed from: b */
        public String f4383b;

        static {
            LogLevel logLevel = LogLevel.DEBUG;
        }

        AdapterLogEvent(LogLevel logLevel, String str) {
            Preconditions.checkNotNull(logLevel);
            Preconditions.checkNotNull(str);
            this.f4382a = logLevel;
            this.f4383b = str;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public LogLevel getLogLevel() {
            return this.f4382a;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public String getMessage(Object... objArr) {
            MessageFormat messageFormat = new MessageFormat(this.f4383b);
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

    /* JADX WARN: Init of enum CUSTOM can be incorrect */
    /* JADX WARN: Init of enum CUSTOM_WITH_THROWABLE can be incorrect */
    /* JADX WARN: Init of enum LOAD_ATTEMPTED can be incorrect */
    /* JADX WARN: Init of enum LOAD_FAILED can be incorrect */
    /* JADX WARN: Init of enum LOAD_SUCCESS can be incorrect */
    /* JADX WARN: Init of enum SHOULD_SHOW_DIALOG can be incorrect */
    /* JADX WARN: Init of enum SHOW_ATTEMPTED can be incorrect */
    /* JADX WARN: Init of enum SHOW_FAILED can be incorrect */
    /* JADX WARN: Init of enum SHOW_SUCCESS can be incorrect */
    /* JADX WARN: Init of enum SYNC_ATTEMPTED can be incorrect */
    /* JADX WARN: Init of enum SYNC_COMPLETED can be incorrect */
    /* JADX WARN: Init of enum SYNC_FAILED can be incorrect */
    /* JADX WARN: Init of enum UPDATED can be incorrect */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/logging/MoPubLog$ConsentLogEvent.class */
    public enum ConsentLogEvent implements MPLogEventType {
        SYNC_ATTEMPTED(r0, "Consent attempting to synchronize state"),
        SYNC_COMPLETED(r0, "Consent synchronization completed: {0}"),
        SYNC_FAILED(r0, "Consent synchronization failed: ({0}) {1}"),
        UPDATED(r0, "Consent changed from {0} to {1}: PII {2} be collected. Reason: {3}"),
        SHOULD_SHOW_DIALOG(r0, "Consent dialog should be shown"),
        LOAD_ATTEMPTED(r0, "Consent attempting to load dialog"),
        LOAD_SUCCESS(r0, "Consent dialog loaded"),
        LOAD_FAILED(r0, "Consent dialog failed: ({0}) {1}"),
        SHOW_ATTEMPTED(r0, "Consent dialog attempting to show"),
        SHOW_SUCCESS(r0, "Consent successfully showed dialog"),
        SHOW_FAILED(r0, "Consent dialog failed to show: ({0}) {1}"),
        CUSTOM(r0, "Consent Log - {0}"),
        CUSTOM_WITH_THROWABLE(r0, "Consent Log With Throwable - {0}, {1}");
        

        /* renamed from: a */
        public LogLevel f4385a;

        /* renamed from: b */
        public String f4386b;

        static {
            LogLevel logLevel = LogLevel.DEBUG;
        }

        ConsentLogEvent(LogLevel logLevel, String str) {
            Preconditions.checkNotNull(logLevel);
            Preconditions.checkNotNull(str);
            this.f4385a = logLevel;
            this.f4386b = str;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public LogLevel getLogLevel() {
            return this.f4385a;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public String getMessage(Object... objArr) {
            if (this == UPDATED && objArr != null && objArr.length > 2) {
                objArr[2] = (!(objArr[2] instanceof Boolean) || !((Boolean) objArr[2]).booleanValue()) ? "cannot" : "can";
            }
            return MessageFormat.format(this.f4386b, objArr);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/logging/MoPubLog$LogLevel.class */
    public enum LogLevel implements LogLevelInt {
        DEBUG(20, "DEBUG"),
        INFO(30, "INFO"),
        NONE(70, "NONE");
        

        /* renamed from: a */
        public int f4388a;

        /* renamed from: b */
        public String f4389b;

        LogLevel(int i, String str) {
            this.f4388a = i;
            this.f4389b = str;
        }

        public static LogLevel valueOf(int i) {
            return i != 20 ? i != 30 ? NONE : INFO : DEBUG;
        }

        public int intValue() {
            return this.f4388a;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f4389b;
        }
    }

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

    /* JADX WARN: Init of enum CUSTOM can be incorrect */
    /* JADX WARN: Init of enum CUSTOM_WITH_THROWABLE can be incorrect */
    /* JADX WARN: Init of enum ERROR can be incorrect */
    /* JADX WARN: Init of enum ERROR_WITH_THROWABLE can be incorrect */
    /* JADX WARN: Init of enum INIT_FAILED can be incorrect */
    /* JADX WARN: Init of enum INIT_FINISHED can be incorrect */
    /* JADX WARN: Init of enum INIT_STARTED can be incorrect */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/logging/MoPubLog$SdkLogEvent.class */
    public enum SdkLogEvent implements MPLogEventType {
        INIT_STARTED(r0, "SDK initialization started"),
        INIT_FINISHED(r0, "SDK initialized and ready to display ads.\nInitialized adapters:\n{0}"),
        INIT_FAILED(r0, "SDK initialization failed - {0}\n{1}"),
        CUSTOM(r0, "SDK Log - {0}"),
        CUSTOM_WITH_THROWABLE(r0, "SDK Log With Throwable - {0}, {1}"),
        ERROR(r0, "SDK Error Log - {0}"),
        ERROR_WITH_THROWABLE(r0, "SDK Error Log - {0}, {1}");
        

        /* renamed from: a */
        public LogLevel f4391a;

        /* renamed from: b */
        public String f4392b;

        static {
            LogLevel logLevel = LogLevel.DEBUG;
            LogLevel logLevel2 = LogLevel.INFO;
        }

        SdkLogEvent(LogLevel logLevel, String str) {
            Preconditions.checkNotNull(logLevel);
            Preconditions.checkNotNull(str);
            this.f4391a = logLevel;
            this.f4392b = str;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public LogLevel getLogLevel() {
            return this.f4391a;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        public String getMessage(Object... objArr) {
            if (this == INIT_FINISHED && objArr.length > 0) {
                String delimitedString = Strings.getDelimitedString(objArr[0], "\n");
                if (TextUtils.isEmpty(delimitedString)) {
                    objArr[0] = "No adapters initialized.";
                } else {
                    objArr[0] = delimitedString;
                }
            }
            return MessageFormat.format(this.f4392b, objArr);
        }
    }

    private MoPubLog() {
    }

    /* renamed from: a */
    public static ka<String, String> m3870a() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        return new ka<>(stackTrace[4].getClassName(), stackTrace[4].getMethodName());
    }

    public static void addLogger(MoPubLogger moPubLogger) {
        addLogger(moPubLogger, f4374d.f4375a);
    }

    public static void addLogger(MoPubLogger moPubLogger, LogLevel logLevel) {
        f4374d.f4376b.put(moPubLogger, logLevel);
    }

    /* renamed from: b */
    public static void m3869b(ka<String, String> kaVar, String str, MPLogEventType mPLogEventType, Object... objArr) {
        Preconditions.checkNotNull(kaVar);
        if (mPLogEventType == null) {
            return;
        }
        for (MoPubLogger moPubLogger : f4374d.f4376b.keySet()) {
            MoPubLog moPubLog = f4374d;
            if (moPubLog.f4376b.get(moPubLogger) != null && moPubLog.f4376b.get(moPubLogger).intValue() <= mPLogEventType.getLogLevel().intValue()) {
                moPubLogger.log((String) kaVar.a, (String) kaVar.b, str, mPLogEventType.getMessage(objArr));
            }
        }
    }

    @Deprecated
    /* renamed from: c */
    public static void m3868c(String str) {
        m3867c(str, null);
    }

    @Deprecated
    /* renamed from: c */
    public static void m3867c(String str, Throwable th) {
        m3862f(str, th);
    }

    @Deprecated
    /* renamed from: d */
    public static void m3866d(String str) {
        m3865d(str, null);
    }

    @Deprecated
    /* renamed from: d */
    public static void m3865d(String str, Throwable th) {
        m3862f(str, th);
    }

    @Deprecated
    /* renamed from: e */
    public static void m3864e(String str) {
        m3863e(str, null);
    }

    @Deprecated
    /* renamed from: e */
    public static void m3863e(String str, Throwable th) {
        m3862f(str, th);
    }

    /* renamed from: f */
    public static void m3862f(String str, Throwable th) {
        log(SdkLogEvent.CUSTOM_WITH_THROWABLE, str, th != null ? th.getMessage() : "");
    }

    public static LogLevel getLogLevel() {
        return f4374d.f4375a;
    }

    @Deprecated
    /* renamed from: i */
    public static void m3861i(String str) {
        m3860i(str, null);
    }

    @Deprecated
    /* renamed from: i */
    public static void m3860i(String str, Throwable th) {
        m3862f(str, th);
    }

    public static void log(MPLogEventType mPLogEventType, Object... objArr) {
        m3869b(m3870a(), null, mPLogEventType, objArr);
    }

    public static void log(String str, MPLogEventType mPLogEventType, Object... objArr) {
        m3869b(m3870a(), str, mPLogEventType, objArr);
    }

    public static void setLogLevel(LogLevel logLevel) {
        Preconditions.checkNotNull(logLevel);
        MoPubLog moPubLog = f4374d;
        moPubLog.f4375a = logLevel;
        addLogger(moPubLog.f4377c, logLevel);
    }

    @Deprecated
    /* renamed from: v */
    public static void m3859v(String str) {
        m3858v(str, null);
    }

    @Deprecated
    /* renamed from: v */
    public static void m3858v(String str, Throwable th) {
        m3862f(str, th);
    }

    @Deprecated
    /* renamed from: w */
    public static void m3857w(String str) {
        m3856w(str, null);
    }

    @Deprecated
    /* renamed from: w */
    public static void m3856w(String str, Throwable th) {
        m3862f(str, th);
    }
}
