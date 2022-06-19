package com.google.android.gms.common.images;

import androidx.annotation.RecentlyNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/images/Size.class */
public final class Size {

    /* renamed from: a */
    public final int f5931a;

    /* renamed from: b */
    public final int f5932b;

    public Size(int i, int i2) {
        this.f5931a = i;
        this.f5932b = i2;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        Size size = (Size) obj;
        return this.f5931a == size.f5931a && this.f5932b == size.f5932b;
    }

    public int hashCode() {
        int i = this.f5932b;
        int i2 = this.f5931a;
        return i ^ ((i2 >>> 16) | (i2 << 16));
    }

    @RecentlyNonNull
    public String toString() {
        int i = this.f5931a;
        int i2 = this.f5932b;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        return sb.toString();
    }
}
