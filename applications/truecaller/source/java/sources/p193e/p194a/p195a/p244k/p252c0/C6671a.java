package p193e.p194a.p195a.p244k.p252c0;

import android.net.Uri;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
import u3.a0;
/* renamed from: e.a.a.k.c0.a */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/c0/a.class */
public final class C6671a {

    /* renamed from: a */
    public final long f22007a;

    /* renamed from: b */
    public final long f22008b;

    /* renamed from: c */
    public final a0 f22009c;

    /* renamed from: d */
    public final Uri f22010d;

    /* renamed from: e */
    public final long f22011e;

    /* renamed from: f */
    public final String f22012f;

    /* renamed from: g */
    public final Uri f22013g;

    public C6671a(long j, long j2, a0 a0Var, Uri uri, long j3, String str, Uri uri2) {
        l.e(a0Var, "source");
        l.e(uri, "currentUri");
        l.e(str, "mimeType");
        l.e(uri2, "thumbnailUri");
        this.f22007a = j;
        this.f22008b = j2;
        this.f22009c = a0Var;
        this.f22010d = uri;
        this.f22011e = j3;
        this.f22012f = str;
        this.f22013g = uri2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6671a)) {
                return false;
            }
            C6671a c6671a = (C6671a) obj;
            return this.f22007a == c6671a.f22007a && this.f22008b == c6671a.f22008b && l.a(this.f22009c, c6671a.f22009c) && l.a(this.f22010d, c6671a.f22010d) && this.f22011e == c6671a.f22011e && l.a(this.f22012f, c6671a.f22012f) && l.a(this.f22013g, c6671a.f22013g);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f22007a);
        int m34274a2 = C4876d.m34274a(this.f22008b);
        a0 a0Var = this.f22009c;
        int i = 0;
        int hashCode = a0Var != null ? a0Var.hashCode() : 0;
        Uri uri = this.f22010d;
        int hashCode2 = uri != null ? uri.hashCode() : 0;
        int m34274a3 = C4876d.m34274a(this.f22011e);
        String str = this.f22012f;
        int hashCode3 = str != null ? str.hashCode() : 0;
        Uri uri2 = this.f22013g;
        if (uri2 != null) {
            i = uri2.hashCode();
        }
        return (((((((((((m34274a * 31) + m34274a2) * 31) + hashCode) * 31) + hashCode2) * 31) + m34274a3) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DownloadQueueItem(id=");
        m8728C.append(this.f22007a);
        m8728C.append(", entityId=");
        m8728C.append(this.f22008b);
        m8728C.append(", source=");
        m8728C.append(this.f22009c);
        m8728C.append(", currentUri=");
        m8728C.append(this.f22010d);
        m8728C.append(", size=");
        m8728C.append(this.f22011e);
        m8728C.append(", mimeType=");
        m8728C.append(this.f22012f);
        m8728C.append(", thumbnailUri=");
        m8728C.append(this.f22013g);
        m8728C.append(")");
        return m8728C.toString();
    }
}
