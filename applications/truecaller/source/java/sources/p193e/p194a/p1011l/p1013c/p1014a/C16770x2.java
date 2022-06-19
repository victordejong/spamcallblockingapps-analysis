package p193e.p194a.p1011l.p1013c.p1014a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.x2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/x2.class */
public final class C16770x2 {

    /* renamed from: a */
    public final String f46999a;

    /* renamed from: b */
    public final int f47000b;

    /* renamed from: c */
    public final float f47001c;

    /* renamed from: d */
    public final boolean f47002d;

    /* renamed from: e */
    public final float f47003e;

    public C16770x2(String str, int i, float f, boolean z, float f2) {
        l.e(str, "text");
        this.f46999a = str;
        this.f47000b = i;
        this.f47001c = f;
        this.f47002d = z;
        this.f47003e = f2;
    }

    public /* synthetic */ C16770x2(String str, int i, float f, boolean z, float f2, int i2) {
        this(str, i, f, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? 1.0f : f2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16770x2)) {
                return false;
            }
            C16770x2 c16770x2 = (C16770x2) obj;
            return l.a(this.f46999a, c16770x2.f46999a) && this.f47000b == c16770x2.f47000b && Float.compare(this.f47001c, c16770x2.f47001c) == 0 && this.f47002d == c16770x2.f47002d && Float.compare(this.f47003e, c16770x2.f47003e) == 0;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f46999a;
        int hashCode = str != null ? str.hashCode() : 0;
        int i = this.f47000b;
        int floatToIntBits = Float.floatToIntBits(this.f47001c);
        boolean z = this.f47002d;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return Float.floatToIntBits(this.f47003e) + ((((floatToIntBits + (((hashCode * 31) + i) * 31)) * 31) + i2) * 31);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TextSpec(text=");
        m8728C.append(this.f46999a);
        m8728C.append(", color=");
        m8728C.append(this.f47000b);
        m8728C.append(", textSizeSp=");
        m8728C.append(this.f47001c);
        m8728C.append(", allCaps=");
        m8728C.append(this.f47002d);
        m8728C.append(", alpha=");
        m8728C.append(this.f47003e);
        m8728C.append(")");
        return m8728C.toString();
    }
}
