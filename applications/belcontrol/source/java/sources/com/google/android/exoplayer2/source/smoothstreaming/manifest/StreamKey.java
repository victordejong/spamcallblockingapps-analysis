package com.google.android.exoplayer2.source.smoothstreaming.manifest;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/smoothstreaming/manifest/StreamKey.class */
public final class StreamKey implements Comparable<StreamKey> {
    public final int streamElementIndex;
    public final int trackIndex;

    public StreamKey(int i, int i2) {
        this.streamElementIndex = i;
        this.trackIndex = i2;
    }

    public int compareTo(StreamKey streamKey) {
        int i = this.streamElementIndex - streamKey.streamElementIndex;
        int i2 = i;
        if (i == 0) {
            i2 = this.trackIndex - streamKey.trackIndex;
        }
        return i2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || StreamKey.class != obj.getClass()) {
            return false;
        }
        StreamKey streamKey = (StreamKey) obj;
        if (this.streamElementIndex != streamKey.streamElementIndex || this.trackIndex != streamKey.trackIndex) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (this.streamElementIndex * 31) + this.trackIndex;
    }

    public String toString() {
        return this.streamElementIndex + "." + this.trackIndex;
    }
}
