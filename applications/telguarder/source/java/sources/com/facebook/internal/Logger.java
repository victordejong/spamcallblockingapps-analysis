package com.facebook.internal;

import android.util.Log;
import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/Logger.class */
public class Logger {
    public static final String LOG_TAG_BASE = "FacebookSDK.";
    private static final HashMap<String, String> stringsToReplace = new HashMap<>();
    private final LoggingBehavior behavior;
    private final String tag;
    private int priority = 3;
    private StringBuilder contents = new StringBuilder();

    public Logger(LoggingBehavior loggingBehavior, String str) {
        Validate.notNullOrEmpty(str, ViewHierarchyConstants.TAG_KEY);
        this.behavior = loggingBehavior;
        this.tag = LOG_TAG_BASE + str;
    }

    public static void log(LoggingBehavior loggingBehavior, int i, String str, String str2) {
        if (FacebookSdk.isLoggingBehaviorEnabled(loggingBehavior)) {
            String replaceStrings = replaceStrings(str2);
            String str3 = str;
            if (!str.startsWith(LOG_TAG_BASE)) {
                str3 = LOG_TAG_BASE + str;
            }
            Log.println(i, str3, replaceStrings);
            if (loggingBehavior != LoggingBehavior.DEVELOPER_ERRORS) {
                return;
            }
            new Exception().printStackTrace();
        }
    }

    public static void log(LoggingBehavior loggingBehavior, int i, String str, String str2, Object... objArr) {
        if (FacebookSdk.isLoggingBehaviorEnabled(loggingBehavior)) {
            log(loggingBehavior, i, str, String.format(str2, objArr));
        }
    }

    public static void log(LoggingBehavior loggingBehavior, String str, String str2) {
        log(loggingBehavior, 3, str, str2);
    }

    public static void log(LoggingBehavior loggingBehavior, String str, String str2, Object... objArr) {
        if (FacebookSdk.isLoggingBehaviorEnabled(loggingBehavior)) {
            log(loggingBehavior, 3, str, String.format(str2, objArr));
        }
    }

    public static void registerAccessToken(String str) {
        synchronized (Logger.class) {
            try {
                if (!FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.INCLUDE_ACCESS_TOKENS)) {
                    registerStringToReplace(str, "ACCESS_TOKEN_REMOVED");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void registerStringToReplace(String str, String str2) {
        synchronized (Logger.class) {
            try {
                stringsToReplace.put(str, str2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static String replaceStrings(String str) {
        synchronized (Logger.class) {
            try {
                for (Map.Entry<String, String> entry : stringsToReplace.entrySet()) {
                    str = str.replace(entry.getKey(), entry.getValue());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    private boolean shouldLog() {
        return FacebookSdk.isLoggingBehaviorEnabled(this.behavior);
    }

    public void append(String str) {
        if (shouldLog()) {
            this.contents.append(str);
        }
    }

    public void append(String str, Object... objArr) {
        if (shouldLog()) {
            this.contents.append(String.format(str, objArr));
        }
    }

    public void append(StringBuilder sb) {
        if (shouldLog()) {
            this.contents.append((CharSequence) sb);
        }
    }

    public void appendKeyValue(String str, Object obj) {
        append("  %s:\t%s\n", str, obj);
    }

    public String getContents() {
        return replaceStrings(this.contents.toString());
    }

    public int getPriority() {
        return this.priority;
    }

    public void log() {
        logString(this.contents.toString());
        this.contents = new StringBuilder();
    }

    public void logString(String str) {
        log(this.behavior, this.priority, this.tag, str);
    }

    public void setPriority(int i) {
        Validate.oneOf(Integer.valueOf(i), "value", 7, 3, 6, 4, 2, 5);
        this.priority = i;
    }
}
