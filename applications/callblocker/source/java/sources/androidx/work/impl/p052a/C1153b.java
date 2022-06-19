package androidx.work.impl.p052a;
/* renamed from: androidx.work.impl.a.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b.class */
public class C1153b {

    /* renamed from: a */
    private boolean f3945a;

    /* renamed from: b */
    private boolean f3946b;

    /* renamed from: c */
    private boolean f3947c;

    /* renamed from: d */
    private boolean f3948d;

    public C1153b(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f3945a = z;
        this.f3946b = z2;
        this.f3947c = z3;
        this.f3948d = z4;
    }

    /* renamed from: a */
    public boolean m17856a() {
        return this.f3945a;
    }

    /* renamed from: b */
    public boolean m17855b() {
        return this.f3946b;
    }

    /* renamed from: c */
    public boolean m17854c() {
        return this.f3947c;
    }

    /* renamed from: d */
    public boolean m17853d() {
        return this.f3948d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof C1153b)) {
                z = false;
            } else {
                C1153b c1153b = (C1153b) obj;
                if (this.f3945a != c1153b.f3945a || this.f3946b != c1153b.f3946b || this.f3947c != c1153b.f3947c || this.f3948d != c1153b.f3948d) {
                    z = false;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        int i = 0;
        if (this.f3945a) {
            i = 1;
        }
        int i2 = i;
        if (this.f3946b) {
            i2 = i + 16;
        }
        int i3 = i2;
        if (this.f3947c) {
            i3 = i2 + 256;
        }
        int i4 = i3;
        if (this.f3948d) {
            i4 = i3 + 4096;
        }
        return i4;
    }

    public String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.f3945a), Boolean.valueOf(this.f3946b), Boolean.valueOf(this.f3947c), Boolean.valueOf(this.f3948d));
    }
}
