package androidx.media2.common;

import androidx.annotation.IntRange;
import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcelable;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/common/VideoSize.class */
public final class VideoSize implements VersionedParcelable {
    public int mHeight;
    public int mWidth;

    public VideoSize() {
    }

    public VideoSize(@IntRange(from = 0) int i, @IntRange(from = 0) int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("width can not be negative");
        } else if (i2 >= 0) {
            this.mWidth = i;
            this.mHeight = i2;
        } else {
            throw new IllegalArgumentException("height can not be negative");
        }
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        boolean z = false;
        if (obj instanceof VideoSize) {
            VideoSize videoSize = (VideoSize) obj;
            z = false;
            if (this.mWidth == videoSize.mWidth) {
                z = false;
                if (this.mHeight == videoSize.mHeight) {
                    z = true;
                }
            }
        }
        return z;
    }

    @IntRange(from = 0)
    public int getHeight() {
        return this.mHeight;
    }

    @IntRange(from = 0)
    public int getWidth() {
        return this.mWidth;
    }

    public int hashCode() {
        int i = this.mHeight;
        int i2 = this.mWidth;
        return i ^ ((i2 >>> 16) | (i2 << 16));
    }

    public String toString() {
        return this.mWidth + "x" + this.mHeight;
    }
}
