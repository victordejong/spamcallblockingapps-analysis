package p193e.p1432d.p1443e;

import android.text.TextUtils;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.d.e.h */
/* loaded from: classes-dex2jar.jar:e/d/e/h.class */
public final class C22178h {

    /* renamed from: a */
    public final String f61624a;

    /* renamed from: b */
    public final String f61625b;

    public C22178h(String str, String str2) {
        this.f61624a = str;
        this.f61625b = str2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C22178h.class != obj.getClass()) {
            return false;
        }
        C22178h c22178h = (C22178h) obj;
        if (!TextUtils.equals(this.f61624a, c22178h.f61624a) || !TextUtils.equals(this.f61625b, c22178h.f61625b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f61625b.hashCode() + (this.f61624a.hashCode() * 31);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Header[name=");
        m8728C.append(this.f61624a);
        m8728C.append(",value=");
        return C22128a.m8618h(m8728C, this.f61625b, "]");
    }
}
