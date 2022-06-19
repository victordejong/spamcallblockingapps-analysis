package p181n7;

import android.text.TextUtils;
/* renamed from: n7.v */
/* loaded from: classes2-dex2jar.jar:n7/v.class */
public class C3781v implements Cloneable {

    /* renamed from: a */
    public final String f12255a;

    /* renamed from: b */
    public final String f12256b;

    public C3781v(String str, String str2) {
        if (str != null) {
            this.f12255a = str;
            this.f12256b = str2;
            return;
        }
        throw new IllegalArgumentException("Name may not be null");
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        boolean z = false;
        if (obj instanceof C3781v) {
            C3781v c3781v = (C3781v) obj;
            z = false;
            if (this.f12255a.equals(c3781v.f12255a)) {
                z = false;
                if (TextUtils.equals(this.f12256b, c3781v.f12256b)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return this.f12255a.hashCode() ^ this.f12256b.hashCode();
    }

    public String toString() {
        return this.f12255a + "=" + this.f12256b;
    }
}
