package androidx.media2.common;

import androidx.versionedparcelable.c;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/VideoSize.class */
public class VideoSize implements c {

    /* renamed from: a  reason: collision with root package name */
    public int f2770a;

    /* renamed from: b  reason: collision with root package name */
    public int f2771b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoSize() {
    }

    public VideoSize(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("width can not be negative");
        } else if (i2 >= 0) {
            this.f2770a = i;
            this.f2771b = i2;
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
        if (!(obj instanceof VideoSize)) {
            return false;
        }
        VideoSize videoSize = (VideoSize) obj;
        return this.f2770a == videoSize.f2770a && this.f2771b == videoSize.f2771b;
    }

    public int hashCode() {
        int i = this.f2771b;
        int i2 = this.f2770a;
        return i ^ ((i2 >>> 16) | (i2 << 16));
    }

    public String toString() {
        return this.f2770a + "x" + this.f2771b;
    }
}
