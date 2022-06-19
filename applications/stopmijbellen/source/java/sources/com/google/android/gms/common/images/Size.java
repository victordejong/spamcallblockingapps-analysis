package com.google.android.gms.common.images;

import androidx.annotation.RecentlyNonNull;
import androidx.recyclerview.widget.C0608b;
import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/Size.class */
public final class Size {
    private final int zaa;
    private final int zab;

    public Size(int i, int i2) {
        this.zaa = i;
        this.zab = i2;
    }

    @RecentlyNonNull
    public static Size parseSize(@RecentlyNonNull String str) throws NumberFormatException {
        if (str != null) {
            int indexOf = str.indexOf(42);
            int i = indexOf;
            if (indexOf < 0) {
                i = str.indexOf(C3681R.styleable.AppCompatTheme_windowFixedHeightMajor);
            }
            if (i < 0) {
                throw zaa(str);
            }
            try {
                return new Size(Integer.parseInt(str.substring(0, i)), Integer.parseInt(str.substring(i + 1)));
            } catch (NumberFormatException e) {
                throw zaa(str);
            }
        }
        throw new IllegalArgumentException("string must not be null");
    }

    private static NumberFormatException zaa(String str) {
        throw new NumberFormatException(C0608b.m7625j(new StringBuilder(str.length() + 16), "Invalid Size: \"", str, "\""));
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
        return this.zaa == size.zaa && this.zab == size.zab;
    }

    public int getHeight() {
        return this.zab;
    }

    public int getWidth() {
        return this.zaa;
    }

    public int hashCode() {
        int i = this.zab;
        int i2 = this.zaa;
        return i ^ ((i2 >>> 16) | (i2 << 16));
    }

    @RecentlyNonNull
    public String toString() {
        int i = this.zaa;
        int i2 = this.zab;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        return sb.toString();
    }
}
