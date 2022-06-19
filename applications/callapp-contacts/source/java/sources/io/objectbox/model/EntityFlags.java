package io.objectbox.model;
/* loaded from: classes5-dex2jar.jar:io/objectbox/model/EntityFlags.class */
public final class EntityFlags {
    public static final int SHARED_GLOBAL_IDS = 4;
    public static final int SYNC_ENABLED = 2;
    public static final int USE_NO_ARG_CONSTRUCTOR = 1;
    public static final String[] names = {"USE_NO_ARG_CONSTRUCTOR", "SYNC_ENABLED", "", "SHARED_GLOBAL_IDS"};

    private EntityFlags() {
    }

    public static String name(int i) {
        return names[i - 1];
    }
}
