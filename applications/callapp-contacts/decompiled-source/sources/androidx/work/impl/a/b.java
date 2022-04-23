package androidx.work.impl.a;

import io.objectbox.model.PropertyFlags;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public boolean f5993a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f5994b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f5995c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f5996d;

    public b(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f5993a = z;
        this.f5994b = z2;
        this.f5995c = z3;
        this.f5996d = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f5993a == bVar.f5993a && this.f5994b == bVar.f5994b && this.f5995c == bVar.f5995c && this.f5996d == bVar.f5996d;
    }

    public final int hashCode() {
        int i = this.f5993a ? 1 : 0;
        int i2 = i;
        if (this.f5994b) {
            i2 = i + 16;
        }
        int i3 = i2;
        if (this.f5995c) {
            i3 = i2 + PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        }
        int i4 = i3;
        if (this.f5996d) {
            i4 = i3 + 4096;
        }
        return i4;
    }

    public final String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.f5993a), Boolean.valueOf(this.f5994b), Boolean.valueOf(this.f5995c), Boolean.valueOf(this.f5996d));
    }
}
