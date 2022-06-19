package com.fasterxml.jackson.core.util;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/util/ThreadLocalBufferManager.class */
class ThreadLocalBufferManager {
    private final Object RELEASE_LOCK = new Object();
    private final Map<SoftReference<BufferRecycler>, Boolean> _trackedRecyclers = new ConcurrentHashMap();
    private final ReferenceQueue<BufferRecycler> _refQueue = new ReferenceQueue<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/util/ThreadLocalBufferManager$ThreadLocalBufferManagerHolder.class */
    public static final class ThreadLocalBufferManagerHolder {
        static final ThreadLocalBufferManager manager = new ThreadLocalBufferManager();

        private ThreadLocalBufferManagerHolder() {
        }
    }

    ThreadLocalBufferManager() {
    }

    public static ThreadLocalBufferManager instance() {
        return ThreadLocalBufferManagerHolder.manager;
    }

    private void removeSoftRefsClearedByGc() {
        while (true) {
            SoftReference softReference = (SoftReference) this._refQueue.poll();
            if (softReference != null) {
                this._trackedRecyclers.remove(softReference);
            } else {
                return;
            }
        }
    }

    public SoftReference<BufferRecycler> wrapAndTrack(BufferRecycler bufferRecycler) {
        SoftReference<BufferRecycler> softReference = new SoftReference<>(bufferRecycler, this._refQueue);
        this._trackedRecyclers.put(softReference, Boolean.TRUE);
        removeSoftRefsClearedByGc();
        return softReference;
    }
}
