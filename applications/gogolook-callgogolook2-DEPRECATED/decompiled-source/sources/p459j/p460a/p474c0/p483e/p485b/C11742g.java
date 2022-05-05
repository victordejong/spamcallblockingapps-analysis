package p459j.p460a.p474c0.p483e.p485b;

import p626l.p641z.p643d.C15145g;
/* renamed from: j.a.c0.e.b.g */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/b/g.class */
public final class C11742g {

    /* renamed from: a */
    public final int f26341a;

    /* renamed from: b */
    public final int f26342b;

    /* renamed from: c */
    public final int f26343c;

    /* renamed from: d */
    public final int f26344d;

    /* renamed from: e */
    public final int f26345e;

    /* renamed from: f */
    public final int f26346f;

    public C11742g() {
        this(0, 0, 0, 0, 0, 0, 63, null);
    }

    public C11742g(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f26341a = i;
        this.f26342b = i2;
        this.f26343c = i3;
        this.f26344d = i4;
        this.f26345e = i5;
        this.f26346f = i6;
    }

    public /* synthetic */ C11742g(int i, int i2, int i3, int i4, int i5, int i6, int i7, C15145g gVar) {
        this((i7 & 1) != 0 ? 0 : i, (i7 & 2) != 0 ? 0 : i2, (i7 & 4) != 0 ? 0 : i3, (i7 & 8) != 0 ? 0 : i4, (i7 & 16) != 0 ? 0 : i5, (i7 & 32) != 0 ? 0 : i6);
    }

    /* renamed from: a */
    public final int m8397a() {
        return this.f26346f;
    }

    /* renamed from: b */
    public final int m8396b() {
        return this.f26341a;
    }

    /* renamed from: c */
    public final int m8395c() {
        return this.f26344d;
    }

    /* renamed from: d */
    public final int m8394d() {
        return this.f26342b;
    }

    /* renamed from: e */
    public final int m8393e() {
        return this.f26345e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11742g)) {
            return false;
        }
        C11742g gVar = (C11742g) obj;
        if (!(this.f26341a == gVar.f26341a)) {
            return false;
        }
        if (!(this.f26342b == gVar.f26342b)) {
            return false;
        }
        if (!(this.f26343c == gVar.f26343c)) {
            return false;
        }
        if (!(this.f26344d == gVar.f26344d)) {
            return false;
        }
        if (!(this.f26345e == gVar.f26345e)) {
            return false;
        }
        return this.f26346f == gVar.f26346f;
    }

    /* renamed from: f */
    public final int m8392f() {
        return this.f26343c;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        hashCode = Integer.valueOf(this.f26341a).hashCode();
        hashCode2 = Integer.valueOf(this.f26342b).hashCode();
        hashCode3 = Integer.valueOf(this.f26343c).hashCode();
        hashCode4 = Integer.valueOf(this.f26344d).hashCode();
        hashCode5 = Integer.valueOf(this.f26345e).hashCode();
        hashCode6 = Integer.valueOf(this.f26346f).hashCode();
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6;
    }

    public String toString() {
        return "SmsUrlScanHistory(previousDays=" + this.f26341a + ", smsCount=" + this.f26342b + ", unratedCount=" + this.f26343c + ", safeCount=" + this.f26344d + ", suspiciousCount=" + this.f26345e + ", maliciousCount=" + this.f26346f + ")";
    }
}
