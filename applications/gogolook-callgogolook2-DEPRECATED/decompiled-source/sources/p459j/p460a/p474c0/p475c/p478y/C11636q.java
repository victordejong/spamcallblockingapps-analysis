package p459j.p460a.p474c0.p475c.p478y;

import android.database.Cursor;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.c.y.q */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/q.class */
public final class C11636q {

    /* renamed from: a */
    public String f26123a;

    /* renamed from: b */
    public String f26124b;

    /* renamed from: c */
    public boolean f26125c;

    /* renamed from: d */
    public boolean f26126d;

    /* renamed from: e */
    public boolean f26127e;

    /* renamed from: f */
    public String f26128f;

    public C11636q() {
        this(null, null, false, false, false, null, 63, null);
    }

    public C11636q(String str, String str2, boolean z, boolean z2, boolean z3, String str3) {
        this.f26123a = str;
        this.f26124b = str2;
        this.f26125c = z;
        this.f26126d = z2;
        this.f26127e = z3;
        this.f26128f = str3;
    }

    public /* synthetic */ C11636q(String str, String str2, boolean z, boolean z2, boolean z3, String str3, int i, C15145g gVar) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2, (i & 16) != 0 ? false : z3, (i & 32) != 0 ? null : str3);
    }

    /* renamed from: a */
    public final String m8744a() {
        return this.f26124b;
    }

    /* renamed from: a */
    public final void m8743a(Cursor cursor) {
        C15149k.m377b(cursor, "cursor");
        boolean z = false;
        this.f26123a = cursor.getString(0);
        this.f26124b = cursor.getString(1);
        int i = cursor.getInt(2);
        this.f26125c = (i == ((int) (-1)) || i == ((int) (-2))) ? false : true;
        int i2 = cursor.getInt(3);
        this.f26126d = 100 <= i2 && 199 >= i2;
        if (cursor.getInt(4) == 0) {
            z = true;
        }
        this.f26127e = z;
        this.f26128f = cursor.getString(5);
    }

    /* renamed from: b */
    public final String m8742b() {
        return this.f26123a;
    }

    /* renamed from: c */
    public final String m8741c() {
        return this.f26128f;
    }

    /* renamed from: d */
    public final boolean m8740d() {
        return this.f26125c;
    }

    /* renamed from: e */
    public final boolean m8739e() {
        return this.f26126d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11636q)) {
            return false;
        }
        C11636q qVar = (C11636q) obj;
        if (!C15149k.m384a((Object) this.f26123a, (Object) qVar.f26123a) || !C15149k.m384a((Object) this.f26124b, (Object) qVar.f26124b)) {
            return false;
        }
        if (!(this.f26125c == qVar.f26125c)) {
            return false;
        }
        if (!(this.f26126d == qVar.f26126d)) {
            return false;
        }
        return (this.f26127e == qVar.f26127e) && C15149k.m384a((Object) this.f26128f, (Object) qVar.f26128f);
    }

    /* renamed from: f */
    public final boolean m8738f() {
        return this.f26127e;
    }

    public int hashCode() {
        String str = this.f26123a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f26124b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        boolean z = this.f26125c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        boolean z2 = this.f26126d;
        int i3 = z2 ? 1 : 0;
        if (z2) {
            i3 = 1;
        }
        boolean z3 = this.f26127e;
        int i4 = z3 ? 1 : 0;
        if (z3) {
            i4 = 1;
        }
        String str3 = this.f26128f;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i;
    }

    public String toString() {
        return "mId: " + this.f26123a + ", cid: " + this.f26124b + ", isContact: " + this.f26125c + ", isIncoming: " + this.f26126d + ", isSms: " + this.f26127e + ", text: " + this.f26128f;
    }
}
