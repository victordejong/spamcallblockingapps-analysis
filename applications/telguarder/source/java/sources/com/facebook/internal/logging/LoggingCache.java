package com.facebook.internal.logging;

import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/logging/LoggingCache.class */
public interface LoggingCache {
    boolean addLog(ExternalLog externalLog);

    boolean addLogs(Collection<? extends ExternalLog> collection);

    Collection<ExternalLog> fetchAllLogs();

    ExternalLog fetchLog();

    boolean isEmpty();
}
