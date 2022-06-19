package p193e.p194a.p1221t.p1222a.p1224u;

import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.t.a.u.d */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/u/d.class */
public final class C20309d {

    /* renamed from: a */
    public final int[] f57119a;

    /* renamed from: b */
    public final C20309d[] f57120b;

    public C20309d(int[] iArr, C20309d[] c20309dArr) {
        l.e(iArr, "codePoints");
        l.e(c20309dArr, "children");
        this.f57119a = iArr;
        this.f57120b = c20309dArr;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20309d)) {
                return false;
            }
            C20309d c20309d = (C20309d) obj;
            return l.a(this.f57119a, c20309d.f57119a) && l.a(this.f57120b, c20309d.f57120b);
        }
        return true;
    }

    public int hashCode() {
        int[] iArr = this.f57119a;
        int i = 0;
        int hashCode = iArr != null ? Arrays.hashCode(iArr) : 0;
        C20309d[] c20309dArr = this.f57120b;
        if (c20309dArr != null) {
            i = Arrays.hashCode(c20309dArr);
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Emoji(codePoints=");
        m8728C.append(Arrays.toString(this.f57119a));
        m8728C.append(", children=");
        m8728C.append(Arrays.toString(this.f57120b));
        m8728C.append(")");
        return m8728C.toString();
    }
}
