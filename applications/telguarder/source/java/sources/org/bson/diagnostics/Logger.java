package org.bson.diagnostics;
/* loaded from: classes-dex2jar.jar:org/bson/diagnostics/Logger.class */
public interface Logger {
    void debug(String str);

    void debug(String str, Throwable th);

    void error(String str);

    void error(String str, Throwable th);

    String getName();

    void info(String str);

    void info(String str, Throwable th);

    boolean isDebugEnabled();

    boolean isErrorEnabled();

    boolean isInfoEnabled();

    boolean isTraceEnabled();

    boolean isWarnEnabled();

    void trace(String str);

    void trace(String str, Throwable th);

    void warn(String str);

    void warn(String str, Throwable th);
}
