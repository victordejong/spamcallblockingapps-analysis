package p186o1;

import android.net.Uri;
import java.util.HashSet;
import java.util.Set;
/* renamed from: o1.c */
/* loaded from: classes-dex2jar.jar:o1/c.class */
public final class C3818c {

    /* renamed from: a */
    public final Set<C3819a> f12304a = new HashSet();

    /* renamed from: o1.c$a */
    /* loaded from: classes-dex2jar.jar:o1/c$a.class */
    public static final class C3819a {

        /* renamed from: a */
        public final Uri f12305a;

        /* renamed from: b */
        public final boolean f12306b;

        public C3819a(Uri uri, boolean z) {
            this.f12305a = uri;
            this.f12306b = z;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C3819a.class != obj.getClass()) {
                return false;
            }
            C3819a c3819a = (C3819a) obj;
            if (this.f12306b != c3819a.f12306b || !this.f12305a.equals(c3819a.f12305a)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f12305a.hashCode() * 31) + (this.f12306b ? 1 : 0);
        }
    }

    /* renamed from: a */
    public int m1776a() {
        return this.f12304a.size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C3818c.class == obj.getClass()) {
            return this.f12304a.equals(((C3818c) obj).f12304a);
        }
        return false;
    }

    public int hashCode() {
        return this.f12304a.hashCode();
    }
}
