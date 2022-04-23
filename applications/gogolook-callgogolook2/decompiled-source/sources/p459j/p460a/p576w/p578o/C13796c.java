package p459j.p460a.p576w.p578o;

import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.o.c */
/* loaded from: classes2-dex2jar.jar:j/a/w/o/c.class */
public final class C13796c {

    /* renamed from: a */
    public final int f30970a;

    /* renamed from: b */
    public final String f30971b;

    /* renamed from: c */
    public final String f30972c;

    public C13796c(int i, String str, String str2) {
        C15149k.m377b(str, "title");
        C15149k.m377b(str2, "content");
        this.f30970a = i;
        this.f30971b = str;
        this.f30972c = str2;
    }

    /* renamed from: a */
    public final String m3440a() {
        return this.f30972c;
    }

    /* renamed from: b */
    public final int m3439b() {
        return this.f30970a;
    }

    /* renamed from: c */
    public final String m3438c() {
        return this.f30971b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13796c)) {
            return false;
        }
        C13796c cVar = (C13796c) obj;
        return (this.f30970a == cVar.f30970a) && C15149k.m384a((Object) this.f30971b, (Object) cVar.f30971b) && C15149k.m384a((Object) this.f30972c, (Object) cVar.f30972c);
    }

    public int hashCode() {
        int hashCode;
        hashCode = Integer.valueOf(this.f30970a).hashCode();
        String str = this.f30971b;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f30972c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "IapIntro(introDrawableRes=" + this.f30970a + ", title=" + this.f30971b + ", content=" + this.f30972c + ")";
    }
}
