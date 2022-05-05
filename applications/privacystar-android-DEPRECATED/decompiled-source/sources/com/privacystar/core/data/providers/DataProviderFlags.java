package com.privacystar.core.data.providers;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/DataProviderFlags.class */
public class DataProviderFlags {
    public static final int ALL = 1;
    public static final int BLOCK_HISTORY = 8;
    public static final int CALLER_ID = 16;
    public static final int CALL_LOG = 2;
    public static final int GROUP_ADJACENT = 256;
    public static final int MESSAGE_LOG = 4;
    public static final int NOTHING = 0;
    public static final int RECENT_ACTIVITY = 32;

    public static boolean isFlagSet(int i, int i2) {
        return (i & i2) > 0;
    }
}
