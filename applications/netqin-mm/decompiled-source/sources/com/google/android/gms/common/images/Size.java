package com.google.android.gms.common.images;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/Size.class */
public final class Size {

    /* renamed from: a */
    public final int f23356a;

    /* renamed from: b */
    public final int f23357b;

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
        return this.f23356a == size.f23356a && this.f23357b == size.f23357b;
    }

    public final int hashCode() {
        int i = this.f23357b;
        int i2 = this.f23356a;
        return i ^ ((i2 >>> 16) | (i2 << 16));
    }

    public final String toString() {
        int i = this.f23356a;
        int i2 = this.f23357b;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        return sb.toString();
    }
}
