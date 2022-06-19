package p1727n3.p1834m0;

import android.net.Uri;
import java.util.HashSet;
import java.util.Set;
/* renamed from: n3.m0.e */
/* loaded from: classes-dex2jar.jar:n3/m0/e.class */
public final class C26827e {

    /* renamed from: a */
    public final Set<C26828a> f75073a = new HashSet();

    /* renamed from: n3.m0.e$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/e$a.class */
    public static final class C26828a {

        /* renamed from: a */
        public final Uri f75074a;

        /* renamed from: b */
        public final boolean f75075b;

        public C26828a(Uri uri, boolean z) {
            this.f75074a = uri;
            this.f75075b = z;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C26828a.class != obj.getClass()) {
                return false;
            }
            C26828a c26828a = (C26828a) obj;
            if (this.f75075b != c26828a.f75075b || !this.f75074a.equals(c26828a.f75074a)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f75074a.hashCode() * 31) + (this.f75075b ? 1 : 0);
        }
    }

    /* renamed from: a */
    public int m1307a() {
        return this.f75073a.size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C26827e.class == obj.getClass()) {
            return this.f75073a.equals(((C26827e) obj).f75073a);
        }
        return false;
    }

    public int hashCode() {
        return this.f75073a.hashCode();
    }
}
