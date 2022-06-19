package p193e.p194a.p1114o5;

import android.net.Uri;
import s1.z.c.l;
/* renamed from: e.a.o5.u */
/* loaded from: classes15-dex2jar.jar:e/a/o5/u.class */
public final class C19107u {

    /* renamed from: a */
    public Uri f53325a;

    /* renamed from: b */
    public Uri f53326b;

    /* renamed from: c */
    public String f53327c;

    /* renamed from: d */
    public byte[] f53328d;

    /* renamed from: e */
    public int f53329e;

    /* renamed from: a */
    public final void m14093a(int i) {
        if (i >= 0) {
            this.f53329e = i;
            return;
        }
        throw new IllegalArgumentException("Numbers count cannot be less than 0".toString());
    }

    public boolean equals(Object obj) {
        Uri uri;
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || (!l.a(C19107u.class, obj.getClass()))) {
            return false;
        }
        C19107u c19107u = (C19107u) obj;
        if (this.f53329e != c19107u.f53329e) {
            return false;
        }
        if (this.f53325a != null ? !l.a(uri, c19107u.f53325a) : c19107u.f53325a != null) {
            return false;
        }
        String str = this.f53327c;
        String str2 = c19107u.f53327c;
        if (str != null) {
            z = l.a(str, str2);
        } else if (str2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        Uri uri = this.f53325a;
        int hashCode = (uri == null || uri == null) ? 0 : uri.hashCode();
        String str = this.f53327c;
        int i = 0;
        if (str != null) {
            i = 0;
            if (str != null) {
                i = str.hashCode();
            }
        }
        return (((hashCode * 31) + i) * 31) + this.f53329e;
    }
}
