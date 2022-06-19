package com.google.android.exoplayer2;

import com.google.android.exoplayer2.upstream.DefaultAllocator;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.mopub.volley.DefaultRetryPolicy;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/DefaultLoadControl$Builder.class */
public final class DefaultLoadControl$Builder {
    private DefaultAllocator allocator = null;
    private int minBufferMs = 15000;
    private int maxBufferMs = 50000;
    private int bufferForPlaybackMs = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
    private int bufferForPlaybackAfterRebufferMs = 5000;
    private int targetBufferBytes = -1;
    private boolean prioritizeTimeOverSizeThresholds = true;
    private PriorityTaskManager priorityTaskManager = null;

    public DefaultLoadControl createDefaultLoadControl() {
        if (this.allocator == null) {
            this.allocator = new DefaultAllocator(true, 65536);
        }
        return new DefaultLoadControl(this.allocator, this.minBufferMs, this.maxBufferMs, this.bufferForPlaybackMs, this.bufferForPlaybackAfterRebufferMs, this.targetBufferBytes, this.prioritizeTimeOverSizeThresholds, this.priorityTaskManager);
    }

    public DefaultLoadControl$Builder setAllocator(DefaultAllocator defaultAllocator) {
        this.allocator = defaultAllocator;
        return this;
    }

    public DefaultLoadControl$Builder setBufferDurationsMs(int i, int i2, int i3, int i4) {
        this.minBufferMs = i;
        this.maxBufferMs = i2;
        this.bufferForPlaybackMs = i3;
        this.bufferForPlaybackAfterRebufferMs = i4;
        return this;
    }

    public DefaultLoadControl$Builder setPrioritizeTimeOverSizeThresholds(boolean z) {
        this.prioritizeTimeOverSizeThresholds = z;
        return this;
    }

    public DefaultLoadControl$Builder setPriorityTaskManager(PriorityTaskManager priorityTaskManager) {
        this.priorityTaskManager = priorityTaskManager;
        return this;
    }

    public DefaultLoadControl$Builder setTargetBufferBytes(int i) {
        this.targetBufferBytes = i;
        return this;
    }
}
