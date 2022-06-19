package com.google.protobuf;

import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/ListFieldSchema.class */
public abstract class ListFieldSchema {
    private static final ListFieldSchema FULL_INSTANCE = new ListFieldSchemaFull((C22021) null);
    private static final ListFieldSchema LITE_INSTANCE = new ListFieldSchemaLite((C22021) null);

    private ListFieldSchema() {
    }

    public static ListFieldSchema full() {
        return FULL_INSTANCE;
    }

    public static ListFieldSchema lite() {
        return LITE_INSTANCE;
    }

    public abstract void makeImmutableListAt(Object obj, long j);

    public abstract <L> void mergeListsAt(Object obj, Object obj2, long j);

    public abstract <L> List<L> mutableListAt(Object obj, long j);
}
