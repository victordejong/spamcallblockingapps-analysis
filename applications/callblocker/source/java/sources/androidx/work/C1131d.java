package androidx.work;

import android.net.Uri;
import java.util.HashSet;
import java.util.Set;
/* renamed from: androidx.work.d */
/* loaded from: classes-dex2jar.jar:androidx/work/d.class */
public final class C1131d {

    /* renamed from: a */
    private final Set<C1132a> f3912a = new HashSet();

    /* renamed from: androidx.work.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/d$a.class */
    public static final class C1132a {

        /* renamed from: a */
        private final Uri f3913a;

        /* renamed from: b */
        private final boolean f3914b;

        C1132a(Uri uri, boolean z) {
            this.f3913a = uri;
            this.f3914b = z;
        }

        /* renamed from: a */
        public Uri m17925a() {
            return this.f3913a;
        }

        /* renamed from: b */
        public boolean m17924b() {
            return this.f3914b;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (obj == null || getClass() != obj.getClass()) {
                    z = false;
                } else {
                    C1132a c1132a = (C1132a) obj;
                    if (this.f3914b != c1132a.f3914b || !this.f3913a.equals(c1132a.f3913a)) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return (this.f3914b ? 1 : 0) + (this.f3913a.hashCode() * 31);
        }
    }

    /* renamed from: a */
    public Set<C1132a> m17928a() {
        return this.f3912a;
    }

    /* renamed from: a */
    public void m17927a(Uri uri, boolean z) {
        this.f3912a.add(new C1132a(uri, z));
    }

    /* renamed from: b */
    public int m17926b() {
        return this.f3912a.size();
    }

    public boolean equals(Object obj) {
        return this == obj ? true : (obj == null || getClass() != obj.getClass()) ? false : this.f3912a.equals(((C1131d) obj).f3912a);
    }

    public int hashCode() {
        return this.f3912a.hashCode();
    }
}
