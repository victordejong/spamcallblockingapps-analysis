package androidx.work.impl.p085a;

import io.objectbox.model.PropertyFlags;
/* renamed from: androidx.work.impl.a.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b.class */
public final class C3013b {

    /* renamed from: a */
    public boolean f11174a;

    /* renamed from: b */
    public boolean f11175b;

    /* renamed from: c */
    public boolean f11176c;

    /* renamed from: d */
    public boolean f11177d;

    public C3013b(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f11174a = z;
        this.f11175b = z2;
        this.f11176c = z3;
        this.f11177d = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3013b)) {
            return false;
        }
        C3013b c3013b = (C3013b) obj;
        return this.f11174a == c3013b.f11174a && this.f11175b == c3013b.f11175b && this.f11176c == c3013b.f11176c && this.f11177d == c3013b.f11177d;
    }

    public final int hashCode() {
        int i = this.f11174a ? 1 : 0;
        int i2 = i;
        if (this.f11175b) {
            i2 = i + 16;
        }
        int i3 = i2;
        if (this.f11176c) {
            i3 = i2 + PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        }
        int i4 = i3;
        if (this.f11177d) {
            i4 = i3 + 4096;
        }
        return i4;
    }

    public final String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.f11174a), Boolean.valueOf(this.f11175b), Boolean.valueOf(this.f11176c), Boolean.valueOf(this.f11177d));
    }
}
