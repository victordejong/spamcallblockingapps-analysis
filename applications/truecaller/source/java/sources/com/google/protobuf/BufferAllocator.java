package com.google.protobuf;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/BufferAllocator.class */
public abstract class BufferAllocator {
    private static final BufferAllocator UNPOOLED = new 1();

    public static BufferAllocator unpooled() {
        return UNPOOLED;
    }

    public abstract AllocatedBuffer allocateDirectBuffer(int i);

    public abstract AllocatedBuffer allocateHeapBuffer(int i);
}
