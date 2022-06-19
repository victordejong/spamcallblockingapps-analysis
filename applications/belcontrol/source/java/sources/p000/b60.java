package p000;
/* renamed from: b60 */
/* loaded from: classes-dex2jar.jar:b60.class */
public class b60 {

    /* renamed from: a */
    public boolean f1808a;

    /* renamed from: b */
    public boolean f1809b;

    /* renamed from: c */
    public boolean f1810c;

    /* renamed from: d */
    public boolean f1811d;

    public b60(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f1808a = z;
        this.f1809b = z2;
        this.f1810c = z3;
        this.f1811d = z4;
    }

    /* renamed from: a */
    public boolean m5768a() {
        return this.f1808a;
    }

    /* renamed from: b */
    public boolean m5767b() {
        return this.f1810c;
    }

    /* renamed from: c */
    public boolean m5766c() {
        return this.f1811d;
    }

    /* renamed from: d */
    public boolean m5765d() {
        return this.f1809b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || b60.class != obj.getClass()) {
            return false;
        }
        b60 b60Var = (b60) obj;
        if (this.f1808a != b60Var.f1808a || this.f1809b != b60Var.f1809b || this.f1810c != b60Var.f1810c || this.f1811d != b60Var.f1811d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f1808a ? 1 : 0;
        int i2 = i;
        if (this.f1809b) {
            i2 = i + 16;
        }
        int i3 = i2;
        if (this.f1810c) {
            i3 = i2 + 256;
        }
        int i4 = i3;
        if (this.f1811d) {
            i4 = i3 + 4096;
        }
        return i4;
    }

    public String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.f1808a), Boolean.valueOf(this.f1809b), Boolean.valueOf(this.f1810c), Boolean.valueOf(this.f1811d));
    }
}
