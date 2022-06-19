package androidx.media2.common;

import p1727n3.p1803i0.AbstractC26407e;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/VideoSize.class */
public class VideoSize implements AbstractC26407e {

    /* renamed from: a */
    public int f946a;

    /* renamed from: b */
    public int f947b;

    public VideoSize() {
    }

    public VideoSize(int i, int i2) {
        if (i >= 0) {
            if (i2 < 0) {
                throw new IllegalArgumentException("height can not be negative");
            }
            this.f946a = i;
            this.f947b = i2;
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
        boolean z = false;
        if (obj instanceof VideoSize) {
            VideoSize videoSize = (VideoSize) obj;
            z = false;
            if (this.f946a == videoSize.f946a) {
                z = false;
                if (this.f947b == videoSize.f947b) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        int i = this.f947b;
        int i2 = this.f946a;
        return i ^ ((i2 >>> 16) | (i2 << 16));
    }

    public String toString() {
        return this.f946a + "x" + this.f947b;
    }
}
