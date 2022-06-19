package p305z4;

import android.support.p012v4.media.C0082b;
import java.util.Objects;
import p007a6.C0033h;
/* renamed from: z4.m */
/* loaded from: classes-dex2jar.jar:z4/m.class */
public final class C5093m {

    /* renamed from: a */
    public final Class<?> f15433a;

    /* renamed from: b */
    public final int f15434b;

    /* renamed from: c */
    public final int f15435c;

    public C5093m(Class<?> cls, int i, int i2) {
        Objects.requireNonNull(cls, "Null dependency anInterface.");
        this.f15433a = cls;
        this.f15434b = i;
        this.f15435c = i2;
    }

    /* renamed from: a */
    public boolean m42a() {
        return this.f15434b == 2;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C5093m) {
            C5093m c5093m = (C5093m) obj;
            z = false;
            if (this.f15433a == c5093m.f15433a) {
                z = false;
                if (this.f15434b == c5093m.f15434b) {
                    z = false;
                    if (this.f15435c == c5093m.f15435c) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f15433a.hashCode() ^ 1000003) * 1000003) ^ this.f15434b) * 1000003) ^ this.f15435c;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f15433a);
        sb.append(", type=");
        int i = this.f15434b;
        sb.append(i == 1 ? "required" : i == 0 ? "optional" : "set");
        sb.append(", injection=");
        int i2 = this.f15435c;
        if (i2 == 0) {
            str = "direct";
        } else if (i2 == 1) {
            str = "provider";
        } else if (i2 != 2) {
            throw new AssertionError(C0033h.m8886k("Unsupported injection: ", i2));
        } else {
            str = "deferred";
        }
        return C0082b.m8754h(sb, str, "}");
    }
}
