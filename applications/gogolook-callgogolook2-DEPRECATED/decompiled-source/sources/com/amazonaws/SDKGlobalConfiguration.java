package com.amazonaws;

import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/amazonaws/SDKGlobalConfiguration.class */
public class SDKGlobalConfiguration {
    public static final AtomicInteger globalTimeOffset = new AtomicInteger(0);

    public static int getGlobalTimeOffset() {
        return globalTimeOffset.get();
    }

    public static void setGlobalTimeOffset(int i) {
        globalTimeOffset.set(i);
    }
}
