package com.google.android.exoplayer2.source.hls.playlist;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/RenditionKey.class */
public final class RenditionKey implements Comparable<RenditionKey> {
    public static final int TYPE_AUDIO = 1;
    public static final int TYPE_SUBTITLE = 2;
    public static final int TYPE_VARIANT = 0;
    public final int trackIndex;
    public final int type;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/RenditionKey$Type.class */
    public @interface Type {
    }

    public RenditionKey(int i, int i2) {
        this.type = i;
        this.trackIndex = i2;
    }

    public int compareTo(RenditionKey renditionKey) {
        int i = this.type - renditionKey.type;
        int i2 = i;
        if (i == 0) {
            i2 = this.trackIndex - renditionKey.trackIndex;
        }
        return i2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || RenditionKey.class != obj.getClass()) {
            return false;
        }
        RenditionKey renditionKey = (RenditionKey) obj;
        if (this.type != renditionKey.type || this.trackIndex != renditionKey.trackIndex) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (this.type * 31) + this.trackIndex;
    }

    public String toString() {
        return this.type + "." + this.trackIndex;
    }
}
