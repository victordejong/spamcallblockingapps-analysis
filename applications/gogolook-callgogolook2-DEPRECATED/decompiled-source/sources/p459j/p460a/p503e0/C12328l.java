package p459j.p460a.p503e0;

import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.e0.l */
/* loaded from: classes3-dex2jar.jar:j/a/e0/l.class */
public final class C12328l {

    /* renamed from: a */
    public NumberInfo f27815a;

    /* renamed from: b */
    public RowInfo f27816b;

    /* renamed from: c */
    public final String f27817c;

    /* renamed from: d */
    public final String f27818d;

    /* renamed from: e */
    public final boolean f27819e;

    /* renamed from: f */
    public boolean f27820f;

    /* renamed from: g */
    public boolean f27821g;

    /* renamed from: h */
    public String f27822h;

    /* renamed from: i */
    public boolean f27823i;

    /* renamed from: j */
    public int f27824j;

    public C12328l(String str, String str2, boolean z, boolean z2, boolean z3, String str3, boolean z4, int i) {
        this.f27817c = str;
        this.f27818d = str2;
        this.f27819e = z;
        this.f27820f = z2;
        this.f27821g = z3;
        this.f27822h = str3;
        this.f27823i = z4;
        this.f27824j = i;
    }

    public /* synthetic */ C12328l(String str, String str2, boolean z, boolean z2, boolean z3, String str3, boolean z4, int i, int i2, C15145g gVar) {
        this(str, str2, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2, (i2 & 16) != 0 ? false : z3, (i2 & 32) != 0 ? null : str3, (i2 & 64) != 0 ? false : z4, (i2 & 128) != 0 ? 0 : i);
    }

    /* renamed from: a */
    public final int m6375a() {
        return this.f27824j;
    }

    /* renamed from: a */
    public final void m6374a(int i) {
        this.f27824j = i;
    }

    /* renamed from: a */
    public final void m6373a(NumberInfo numberInfo) {
        this.f27815a = numberInfo;
        this.f27816b = numberInfo != null ? RowInfo.m28255a(this.f27817c, this.f27815a, this.f27819e) : null;
    }

    /* renamed from: a */
    public final void m6372a(String str) {
        this.f27822h = str;
    }

    /* renamed from: a */
    public final void m6371a(boolean z) {
        this.f27820f = z;
    }

    /* renamed from: b */
    public final String m6370b() {
        return this.f27822h;
    }

    /* renamed from: b */
    public final void m6369b(boolean z) {
        this.f27821g = z;
    }

    /* renamed from: c */
    public final String m6368c() {
        return this.f27818d;
    }

    /* renamed from: c */
    public final void m6367c(boolean z) {
        this.f27823i = z;
    }

    /* renamed from: d */
    public final String m6366d() {
        return this.f27817c;
    }

    /* renamed from: e */
    public final NumberInfo m6365e() {
        return this.f27815a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C12328l)) {
            return false;
        }
        C12328l lVar = (C12328l) obj;
        if (!C15149k.m384a((Object) this.f27817c, (Object) lVar.f27817c) || !C15149k.m384a((Object) this.f27818d, (Object) lVar.f27818d)) {
            return false;
        }
        if (!(this.f27819e == lVar.f27819e)) {
            return false;
        }
        if (!(this.f27820f == lVar.f27820f)) {
            return false;
        }
        if (!(this.f27821g == lVar.f27821g) || !C15149k.m384a((Object) this.f27822h, (Object) lVar.f27822h)) {
            return false;
        }
        if (!(this.f27823i == lVar.f27823i)) {
            return false;
        }
        return this.f27824j == lVar.f27824j;
    }

    /* renamed from: f */
    public final RowInfo m6364f() {
        return this.f27816b;
    }

    /* renamed from: g */
    public final boolean m6363g() {
        return this.f27819e;
    }

    /* renamed from: h */
    public final boolean m6362h() {
        return this.f27820f;
    }

    public int hashCode() {
        int hashCode;
        String str = this.f27817c;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f27818d;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        boolean z = this.f27819e;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        boolean z2 = this.f27820f;
        int i3 = z2 ? 1 : 0;
        if (z2) {
            i3 = 1;
        }
        boolean z3 = this.f27821g;
        int i4 = z3 ? 1 : 0;
        if (z3) {
            i4 = 1;
        }
        String str3 = this.f27822h;
        if (str3 != null) {
            i = str3.hashCode();
        }
        boolean z4 = this.f27823i;
        int i5 = z4 ? 1 : 0;
        if (z4) {
            i5 = 1;
        }
        hashCode = Integer.valueOf(this.f27824j).hashCode();
        return (((((((((((((hashCode2 * 31) + hashCode3) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i) * 31) + i5) * 31) + hashCode;
    }

    /* renamed from: i */
    public final boolean m6361i() {
        return this.f27821g;
    }

    /* renamed from: j */
    public final boolean m6360j() {
        return this.f27823i;
    }

    public String toString() {
        return "NumberDetailModel(number=" + this.f27817c + ", e164=" + this.f27818d + ", showSuspiciousNumber=" + this.f27819e + ", isBlock=" + this.f27820f + ", isFavorite=" + this.f27821g + ", contactName=" + this.f27822h + ", isInWhitelist=" + this.f27823i + ", blockKind=" + this.f27824j + ")";
    }
}
