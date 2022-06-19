package androidx.work.impl.p006k;
/* renamed from: androidx.work.impl.k.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/k/b.class */
public class C0578b {

    /* renamed from: a */
    private boolean f3059a;

    /* renamed from: b */
    private boolean f3060b;

    /* renamed from: c */
    private boolean f3061c;

    /* renamed from: d */
    private boolean f3062d;

    public C0578b(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f3059a = z;
        this.f3060b = z2;
        this.f3061c = z3;
        this.f3062d = z4;
    }

    /* renamed from: a */
    public boolean m11695a() {
        return this.f3059a;
    }

    /* renamed from: b */
    public boolean m11694b() {
        return this.f3061c;
    }

    /* renamed from: c */
    public boolean m11693c() {
        return this.f3062d;
    }

    /* renamed from: d */
    public boolean m11692d() {
        return this.f3060b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C0578b.class != obj.getClass()) {
            return false;
        }
        C0578b c0578b = (C0578b) obj;
        if (this.f3059a != c0578b.f3059a || this.f3060b != c0578b.f3060b || this.f3061c != c0578b.f3061c || this.f3062d != c0578b.f3062d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f3059a ? 1 : 0;
        int i2 = i;
        if (this.f3060b) {
            i2 = i + 16;
        }
        int i3 = i2;
        if (this.f3061c) {
            i3 = i2 + 256;
        }
        int i4 = i3;
        if (this.f3062d) {
            i4 = i3 + 4096;
        }
        return i4;
    }

    public String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.f3059a), Boolean.valueOf(this.f3060b), Boolean.valueOf(this.f3061c), Boolean.valueOf(this.f3062d));
    }
}
