package com.facebook.internal.logging;

import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/logging/LoggingStore.class */
public interface LoggingStore {
    Collection<ExternalLog> readAndClearStore();

    void saveLogsToDisk(Collection<ExternalLog> collection);
}
