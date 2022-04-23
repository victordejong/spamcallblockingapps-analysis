package com.fasterxml.jackson.core.util;

import java.lang.ref.SoftReference;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/util/BufferRecyclers.class */
public class BufferRecyclers {
    private static final ThreadLocalBufferManager _bufferRecyclerTracker;
    protected static final ThreadLocal<SoftReference<BufferRecycler>> _recyclerRef;

    static {
        boolean z;
        try {
            z = "true".equals(System.getProperty("com.fasterxml.jackson.core.util.BufferRecyclers.trackReusableBuffers"));
        } catch (SecurityException e) {
            z = false;
        }
        _bufferRecyclerTracker = z ? ThreadLocalBufferManager.instance() : null;
        _recyclerRef = new ThreadLocal<>();
    }

    public static BufferRecycler getBufferRecycler() {
        ThreadLocal<SoftReference<BufferRecycler>> threadLocal = _recyclerRef;
        SoftReference<BufferRecycler> softReference = threadLocal.get();
        BufferRecycler bufferRecycler = softReference == null ? null : softReference.get();
        BufferRecycler bufferRecycler2 = bufferRecycler;
        if (bufferRecycler == null) {
            bufferRecycler2 = new BufferRecycler();
            ThreadLocalBufferManager threadLocalBufferManager = _bufferRecyclerTracker;
            threadLocal.set(threadLocalBufferManager != null ? threadLocalBufferManager.wrapAndTrack(bufferRecycler2) : new SoftReference<>(bufferRecycler2));
        }
        return bufferRecycler2;
    }
}
