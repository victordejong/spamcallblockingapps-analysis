package com.google.android.exoplayer2.source.chunk;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/chunk/ChunkHolder.class */
public final class ChunkHolder {
    public Chunk chunk;
    public boolean endOfStream;

    public void clear() {
        this.chunk = null;
        this.endOfStream = false;
    }
}
