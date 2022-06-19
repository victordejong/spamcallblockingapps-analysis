package p193e.p194a.p1064m5;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.m5.e */
/* loaded from: classes15-dex2jar.jar:e/a/m5/e.class */
public final class C18242e {

    /* renamed from: a */
    public final int f51545a;

    /* renamed from: b */
    public final int f51546b;

    /* renamed from: c */
    public final int f51547c;

    /* renamed from: d */
    public final int f51548d;

    /* renamed from: e */
    public final int f51549e;

    /* renamed from: f */
    public final String f51550f;

    public C18242e(int i, int i2, int i3, int i4, int i5, String str) {
        this.f51545a = i;
        this.f51546b = i2;
        this.f51547c = i3;
        this.f51548d = i4;
        this.f51549e = i5;
        this.f51550f = str;
    }

    public C18242e(int i, int i2, int i3, int i4, int i5, String str, int i6) {
        this.f51545a = i;
        this.f51546b = i2;
        this.f51547c = i3;
        this.f51548d = i4;
        this.f51549e = i5;
        this.f51550f = null;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18242e)) {
                return false;
            }
            C18242e c18242e = (C18242e) obj;
            return this.f51545a == c18242e.f51545a && this.f51546b == c18242e.f51546b && this.f51547c == c18242e.f51547c && this.f51548d == c18242e.f51548d && this.f51549e == c18242e.f51549e && l.a(this.f51550f, c18242e.f51550f);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f51545a;
        int i2 = this.f51546b;
        int i3 = this.f51547c;
        int i4 = this.f51548d;
        int i5 = this.f51549e;
        String str = this.f51550f;
        return (((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TrueContextThemeConfig(labelColor=");
        m8728C.append(this.f51545a);
        m8728C.append(", labelBackgroundColor=");
        m8728C.append(this.f51546b);
        m8728C.append(", messageColor=");
        m8728C.append(this.f51547c);
        m8728C.append(", messageBackgroundColor=");
        m8728C.append(this.f51548d);
        m8728C.append(", messageOutlineColor=");
        m8728C.append(this.f51549e);
        m8728C.append(", iconUrl=");
        return C22128a.m8618h(m8728C, this.f51550f, ")");
    }
}
