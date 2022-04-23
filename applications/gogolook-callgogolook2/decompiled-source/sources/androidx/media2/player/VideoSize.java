package androidx.media2.player;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/VideoSize.class */
public final class VideoSize {
    public final androidx.media2.common.VideoSize mInternal;

    public VideoSize(int i, int i2) {
        this.mInternal = new androidx.media2.common.VideoSize(i, i2);
    }

    public VideoSize(@NonNull androidx.media2.common.VideoSize videoSize) {
        this.mInternal = videoSize;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoSize) {
            return this.mInternal.equals(((VideoSize) obj).mInternal);
        }
        return false;
    }

    public int getHeight() {
        return this.mInternal.getHeight();
    }

    public int getWidth() {
        return this.mInternal.getWidth();
    }

    public int hashCode() {
        return this.mInternal.hashCode();
    }

    public String toString() {
        return this.mInternal.toString();
    }
}
