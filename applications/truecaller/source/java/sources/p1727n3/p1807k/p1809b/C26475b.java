package p1727n3.p1807k.p1809b;

import android.content.LocusId;
import android.os.Build;
import android.text.TextUtils;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.k.b.b */
/* loaded from: classes-dex2jar.jar:n3/k/b/b.class */
public final class C26475b {

    /* renamed from: a */
    public final String f74237a;

    /* renamed from: b */
    public final LocusId f74238b;

    public C26475b(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f74237a = str;
            if (Build.VERSION.SDK_INT >= 29) {
                this.f74238b = new LocusId(str);
                return;
            } else {
                this.f74238b = null;
                return;
            }
        }
        throw new IllegalArgumentException("id cannot be empty");
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C26475b.class != obj.getClass()) {
            return false;
        }
        C26475b c26475b = (C26475b) obj;
        String str = this.f74237a;
        if (str != null) {
            return str.equals(c26475b.f74237a);
        }
        if (c26475b.f74237a != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f74237a;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("LocusIdCompat[");
        int length = this.f74237a.length();
        m8728C.append(length + "_chars");
        m8728C.append("]");
        return m8728C.toString();
    }
}
