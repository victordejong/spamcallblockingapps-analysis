package com.pubmatic.sdk.common.log;

import android.app.Application;
import android.content.Context;
import com.pubmatic.sdk.common.OpenWrapSDK;
import com.pubmatic.sdk.common.utility.POBUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/log/PMLog.class */
public class PMLog {
    private static PMLog sSelf;
    private final ArrayList<PMLogging> loggers = new ArrayList<>();
    private OpenWrapSDK.LogLevel mLogLevel = OpenWrapSDK.LogLevel.Warn;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/log/PMLog$PMLogMessage.class */
    public static class PMLogMessage {
        static final String PMSDK_TAG = "OpenWrapSDK: ";
        final OpenWrapSDK.LogLevel mLogLevel;
        final String mMsg;
        final String mTAG;

        PMLogMessage(String str, String str2, OpenWrapSDK.LogLevel logLevel) {
            this.mTAG = PMSDK_TAG + str;
            this.mMsg = str2;
            this.mLogLevel = logLevel;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/log/PMLog$PMLogging.class */
    public interface PMLogging {
        void log(PMLogMessage pMLogMessage);
    }

    private PMLog() {
    }

    public static void addLogger(PMLogging pMLogging) {
        getInstance().addLoggerInternal(pMLogging);
    }

    private void addLoggerInternal(PMLogging pMLogging) {
        this.loggers.add(pMLogging);
    }

    public static ArrayList<PMLogging> allLoggers() {
        return getInstance().allLoggersInternal();
    }

    private ArrayList<PMLogging> allLoggersInternal() {
        return this.loggers;
    }

    public static void debug(String str, String str2, Object... objArr) {
        getInstance().log(str, OpenWrapSDK.LogLevel.Debug, str2, objArr);
    }

    public static void error(String str, String str2, Object... objArr) {
        getInstance().log(str, OpenWrapSDK.LogLevel.Error, str2, objArr);
    }

    private static Context getApplicationContext() {
        Application application;
        Context context = null;
        try {
            application = (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
        } catch (Exception e) {
            application = null;
        }
        if (application != null) {
            context = application.getApplicationContext();
        }
        return context;
    }

    private static PMLog getInstance() {
        Boolean bool;
        if (sSelf == null) {
            synchronized (PMLog.class) {
                try {
                    if (sSelf == null) {
                        PMLog pMLog = new PMLog();
                        sSelf = pMLog;
                        pMLog.addLoggerInternal(new PMDefaultLogger());
                        Context applicationContext = getApplicationContext();
                        if (applicationContext != null && (bool = (Boolean) POBUtils.getBuildConfigValue(applicationContext, "DEBUG")) != null && bool.booleanValue()) {
                            sSelf.mLogLevel = OpenWrapSDK.LogLevel.Debug;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return sSelf;
    }

    public static OpenWrapSDK.LogLevel getLogLevel() {
        return getInstance().mLogLevel;
    }

    public static void info(String str, String str2, Object... objArr) {
        getInstance().log(str, OpenWrapSDK.LogLevel.Info, str2, objArr);
    }

    private void log(String str, OpenWrapSDK.LogLevel logLevel, String str2, Object... objArr) {
        String str3;
        if (logLevel.getLevel() >= this.mLogLevel.getLevel()) {
            try {
                str3 = String.format(Locale.US, str2, objArr);
            } catch (Exception e) {
                str3 = String.format(Locale.US, "%s %s", str2, Arrays.toString(objArr));
            }
            PMLogMessage pMLogMessage = new PMLogMessage(str, str3, logLevel);
            for (int i = 0; i < this.loggers.size(); i++) {
                this.loggers.get(i).log(pMLogMessage);
            }
        }
    }

    public static void setLogLevel(OpenWrapSDK.LogLevel logLevel) {
        getInstance().mLogLevel = logLevel;
    }

    public static void verbose(String str, String str2, Object... objArr) {
        getInstance().log(str, OpenWrapSDK.LogLevel.Verbose, str2, objArr);
    }

    public static void warn(String str, String str2, Object... objArr) {
        getInstance().log(str, OpenWrapSDK.LogLevel.Warn, str2, objArr);
    }
}
