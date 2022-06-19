package p238t1;
/* renamed from: t1.b */
/* loaded from: classes-dex2jar.jar:t1/b.class */
public class C4353b {

    /* renamed from: a */
    public boolean f13582a;

    /* renamed from: b */
    public boolean f13583b;

    /* renamed from: c */
    public boolean f13584c;

    /* renamed from: d */
    public boolean f13585d;

    public C4353b(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f13582a = z;
        this.f13583b = z2;
        this.f13584c = z3;
        this.f13585d = z4;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4353b)) {
            return false;
        }
        C4353b c4353b = (C4353b) obj;
        if (this.f13582a != c4353b.f13582a || this.f13583b != c4353b.f13583b || this.f13584c != c4353b.f13584c || this.f13585d != c4353b.f13585d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        boolean z = this.f13582a;
        int i = z ? 1 : 0;
        if (this.f13583b) {
            i = (z ? 1 : 0) + 16;
        }
        int i2 = i;
        if (this.f13584c) {
            i2 = i + 256;
        }
        int i3 = i2;
        if (this.f13585d) {
            i3 = i2 + 4096;
        }
        return i3;
    }

    public String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.f13582a), Boolean.valueOf(this.f13583b), Boolean.valueOf(this.f13584c), Boolean.valueOf(this.f13585d));
    }
}
