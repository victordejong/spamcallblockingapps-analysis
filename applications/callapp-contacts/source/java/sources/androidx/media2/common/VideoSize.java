package androidx.media2.common;

import androidx.versionedparcelable.AbstractC2922c;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/VideoSize.class */
public class VideoSize implements AbstractC2922c {

    /* renamed from: a */
    public int f5066a;

    /* renamed from: b */
    public int f5067b;

    public VideoSize() {
    }

    public VideoSize(int i, int i2) {
        if (i >= 0) {
            if (i2 < 0) {
                throw new IllegalArgumentException("height can not be negative");
            }
            this.f5066a = i;
            this.f5067b = i2;
            return;
        }
        throw new IllegalArgumentException("width can not be negative");
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoSize)) {
            return false;
        }
        VideoSize videoSize = (VideoSize) obj;
        return this.f5066a == videoSize.f5066a && this.f5067b == videoSize.f5067b;
    }

    public int hashCode() {
        int i = this.f5067b;
        int i2 = this.f5066a;
        return i ^ ((i2 >>> 16) | (i2 << 16));
    }

    public String toString() {
        return this.f5066a + "x" + this.f5067b;
    }
}
