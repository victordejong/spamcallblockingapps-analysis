package androidx.work;

import android.net.Uri;
import java.util.HashSet;
import java.util.Set;
/* renamed from: androidx.work.c */
/* loaded from: classes-dex2jar.jar:androidx/work/c.class */
public final class C2990c {

    /* renamed from: a */
    public final Set<C2991a> f11146a = new HashSet();

    /* renamed from: androidx.work.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/c$a.class */
    public static final class C2991a {

        /* renamed from: a */
        public final Uri f11147a;

        /* renamed from: b */
        public final boolean f11148b;

        public C2991a(Uri uri, boolean z) {
            this.f11147a = uri;
            this.f11148b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C2991a c2991a = (C2991a) obj;
            return this.f11148b == c2991a.f11148b && this.f11147a.equals(c2991a.f11147a);
        }

        public final int hashCode() {
            return (this.f11147a.hashCode() * 31) + (this.f11148b ? 1 : 0);
        }
    }

    /* renamed from: a */
    public final int m39514a() {
        return this.f11146a.size();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.f11146a.equals(((C2990c) obj).f11146a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f11146a.hashCode();
    }
}
