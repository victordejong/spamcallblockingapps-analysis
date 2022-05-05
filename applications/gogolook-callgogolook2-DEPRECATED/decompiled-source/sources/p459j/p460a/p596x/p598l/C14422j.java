package p459j.p460a.p596x.p598l;

import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.x.l.j */
/* loaded from: classes2-dex2jar.jar:j/a/x/l/j.class */
public final class C14422j {

    /* renamed from: a */
    public final int f32262a;

    /* renamed from: b */
    public final String f32263b;

    /* renamed from: c */
    public final String f32264c;

    /* renamed from: d */
    public final String f32265d;

    /* renamed from: e */
    public final String f32266e;

    public C14422j(int i, String str, String str2, String str3, String str4) {
        C15149k.m377b(str, "accountId");
        C15149k.m377b(str2, "token");
        C15149k.m377b(str3, "accountName");
        C15149k.m377b(str4, "email");
        this.f32262a = i;
        this.f32263b = str;
        this.f32264c = str2;
        this.f32265d = str3;
        this.f32266e = str4;
    }

    public /* synthetic */ C14422j(int i, String str, String str2, String str3, String str4, int i2, C15145g gVar) {
        this(i, str, str2, str3, (i2 & 16) != 0 ? "" : str4);
    }

    /* renamed from: a */
    public final String m1377a() {
        return this.f32263b;
    }

    /* renamed from: b */
    public final String m1376b() {
        return this.f32265d;
    }

    /* renamed from: c */
    public final int m1375c() {
        return this.f32262a;
    }

    /* renamed from: d */
    public final String m1374d() {
        return this.f32266e;
    }

    /* renamed from: e */
    public final String m1373e() {
        return this.f32264c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14422j)) {
            return false;
        }
        C14422j jVar = (C14422j) obj;
        return (this.f32262a == jVar.f32262a) && C15149k.m384a((Object) this.f32263b, (Object) jVar.f32263b) && C15149k.m384a((Object) this.f32264c, (Object) jVar.f32264c) && C15149k.m384a((Object) this.f32265d, (Object) jVar.f32265d) && C15149k.m384a((Object) this.f32266e, (Object) jVar.f32266e);
    }

    public int hashCode() {
        int hashCode;
        hashCode = Integer.valueOf(this.f32262a).hashCode();
        String str = this.f32263b;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f32264c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f32265d;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f32266e;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        return "OAuthData: \nauthType: " + this.f32262a + "\naccountId: " + this.f32263b + "\naccountName: " + this.f32265d + "\ntoken: " + this.f32264c + "\nemail: " + this.f32266e + '\n';
    }
}
