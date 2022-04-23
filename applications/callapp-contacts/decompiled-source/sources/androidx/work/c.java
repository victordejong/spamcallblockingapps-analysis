package androidx.work;

import android.net.Uri;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/work/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final Set<a> f5973a = new HashSet();

    /* loaded from: classes-dex2jar.jar:androidx/work/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f5974a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f5975b;

        public a(Uri uri, boolean z) {
            this.f5974a = uri;
            this.f5975b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f5975b == aVar.f5975b && this.f5974a.equals(aVar.f5974a);
        }

        public final int hashCode() {
            return (this.f5974a.hashCode() * 31) + (this.f5975b ? 1 : 0);
        }
    }

    public final int a() {
        return this.f5973a.size();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f5973a.equals(((c) obj).f5973a);
    }

    public final int hashCode() {
        return this.f5973a.hashCode();
    }
}
