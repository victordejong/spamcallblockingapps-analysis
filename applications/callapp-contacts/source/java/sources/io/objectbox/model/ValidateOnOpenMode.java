package io.objectbox.model;
/* loaded from: classes5-dex2jar.jar:io/objectbox/model/ValidateOnOpenMode.class */
public final class ValidateOnOpenMode {
    public static final short AllBranches = 4;
    public static final short Full = 5;
    public static final short None = 1;
    public static final short Regular = 2;
    public static final short Unknown = 0;
    public static final short WithLeaves = 3;
    public static final String[] names = {"Unknown", "None", "Regular", "WithLeaves", "AllBranches", "Full"};

    private ValidateOnOpenMode() {
    }

    public static String name(int i) {
        return names[i];
    }
}
