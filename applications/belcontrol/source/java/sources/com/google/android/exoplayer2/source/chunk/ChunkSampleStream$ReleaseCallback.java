package com.google.android.exoplayer2.source.chunk;

import com.google.android.exoplayer2.source.chunk.ChunkSource;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback.class */
public interface ChunkSampleStream$ReleaseCallback<T extends ChunkSource> {
    void onSampleStreamReleased(ChunkSampleStream<T> chunkSampleStream);
}
