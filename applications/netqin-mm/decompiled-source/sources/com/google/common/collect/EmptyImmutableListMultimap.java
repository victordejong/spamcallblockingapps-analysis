package com.google.common.collect;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/EmptyImmutableListMultimap.class */
public class EmptyImmutableListMultimap extends ImmutableListMultimap<Object, Object> {
    public static final EmptyImmutableListMultimap INSTANCE = new EmptyImmutableListMultimap();
    public static final long serialVersionUID = 0;

    public EmptyImmutableListMultimap() {
        super(ImmutableMap.m8380of(), 0);
    }

    private Object readResolve() {
        return INSTANCE;
    }
}
