package com.google.android.exoplayer2.metadata.id3;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header.class */
public final class Id3Decoder$Id3Header {
    private final int framesSize;
    private final boolean isUnsynchronized;
    private final int majorVersion;

    public Id3Decoder$Id3Header(int i, boolean z, int i2) {
        this.majorVersion = i;
        this.isUnsynchronized = z;
        this.framesSize = i2;
    }
}
