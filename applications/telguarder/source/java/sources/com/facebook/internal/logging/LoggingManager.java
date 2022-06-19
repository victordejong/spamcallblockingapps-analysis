package com.facebook.internal.logging;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/logging/LoggingManager.class */
public interface LoggingManager {
    void addLog(ExternalLog externalLog);

    void flushAndWait();

    void flushLoggingStore();
}
