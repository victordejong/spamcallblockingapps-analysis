package androidx.work.impl.p015m;
/* renamed from: androidx.work.impl.m.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/b.class */
public class C1298b {

    /* renamed from: a */
    private boolean f5506a;

    /* renamed from: b */
    private boolean f5507b;

    /* renamed from: c */
    private boolean f5508c;

    /* renamed from: d */
    private boolean f5509d;

    public C1298b(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f5506a = z;
        this.f5507b = z2;
        this.f5508c = z3;
        this.f5509d = z4;
    }

    /* renamed from: a */
    public boolean m30351a() {
        return this.f5506a;
    }

    /* renamed from: b */
    public boolean m30350b() {
        return this.f5508c;
    }

    /* renamed from: c */
    public boolean m30349c() {
        return this.f5509d;
    }

    /* renamed from: d */
    public boolean m30348d() {
        return this.f5507b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1298b)) {
            return false;
        }
        C1298b c1298b = (C1298b) obj;
        if (this.f5506a != c1298b.f5506a || this.f5507b != c1298b.f5507b || this.f5508c != c1298b.f5508c || this.f5509d != c1298b.f5509d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f5506a ? 1 : 0;
        int i2 = i;
        if (this.f5507b) {
            i2 = i + 16;
        }
        int i3 = i2;
        if (this.f5508c) {
            i3 = i2 + 256;
        }
        int i4 = i3;
        if (this.f5509d) {
            i4 = i3 + 4096;
        }
        return i4;
    }

    public String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.f5506a), Boolean.valueOf(this.f5507b), Boolean.valueOf(this.f5508c), Boolean.valueOf(this.f5509d));
    }
}
