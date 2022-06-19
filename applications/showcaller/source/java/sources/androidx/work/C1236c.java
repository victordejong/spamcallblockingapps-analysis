package androidx.work;

import android.net.Uri;
import java.util.HashSet;
import java.util.Set;
/* renamed from: androidx.work.c */
/* loaded from: classes-dex2jar.jar:androidx/work/c.class */
public final class C1236c {

    /* renamed from: a */
    private final Set<C1237a> f5293a = new HashSet();

    /* renamed from: androidx.work.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/c$a.class */
    public static final class C1237a {

        /* renamed from: a */
        private final Uri f5294a;

        /* renamed from: b */
        private final boolean f5295b;

        C1237a(Uri uri, boolean z) {
            this.f5294a = uri;
            this.f5295b = z;
        }

        /* renamed from: a */
        public Uri m30560a() {
            return this.f5294a;
        }

        /* renamed from: b */
        public boolean m30559b() {
            return this.f5295b;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C1237a.class != obj.getClass()) {
                return false;
            }
            C1237a c1237a = (C1237a) obj;
            if (this.f5295b != c1237a.f5295b || !this.f5294a.equals(c1237a.f5294a)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f5294a.hashCode() * 31) + (this.f5295b ? 1 : 0);
        }
    }

    /* renamed from: a */
    public void m30563a(Uri uri, boolean z) {
        this.f5293a.add(new C1237a(uri, z));
    }

    /* renamed from: b */
    public Set<C1237a> m30562b() {
        return this.f5293a;
    }

    /* renamed from: c */
    public int m30561c() {
        return this.f5293a.size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1236c.class == obj.getClass()) {
            return this.f5293a.equals(((C1236c) obj).f5293a);
        }
        return false;
    }

    public int hashCode() {
        return this.f5293a.hashCode();
    }
}
