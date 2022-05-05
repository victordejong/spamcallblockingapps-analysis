package p459j.p460a.p503e0;

import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.e0.m */
/* loaded from: classes3-dex2jar.jar:j/a/e0/m.class */
public final class C12329m {

    /* renamed from: a */
    public String f27825a;

    /* renamed from: b */
    public boolean f27826b;

    /* renamed from: c */
    public boolean f27827c;

    public C12329m() {
        this(null, false, false, 7, null);
    }

    public C12329m(String str, boolean z, boolean z2) {
        this.f27825a = str;
        this.f27826b = z;
        this.f27827c = z2;
    }

    public /* synthetic */ C12329m(String str, boolean z, boolean z2, int i, C15145g gVar) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2);
    }

    /* renamed from: a */
    public final boolean m6359a() {
        return this.f27826b;
    }

    /* renamed from: b */
    public final boolean m6358b() {
        return this.f27827c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C12329m)) {
            return false;
        }
        C12329m mVar = (C12329m) obj;
        if (!C15149k.m384a((Object) this.f27825a, (Object) mVar.f27825a)) {
            return false;
        }
        if (!(this.f27826b == mVar.f27826b)) {
            return false;
        }
        return this.f27827c == mVar.f27827c;
    }

    public int hashCode() {
        String str = this.f27825a;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f27826b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        boolean z2 = this.f27827c;
        int i2 = z2 ? 1 : 0;
        if (z2) {
            i2 = 1;
        }
        return (((hashCode * 31) + i) * 31) + i2;
    }

    public String toString() {
        return "NumberDetailProfile(contactName=" + this.f27825a + ", isBlock=" + this.f27826b + ", isFavorite=" + this.f27827c + ")";
    }
}
