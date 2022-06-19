package androidx.work.impl.p055b;
/* renamed from: androidx.work.impl.b.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/b/d.class */
public class C1172d {

    /* renamed from: a */
    public String f3985a;

    /* renamed from: b */
    public Long f3986b;

    public C1172d(String str, long j) {
        this.f3985a = str;
        this.f3986b = Long.valueOf(j);
    }

    public C1172d(String str, boolean z) {
        this(str, (z ? 1 : null) == 1 ? 1L : 0L);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof C1172d)) {
                z = false;
            } else {
                C1172d c1172d = (C1172d) obj;
                if (!this.f3985a.equals(c1172d.f3985a)) {
                    z = false;
                } else if (this.f3986b != null) {
                    z = this.f3986b.equals(c1172d.f3986b);
                } else if (c1172d.f3986b != null) {
                    z = false;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return (this.f3986b != null ? this.f3986b.hashCode() : 0) + (this.f3985a.hashCode() * 31);
    }
}
