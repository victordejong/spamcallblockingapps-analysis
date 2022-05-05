package p459j.p460a.p576w.p578o;

import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.o.d */
/* loaded from: classes2-dex2jar.jar:j/a/w/o/d.class */
public final class C13797d {

    /* renamed from: a */
    public final String f30973a;

    /* renamed from: b */
    public final int f30974b;

    /* renamed from: c */
    public final int f30975c;

    /* renamed from: d */
    public final String f30976d;

    /* renamed from: e */
    public final String f30977e;

    /* renamed from: f */
    public final String f30978f;

    /* renamed from: g */
    public final String f30979g;

    /* renamed from: h */
    public final boolean f30980h;

    public C13797d(String str, @DrawableRes int i, @ColorRes int i2, String str2, String str3, String str4, String str5, boolean z) {
        C15149k.m377b(str, "type");
        C15149k.m377b(str2, "title");
        C15149k.m377b(str3, "content");
        C15149k.m377b(str4, "positiveCta");
        this.f30973a = str;
        this.f30974b = i;
        this.f30975c = i2;
        this.f30976d = str2;
        this.f30977e = str3;
        this.f30978f = str4;
        this.f30979g = str5;
        this.f30980h = z;
    }

    /* renamed from: a */
    public final int m3437a() {
        return this.f30975c;
    }

    /* renamed from: b */
    public final String m3436b() {
        return this.f30977e;
    }

    /* renamed from: c */
    public final int m3435c() {
        return this.f30974b;
    }

    /* renamed from: d */
    public final String m3434d() {
        return this.f30979g;
    }

    /* renamed from: e */
    public final String m3433e() {
        return this.f30978f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13797d)) {
            return false;
        }
        C13797d dVar = (C13797d) obj;
        if (!C15149k.m384a((Object) this.f30973a, (Object) dVar.f30973a)) {
            return false;
        }
        if (!(this.f30974b == dVar.f30974b)) {
            return false;
        }
        if (!(this.f30975c == dVar.f30975c) || !C15149k.m384a((Object) this.f30976d, (Object) dVar.f30976d) || !C15149k.m384a((Object) this.f30977e, (Object) dVar.f30977e) || !C15149k.m384a((Object) this.f30978f, (Object) dVar.f30978f) || !C15149k.m384a((Object) this.f30979g, (Object) dVar.f30979g)) {
            return false;
        }
        return this.f30980h == dVar.f30980h;
    }

    /* renamed from: f */
    public final String m3432f() {
        return this.f30976d;
    }

    /* renamed from: g */
    public final String m3431g() {
        return this.f30973a;
    }

    /* renamed from: h */
    public final boolean m3430h() {
        return this.f30980h;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        String str = this.f30973a;
        int i = 0;
        int hashCode3 = str != null ? str.hashCode() : 0;
        hashCode = Integer.valueOf(this.f30974b).hashCode();
        hashCode2 = Integer.valueOf(this.f30975c).hashCode();
        String str2 = this.f30976d;
        int hashCode4 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f30977e;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f30978f;
        int hashCode6 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f30979g;
        if (str5 != null) {
            i = str5.hashCode();
        }
        boolean z = this.f30980h;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((((((hashCode3 * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i) * 31) + i2;
    }

    public String toString() {
        return "IapNotice(type=" + this.f30973a + ", icon=" + this.f30974b + ", background=" + this.f30975c + ", title=" + this.f30976d + ", content=" + this.f30977e + ", positiveCta=" + this.f30978f + ", negativeCta=" + this.f30979g + ", isShowClose=" + this.f30980h + ")";
    }
}
