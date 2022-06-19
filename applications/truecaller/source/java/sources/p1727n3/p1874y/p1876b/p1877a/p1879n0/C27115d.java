package p1727n3.p1874y.p1876b.p1877a.p1879n0;

import java.util.Arrays;
/* renamed from: n3.y.b.a.n0.d */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/d.class */
public final class C27115d {

    /* renamed from: c */
    public static final C27115d f75824c = new C27115d(new int[]{2}, 8);

    /* renamed from: d */
    public static final C27115d f75825d = new C27115d(new int[]{2, 5, 6}, 8);

    /* renamed from: a */
    public final int[] f75826a;

    /* renamed from: b */
    public final int f75827b;

    public C27115d(int[] iArr, int i) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f75826a = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.f75826a = new int[0];
        }
        this.f75827b = i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C27115d)) {
            return false;
        }
        C27115d c27115d = (C27115d) obj;
        if (!Arrays.equals(this.f75826a, c27115d.f75826a) || this.f75827b != c27115d.f75827b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.f75826a) * 31) + this.f75827b;
    }

    public String toString() {
        int i = this.f75827b;
        String arrays = Arrays.toString(this.f75826a);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i);
        sb.append(", supportedEncodings=");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
