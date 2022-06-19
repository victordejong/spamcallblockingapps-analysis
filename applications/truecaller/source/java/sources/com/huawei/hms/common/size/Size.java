package com.huawei.hms.common.size;

import com.huawei.hms.common.internal.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/size/Size.class */
public class Size {
    private final int height;
    private final int width;

    public Size(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public static Size parseSize(String str) {
        try {
            int indexOf = str.indexOf("x");
            int i = indexOf;
            if (indexOf < 0) {
                i = str.indexOf("*");
            }
            return new Size(Integer.parseInt(str.substring(0, i)), Integer.parseInt(str.substring(i + 1)));
        } catch (Exception e) {
            throw new IllegalArgumentException("Size parses failed");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        boolean z = false;
        if (obj instanceof Size) {
            Size size = (Size) obj;
            z = false;
            if (this.width == size.width) {
                z = false;
                if (this.height == size.height) {
                    z = true;
                }
            }
        }
        return z;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(getWidth()), Integer.valueOf(getHeight()));
    }

    public final String toString() {
        return C22128a.m8595m2("Width is ", this.width, " Height is ", this.height);
    }
}
