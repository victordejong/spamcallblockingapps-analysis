package p193e.p194a.p1066n;

import android.net.Uri;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.n.p1 */
/* loaded from: classes5-dex2jar.jar:e/a/n/p1.class */
public final class C18411p1 {

    /* renamed from: a */
    public final long f52007a;

    /* renamed from: b */
    public final Uri f52008b;

    /* renamed from: c */
    public final String f52009c;

    /* renamed from: d */
    public final boolean f52010d;

    /* renamed from: e */
    public final int f52011e;

    /* renamed from: f */
    public final Uri f52012f;

    /* renamed from: g */
    public final int f52013g;

    public C18411p1(long j, Uri uri, String str, boolean z, int i, Uri uri2, int i2) {
        l.e(uri, "uri");
        l.e(str, "mimeType");
        this.f52007a = j;
        this.f52008b = uri;
        this.f52009c = str;
        this.f52010d = z;
        this.f52011e = i;
        this.f52012f = uri2;
        this.f52013g = i2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18411p1)) {
                return false;
            }
            C18411p1 c18411p1 = (C18411p1) obj;
            return this.f52007a == c18411p1.f52007a && l.a(this.f52008b, c18411p1.f52008b) && l.a(this.f52009c, c18411p1.f52009c) && this.f52010d == c18411p1.f52010d && this.f52011e == c18411p1.f52011e && l.a(this.f52012f, c18411p1.f52012f) && this.f52013g == c18411p1.f52013g;
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f52007a);
        Uri uri = this.f52008b;
        int i = 0;
        int hashCode = uri != null ? uri.hashCode() : 0;
        String str = this.f52009c;
        int hashCode2 = str != null ? str.hashCode() : 0;
        boolean z = this.f52010d;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        int i3 = this.f52011e;
        Uri uri2 = this.f52012f;
        if (uri2 != null) {
            i = uri2.hashCode();
        }
        return (((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + i3) * 31) + i) * 31) + this.f52013g;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MediaEntity(id=");
        m8728C.append(this.f52007a);
        m8728C.append(", uri=");
        m8728C.append(this.f52008b);
        m8728C.append(", mimeType=");
        m8728C.append(this.f52009c);
        m8728C.append(", isIncoming=");
        m8728C.append(this.f52010d);
        m8728C.append(", transport=");
        m8728C.append(this.f52011e);
        m8728C.append(", thumbnail=");
        m8728C.append(this.f52012f);
        m8728C.append(", type=");
        return C22128a.m8697J2(m8728C, this.f52013g, ")");
    }
}
