package p081h.p203i.p325c.p373y.p374a.p377c;

import androidx.annotation.NonNull;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
/* renamed from: h.i.c.y.a.c.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/c/c.class */
public class C10047c {

    /* renamed from: a */
    public final boolean f22736a;

    /* renamed from: b */
    public final boolean f22737b;

    /* renamed from: c */
    public final boolean f22738c;

    /* renamed from: h.i.c.y.a.c.c$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/y/a/c/c$a.class */
    public static class C10048a {

        /* renamed from: a */
        public boolean f22739a = false;

        /* renamed from: b */
        public boolean f22740b = false;

        /* renamed from: c */
        public boolean f22741c = false;

        @NonNull
        /* renamed from: a */
        public C10047c m13536a() {
            return new C10047c(this.f22739a, this.f22740b, this.f22741c);
        }
    }

    public C10047c(boolean z, boolean z2, boolean z3) {
        this.f22736a = z;
        this.f22737b = z2;
        this.f22738c = z3;
    }

    /* renamed from: a */
    public boolean m13539a() {
        return this.f22736a;
    }

    /* renamed from: b */
    public boolean m13538b() {
        return this.f22738c;
    }

    /* renamed from: c */
    public boolean m13537c() {
        return this.f22737b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C10047c)) {
            return false;
        }
        C10047c cVar = (C10047c) obj;
        return this.f22736a == cVar.f22736a && this.f22738c == cVar.f22738c && this.f22737b == cVar.f22737b;
    }

    public int hashCode() {
        return C7018s.m21296a(Boolean.valueOf(this.f22736a), Boolean.valueOf(this.f22737b), Boolean.valueOf(this.f22738c));
    }
}
