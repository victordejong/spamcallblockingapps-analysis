package androidx.work;

import android.net.Uri;
import java.util.HashSet;
import java.util.Set;
/* renamed from: androidx.work.c */
/* loaded from: classes-dex2jar.jar:androidx/work/c.class */
public final class C0550c {

    /* renamed from: a */
    private final Set<C0551a> f2979a = new HashSet();

    /* renamed from: androidx.work.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/c$a.class */
    public static final class C0551a {

        /* renamed from: a */
        private final Uri f2980a;

        /* renamed from: b */
        private final boolean f2981b;

        C0551a(Uri uri, boolean z) {
            this.f2980a = uri;
            this.f2981b = z;
        }

        /* renamed from: a */
        public Uri m11763a() {
            return this.f2980a;
        }

        /* renamed from: b */
        public boolean m11762b() {
            return this.f2981b;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C0551a.class != obj.getClass()) {
                return false;
            }
            C0551a c0551a = (C0551a) obj;
            if (this.f2981b != c0551a.f2981b || !this.f2980a.equals(c0551a.f2980a)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f2980a.hashCode() * 31) + (this.f2981b ? 1 : 0);
        }
    }

    /* renamed from: a */
    public void m11766a(Uri uri, boolean z) {
        this.f2979a.add(new C0551a(uri, z));
    }

    /* renamed from: b */
    public Set<C0551a> m11765b() {
        return this.f2979a;
    }

    /* renamed from: c */
    public int m11764c() {
        return this.f2979a.size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0550c.class == obj.getClass()) {
            return this.f2979a.equals(((C0550c) obj).f2979a);
        }
        return false;
    }

    public int hashCode() {
        return this.f2979a.hashCode();
    }
}
