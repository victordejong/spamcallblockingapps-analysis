package p193e.p194a.p1011l.p1025p2;

import android.net.Uri;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.p2.n */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/n.class */
public final class C17135n {

    /* renamed from: a */
    public final Uri f48102a;

    /* renamed from: b */
    public final String f48103b;

    /* renamed from: c */
    public final String f48104c;

    /* renamed from: d */
    public final String f48105d;

    /* renamed from: e */
    public final String f48106e;

    /* renamed from: f */
    public final boolean f48107f;

    public C17135n(Uri uri, String str, String str2, String str3, String str4, boolean z) {
        l.e(str, "title");
        this.f48102a = uri;
        this.f48103b = str;
        this.f48104c = str2;
        this.f48105d = str3;
        this.f48106e = str4;
        this.f48107f = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17135n)) {
                return false;
            }
            C17135n c17135n = (C17135n) obj;
            return l.a(this.f48102a, c17135n.f48102a) && l.a(this.f48103b, c17135n.f48103b) && l.a(this.f48104c, c17135n.f48104c) && l.a(this.f48105d, c17135n.f48105d) && l.a(this.f48106e, c17135n.f48106e) && this.f48107f == c17135n.f48107f;
        }
        return true;
    }

    public int hashCode() {
        Uri uri = this.f48102a;
        int i = 0;
        int hashCode = uri != null ? uri.hashCode() : 0;
        String str = this.f48103b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f48104c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f48105d;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f48106e;
        if (str4 != null) {
            i = str4.hashCode();
        }
        boolean z = this.f48107f;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("GoldCallerIdPreviewData(photoUri=");
        m8728C.append(this.f48102a);
        m8728C.append(", title=");
        m8728C.append(this.f48103b);
        m8728C.append(", subTitle=");
        m8728C.append(this.f48104c);
        m8728C.append(", number=");
        m8728C.append(this.f48105d);
        m8728C.append(", numberType=");
        m8728C.append(this.f48106e);
        m8728C.append(", shouldShowUkLogo=");
        return C22128a.m8590o(m8728C, this.f48107f, ")");
    }
}
