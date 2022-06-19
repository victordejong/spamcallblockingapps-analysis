package p193e.p1577m.p1578a.p1596c.p1598c1;

import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.c.c1.j */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/j.class */
public final class C24211j {

    /* renamed from: c */
    public static final C24211j f67017c = new C24211j(new int[]{2}, 8);

    /* renamed from: d */
    public static final C24211j f67018d = new C24211j(new int[]{2, 5, 6}, 8);

    /* renamed from: a */
    public final int[] f67019a;

    /* renamed from: b */
    public final int f67020b;

    public C24211j(int[] iArr, int i) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f67019a = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.f67019a = new int[0];
        }
        this.f67020b = i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C24211j)) {
            return false;
        }
        C24211j c24211j = (C24211j) obj;
        if (!Arrays.equals(this.f67019a, c24211j.f67019a) || this.f67020b != c24211j.f67020b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.f67019a) * 31) + this.f67020b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AudioCapabilities[maxChannelCount=");
        m8728C.append(this.f67020b);
        m8728C.append(", supportedEncodings=");
        m8728C.append(Arrays.toString(this.f67019a));
        m8728C.append("]");
        return m8728C.toString();
    }
}
