package p081h.p160h.p161a.p162h;

import p626l.p641z.p643d.C15149k;
/* renamed from: h.h.a.h.a */
/* loaded from: classes2-dex2jar.jar:h/h/a/h/a.class */
public final class C6201a {

    /* renamed from: a */
    public final String f15396a;

    /* renamed from: b */
    public final String f15397b;

    /* renamed from: c */
    public final String f15398c;

    public C6201a(String str, String str2, String str3) {
        C15149k.m377b(str, "adSource");
        C15149k.m377b(str2, "title");
        C15149k.m377b(str3, "text");
        this.f15396a = str;
        this.f15397b = str2;
        this.f15398c = str3;
    }

    /* renamed from: a */
    public final String m23585a() {
        return this.f15396a;
    }

    /* renamed from: b */
    public final String m23584b() {
        return this.f15398c;
    }

    /* renamed from: c */
    public final String m23583c() {
        return this.f15397b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6201a)) {
            return false;
        }
        C6201a aVar = (C6201a) obj;
        return C15149k.m384a((Object) this.f15396a, (Object) aVar.f15396a) && C15149k.m384a((Object) this.f15397b, (Object) aVar.f15397b) && C15149k.m384a((Object) this.f15398c, (Object) aVar.f15398c);
    }

    public int hashCode() {
        String str = this.f15396a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f15397b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f15398c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "AdContent(adSource=" + this.f15396a + ", title=" + this.f15397b + ", text=" + this.f15398c + ")";
    }
}
