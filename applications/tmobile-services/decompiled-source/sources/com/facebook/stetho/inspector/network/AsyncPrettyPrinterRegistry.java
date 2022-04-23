package com.facebook.stetho.inspector.network;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/AsyncPrettyPrinterRegistry.class */
public class AsyncPrettyPrinterRegistry {
    private final Map<String, AsyncPrettyPrinterFactory> mRegistry = new HashMap();

    @Nullable
    public AsyncPrettyPrinterFactory lookup(String str) {
        AsyncPrettyPrinterFactory asyncPrettyPrinterFactory;
        synchronized (this) {
            asyncPrettyPrinterFactory = this.mRegistry.get(str);
        }
        return asyncPrettyPrinterFactory;
    }

    public void register(String str, AsyncPrettyPrinterFactory asyncPrettyPrinterFactory) {
        synchronized (this) {
            this.mRegistry.put(str, asyncPrettyPrinterFactory);
        }
    }

    public boolean unregister(String str) {
        boolean z;
        synchronized (this) {
            z = this.mRegistry.remove(str) != null;
        }
        return z;
    }
}
