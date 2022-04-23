package com.google.android.gms.common.images;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/Size.class */
public final class Size {

    /* renamed from: a */
    private final int f7426a;

    /* renamed from: b */
    private final int f7427b;

    public final boolean equals(Object obj) {
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
        return this.f7426a == size.f7426a && this.f7427b == size.f7427b;
    }

    public final int hashCode() {
        int i = this.f7427b;
        int i2 = this.f7426a;
        return i ^ ((i2 >>> 16) | (i2 << 16));
    }

    public final String toString() {
        int i = this.f7426a;
        int i2 = this.f7427b;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        return sb.toString();
    }
}
