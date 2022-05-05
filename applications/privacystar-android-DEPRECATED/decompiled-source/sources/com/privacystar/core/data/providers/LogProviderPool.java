package com.privacystar.core.data.providers;

import com.privacystar.core.util.model.LRUCache;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/LogProviderPool.class */
public class LogProviderPool {
    private static LogProviderPool instance;
    private LRUCache<Integer, LogProvider> logProviderCache = new LRUCache<>();

    private LogProviderPool() {
    }

    public static LogProviderPool getInstance() {
        if (instance == null) {
            instance = new LogProviderPool();
        }
        return instance;
    }

    public LogProvider getLogProvider(int i) {
        LogProvider logProvider;
        synchronized (this) {
            logProvider = getLogProvider(i, false);
        }
        return logProvider;
    }

    public LogProvider getLogProvider(int i, boolean z) {
        synchronized (this) {
            if (getInstance().logProviderCache.containsKey(Integer.valueOf(i))) {
                return this.logProviderCache.get(Integer.valueOf(i));
            }
            LocalLogProvider localLogProvider = new LocalLogProvider(i);
            this.logProviderCache.add(Integer.valueOf(i), localLogProvider);
            if (z) {
                localLogProvider.setup();
            }
            return localLogProvider;
        }
    }

    public int getSize() {
        int size;
        synchronized (this) {
            size = getInstance().logProviderCache.getSize();
        }
        return size;
    }
}
