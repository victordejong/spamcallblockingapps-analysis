package com.explorestack.protobuf;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/BufferAllocator.class */
public abstract class BufferAllocator {
    private static final BufferAllocator UNPOOLED = new BufferAllocator() { // from class: com.explorestack.protobuf.BufferAllocator.1
        @Override // com.explorestack.protobuf.BufferAllocator
        public final AllocatedBuffer allocateDirectBuffer(int i) {
            return AllocatedBuffer.wrap(ByteBuffer.allocateDirect(i));
        }

        @Override // com.explorestack.protobuf.BufferAllocator
        public final AllocatedBuffer allocateHeapBuffer(int i) {
            return AllocatedBuffer.wrap(new byte[i]);
        }
    };

    BufferAllocator() {
    }

    public static BufferAllocator unpooled() {
        return UNPOOLED;
    }

    public abstract AllocatedBuffer allocateDirectBuffer(int i);

    public abstract AllocatedBuffer allocateHeapBuffer(int i);
}
