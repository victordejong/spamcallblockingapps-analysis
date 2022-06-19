package p000;

import android.net.Uri;
/* renamed from: dq0 */
/* loaded from: classes-dex2jar.jar:dq0.class */
public final class dq0 {

    /* renamed from: a */
    public final Uri f6113a;

    /* renamed from: b */
    public final int f6114b;

    public dq0(Uri uri, int i) {
        if (uri != null) {
            this.f6113a = uri;
            this.f6114b = i;
            return;
        }
        throw new IllegalArgumentException("URI must not be null.");
    }

    /* renamed from: a */
    public int m2446a() {
        return this.f6114b;
    }

    /* renamed from: b */
    public Uri m2445b() {
        return this.f6113a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dq0)) {
            return false;
        }
        dq0 dq0Var = (dq0) obj;
        if (this.f6114b != dq0Var.f6114b || !this.f6113a.equals(dq0Var.f6113a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f6113a.hashCode() ^ this.f6114b;
    }
}
