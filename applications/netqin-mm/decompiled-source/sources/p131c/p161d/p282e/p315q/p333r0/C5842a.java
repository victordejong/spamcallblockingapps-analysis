package p131c.p161d.p282e.p315q.p333r0;

import android.text.TextUtils;
/* renamed from: c.d.e.q.r0.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/a.class */
public class C5842a {

    /* renamed from: a */
    public final String f19111a;

    /* renamed from: b */
    public final C5851d f19112b;

    /* renamed from: c.d.e.q.r0.a$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/a$b.class */
    public static class C5844b {

        /* renamed from: a */
        public String f19113a;

        /* renamed from: b */
        public C5851d f19114b;

        /* renamed from: a */
        public C5844b m22910a(C5851d dVar) {
            this.f19114b = dVar;
            return this;
        }

        /* renamed from: a */
        public C5844b m22909a(String str) {
            if (!TextUtils.isEmpty(str)) {
                this.f19113a = str;
            }
            return this;
        }

        /* renamed from: a */
        public C5842a m22911a() {
            return new C5842a(this.f19113a, this.f19114b);
        }
    }

    public C5842a(String str, C5851d dVar) {
        this.f19111a = str;
        this.f19112b = dVar;
    }

    /* renamed from: c */
    public static C5844b m22912c() {
        return new C5844b();
    }

    /* renamed from: a */
    public String m22914a() {
        return this.f19111a;
    }

    /* renamed from: b */
    public C5851d m22913b() {
        return this.f19112b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5842a)) {
            return false;
        }
        C5842a aVar = (C5842a) obj;
        if (hashCode() != aVar.hashCode()) {
            return false;
        }
        if (this.f19111a == null && aVar.f19111a != null) {
            return false;
        }
        String str = this.f19111a;
        if (str != null && !str.equals(aVar.f19111a)) {
            return false;
        }
        if (this.f19112b == null && aVar.f19112b == null) {
            return true;
        }
        C5851d dVar = this.f19112b;
        return dVar != null && dVar.equals(aVar.f19112b);
    }

    public int hashCode() {
        String str = this.f19111a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        C5851d dVar = this.f19112b;
        if (dVar != null) {
            i = dVar.hashCode();
        }
        return hashCode + i;
    }
}
