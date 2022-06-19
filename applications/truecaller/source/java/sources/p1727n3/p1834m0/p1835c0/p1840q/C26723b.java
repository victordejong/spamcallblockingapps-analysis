package p1727n3.p1834m0.p1835c0.p1840q;
/* renamed from: n3.m0.c0.q.b */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/q/b.class */
public class C26723b {

    /* renamed from: a */
    public boolean f74824a;

    /* renamed from: b */
    public boolean f74825b;

    /* renamed from: c */
    public boolean f74826c;

    /* renamed from: d */
    public boolean f74827d;

    public C26723b(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f74824a = z;
        this.f74825b = z2;
        this.f74826c = z3;
        this.f74827d = z4;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C26723b)) {
            return false;
        }
        C26723b c26723b = (C26723b) obj;
        if (this.f74824a != c26723b.f74824a || this.f74825b != c26723b.f74825b || this.f74826c != c26723b.f74826c || this.f74827d != c26723b.f74827d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f74824a ? 1 : 0;
        int i2 = i;
        if (this.f74825b) {
            i2 = i + 16;
        }
        int i3 = i2;
        if (this.f74826c) {
            i3 = i2 + 256;
        }
        int i4 = i3;
        if (this.f74827d) {
            i4 = i3 + 4096;
        }
        return i4;
    }

    public String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.f74824a), Boolean.valueOf(this.f74825b), Boolean.valueOf(this.f74826c), Boolean.valueOf(this.f74827d));
    }
}
